
import java.util.Scanner;
import javax.swing.JOptionPane;


public class Calculadoras_4_operações {
    public static void main (String [] args)
    {
        float n = 0,n1 = 0,resultado=0;
        String o;
        Scanner leitura = new Scanner(System.in);
        System.out.println("Digite uma operação");
        System.out.println("'+' para soma, '-' para subtração, '*' para multiplicação e '/' para divisão ");
        o = leitura.next();
        System.out.println("Digite o valor do primeiro numero");
        n= leitura.nextFloat();
        System.out.println("Digite o valor do primeiro numero");
        n1= leitura.nextFloat();
        if (o.equals("+"))
        {
            resultado = (n+n1);
        }
        else
        if (o.equals("-"))
        {
            resultado = (n-n1);
        }
        else
        if (o.equals("*"))
        {
            resultado = (n*n1);
        }
        else
        if (o.equals("/"))
        {
            resultado = (n/n1);
        }
        else
        {
            System.out.println("Operação desconhecida");
        }
        System.out.println("Operação usada '"+ o +"' Resultado do calculo " + resultado);
    }
}
