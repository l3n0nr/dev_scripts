
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JPanel;

/**
 *
 * @author lenonr
 * 
 **/

public class Janela_Principal extends JFrame
{
    //CRIANDO MENUS
    private JMenu cadastrar;
    /**********************************/     
    
    /*CRIADO PAINEL*/
    private JPanel painel;
    /***************/
    
    //CRIANDO SUB-MENUS
    private JMenuItem cadastrar_cliente, cadastrar_produto;
    /**********************************/        
    
    //CRIANDO LABEL PARA MENSAGEM
    private JLabel mensagem;
    /***************************/
    
    //CRIANDO BARRA DE MENUS
    private JMenuBar menubar;
    /**********************************/        
    
    //CRIANDO CONSTRUTOR
    public Janela_Principal()
    {
        //TITULOS DA JANELA
        super("Sistema de cadastro");
    }
    /**********************************/        
    
    //INICIANDO A JANELA
    public void init()
    {     
        //DEFININDO TAMANHO        
        setSize(600,500);
        /**********************************/        
        
        //CRIANDO PAINEL
        painel = new JPanel();
        /**************/

        //CRIANDO OBJETO MENUBAR
        menubar = new JMenuBar();
        /**********************************/        
        
        //CRIANDO OBJETO MENU
        cadastrar = new JMenu("Cadastrar");
        /**********************************/  
        
        //CRIANDO OBJETO LABEL
        mensagem = new JLabel("\n"
                            + "\n"
                            + "\n"
                            + "\n"
                            + "\n"
                            + "BEM VINDO AO SISTEMA DE CADASTRO"
                            + "\n"
                            + "\n"
                            + "\n"
                            + "\n");
        /**********************/
        
        //CONSTRUINDO OS OBJETOS
        cadastrar_cliente = new JMenuItem("Cadastrar Clientes");
        cadastrar_produto = new JMenuItem("Cadastrar Produtos"); 
        /**********************************/        
        
        //CONSTRUINDO MENU ARQUIVO
        //ADICIONANDO OBJETOS DENTRO DO "ARQUIVO"
        cadastrar.add(cadastrar_cliente);
        cadastrar.add(cadastrar_produto);
        /**************************************/
        
        //ADICIONANDO LABEL "MENSAGEM" AO PAINEL
        painel.add(mensagem);
        /**********************************/    
        
        //COLOCANDO PAINEL NA JANELA
        getContentPane().add(painel);
        /***************************/

        //ADICIONANDO MENUS A BARRA
        menubar.add(cadastrar);
        /**********************************/        
        
        //DEFINDO BARRA DE MENUS
        setJMenuBar(menubar);
        /**********************************/        
        
        //REGISTRANDO NO LISTENER
        MenuHandler mh = new MenuHandler();
        /**********************************/        
        
        //ADICIONANDO AÇÕES PARA OS SUBMENUS
        cadastrar_cliente.addActionListener(mh);
        cadastrar_produto.addActionListener(mh);
        /**********************************/        
        
        //FECHANDO A JANELA PRINCIPAL
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        /**********************************/        
        
        //DEFININDO VISIBILIDADE DA JANELA
        setVisible(true);
        /**********************************/        
    }
    
    //CRIANDO CLASSE INTERNA
    class MenuHandler implements ActionListener
    {
        @Override
        public void actionPerformed(ActionEvent e) 
        {
            //CASO SUBMENU CADASTRAR_CLIENTE SEJA CLICADO
            if(e.getSource() == cadastrar_cliente)
            {
                new Cadastro_Cliente().init();
            }
            else
            //CASO SUBMENU CADASTRAR_PRODUTO SEJA CLICADO
            if (e.getSource() == cadastrar_produto)
            {
                new Cadastro_Produto().init();
            }
            else
            //FECHA A JANELA
            {
                System.exit(0);
            }
        }
    }
    /**********************************/        
    
    //CHAMANDO METODO PRINCIPAL
    public static void main(String [] args)
    {
        //CHAMANDO A CLASSE
        new Janela_Principal().init();
        /**********************************/        
    } 
}
