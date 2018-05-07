/**
 *
 * @author lenonr
 * 
 **/

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLClientInfoException;
import java.sql.SQLException;

public class ConnectionFactory 
{
    //CRIANDO VARIAVEIS
    String usuario = "lenonr"; //VERIFICAR
    String senha = " ";
    String caminho = "jdbc:postgresql://localhost:5432/postgres"; //VERIFICAR
    Connection con;
    
    //CRIANDO METODO CONECTAR
    public Connection conectar()
    {
        //TENTANDO CONECTAR
        try
        {
            con = DriverManager.getConnection(caminho,usuario,senha);
            System.out.println("Conexão Estabelecida! ");
        }
        //CAPTURAR ERRO E MOSTRANDO MENSAGEM
        catch(SQLException ex)
        {
            System.out.println("Erro na conexão! " + ex.getMessage());
        }
        return con; 
    }
    
    //CRIANDO METODO DESCONECTAR
    public void desconectar()
    {
        //TENTANDO DESCONECTAR
        try
        {
            con.close();
            System.out.println("Conexão encerrada");            
        }
        //CAPTURAR ERRO E MOSTRANDO MENSAGEM
        catch(SQLException ex)
        {
            System.out.println("Erro no momento de desconectar" + ex);
        }
    }
}
