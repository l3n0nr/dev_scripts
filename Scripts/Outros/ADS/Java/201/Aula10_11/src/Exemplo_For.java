
import java.util.Scanner;


public class Exemplo_For {
    public static void main (String [] args)
    {
        /*
        FOR
        
        Executa repetidas vezes uma instrução, utilizando como base uma 
        variavel controladora que é testada até atingir um valor numérico 
        especifico. Esse valor numerico pode ser mudado a cada interação com 
        as operações ++, --, *=,/=. 
        */
        /*
        
        //Repetindo 10X
        System.out.println("Repetindo 10 vezes.....");
        for (int cont = 0; cont <10; cont ++)
        {
            System.out.println("O valor é: " + cont);
        } 
        System.out.println("Final do programa");
        //Exemplo2: Utilizando a variavel controladora internamente
        for (int cont1 = 0; cont1 < 10; cont1++)
        {
            System.out.println("O valor da controladora interna é: "+ cont1);
        }
        
      
        //Exemplo3: Incrementando com += para saltos em intervalos
        for (int cont2 = 0; cont2<10; cont2+=2)
        {
            System.out.println("O valor da controladora interna 2 é: "+ cont2);
        }    
         
        //Exemplo4:Decrementando a variavel controladora
        for (int cont3 = 10; cont3 > 0; cont3--)
        {
            System.out.println("O valor da controladora interna 3 é: "+ cont3);
        }
        
        */
        
        //Exemplo5: For alinhado/encadeado
        for (int cont4 = 1; cont4 <=10; cont4 ++)
        {
            System.out.println("Tabuada do: " + cont4);
            for (int cont5 = 1;cont5 <= 10; cont5 ++)
            {
               System.out.println(cont4 + "*" + cont5 + "=" + (cont4 * cont5)); 
            }
        }
    }
}
