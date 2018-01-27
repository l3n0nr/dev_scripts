
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexoes {

    // criando dados de conexão
    String usuario = "root";
    String senha = "";
    String caminho = "jdbc:mysql://localhost:3306/crud";
    Connection con;

    public Connection conectar() {
        try {
            //registrar o driver na aplicação
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            con = DriverManager.getConnection(caminho, usuario, senha);
             System.out.println("Conectado");
        } catch (SQLException e) {
            System.out.println("Erro de conexão"+ e);
        }

        return con;

    }
    
    public void desconectar()
    {
        try {
          con.close();
           System.out.println("Desconectado");
    } catch(SQLException e)
        {
        System.out.println("Erro: " + e);
        }
    }
}
