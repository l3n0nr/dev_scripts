
import java.awt.FlowLayout;
import java.awt.GridLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import static javax.swing.JFrame.EXIT_ON_CLOSE;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JScrollPane;
import javax.swing.JTextField;

/**
 *
 * @author lenonr
 * 
 **/

public class Modelo2 extends JPanel
{
    //CRIANDO A BARRA DE ROLAGEM
    private JScrollPane painelTexto;
    
    //CAMPO DE TEXT COM APENAS UMA LINHA
    private JTextField txtNome,txtEnd;
    
    //CAMPO DE TEXTO COM FORMATO DE SENHA
    private JPasswordField senha,senhac;
    
    //CRIANDO LABELS 
    private JLabel lblNome, lblSenha, lblSenhac, lblEnd;
    
    //CRIANDO BOTOES
    private JButton B;
    
    //CIRNADO PAINEL
    private JPanel button1;
    
    //CRIANDO CONSTRUTOR
    public Modelo2()
    {
        lblNome = new JLabel("Digite o seu Nome:");
        txtNome = new JTextField(40);
        lblEnd = new JLabel("Digite o seu endereco:");
        txtEnd = new JTextField(40);
        lblSenha = new JLabel("Digite a sua Senha");
        senha = new JPasswordField(20);
        lblSenhac = new JLabel("Digite a sua Senha novamente");
        senhac = new JPasswordField(20);
        
        B = new JButton("Salvar Dados");
    }
    
    public void init()
    {
        //CRIANDO O LAYOUT - GRADE
        setLayout(new GridLayout(4,2));
        
        //POSICIONADO OS ELEMENTOS A ESQUERDA
        FlowLayout esquerda = new FlowLayout(FlowLayout.LEFT);
        
        //CRIANDO PAINEL  - NOME
        JPanel auxNome = new JPanel(esquerda);
        auxNome.add(lblNome);
        auxNome.add(txtNome);
        
        //CRIANDO PAINEL - ENDERECO - RUA
        JPanel auxEndereco = new JPanel(esquerda);
        auxEndereco.add(lblEnd);
        auxEndereco.add(txtEnd);
        
        //CRIANDO PAINEL - SENHA
        JPanel auxSenha = new JPanel(esquerda);
        auxSenha.add(lblSenha);
        auxSenha.add(senha);
        
        //CRIANDO PAINEL - CONFIRMAÇÃO DA SENHA
        JPanel auxSenhac = new JPanel(esquerda);
        auxSenha.add(lblSenhac);
        auxSenha.add(senhac);
        
        //ADICIONANDO AS LINHAS AO GRID
        add(auxNome);
        add(auxEndereco);
        add(auxSenha);
        add(auxSenhac);
        
        //CRIANDO PAINEL
        button1 = new JPanel();
        button1.add(B);
        
        //getContentPane().add(button1);
               
    }
    
    
        public static void main(String [] args) 
        {
            //CRIANDO UM PAINEL
            Modelo2 m = new Modelo2();
            m.init();
            JFrame frame = new JFrame("Realizando cadastro no sistema");
            frame.getContentPane().add(m);
            frame.pack();
            frame.setDefaultCloseOperation(EXIT_ON_CLOSE);
            
            //FECHANDO A JANELA PRINCIPAL
            frame.setVisible(true);   
        }
}
