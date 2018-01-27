
import java.util.Scanner;

public class TemperaturaCF {
    public static void main (String [] args)
    {
      //Programa que converte a temperatura de Celsius para Fahrenheit
      // Forma de conversão : F = 9 * celsius / 5 + 32
        
      Scanner leitura = new Scanner(System.in);
      float Celsius;
      float Fahrenheit;
      
      System.out.println("Digite a temperatura em Celsius");
      Celsius = leitura.nextFloat();
      Fahrenheit = 9 * (Celsius / 5) + 32;
      System.out.println("O valor da temperatura digitado em Fahrenheit é igual a: " + String.format("%.2f",Fahrenheit));

    }
}
