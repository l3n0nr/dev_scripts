
import java.awt.FlowLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;

/**
 *
 * @author lenonr
 * 
 */

public class Layout_Flow extends JFrame
{
    //CRIANDO BOTOES
    private JButton sim,nao,cancelar;
    //CRIANDO LABELS
    private JLabel mensagem;
    
    public Layout_Flow()
    {
        //DEFININDO NOME DA JANELA
        super("Exemplo Flow Layout");
        
        //CRIANDO OBJETOS
        sim = new JButton("Sim");
        nao = new JButton("Sim");
        cancelar = new JButton("Sim");
        mensagem = new JLabel("Deseja instalar o Baidu Antivirus??");
        
        //RETORNA A PROPRIA JANELA, PARA QUE SEJA MODIFICAR O MESMO
        getContentPane().setLayout(new FlowLayout());     
    }
    
    //CRIANDO METODO INIT
    public void init()
    {
        //DEFININDO TAMANHO DA JANELA
        setSize(250,100);

        //DEFININDO LOCALIZAÇÃO DA JANELA
        setLocation(500,250);

        //ADICIONANDO COMPONENTES
        getContentPane().add(mensagem);
        getContentPane().add(sim);
        getContentPane().add(nao);
        getContentPane().add(cancelar);

        //MOSTRANDO JANELA
        setVisible(true);
    }
    
    //CRIANDO METODO MAIN
    public static void main(String [] args)
    {
        new Layout_Flow().init();
    }
        
}
    
   
