
import java.util.Scanner;


public class Exemplo_While {
    public static void main (String [] args)
    /*
    WHILE
        Executa repetidas vezes uma instrução enquanto um teste lógico 
        resulta em verdadeiro.
        OBS: O teste é feito no inicio, podendo ser falso na primeira vez e 
        efim nao executar nenhuma vez.  
    */
    {
       /*
        Exemplo1: Irá repetir a solicitação de dois numeros enquanto o primeiro 
        for menor que o segundo.
       */
        int valor = 0, valor1 = 0;
        Scanner leitura = new Scanner(System.in);
        while (valor <= valor1)
        {
        System.out.println("Digite o primeiro valor");
        valor = leitura.nextInt();
        System.out.println("Digite o segundo valor");
        valor1 = leitura.nextInt();
        }
        System.out.println("O primeiro valor é maior que o segundo! "); 
    }
}
