
import java.util.Scanner;


public class Exemplo_If_Else {
    public static void main (String [] args)
    {
        //declaração de variaveis
        int idade;
        Scanner leitura = new Scanner(System.in);
        System.out.println("Digite uma idade");
        idade = Integer.parseInt(leitura.next());
        if (idade >= 18)
        {
            System.out.println("É maior de idade! ");
        }
        else
        {
            System.out.println("É menor de idade!");
      
        }
    }
}
