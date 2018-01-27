

/**
 *
 * @author lenonr
 * 
 */
public class ContaS_Encapsulamento 
{
    double saldo = 0;
    boolean disponibilidade = true;
    boolean verificar_valorNegativo;
    
    
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
    
    void Depositar(double valor)
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
    
    void Sacar(double valor)
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
