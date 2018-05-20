
import java.awt.BorderLayout;
import java.awt.FlowLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

/**
 *
 * @author lenonr
 * 
 */
public class Mosaico extends JFrame 
{
    //CRIANDO JPANE PARA A ORGANIZAÇÃO DOS OBJETOS
    private JPanel botoes,barraStatus;
    
    //CRIANDO BOTOES
    private JButton novo,limpar,salvar,sair;
    
    //CRIANDO LABEL
    private JLabel mensagem;
    
    //CRIANDO RELOGIO
    private JLabel relogio;
    
    //CRIANDO CONSTRUTOR
    public Mosaico()
    {
        super("Exemplo Mosaico");
        //CRIANDO OS BOTOES
        novo = new JButton("Novo");
        limpar = new JButton("Limpar");
        salvar = new JButton("Salvar");
        sair = new JButton("Sair");
        
        //CRIANDO A MENSAGEM
        mensagem = new JLabel("Mensagem");
        
        //CRIANDO O RELOGIO
        relogio = new JLabel("Data/Hora " + new java.util.Date().toString());
        
        botoes = new JPanel(new FlowLayout());
        barraStatus = new JPanel(new FlowLayout());
           
    }
    
    public void init()
    {
        //DEFININDO LOCALIZAÇÃO DA JANELA
        setLocation(200,300);
        //DEFININDO TAMANHO DA JANELA
        setSize(500,250);
        
        getContentPane().setLayout(new BorderLayout());
        
        //ADICIONANDO AO PAINEL
        botoes.add(novo);
        botoes.add(limpar);
        botoes.add(salvar);
        botoes.add(sair);
        
        barraStatus.add(mensagem);
        barraStatus.add(relogio);
        
        getContentPane().add(botoes, BorderLayout.NORTH);
        getContentPane().add(barraStatus, BorderLayout.SOUTH);
        
        //MOSTRANDO JANELA
        setVisible(true);
    }
    
    //CRIANDO METODO PRINCIPAL
    public static void main(String [] args)
    {
        new Mosaico().init();
    }
}
