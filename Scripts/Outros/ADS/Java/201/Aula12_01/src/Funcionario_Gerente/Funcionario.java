package Funcionario_Gerente;

/**
 *
 * @author lenonr
 * 
 **/
public class Funcionario {
   
   //Protected permite que a classe e as subclasses acessem os seus atributos
    
   protected String nome;
   protected String cpf;
   protected double salario;
   
   /*
        Todo o fim de ano, os funcionarios recebem uma bonificação. Os funcionarios comuns recebem 10% do valor do salario e os gerentes 15%.
   */
   
   public double getBonificacao()
   {  
       return this.salario + 1000 * 0.10;
   }
   
   public String toString()
   {
       return "Nome: " + nome + ", Cpf: " + cpf + ", Salario: " + salario+ ".";
   }
   
   
   
   
   
   
}
