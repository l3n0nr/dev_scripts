
/**
 *
 * @author lenonr
 * 
 */

import com.sun.rmi.rmid.ExecOptionPermission;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;


public class Pessoas_DAO 
{
    //USANDO AS CONEXÕES DE FORMA PRIVADA
    private ConnectionFactory c = new ConnectionFactory();
    private Connection con;
    private PreparedStatement comando;
    private ResultSet r;
    
    public void Insere_Registro(Pessoa p)
    {
        //CRIANDO CONEXÃO
        con = c.conectar();
        
        //TENTA REALIZAR INSTRUÇÃO SQL
        try 
        {
            String sql = "insert into pessoa (cpf, nome, email) values (?,?,?)";            
            comando = con.prepareStatement(sql);
            
            //PREENCHENDO VALORES
            comando.setString(1, p.getCpf());
            comando.setString(2, p.getNome());
            comando.setString(3, p.getEmail());
            
            //INSERIR, ALTERAR, REMOVER DADOS
            comando.execute();
            
            //REALIZANDO BUSCA
            //comando.executeQuery();                       
        }
        //CAPTURA ERRO
        catch(SQLException ex)
        {
            System.out.printf("Erro ao inserir registro " + con);
        }
        
        //ENCERRANDO CONEXÃO
        finally
        {
            c.desconectar();
        }
    }    
}
