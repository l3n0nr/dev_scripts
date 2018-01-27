    
import java.awt.FlowLayout;
import java.awt.GridLayout;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextArea;
import javax.swing.JTextField;


/**
 *
 * @author lenonr
 * 
 **/

public class Panel_Interno0 extends JPanel
{
    //CRIANDO LABELS
    private JLabel lblNome, lblDetalhe;
    
    //CRIANDO CAMPO DE TEXTO
    private JTextField txtNome;
    
    //CRIANDO AREA DE TEXTO
    private JTextArea txtDetalhes;
    
    //CRIANDO CONSTRUTOR
    public Panel_Interno0()
    {
        //DEFININDO VALOR PARA NOME
        lblNome = new JLabel("Nome: ");
        txtNome = new JTextField(40);
        
        //DEFININDO VALORES PARA DETALHES
        lblDetalhe = new JLabel("Detalhes: ");
        txtDetalhes = new JTextArea("digite aqui....", 3,20);        
    }
    
    //CRIANDO METODO INIT
    public void init()
    {
        //DEFININDO LAYOUT JANELA
        setLayout(new GridLayout(2,1));
        
        //CRIANDO PAINEL NOME
        JPanel auxNome = new JPanel(new FlowLayout());
        auxNome.add(lblNome);
        auxNome.add(txtNome);
            
        //CRIANDO PAINEL DETALHES
        JPanel auxDetalhes = new JPanel(new FlowLayout());
        auxDetalhes.add(lblDetalhe);
        auxDetalhes.add(txtDetalhes);
               
        add(auxNome);
        add(auxDetalhes);   
    }
    
    //MANEIRAS DE ACESSAR CONTEUDO DO PAINEL
    public String getTxtNome()
    {
        return txtNome.getText();        
    }
        
    public String getTxtDetalhes()
    {
        return txtDetalhes.getText();
    }

}
