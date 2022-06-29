import 'composite/menu.dart';
import 'composite/funcionalidade.dart';
import 'visitor/visitor.dart';

void main() {
  final v = Visitor();
  final m = Menu('Menu', true);

  final m1 = Menu('Menu 1', true);
  final m11 = Menu('Menu 1.1', true);

  final m2 = Menu('Menu 2', true);
  final m21 = Menu('Menu 2.1', true);
  final m211 = Menu('Menu 2.1.1', true);
  final m212 = Menu('Menu 2.1.2', true);

  final m3 = Menu('Menu 3', false);

  final m4 = Menu('Menu 4', true);
  final m41 = Menu('Menu 4.1', true);

  final m5 = Menu('Menu 5', true);
  final m51 = Menu('Menu 5.1', true);
  final m511 = Menu('Menu 5.1.1', false);
  final m512 = Menu('Menu 5.1.2', true);

  final fa = Funcionalidade('Funcionalidade A', true);
  final fb = Funcionalidade('Funcionalidade B', true);
  final fc = Funcionalidade('Funcionalidade C', true);
  final fd = Funcionalidade('Funcionalidade D', true);
  final fe = Funcionalidade('Funcionalidade E', false);
  final ff = Funcionalidade('Funcionalidade F', true);
  final fg = Funcionalidade('Funcionalidade G', true);
  final fh = Funcionalidade('Funcionalidade H', false);
  final fi = Funcionalidade('Funcionalidade I', true);
  final fk = Funcionalidade('Funcionalidade K', true);
  final fl = Funcionalidade('Funcionalidade L', true);
  final fm = Funcionalidade('Funcionalidade M', true);
  final fn = Funcionalidade('Funcionalidade N', true);
  final fo = Funcionalidade('Funcionalidade O', true);
  final fp = Funcionalidade('Funcionalidade P', false);

  m.adicionarFilho(fa);
  m.adicionarFilho(m1);
  m.adicionarFilho(m2);
  m.adicionarFilho(m3);
  m.adicionarFilho(m4);
  m.adicionarFilho(m5);

  m1.adicionarFilho(fb);
  m1.adicionarFilho(m11);

  m11.adicionarFilho(fc);
  m11.adicionarFilho(fd);

  m2.adicionarFilho(m21);

  m21.adicionarFilho(m211);
  m21.adicionarFilho(m212);

  m211.adicionarFilho(fe);
  m211.adicionarFilho(ff);

  m212.adicionarFilho(fg);
  m212.adicionarFilho(fh);
  m212.adicionarFilho(fi);

  m4.adicionarFilho(fk);
  m4.adicionarFilho(m41);

  m41.adicionarFilho(fl);
  m41.adicionarFilho(fm);

  m5.adicionarFilho(m51);

  m51.adicionarFilho(m511);
  m51.adicionarFilho(m512);

  m512.adicionarFilho(fn);
  m512.adicionarFilho(fo);
  m512.adicionarFilho(fp);

  m.aceitarVisita(v, '');
}
