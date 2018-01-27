
import java.util.ArrayList;
import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;


@ManagedBean
@ViewScoped
public class Cadastro {
    
    private Pessoa pessoaCadastrada;
    private ArrayList<Pessoa> contatos;
    private PessoaDAO pessoaDao;
    private ArrayList<Pessoa> contatosFiltrados;
    
    @PostConstruct
    public void init()
    {   
        pessoaCadastrada = new Pessoa();
        contatos = new ArrayList();
        pessoaDao = new PessoaDAO();
        contatosFiltrados = new ArrayList();
        listar();
    }

    public Pessoa getPessoaCadastrada() {
        return pessoaCadastrada;
    }

    public void setPessoaCadastrada(Pessoa pessoaCadastrada) {
        this.pessoaCadastrada = pessoaCadastrada;
    }

    public ArrayList<Pessoa> getContatos() {
        return contatos;
    }

    public void setContatos(ArrayList<Pessoa> contatos) {
        this.contatos = contatos;
    }
    
    //vai pegar pessoa cadastrar e fazer com que ele receba "new" pessoa
    public void prepararNovo()
    {
        pessoaCadastrada = new Pessoa();
    
    }
    
    public void cadastrar()
    {    
        pessoaDao.insereRegistro(pessoaCadastrada);
        contatos = pessoaDao.retornaRegistros();
    
    }
    
    public void excluir()
    {    
        pessoaDao.removerRegistro(pessoaCadastrada);
        contatos = pessoaDao.retornaRegistros();
    }
    
    public void alterar()
    {   
        pessoaDao.alterarRegistro(pessoaCadastrada);
        contatos = pessoaDao.retornaRegistros();
    }
    
    
    public void listar()
    {
        contatos = pessoaDao.retornaRegistros();
    }

    public ArrayList<Pessoa> getContatosFiltrados() {
        return contatosFiltrados;
    }

    public void setContatosFiltrados(ArrayList<Pessoa> contatosFiltrados) {
        this.contatosFiltrados = contatosFiltrados;
    }
    
    
}
