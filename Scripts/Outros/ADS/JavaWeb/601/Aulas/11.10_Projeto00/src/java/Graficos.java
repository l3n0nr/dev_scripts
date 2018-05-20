
import java.util.ArrayList;
import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import org.primefaces.model.chart.PieChartModel;



@ManagedBean
 
public class Graficos {
    
    private PieChartModel aniversariantesMes;
    private PessoaDAO pessoaDAO;
    ArrayList<MesContagem> dadosPorMes;
    
    @PostConstruct
    public void init(){
        
        pessoaDAO = new PessoaDAO();
        dadosPorMes = new ArrayList();
        aniversariantesMes = new PieChartModel();
        aniversariantesMes.setTitle("Aniversariantes x Mes");
        aniversariantesMes.setDiameter(150);
        aniversariantesMes.setFill(true);//preenchimento
        aniversariantesMes.setShowDataLabels(true);//labels
        //n = norte, s= sul, e = leste, w = oeste
        aniversariantesMes.setLegendPosition("e");
        dadosPorMes = pessoaDAO.retornaContagensMes();
        for (MesContagem n : dadosPorMes){
            
            aniversariantesMes.set(n.mes, n.contagem);
        }
        
    }

    public PieChartModel getAniversariantesMes() {
        return aniversariantesMes;
    }

    public void setAniversariantesMes(PieChartModel aniversariantesMes) {
        this.aniversariantesMes = aniversariantesMes;
    }
    
    
    
    
}
