
import java.util.Scanner;



public class Exemplo_Do_While {
    public static void main (String [] args)
    {
        /*
        DO_WHILE
            Executa repetidas vezes uma instrução enquanto um teste logico
        resultar em verdadeiro.
        OBS: O teste é feito no fim, o que garante que as intruções serao 
        executadas ao menos uma vez.
        */
        int somatoria = 0;
        String consulta;
        Scanner leitura = new Scanner(System.in);
        do
            {
                System.out.println("Digite um numero para realizar a somatória");
                somatoria += leitura.nextInt();
                System.out.println("Deseja continuar (S) sim (N) não");
                consulta = leitura.next();
            }
        while (consulta.equals("S") || consulta.equals("s"));
                System.out.println("Somatória: " + somatoria);
     }
}
