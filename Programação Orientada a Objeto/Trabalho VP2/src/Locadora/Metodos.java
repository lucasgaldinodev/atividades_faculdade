package Locadora;
import java.util.ArrayList;
import java.util.Scanner;

public class Metodos {
	ArrayList<Contato> list = new ArrayList<>();
	Contato contato = new Contato();
	int contador; 
	
	public Contato cadastro (){
		Scanner teclado = new Scanner(System.in);
		System.out.println("Digite o nome do contato: ");
		String nome = teclado.nextLine();
		System.out.println("Digite o e-mail do contato: ");
		String email = teclado.nextLine();
		System.out.println("Digite o número do contato: ");
		String num = teclado.nextLine();
		contato = new Contato(nome, email, num);
		list.add(contato);
		contador++;
		System.out.println("Contato salvo.");
		System.out.println("*********************************************************");
		return contato;
	}
	
	public void checarContatos() {
		System.out.println("Número de contatos: " + contador);
		if (contador==0) {
			System.out.println("Sem contatos salvos.");
		}
		for (int i = 0; i < list.size(); i++) {
			list.get(i);
			System.out.println("*********************************************************");
			System.out.println("Referência do contato: " + i);
			System.out.println("Nome: " + list.get(i).getNome());
			System.out.println("E-mail: " + list.get(i).getEmail());
			System.out.println("Telefone: " + list.get(i).getTelefone());
			System.out.println("*********************************************************");
			System.out.println("");
		}
	}
	
	public void pesquisaNome() {
		Scanner teclado2 = new Scanner(System.in);
		System.out.println("Nome do contato a ser pesquisado: ");
		String nome = teclado2.nextLine();
		for (int i = 0; i < list.size(); i++) {
			list.get(i);
		if (list.get(i).getNome().equals(nome)) {
			System.out.println("*********************************************************");
			System.out.println("Referência do contato: " + i);
			System.out.println("Nome: " + list.get(i).getNome());
			System.out.println("E-mail: " + list.get(i).getEmail());
			System.out.println("Telefone: " + list.get(i).getTelefone());
			System.out.println("*********************************************************");
		}
		}
	}
	
	public void pesquisaEmail() {
		Scanner teclado3 = new Scanner(System.in);
		System.out.println("E-mail do contato a ser pesquisado: ");
		String email = teclado3.nextLine();
		for (int i = 0; i < list.size(); i++) {
			list.get(i);
		if (list.get(i).getEmail().equals(email)) {
			System.out.println("*********************************************************");
			System.out.println("Referência do contato: " + i);
			System.out.println("Nome: " + list.get(i).getNome());
			System.out.println("E-mail: " + list.get(i).getEmail());
			System.out.println("Telefone: " + list.get(i).getTelefone());
			System.out.println("*********************************************************");
		}
		}
	}
	
	public void pesquisaNumero() {
		Scanner teclado4 = new Scanner(System.in);
		System.out.println("Telefone do contato a ser pesquisado: ");
		String num = teclado4.nextLine();
		for (int i = 0; i < list.size(); i++) {
			list.get(i);
		if (list.get(i).getTelefone().equals(num)) {
			System.out.println("*********************************************************");
			System.out.println("Referência do contato: " + i);
			System.out.println("Nome: " + list.get(i).getNome());
			System.out.println("E-mail: " + list.get(i).getEmail());
			System.out.println("Telefone: " + list.get(i).getTelefone());
			System.out.println("*********************************************************");
		}
		}
	}
	
	public void delete() {
		Scanner teclado5 = new Scanner(System.in);
		System.out.println("Nome, E-mail ou Telefone do Contato a ser deletado: ");
		String nome = teclado5.nextLine();
		for (int i = 0; i < list.size(); i++) {
			list.get(i);
			if (list.get(i).getNome().equals(nome) || list.get(i).getEmail().equals(nome) || list.get(i).getTelefone().equals(nome)) {
				list.remove(i);
				System.out.println("Contato deletado.");
				System.out.println("*********************************************************");
			}
		}
	}
	
	public void atualizar() {
		Scanner teclado6 = new Scanner(System.in);
		System.out.println("Nome, E-mail ou Telefone do Contato a ser atualizado: ");
		String nome = teclado6.nextLine();
		for (int i = 0; i < list.size(); i++) {
			list.get(i);
			if (list.get(i).getNome().equals(nome) || list.get(i).getEmail().equals(nome) || list.get(i).getTelefone().equals(nome)) {
				Scanner teclado7 = new Scanner(System.in);
				System.out.println("Digite o novo nome para o contato: ");
				String nomen = teclado7.nextLine();
				System.out.println("Digite o novo e-mail para o contato: ");
				String emailn = teclado7.nextLine();
				System.out.println("Digite o novo número para o contato: ");
				String numn = teclado7.nextLine();
				list.get(i).setNome(nomen);
				list.get(i).setEmail(emailn);
				list.get(i).setTelefone(numn);
				System.out.println("Contato atualizado.");
			}
		}
	}
}
