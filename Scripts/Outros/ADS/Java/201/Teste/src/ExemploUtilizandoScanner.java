
import java.util.Scanner;


public class ExemploUtilizandoScanner {
    public static void main (String [] args)
    {
        /*Exemplo para realizar entrada de dados*/
        Scanner leitura = new Scanner(System.in);/*Objeto que representa a entrada padrão*/
       // System.out.println("Digite um valor");
        //leitura.next();// retorna o proximo valor de entrada
        
        //nextInt(); busca o proximo e tenta converter para inteiro.
        //int valorLido = leitura.nextInt();
        //System.out.println("O valor lido foi: " + valorLido);
        float valorLidoReal = leitura.nextFloat();
        System.out.println("O valor real lido foi: "+ valorLidoReal);
        
    
    }                
}
