package Locadora;
import java.util.Scanner;
public class Main {

	public static void main(String[] args) {
	Scanner teclado0 = new Scanner(System.in);
	int fimn;
	Metodos config = new Metodos();

	System.out.println("Bem vindo ao Sistema!");
	
	do {
		System.out.println("*********************************************************");
		System.out.println("1 - Cadastrar Contato");
		System.out.println("2 - Atualizar Contato");
		System.out.println("3 - Pesquisa por nome");
		System.out.println("4 - Pesquisa por e-mail");
		System.out.println("5 - Pesquisa por telefone");
		System.out.println("6 - Lista de Contatos");
		System.out.println("7 - Deletar contato");
		System.out.println("8 - Sair");
		System.out.println("Digite sua opção: ");

		int opc = teclado0.nextInt();
		fimn=opc;

		switch (opc) {
		case 1: 
			config.cadastro();
			break;
		case 2: 
			config.atualizar();
			break;
		case 3: 
			config.pesquisaNome();
			break;
		case 4: 
			config.pesquisaEmail();
			break;
		case 5: 
			config.pesquisaNumero();
			break;
		case 6:
			config.checarContatos();
			break;
		case 7: 
			config.delete();
			break;
		case 8:
			System.out.println("Finalizando Sistema!");
		break;
		default: 
			System.out.println("Opção inválida.");
			System.out.println("");
		break;
		}
	} while (fimn != 8); 
}
}
