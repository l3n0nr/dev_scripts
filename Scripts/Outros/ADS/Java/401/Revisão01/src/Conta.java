/**
 *
 * @author lenonr
 * 
 */
public class Conta 
{
    //CRIANDO ATRIBUTOS 
    int numeroconta;
    double saldo;
    String nomecliente;
    
    //CRIANDO CONSTRUTOR CONTA
    Conta(int n,double s,String nome)
    {
        numeroconta = n;
        saldo = s;
        nomecliente = nome;
    }
    
    //CRIANDO METODOS
    void sacar(double valor)
    {
        saldo = saldo - valor;
    }
    
    void depositar(double valor)
    {
        saldo = saldo + valor;
    }
    
    //METODO SOBRECARGA
    void sacar(double valor, int tipoSaque)
    {
        if (tipoSaque == 1)
        {
            System.out.println("----------------------------------------------------");
            System.out.println("Notas fracionadas");
            saldo = saldo - valor;
            System.out.println("Valor do saque " + valor + " e o seu saldo " + saldo);
            System.out.println("----------------------------------------------------");
        }
        else
        if (tipoSaque == 2)
        {
            System.out.println("----------------------------------------------------");
            System.out.println("Saque normal");
            saldo = saldo - valor;
            System.out.println("Valor do saque " + valor + " e o seu saldo " + saldo);
            System.out.println("----------------------------------------------------");
        }
    }
    
    
    
}
