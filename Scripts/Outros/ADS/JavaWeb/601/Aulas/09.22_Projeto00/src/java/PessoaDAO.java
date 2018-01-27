

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.jms.ConnectionFactory;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author IFFarroupilha
 */
public class PessoaDAO 
{
    //para realizar as conexoes, quando for necessários realizar alguma ação
    private Conexoes c = new Conexoes();    
    
    //
    private Connection con;
    
    //usado para montar o comando para acesso ao banco de dados
    private PreparedStatement comando;
    
    //usado para mostrar os resultados das ações
    private ResultSet r;
    
    public void insereRegistro(Pessoa p)
    {
        con = c.conectar();
        
        //tentando realizar a conexão
        try
        {
            //criando a consulta SQL
                String sql = "insert into pessoa(cpf,nome,email,data_nasc,momento_registro)  values(?,?,?,?,?)";            
                
            comando = con.prepareStatement(sql);           
            
            //inserindo valores de acordo com as suas opções
                comando.setString(1, p.getCpf());
                comando.setString(2, p.getNome());
                comando.setString(3 , p.getEmail());
                comando.setDate(4, new java.sql.Date(p.getDatanascimento().getTime()));
                comando.setTimestamp(5, new java.sql.Timestamp(System.currentTimeMillis()));
                
            //executando inserção dos valores  
                comando.execute();
        }
        catch(SQLException e)            
        {
            System.out.println("Erro ao inserir dados");
        }
        
        //finalizando conexao
            finally
            {
                c.desconectar();
            }               
    }        
    
    public void alteraRegistro(Pessoa p)
    {
        con = c.conectar();
        
        String sql = "update pessoa set cpf = ?, nome = ?, email = ?, data,nasc = ? where id=?";
        
        try
        {
            comando = con.prepareStatement(sql);           

            //inserindo valores de acordo com as suas opções
                comando.setString(0, p.getCpf());
                comando.setString(1, p.getNome());
                comando.setString(2, p.getEmail());
                comando.setDate(4, new java.sql.Date(p.getDatanascimento().getTime()));
                
            //alterando informações de uma pessoa especifica, de acordo com o ID
                comando.setInt(0, p.getId());
                System.out.println("Dados alterados com sucesso");
                
            //execuntando a ação
                comando.execute();
        }
        catch(SQLException e)
        {
            System.out.println("Erro na alteração do valor");
        }
        
        //finalizando a conexão        
            c.desconectar();
    }
    
    public void removerRegistro(Pessoa p)
    {
        con = c.conectar();
        
        try
        {
            String sql = "delete from pessoa where id=?";
            comando = con.prepareStatement(sql);
            comando.setInt(1, p.getId());
            comando.execute();
        }
        catch(SQLException e)
        {
            System.out.println("Erro ao excluir" + e);        
        }
        
        finally
        {
            c.desconectar();
        }                
    }
    
    //retornando informações
    public ArrayList <Pessoa> retornaRegistros()
    {
        con = c.conectar();
        ArrayList<Pessoa> resultados = new ArrayList();

        try
        {
            String sql = "select * from pessoa";
            comando = con.prepareStatement(sql);
            ResultSet rs = comando.executeQuery();

            while(rs.next())
            {
                Pessoa nova = new Pessoa();
                nova.setId(rs.getInt("id"));
                nova.setNome(rs.getString("nome"));
                nova.setCpf(rs.getString("cpf"));
                nova.setEmail(rs.getString("email"));
                nova.setDatanascimento(new java.util.Date(rs.getDate("data_nasc").getTime()));
                nova.setMomento_registro(rs.getTimestamp("momento_registro"));
                resultados.add(nova);                                        
            }


            return resultados;
        }
        catch(SQLException e)
        {
            System.out.println("Erro: " + e);
        }    

        //desconectando
        finally
        {
            c.desconectar();
        }

        //se nao for encontrado nenhum registro, mostrar vazio
        return null;
    }
}
