/**
 *
 * @author lenonr
 * 
 */
public class Contato 
{
    
    private String nome;
    private String endereco;
    private String telefone;
    
    private boolean verificaseVazio(String texto)
    {
        if (texto.length() == 0)
        {
            return true;        
        }
        else
        {
            return false;
        }
        
    }
    
    public void setnome(String novonome)
    {
        if (verificaseVazio(novonome) == false)
        {
            nome = novonome;
        }
        else
        {
            System.out.println("Voce deve preencher o valor de nome");
        }
    }
    
    public void setendereco(String novoendereco)
    {
        if (verificaseVazio(novoendereco) == false)
        {
            nome = novoendereco;
        }
        else
        {
            System.out.println("Voce deve preencher o valor de endereço");
        }
    }
 
    public void settelefone(String novotelefone)
    {
        if (verificaseVazio(novotelefone) == false)
        {
            nome = novotelefone;
        }
        else
        {
            System.out.println("Voce deve preencher o valor de telefone");
        }
    }
    
    
    public String getnome()
    {
        return nome;
    }
    
    public String getendereco()
    {
        return endereco;
    }

    public String gettelefone()
    {
        return telefone;
    }
    
    

    
}