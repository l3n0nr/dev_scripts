
import java.util.Scanner;


public class Exemplo_SwitchCase {
    public static void main (String[] args)
    {
        /*
        
        Forma mais simples de realizar um seleção de valores
        evitando que seja necessario o uso de IF e ELSE durante 
        a programação, melhorando o tratamento das condições 
        dentro do sistema.
            "Usado APENAS para o tratamento de INTEIROS" 
        
        */
        Scanner leitura = new Scanner(System.in);
        System.out.println("Digite um valor");
        int dia_da_semana = leitura.nextInt();
        switch(dia_da_semana)
        {
            case 1: System.out.println("Domingo");
            break;
            case 2: System.out.println("Segunda");
            break;
            case 3: System.out.println("Terça");
            break;
            case 4: System.out.println("Quarta");
            break;
            case 5: System.out.println("Quinta");
            break;
            case 6: System.out.println("Sexta");
            break;
            case 7: System.out.println("Sabado");
            break;     
        }
    }
}
