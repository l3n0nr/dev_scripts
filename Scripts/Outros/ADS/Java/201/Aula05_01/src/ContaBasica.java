/**
 *
 * @author lenonr 
 * 
 **/
public class ContaBasica {
    private String nome_cliente;
    private int agencia;
    private int numero;
    private double saldo;
    private String endereco_cliente;
    
             /*DEFININDO GET e SET NOME_CLIENTE*/
    public String getNome_do_Cliente()
    {
        return nome_cliente;
    }
    
    public void setNome_do_Cliente(String nome)
    {
        this.nome_cliente = nome;
    }
            /*DEFININDO GET e SET AGENCIA*/
    public int getAgencia()
    {
        return agencia;
    }
    
    public void setAgencia(int num)
    {
        this.agencia = num;
    }
    
         /*DEFININDO GET e SET NUMERO*/
    public int getNumero()
    {
        return numero;
    }
    
    public void setNumero(int num)
    {
        this.numero = num;
    }
    
         /*DEFININDO GET e SET SALDO*/
    public double getSaldo()
    {
        return saldo;
    }
    
    public void setSaldo(double saldo)
    {
        this.saldo = saldo;
    }
      
         /*DEFININDO GET e SET ENDERECO_CLIENTE*/
    public String getEndereco_Cliente()
    {
        return endereco_cliente;
    }
    
    public void setEndereco_Cliente(String E_C)
    {
        this.endereco_cliente = E_C;
    } 
}
