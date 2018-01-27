package Sistema_Faculdade;

/**
 *
 * @author lenonr
 * 
 */
public class Professor_Faculdade  extends Empregado_Faculdade{
    
    private int horas_Aula;
    
    public void sethoras_Aula(int horas)
    {
        this.horas_Aula = horas;
    }
    
    
    //Sobreescrevendo metodo getGastos
    public double getGastos()
    {
        return super.getGastos() + this.horas_Aula * 50;
    }
    
    //Sobreescrito o metodo getInfo()
    public String getInfo()
    {
        String informacao_Basica = super.toString() ;
        String informacao = informacao_Basica + "horas aula: " + this.horas_Aula;
        return informacao;
    }
    
    
}
