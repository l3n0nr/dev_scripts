
public class OperadoresLogicos {
   public static void main(String[] args)
   {
        //Operadores logicos
       //&& AND retorna verdadeiro se duas proposiçoes forem verdadeiras
       /*
       boolean temInternet = true;
       boolean temBancoDeDados = false;
       System.out.println("Tem internet e banco de dados? " + (temInternet && temBancoDeDados));
       
       
       // || OR retorna verdadeiro se uma das proposiçoes forem verdadeiras
       boolean eMaiorDeIdade = true;
       boolean eEmancipado = false;
       
       System.out.println(eMaiorDeIdade || eEmancipado);
       
       
       // ^ XOR retorna verdadeira se apenas uma das proposiçoes forem verdadeiras
       
       boolean beneficio1 = true;
       boolean beneficio2 = false;
       System.out.println(beneficio1 ^ beneficio2);
       */
       
       //! NOT inverte o valor da expressao
       int idade = 18;
       boolean amigoDoDono = false;
       System.out.println(idade > 15 && !amigoDoDono);
       
   
   }
}
