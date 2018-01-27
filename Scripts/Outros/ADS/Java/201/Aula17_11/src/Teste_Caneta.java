
import java.util.Scanner;


public class Teste_Caneta {
    public static void main (String [] args)
    {
        String resposta;
        //CRIANDO CANETA
        Caneta c1 = new Caneta();
        Scanner leitura = new Scanner (System.in);
        while (c1.nivel_tinta > 0)
        {
            //atribuindo valores
            System.out.println("Digite uma palavra");
            c1.palavra = leitura.next();
            c1.escrever();
            //Imprimindo valores
            // c1.nivel_tinta = c1.nivel_tinta;
            if (c1.nivel_tinta == 0)
            {
                System.out.println("A tinta da caneta acabou");
                {
                    System.out.println("Você deseja recarregar? ");
                    resposta = leitura.next();
                    if (resposta.equals("s"))
                    {
                        c1.recarregar();
                        System.out.println("Caneta recarregada"); 
                        System.out.println("Você pode escrever mais " + c1.nivel_tinta + " vezes.");
                    }     
                }
          
            }
            else
            System.out.println("Você pode escrever mais " + c1.nivel_tinta + " vezes com essa caneta.");
        }
            
    }
}
