
import java.awt.BorderLayout;
import java.awt.GridLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;

/**
 *
 * @author lenonr
 * 
 */

public class Border_Exemplo extends JFrame
{
    //CRIANDO BOTOES
    private JButton sim,nao,cancelar,talvez;
    //CRIANDO LABELS
    private JLabel mensagem;
    
    public Border_Exemplo()
    {
        //DEFININDO NOME DA JANELA
        super("Exemplo BorderLayout");
        
        //CRIANDO OBJETOS
        sim = new JButton("Sim");
        nao = new JButton("Não");
        cancelar = new JButton("Cancelar");
        talvez = new JButton("Talvez");
        mensagem = new JLabel("Deseja instalar o Baidu Antivirus");
        
        //RETORNA O GRID
        getContentPane().setLayout(new BorderLayout());     
    }
    
    public void init()
    {
        //DEFININDO TAMANHO DA JANELA
        setSize(300,100);

        //DEFININDO LOCALIZAÇÃO DA JANELA
        setLocation(500,250);

        //ADICIONANDO COMPONENTES
        getContentPane().add(mensagem,BorderLayout.NORTH);
        getContentPane().add(sim,BorderLayout.EAST);
        getContentPane().add(nao,BorderLayout.WEST);
        getContentPane().add(cancelar,BorderLayout.SOUTH);
        getContentPane().add(talvez,BorderLayout.CENTER);

        
    }
    
    //CRIANDO METODO MAIN
    public static void main(String [] args)
    {
        new Border_Exemplo().init();
    }
    
    
}
