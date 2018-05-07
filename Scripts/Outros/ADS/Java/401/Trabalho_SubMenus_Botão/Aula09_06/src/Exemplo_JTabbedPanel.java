
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTabbedPane;


/**
 *
 * @author lenonr
 * 
 **/

/*
    JFRAME - PARA JANELAS
    JPANEL - PARA PAINEIS
*/

public class Exemplo_JTabbedPanel extends JFrame
{
    //CRIANDO BOTOES
    JButton b1;
    JPanel botoes;
    JPanel radio;
    JPanel check;
    
    //DEFININDO PAINEL INTERNO
    Panel_Interno0 pi1;
    Painel_Interno1 pi2;
    
    //CRIANDO CONSTRUTOR
    public Exemplo_JTabbedPanel()
    {
        //DEFININDO LAYOUT DA JANELA
        setLayout(new GridLayout(2,1));
        
        //DEFININDO TITULO
        setTitle("Usando TabbedPane");
        
        //DEFININDO LOCAL ONDE SERÃO ARMAZENADOS OS PAINEIS
        JTabbedPane pane = new JTabbedPane();
        
        //CRIANDO PAINEL INTERNO
        pi1 = new Panel_Interno0();
        pi1.init();
        
        //ADICIONANDO PAINEL AO TABBEDPANE
        pane.add(pi1,"Painel Interno 1");
                                   
        /**********************************************************************/
        
        //CRIANDO SEGUNDO PAINEL INTERNO        
        pi2 = new Painel_Interno1();
        pi2.init();                                
        
        //ADICIONANDO PAINEL AO TABBEDPANE
        pane.add(pi2,"Painel Interno 2");   
        
        //DEFININDO BOTÃO
        b1 = new JButton("Salvar");                      
        
        //DEFININDO AÇÃO PARA O BOTÃO
        b1.addActionListener(new TabbedHandler());    
        
        //CRIANDO PAINEL DE BOTOES
        botoes = new JPanel();
                
        //ADICIONANDO BOTÃO AO PAINEL
        botoes.add(b1); 
        
          
        
        //ADICIONANDO JTABBEDPANEL A JANELA PRINCIPAL
        add(pane);
        
        //ADCIONANDO PAINEL DE BOTOES A JANELA PRINCIPAL
        add(botoes); 
        
        //DEFININDO TAMANHO DA JANELA
        setSize(600,400);
    }
    
    //CRIANDO ACTIONLISTENER'S
    class TabbedHandler implements ActionListener
    {

        @Override
        public void actionPerformed(ActionEvent e) 
        {
            //CHAMANDO E MOSTRANDO TXTNOME
            JOptionPane.showMessageDialog(null, "Nome: " + pi1.getTxtNome()
                                              + "\nDetalhes: " + pi1.getTxtDetalhes()     
                                              + "\n Valor do RadioButton: " + pi2.getradio()
                                              + "\n Valor do CheckBox: " + pi2.getcheck());
        }    
    }
    
    //CRIANDO METODO MAIN
    public static void main (String [] args)
    {
        Exemplo_JTabbedPanel ex1 = new Exemplo_JTabbedPanel();
        
        //MOSTRANDO A JANELA
        ex1.setVisible(true);       
        
        //FECHANDO O PROCESSO DA JANELA AUTOMATICAMENTE
        ex1.setDefaultCloseOperation(EXIT_ON_CLOSE);
    }
            
}
