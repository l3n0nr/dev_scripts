import static java.lang.Math.PI;
import java.util.Scanner;

public class RaioCirculo {
 public static void main (String [] args)
 {
    float raio;       
    float area;
    Scanner s = new Scanner(System.in);
    System.out.println("Digite um valor do raio");
    raio = s.nextFloat();
    area = (float)(PI * (raio*raio));
    System.out.println("O valor da area é: " + String.format("%.2f", area));  
 }
}
