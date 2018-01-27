
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author IFFarroupilha
 */
public class Conexoes 
{
    String usuario = "root";
    String senha = "";
    String caminho = "jdbc:mysql://localhost:3306/crudjava";
    Connection con;
    
    public Connection conectar()
    {    
        try        
        {
            //registando driver na aplicação
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());            
            con = DriverManager.getConnection(caminho, usuario, senha);
            System.out.println("Conectou");
        }
        catch(SQLException e)
        {
            System.out.println("Erro de conexão: " + e);
        }
        return con;
    }        
    
    //fechando a conexão do banco de dados
    public void desconectar()
    {
        try
        {
            con.close();
            System.out.println("Desconectou!");
        }
        catch(SQLException e)
        {
            System.out.println("Erro: " + e);
        }
    }
}
