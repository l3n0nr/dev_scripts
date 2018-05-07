
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

public class PessoaDAO {

    private Conexoes c = new Conexoes();
    private Connection con;
    private PreparedStatement comando;
    private ResultSet r; // guardo o resultado dos atributos selecionados

    public void insereRegistro(Pessoa p) {
        con = c.conectar();
        try {
            String sql = "insert into pessoa (cpf,nome,email,data_nasc," + "momento_registro) values (?,?,?,?,?)";
            comando = con.prepareStatement(sql);
            comando.setString(1, p.getCpf());
            comando.setString(2, p.getNome());
            comando.setString(3, p.getEmail());
            comando.setDate(4, new java.sql.Date(p.getDataNascimento().getTime()));
            comando.setTimestamp(5, new java.sql.Timestamp(System.currentTimeMillis()));
            comando.execute();
        } catch (SQLException e) {
            System.out.println("Erro ao inserir" + e);
        } finally {
            c.desconectar();
        }
    }

    public void alterarRegistro(Pessoa p) {
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

        } catch (SQLException e) {
            System.out.println("Erro ao alterar" + e);
        } finally {
            c.desconectar();
        }

    }

    public void removerRegistro(Pessoa p) {
        con = c.conectar();
        try {
            String sql = "delete from pessoa where id=?";
            comando = con.prepareStatement(sql);
            comando.setInt(1, p.getId());
            comando.execute();
            System.out.println("Excluído com sucesso");

        } catch (SQLException e) {
            System.out.println("Erro ao excluir" + e);
        } finally {
            c.desconectar();
        }
    }

    public ArrayList<Pessoa> retornaRegistros() {
        con = c.conectar();
        ArrayList<Pessoa> resultados = new ArrayList();
        try {
            String sql = "selct * from pessoa";
            comando = con.prepareStatement(sql);
            ResultSet rs = comando.executeQuery();
            while (rs.next()) {
                Pessoa nova = new Pessoa();
                nova.setId(rs.getInt("id"));
                nova.setNome(rs.getString("nome"));
                nova.setCpf(rs.getString("cpf"));
                nova.setEmail(rs.getString("email"));
                nova.setDataNascimento(new java.util.Date(rs.getDate("data_nasc").getTime()));
                nova.setMomento_registro(rs.getTimestamp("momento_registro"));
                resultados.add(nova);

            }
            return resultados;

        } catch (SQLException e) {
            System.out.println("Erro ao consultar" + e);
        } finally {
            c.desconectar();
        }

        return null;
    }
//todas as pessoas com momento registro

    public ArrayList<Pessoa> retornaRegitroPorDatas(Timestamp dataIni,
            Timestamp dataFin) {

        con = c.conectar();
        ArrayList<Pessoa> resultado = new ArrayList<>();

        try {

            String sql = "SELECT * from pessoa where momento_resgitro"
                    + " BETWEEN ? and ?";

            comando = con.prepareStatement(sql);
            comando.setTimestamp(1, dataIni);
            comando.setTimestamp(2, dataFin);

            ResultSet rs = comando.executeQuery();
            while (rs.next()) {
                Pessoa nova = new Pessoa();

                nova.setNome(rs.getString("nome"));
                nova.setCpf(rs.getString("cpf"));
                nova.setEmail(rs.getString("email"));
                nova.setDataNascimento(new java.util.Date(rs.getDate("data_nasc").getTime()));
                //nova.setMomento_registro(new java.sql.Timestamp)
                nova.setMomento_registro(rs.getTimestamp("momento_registro"));
                System.out.println(nova.toString());
                resultado.add(nova);
            }

            System.out.println("Consulta realizada com sucesso");
            return resultado;

        } catch (SQLException ex) {
            System.out.println("Erro ao consultar resgitro" + ex);
        } finally {
            c.desconectar();
        }

        return null;
    }

    public ArrayList<Pessoa> retornaRegitro(Date d1,
            Date d2) {

        con = c.conectar();
        ArrayList<Pessoa> resultado = new ArrayList<>();

        try {

            String sql = "SELECT * from pessoa where data_nasc"
                    + " BETWEEN ? and ?";

            comando = con.prepareStatement(sql);
            comando.setDate(1, d1);
            comando.setDate(2, d2);

            ResultSet rs = comando.executeQuery();
            while (rs.next()) {
                Pessoa nova = new Pessoa();

                nova.setNome(rs.getString("nome"));
                nova.setCpf(rs.getString("cpf"));
                nova.setEmail(rs.getString("email"));
                nova.setDataNascimento(new java.util.Date(rs.getDate("data_nasc").getTime()));
                //nova.setMomento_registro(new java.sql.Timestamp)
                nova.setMomento_registro(rs.getTimestamp("momento_registro"));
                System.out.println(nova.toString());
                resultado.add(nova);
            }

            System.out.println("Consulta realizada com sucesso");
            return resultado;

        } catch (SQLException ex) {
            System.out.println("Erro ao consultar resgitro" + ex);
        } finally {
            c.desconectar();
        }

        return null;
    }

    public ArrayList<MesContagem> retornaContagensMes() {

        con = c.conectar();

        ArrayList<MesContagem> resultado = new ArrayList<>();

        try {

            String sql = "SELECT MONTH(data_nasc) as mes, count(MONTH(data_nasc)) as contagem from pessoa group by MONTH(data_nasc)";

            comando = con.prepareStatement(sql);
            ResultSet rs = comando.executeQuery();
            while (rs.next()) {
                MesContagem mc = new MesContagem();
                mc.mes = rs.getString("mes");
                mc.contagem = rs.getInt("contagem");
                resultado.add(mc);
            }
            System.out.println("Consulta realizada com sucesso");
            return resultado;
        } catch (SQLException ex) {
            System.err.println("Erro ao consultar resgitro" + ex);

        } finally {
            c.desconectar();
        }

        return null;
    }

}
//agrupa o mes e faz a contagem.

