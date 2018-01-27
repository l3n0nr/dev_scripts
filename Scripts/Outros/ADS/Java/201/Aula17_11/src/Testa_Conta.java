
import java.util.Scanner;

/*
    Lenon Ricardo
*/
public class Testa_Conta {
    public static void main (String [] args)
    {  
        double Valor_Saque;
        String consulta = null;
        //CRIANDO CONTA
        Conta c1 = new Conta(); //new = cria um objeto a partir de uma classe
        
        //atribuindo valores
        c1.nome_cliente = "Lenon Ricardo"; //declarando que o atributo(.nome_cliente) da classe(c1) recebe "Lenon Ricardo"
        //c1.limiete_conta = 1000;
        c1.saldo = 1000;
        c1.numero_conta = 1;
        Scanner leitura = new Scanner (System.in);
        //entrando com o valor de saque
        System.out.println("Digite o valor de saque que deseja realizar");
        c1.Valor_Sacar = (double)leitura.nextInt();
        //verificando valor
        Valor_Saque = c1.Valor_Sacar;
        c1.sacar(Valor_Saque);
        //imprimindo valores
        System.out.println("\nNome do cliente: " + c1.nome_cliente);
        System.out.println("Numero da conta: " + c1.numero_conta);
        System.out.println("Valor do saldo: " + c1.saldo);
        System.out.println("\n");
        
        /*
        //atribuindo valores
        c1.depositar_50();
        
        //imprimindo valores
        System.out.println("O novo saldo é " + c1.saldo);

        //CRIANDO NOVA CONTA
        Conta c2 = new Conta ();
        
        //atribuindo valores
        c2.nome_cliente = "João da silva";
        c2.limiete_conta = 0;
        c2.saldo = 10000;
        c2.numero_conta = 2;
        
        //imprimindo valores
        System.out.println("\nNome do cliente: " + c2.nome_cliente);
        System.out.println("Numero da conta: " + c2.numero_conta);
        System.out.println("Valor do saldo: " + c2.saldo);
        
        //modificando saldo
        c2.sacar_500();
        
        //imprimindo valores
        System.out.println("O novo saldo é " + c2.saldo);
        System.out.println("\n");
        
        //incrementando valores
        c1.depositar(100);
        c2.sacar(20);
        
        //imprimindo saldo
        System.out.println("O novo saldo de " + c1.nome_cliente + " é de R$ " + c1.saldo);
        System.out.println("O novo saldo de " + c2.nome_cliente + " é de R$ " + c2.saldo);   
        */
    }
}
