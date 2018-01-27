
import java.sql.Timestamp;
import java.util.Date;

public class Pessoa {
    private int id;
    private String nome,cpf,email;
    private Date dataNascimento;
    private Timestamp momento_registro;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(Date dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public Timestamp getMomento_registro() {
        return momento_registro;
    }

    public void setMomento_registro(Timestamp momento_registro) {
        this.momento_registro = momento_registro;
    }
    
    
}
