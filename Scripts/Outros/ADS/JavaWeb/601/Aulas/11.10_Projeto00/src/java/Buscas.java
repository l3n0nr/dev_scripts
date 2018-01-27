
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import org.w3c.dom.Document;





@ManagedBean
@ViewScoped
public class Buscas {
    
    ArrayList<Pessoa> contatosPesquisados;
    PessoaDAO pessoaDao;
    Date dataInicial;
    Date dataFinal;
    String optionBusca;

    public ArrayList<Pessoa> getContatosPesquisados() {
        return contatosPesquisados;
    }

    public void setContatosPesquisados(ArrayList<Pessoa> contatosPesquisados) {
        this.contatosPesquisados = contatosPesquisados;
    }

    public PessoaDAO getPessoaDao() {
        return pessoaDao;
    }

    public void setPessoaDao(PessoaDAO pessoaDao) {
        this.pessoaDao = pessoaDao;
    }

    public Date getDataInicial() {
        return dataInicial;
    }

    public void setDataInicial(Date dataInicial) {
        this.dataInicial = dataInicial;
    }

    public Date getDataFinal() {
        return dataFinal;
    }

    public void setDataFinal(Date dataFinal) {
        this.dataFinal = dataFinal;
    }

    public String getOptionBusca() {
        return optionBusca;
    }

    public void setOptionBusca(String optionBusca) {
        this.optionBusca = optionBusca;
    }
    
    
    @PostConstruct
    
    public void init(){
        
        optionBusca= "dtnasc";
        dataInicial = new Date();
        dataFinal = new Date();
        pessoaDao = new PessoaDAO();
        contatosPesquisados = new ArrayList();
        
    }
    
   
    public void buscarPorDataNasc(){
        
        System.out.println("Buscando registro entre " + dataFinal.toString() + "e" + dataFinal.toString());
        contatosPesquisados = 
                
         pessoaDao.retornaRegitro(
                 
        new java.sql.Date(dataInicial.getTime()),
        new java.sql.Date(dataFinal.getTime()));
    
        
        
    }
    
    
    public void buscarPorIntervaloRegistro(){
        
        contatosPesquisados =
               pessoaDao.retornaRegitroPorDatas(
               new java.sql.Timestamp(dataInicial.getTime()),
                new java.sql.Timestamp(dataFinal.getTime()));
        
    }
    
    /*
    public void preProcessPDF (Object document) throws IOException{
        Document pdf = (Document) document;
        pdf.open();
        pdf.setPageSize(PageSize A4);
        
    }
    */
    
}
