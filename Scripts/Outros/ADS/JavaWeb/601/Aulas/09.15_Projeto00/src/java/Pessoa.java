
import java.sql.Timestamp;
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author IFFarroupilha
 */
public class Pessoa 
{
    private int id;
    private String nome, cpf, email;
    private Date datanascimento;
    
    //estante do tempo com data e hora
    private Timestamp momento_registro;

    public int getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public String getCpf() {
        return cpf;
    }

    public String getEmail() {
        return email;
    }

    public Date getDatanascimento() {
        return datanascimento;
    }

    public Timestamp getMomento_registro() {
        return momento_registro;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setDatanascimento(Date datanascimento) {
        this.datanascimento = datanascimento;
    }

    public void setMomento_registro(Timestamp momento_registro) {
        this.momento_registro = momento_registro;
    }
    
    
    
    
}
