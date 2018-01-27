


public class FormatacaoString {
    public static void main (String [] args)
    {
        //Primeiro parametro é o padrao de formatação
        //Segundo parametro é o valor a ser formatado
        //System.out.println(String.format("%.2f",19.01010));
        //Imprime o inteiro e se o comprimento for menor que 3 preenche à esquerda com espaços a esquerda
        /*System.out.println(String.format("%3d", 5));
        System.out.println(String.format("%3d", 50));
        System.out.println(String.format("%3d", 500));
        System.out.println(String.format("%3d", 5000));*/
        //Imprime o inteiro e se o comprimento for menor que 3 preenche á direita com espaços a direita
        /*System.out.println(String.format("%-3d", 5));
        System.out.println(String.format("%-3d", 500,000));
        System.out.println(String.format("%-3d", 500));
        System.out.println(String.format("%-3d", 5000));*/
         //Imprime o inteiro e se o comprimento for menor que tres preenche com zeros a esquerda
        /*System.out.println(String.format("%05d", 5));
        System.out.println(String.format("%02d", 4));
        System.out.println(String.format("%03d", 4));
        System.out.println(String.format("%03d", 50000));*/
        System.out.printf("Aqui esta o valor inteiro %3d e aqui esta o valor real %.3f ", 3,3.5);
    }
    
    
}
