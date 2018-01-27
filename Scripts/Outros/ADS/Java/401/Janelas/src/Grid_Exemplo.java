
import java.awt.FlowLayout;
import java.awt.GridLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;

/**
 *
 * @author lenonr
 * 
 */
public class Grid_Exemplo extends JFrame
{
    //CRIANDO BOTOES
    private JButton sim,nao,cancelar,talvez;
    //CRIANDO LABELS
    private JLabel mensagem;
    
    //CRIANDO CONSTRUTOR
    public Grid_Exemplo()
    {
        //DEFININDO NOME DA JANELA
        super("Exemplo GridLayout");
        
        //CRIANDO OBJETOS
        sim = new JButton("Sim");
        nao = new JButton("Não");
        cancelar = new JButton("Cancelar");
        talvez = new JButton("Talvez");
        mensagem = new JLabel("Deseja instalar o Baidu Antivirus");
        
        
        //RETORNA O GRID
        getContentPane().setLayout(new GridLayout(3,2));     
    }
     
    public void init()
    {
        //DEFININDO TAMANHO DA JANELA
        setSize(300,100);

        //DEFININDO LOCALIZAÇÃO DA JANELA
        setLocation(500,250);

        //ADICIONANDO COMPONENTES
        getContentPane().add(mensagem);
        getContentPane().add(sim);
        getContentPane().add(nao);
        getContentPane().add(cancelar);
        getContentPane().add(talvez);

        //MOSTRANDO JANELA
        setVisible(true);
    }
    
     //CRIANDO METODO MAIN
    public static void main(String [] args)
    {
        new Grid_Exemplo().init();
    }
}
