/**
 *
 * @author lenonr
 * 
 */
public class ContaEspecial extends Conta
{    
    double limite;
    
    public ContaEspecial(int n, double s, String nome, double limite)
    {
        super(n,s,nome);
        limite = limite;
    }
    
}
