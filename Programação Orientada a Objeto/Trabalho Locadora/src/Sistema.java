import java.util.Scanner;

public class Sistema {
	public static void main(String[] args) {
		Scanner teclado = new Scanner(System.in);
		int fimn;
		Metodos config = new Metodos();

		System.out.println("Bem vindo ao Sistema!");

		do {
			System.out.println("*********************************************************");
			System.out.println("1 - Cadastrar Filme");
			System.out.println("2 - Cadastrar C�pia");
			System.out.println("3 - Cadastrar S�cio");
			System.out.println("4 - Loca��o");
			System.out.println("5 - Devolu��o");
			System.out.println("6 - Lista de Filmes");
			System.out.println("7 - Lista de C�pias");
			System.out.println("8 - Lista de C�pias Alugadas");
			System.out.println("9 - Lista de S�cios");
			System.out.println("10 - Sair");
			System.out.println("Digite sua op��o: ");
			System.out.println("*********************************************************");
			int opc = teclado.nextInt();
			fimn=opc;

			switch (opc) {
			case 1: 
				config.perguntas();
				break;
			case 2: 
				Scanner teclado2 = new Scanner(System.in);
				System.out.println("Digite o nome do filme que voc� quer fazer uma c�pia:");
				String nome = teclado2.nextLine();
				config.copiaFilme(nome);
				break;
			case 3: 
				config.perguntas2();
				break;
			case 4: 
				config.locacao();
				break;
			case 5: 
				config.devolu��o();
				break;
			case 6:
				config.checarFilmes();
				break;
			case 7: 
				config.checarCopias();
				break;
			case 8:
				config.checarCopiasA();
				break;
			case 9:
				config.checarSocios();
				break;
			case 10:
				System.out.println("Finalizando Sistema!");
			break;
			default: 
				System.out.println("Op��o inv�lida.");
				System.out.println("");
			break;
			}
		} while (fimn != 10); 
		//teclado.close();
	}
}