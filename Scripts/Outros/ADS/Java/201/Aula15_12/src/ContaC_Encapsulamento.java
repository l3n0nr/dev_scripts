/**
 *
 * @author lenonr
 * 
 */
public class ContaC_Encapsulamento 
{
    private double saldo = 0;
    private boolean disponibilidade = true;
    boolean verificar_valorNegativo;
    
    public double getsaldo()
    {
        return saldo;
    }
    
    
    boolean verificar_valorNegativo(double valor)
    {
        if (valor < 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    
    public void Depositar(double valor)
    {
        if (verificar_valorNegativo(valor) == false)
        {
            saldo = saldo + valor;
        }
        else
        {
            System.out.println("Não é permitido depositar valor negativo");
        }
    }
    
    public void Sacar(double valor)
    {
        if (verificar_valorNegativo(valor) == false)
        {
            saldo = saldo - valor;
        }
        else
        {
            System.out.println("Não é permitido sacar valor negativo");
        }
    }
    
    void Disponibilidade()
    {
        if (saldo ==0 && disponibilidade == true)
        {
            disponibilidade = false;
        }
        else
        {
            System.out.println("Esta conta não pode ser tornada inativa");
        }
        if (disponibilidade == false)
        {
            disponibilidade = true;
        }
    }
    
}
