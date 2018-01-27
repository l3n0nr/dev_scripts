package Sistema_Faculdade;

/**
 *
 * @author lenonr
 * 
 */
public class Empregado_Faculdade {
    
    protected String nome;
    protected double salario;
    
    
   public void setSalario(double s)
   {
       this.salario = s;
   }        
      
   public void setNome(String nome)
   {  
       this.nome = nome;
   }
   
   public double getGastos()
   {
       return salario;
   }
    
   public String getInfo()
   {
       return "Nome: " + this.nome + " com salario "  + salario+ ".";
   }
}
