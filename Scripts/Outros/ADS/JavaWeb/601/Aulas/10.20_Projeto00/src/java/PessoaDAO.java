
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class PessoaDAO {
    private Conexoes c = new Conexoes();
    private Connection con;
    private PreparedStatement comando;
    private ResultSet r; // guardo o resultado dos atributos selecionados
    
    public void insereRegistro(Pessoa p)
    {
        con = c.conectar();
        try{
            String sql = "insert into pessoa (cpf,nome,email,data_nasc," + "momento_registro) values (?,?,?,?,?)";
            comando = con.prepareStatement(sql);
                comando.setString(1, p.getCpf());
                comando.setString(2, p.getNome());
                comando.setString(3, p.getEmail());
                comando.setDate(4, new java.sql.Date(p.getDataNascimento().getTime()));
                comando.setTimestamp(5, new java.sql.Timestamp(System.currentTimeMillis()));
                comando.execute();
        } 
            catch(SQLException e)
        {
             System.out.println("Erro ao inserir" + e);
        }
        
        finally {
                    c.desconectar();
        }
    }
    
    public void alterarRegistro (Pessoa p)
    {
        String sql = "update pessoa set cpf = ?, nome = ?, email = ?, data_nasc = ? where id = ?";
            try {
                con = c.conectar();
                comando = con.prepareStatement(sql);
                comando.setString(1, p.getCpf());
                comando.setString(2, p.getNome());
                comando.setString(3, p.getEmail());
                comando.setDate(4, new java.sql.Date(p.getDataNascimento().getTime()));
                comando.setInt(5, p.getId());
                System.out.println("Alterado com sucesso");
                comando.execute();
                
        } catch (SQLException e)
            {
                    System.out.println("Erro ao alterar" + e);
            } finally {
                            c.desconectar();
            }
            
    }
    
    public void removerRegistro(Pessoa p)
    {
        con = c.conectar();
              try{
                     String sql = "delete from pessoa where id=?";
                     comando = con.prepareStatement(sql);
                     comando.setInt(1, p.getId());
                     comando.execute();
                     System.out.println("Excluído com sucesso");
                
        }   
                catch(SQLException e)
        {
            System.out.println("Erro ao excluir" + e);
        } 
        
                finally {
                        c.desconectar();
        }
    }
    
public ArrayList<Pessoa> retornaRegistros()
  {
    con = c.conectar();
        ArrayList<Pessoa> resultados = new ArrayList();
            try{
                 String sql = "selct * from pessoa";
                    comando = con.prepareStatement(sql);
                    ResultSet rs = comando.executeQuery();
                        while(rs.next())
                    {
                           Pessoa nova = new Pessoa();
                           nova.setId(rs.getInt("id"));
                           nova.setNome(rs.getString("nome"));
                           nova.setCpf(rs.getString("cpf"));
                           nova.setEmail(rs.getString("email"));
                           nova.setDataNascimento(new java.util.Date(rs.getDate("data_nasc").getTime()));
                           nova.setMomento_registro(rs.getTimestamp("momento_registro"));
                           resultados.add(nova);
                           
                    } return resultados;
        
        }
        
            catch(SQLException e)
        {
                    System.out.println("Erro ao consultar" + e);
        } 
                finally
            {
                    c.desconectar();
            }
        
            return null;
    }
    
}
