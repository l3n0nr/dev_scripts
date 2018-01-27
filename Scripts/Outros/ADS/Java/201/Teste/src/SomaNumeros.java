import java.util.Scanner;

public class SomaNumeros {
    public static void main (String [] args)
    {
        int num0;
	int num1;
	int somaNumeros = 0 ;
        Scanner s = new Scanner(System.in);
        System.out.println("Digite um valor");
        num0 = s.nextInt();
        System.out.println("Digite o segundo valor");
        num1 = s.nextInt();
        somaNumeros = num0 + num1;
        System.out.println("O resultado da soma foi: " + somaNumeros);       
    }
}
