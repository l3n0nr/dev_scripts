
import java.util.Scanner;


public class Exemplo_OperadorCondicional {
    public static void main (String [] args )
    {
        /*
        Indicado para os casos de atribuição de valores por meio de condições
        É conhecido tambem como operador ternario
        */
        Scanner leitura = new Scanner(System.in);
        System.out.println("Digite um valor");
        int valor = leitura.nextInt();
        System.out.println("Digite outro valor");
        int valor1 = leitura.nextInt();
        String escolha;
        if (valor > valor1)
        {
            escolha = "A";
        }
        else
        {
            escolha = "B";
        }
        System.out.println(escolha + " é o maior");
    }
}
