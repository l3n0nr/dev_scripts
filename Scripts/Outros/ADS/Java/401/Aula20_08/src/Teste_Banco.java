/**
 *
 * @author lenonr
 * 
 */

public class Teste_Banco 
{
    //CRIANDO METODO PRINCIPAL
    public static void main(String [] args)
    {
        //USANDO CONEXÃO
        //ConnectionFactory con = new ConnectionFactory();
        
        //CONECTANDO AO BANCO DE DADOS
        //con.conectar();
        
        //DESCONECTANDO O BANCO DE DADOS
        //con.desconectar();
        
        //CRIANDO PESSOA
        Pessoa p1 = new Pessoa();
        
        //INSERINDO VALORES
        p1.setCpf("123.123.123-12");
        p1.setEmail("lenonr@gmail.com");
        p1.setNome("João");
        
        //CRIANDO PESSOA NO BANCO DE DADOS
        Pessoas_DAO p = new Pessoas_DAO();
        
        //INSERINDO VALORES NA PESSOA
        p.Insere_Registro(p1);
        
        
    }    
}
