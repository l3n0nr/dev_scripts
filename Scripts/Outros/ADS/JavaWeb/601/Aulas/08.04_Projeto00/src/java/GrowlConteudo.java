
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;

//
@ManagedBean

public class GrowlConteudo {

    private String message;

    //criando funções para acessar os arquivos
    public String GetMessage() {
        return message;
    }

    public void SetMessage(String message) {
        this.message = message;
    }
    
    //Salvando a mensagem
    public void saveMessage()
    {
    FacesContext context = FacesContext.getCurrentInstance();
    //context cria parametros para adicionar a mensagem
    //primeiro o grau de informação() segundo o titúlo da janela, terceiro a mensagem
    context.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO,"Warning",message));
    }

}
