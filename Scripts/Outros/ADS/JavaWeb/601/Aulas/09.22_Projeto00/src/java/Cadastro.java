
import java.util.ArrayList;
import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author IFFarroupilha
 */

@ManagedBean

//utilizando para garantir que o managedbean, seja utilizado apenas em uma aba
@ViewScoped

public class Cadastro {
    private Pessoa pessoaCadastrada;    
    private ArrayList <Pessoa> contato;
    private PessoaDAO pessoadao;
    
    @PostConstruct
    public void init()
    {                    
        pessoaCadastrada = new Pessoa();
        contato = new ArrayList();
        pessoadao = new PessoaDAO();        
        
        //retornando todos os registros do banco
            listar();
    }

    public Pessoa getPessoaCadastrada() {
        return pessoaCadastrada;
    }

    public ArrayList<Pessoa> getContato() {
        return contato;
    }

    public void setPessoaCadastrada(Pessoa pessoaCadastrada) {
        this.pessoaCadastrada = pessoaCadastrada;
    }

    public void setContato(ArrayList<Pessoa> contato) {
        this.contato = contato;
    }
    
    public void prepararNovo()
    {
        pessoaCadastrada = new Pessoa();        
    }
    
    public void cadastrar()
    {
      pessoadao.insereRegistro(pessoaCadastrada);
      listar();
    }
    
    public void excluir()
    {
        pessoadao.removerRegistro(pessoaCadastrada);
        listar();
    }
    
    public void alterar()
    {
        pessoadao.alteraRegistro(pessoaCadastrada);
        listar();
    }
    
    public void listar()
    {
        contato = pessoadao.retornaRegistros();                
    }
}
