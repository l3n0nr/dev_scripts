
import java.awt.FlowLayout;
import java.awt.GridLayout;
import javax.swing.JFrame;
import static javax.swing.JFrame.EXIT_ON_CLOSE;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;

/**
 *
 * @author lenonr
 * 
 **/

public class Campos_Exemplos extends JPanel
{
    //CRIANDO A BARRA DE ROLAGEM
    private JScrollPane painelTexto;
    
    //CAMPO DE TEXT COM APENAS UMA LINHA
    private JTextField txtNome;
    
    //CAMPO DE TEXTO COM MULTIPLAS LINHAS
    private JTextArea txtAnotacoes;
    
    //CAMPO DE TEXTO COM FORMATO DE SENHA
    private JPasswordField senha;
    
    //CRIANDO LABELS 
    private JLabel lblNome, lblAnotacoes, lblSenha;
    
    //CRIANDO CONSTRUTOR
    public Campos_Exemplos()
    {
        lblNome = new JLabel("Nome");
        txtNome = new JTextField(40);
        lblSenha = new JLabel("Senha");
        senha = new JPasswordField(20);
        lblAnotacoes = new JLabel("Anotacoes");
        txtAnotacoes = new JTextArea("Digite o texto aqui",3,2);
    }
    
    public void init()
    {
        //CRIANDO O LAYOUT - GRADE
        setLayout(new GridLayout(5,1));
        
        //POSICIONADO OS ELEMENTOS A ESQUERDA
        FlowLayout esquerda = new FlowLayout(FlowLayout.LEFT);
        
        //CRIANDO PAINEL  - NOME
        JPanel auxNome = new JPanel(esquerda);
        auxNome.add(lblNome);
        auxNome.add(txtNome);
        
        //CRIANDO PAINEL - SENHA
        JPanel auxSenha = new JPanel(esquerda);
        auxSenha.add(lblSenha);
        auxSenha.add(senha);
        
        //CRIANDO O SCROLL DA JANELA - VERTICAL/HORIZONTAL
        painelTexto = new JScrollPane(txtAnotacoes,JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);

        //CRIANDO PAINEL 
        JPanel auxAnotacoes = new JPanel(esquerda);
        auxAnotacoes.add(lblAnotacoes);
        auxAnotacoes.add(painelTexto);
        
        //ADICIONANDO AS LINHAS AO GRID
        add(auxNome);
        add(auxSenha);
        add(auxAnotacoes);
        
    }
    
    
        public static void main(String [] args) 
        {
            //CRIANDO UM PAINEL
            Campos_Exemplos c1 = new Campos_Exemplos();
            c1.init();
            JFrame frame = new JFrame("Campos exemplo");
            frame.getContentPane().add(c1);
            frame.pack();
            frame.setDefaultCloseOperation(EXIT_ON_CLOSE);
            //FECHANDO A JANELA PRINCIPAL
            frame.setVisible(true);
            
            
        }
}
