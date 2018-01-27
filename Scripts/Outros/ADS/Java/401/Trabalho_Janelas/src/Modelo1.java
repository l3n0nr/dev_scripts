
import java.awt.GridLayout;
import java.awt.Toolkit;
import javax.swing.ButtonGroup;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.JTextField;

/**
 * 
 *
 * @author lenonr
 * 
 * 
 **/

public class Modelo1 extends JFrame
{
    //INSERINDO MENUS
    private JMenuItem sair;
    
    private JMenu cadastrar, verificar;
    
    private JMenuBar menubar;
    
    //CRIANDO LABELS
    private JLabel a,b;
    
    //CRIANDO CAIXA DE TEXTO
    private JTextField caixa;
    
    //CRIANDO BOTOES
    private JButton B;
    
    //CRIANDO CHECKBOX
    private JCheckBox carro, moto, casa, apartamento;
    
    //CRIANDO RADIO BUTTON
    private JRadioButton masculino, feminino;
     
    //CRIANDO PAINEL
    private JPanel button1, button2, button3, button4;
    
    //CRIANDO CONSTRUTOR
    public Modelo1()
    {
        //TITULOS DA JANELA
        super("Cadastro de Usuários");
        
        B = new JButton("Procurar Usuario");
        
        carro = new JCheckBox("Carros");
        moto  = new JCheckBox("Moto");
        casa  = new JCheckBox("Casa");
        apartamento = new JCheckBox("Apartamento");
        
        masculino = new JRadioButton("Masculino");
        feminino  = new JRadioButton("Feminino");
        
        a = new JLabel("Digite o nome do usuario, para verificar se ele existe no sistema");
        b = new JLabel("Escolha o sexo:");
        
        caixa = new JTextField(40);
    }
    
    //INICIANDO A JANELA
    public void init()
    {
        
        //DEIXANDO A JANELA COM TAMANHO IGUAL AO DA TELA
        setSize(Toolkit.getDefaultToolkit().getScreenSize().width, Toolkit.getDefaultToolkit().getScreenSize().width);
        
        //DEFININDO LOCALIZAÇÃO
        setLocation(300,200);
        
        //CONSTRUINDO OS OBJETOS
        cadastrar = new JMenu("|Cadastrar|");
        verificar   = new JMenu("|-Verificar-|");
        sair    = new JMenu("|Sair|");
        
        //CONSTRUINDO MENU EDITAR
                
        //CRIANDO OBJETO MENU
        menubar = new JMenuBar();
        
        //ADICIONANDO MENUS A BARA
        menubar.add(cadastrar);
        menubar.add(verificar);
        menubar.add(sair);
        
        ////////////////////////////////////////////////////
        
        getContentPane().setLayout(new GridLayout(4,2));
        
        button1 = new JPanel();
        button1.add(a);
        
        button2 = new JPanel();
        button2.add(caixa);
        
        button3 = new JPanel();
        ButtonGroup sexo = new ButtonGroup();
        //sexo.add(masculino);
        // sexo.add(feminino);
        
        button3.add(b);
        button3.add(masculino);
        button3.add(feminino);
        
        button4 = new JPanel();
        button4.add(B);
               
        getContentPane().add(button1);
        getContentPane().add(button2);
        getContentPane().add(button3);
        getContentPane().add(button4);

        //DEFINDO BARRA DE MENUS
        setJMenuBar(menubar);
        
        //FECHANDO A JANELA PRINCIPAL
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        //DEFININDO VISIBILIDADE DA JANELA
        setVisible(true);
    }
    
    //CHAMANDO METODO PRINCIPAL
    public static void main(String [] args) throws Exception
    {
        //CHAMANDO A CLASSE
        new Modelo1().init();
    }
}
