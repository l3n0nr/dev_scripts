/**
 *
 * @author lenonr
 * 
 **/

public class Pessoa 
{
    //CRIANDO VARIADAS PRIVADAS PARA EVITAR O ACESSO DIRETAMENTE
    private String cpf;
    private String nome;
    private String email;

    //CRIANDO CONSTRUTOR
    public String getCpf() 
    {
        return cpf;
    }

    public String getNome() 
    {
        return nome;
    }

    public String getEmail() 
    {
        return email;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    
    
    
}
