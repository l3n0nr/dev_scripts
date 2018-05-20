
import java.awt.GridLayout;
import java.awt.Toolkit;
import javax.swing.ButtonGroup;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.JTextField;

/**
 *
 * @author lenonr
 * 
 */

public class Modelo0 extends JFrame
{
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
    public Modelo0()
    {
        super("Cadastro de Informações");
        
        B = new JButton("Salvar dados");
        
        carro = new JCheckBox("Carros");
        moto  = new JCheckBox("Moto");
        casa  = new JCheckBox("Casa");
        apartamento = new JCheckBox("Apartamento");
        
        masculino = new JRadioButton("Masculino");
        feminino  = new JRadioButton("Feminino");
        
        a = new JLabel("Digite o seu nome, na caixa abaixo");
        b = new JLabel("Escolha o seu sexo:");
        
        caixa = new JTextField(40);
    }
    
    public void init()
    {
        getContentPane().setLayout(new GridLayout(4,1));
        
        //DEFININDO TAMANHO DA JANELA
        setSize(500,180);
        
        //DEFININDO LOCALIZAÇÃO DA JANELA
        setLocation(500,300);
        
        button1 = new JPanel();
        button1.add(a);
        
        button2 = new JPanel();
        button2.add(caixa);
        
        button3 = new JPanel();
        ButtonGroup sexo = new ButtonGroup();
        sexo.add(masculino);
        sexo.add(feminino);
        
        button3.add(b);
        button3.add(masculino);
        button3.add(feminino);
        
        button4 = new JPanel();
        button4.add(B);
        
        getContentPane().add(button1);
        getContentPane().add(button2);
        getContentPane().add(button3);
        getContentPane().add(button4);
        
        //FECHANDO A JANELA PRINCIPAL
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        //MOSTRANDO O JANELA
        setVisible(true);
    }
    
    public static void main (String [] args)
    {
        new Modelo0().init();
    }
    
}
