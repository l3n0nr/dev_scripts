
//IMPORTANDO CLASSES
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.InputEvent;
import java.awt.event.KeyEvent;
import javax.swing.JFrame;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.KeyStroke;

/**
 *
 * @author lenonr
 * 
 */

public class Eventos_Menus_Teclas_Atalhos extends JFrame
{
    //CRIANDO MENUS
    private JMenuItem abrir, novo, salvar, sair;
    
    private JMenu arquivo;
    
    //CRIANDO BARRA DE MENUS
    private JMenuBar menubar;
    
    //CRIANDO CONSTRUTOR
    public Eventos_Menus_Teclas_Atalhos()
    {
        //TITULO JANELA
        super("Eventos Menu Exemplo");
    }
    
    //CRIANDO INIT
    public void init()
    {
        //DEFININDO TAMANHO
        setSize(400,400);
        
        //DEFININDO LOCALIZAÇÃO
        setLocation(300,200);
        
        //CONSTRUINDO OS OBJETOS
        abrir = new JMenuItem("Abrir");
        novo  = new JMenuItem("Novo");
        salvar= new JMenuItem("Salvar");
        sair  = new JMenuItem("Sair");
        
        //REGISTRANDO NO LISTENER
        MenuHandler mh = new MenuHandler();
        
        abrir.addActionListener(mh);
        novo.addActionListener(mh);
        salvar.addActionListener(mh);
        sair.addActionListener(mh);
        
        //CRIANDO MENU
        arquivo = new JMenu("Arquivo");
        
        //DEFININDO TECLAS DE ATALHOS
        //ATL + A
        arquivo.setMnemonic('A');
        
        //CTRL + letra para item de menu
        abrir.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_A, InputEvent.CTRL_MASK, false));
        novo.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_N, InputEvent.CTRL_MASK, false));
        salvar.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_S, InputEvent.CTRL_MASK, false));
        sair.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_Q, InputEvent.CTRL_MASK, false));
        
        
        //COLOCANDO OPÇOES DENTRO DE ARQUIVO
        arquivo.add(abrir);
        arquivo.add(novo);
        arquivo.add(salvar);
        arquivo.add(sair);
    
        menubar = new JMenuBar();
        menubar.add(arquivo);
        
        setJMenuBar(menubar);
        
        //MOSTRANDO JANELA
        setVisible(true);
    } 
    
    //CRIANDO CLASSE INTERNA
    class MenuHandler implements ActionListener
    {
        @Override
        public void actionPerformed(ActionEvent e) 
        {
            if(e.getSource() == sair)
            {
                System.exit(0);
            }
            else
            if (e.getSource() == abrir)
            {
                JOptionPane.showMessageDialog(null, "Você clicou em ABRIR");
            }
            else
            if (e.getSource() == salvar)
            {
                JOptionPane.showMessageDialog(null, "Você clicou em SALVAR");
            }
            else
            if (e.getSource() == novo)
            {
                JOptionPane.showMessageDialog(null, "Você clicou em NOVO");
            }
        }
                 
    }
            
    //CRIANDO CLASSE PRINCIPAL
    public static void main(String [] args)
    {
        new Eventos_Menus_Teclas_Atalhos().init();
    }
}
