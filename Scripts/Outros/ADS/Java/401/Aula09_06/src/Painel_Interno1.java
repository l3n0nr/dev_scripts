
import java.awt.FlowLayout;
import java.awt.GridLayout;
import javax.swing.ButtonGroup;
import javax.swing.JCheckBox;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JRadioButton;


/**
 *
 * @author lenonr
 * 
 **/

public class Painel_Interno1 extends JPanel
{
    //CRIANDO LABELS
    private JLabel lblradio, lblcheck;
    
    //CRIANDO RADIOBUTTON
    private JRadioButton m,f;
    
    //CRIANDO CHECKBOX
    private JCheckBox a,b;     
    
    //CRIANDO BUTTONGROUP
    private ButtonGroup grupo;
    
    //CRIANDO CONSTRUTOR
    public Painel_Interno1()
    {
        //DEFININDO RADIOBUTTON
        lblradio = new JLabel("RADIOBUTTON");
        m = new JRadioButton("MASCULINO");
        f = new JRadioButton("FEMININO");
        
        //DEFININDO CHECKBOX
        lblcheck = new JLabel("CHECKBOX");
        a = new JCheckBox("A");
        b = new JCheckBox("B");        
    }
    
    //CRIANDO METODO INIT
    public void init()
    {
        //DEFININDO LAYOUT JANELA
        setLayout(new GridLayout(2,1));
        
        //CRIANDO PAINEL RADIOBUTTON
        JPanel auxRadio = new JPanel(new FlowLayout());
        auxRadio.add(lblradio);
        auxRadio.add(m);
        auxRadio.add(f);
        
        //CRIANDO PAINEL CHECKBOX
        JPanel auxCheck = new JPanel(new FlowLayout());
        auxCheck.add(lblcheck);
        auxCheck.add(a);
        auxCheck.add(b);
        
        //CRIANDO BUTTONGROUP
        grupo = new ButtonGroup();
        
        /*************/
        //ADICIONANDO RADIOBUTTON'S EM UM GRUPO
        grupo.add(m);
        grupo.add(f);
               
        add(auxRadio);
        add(auxCheck);   
        /*************/
    }
        

    //MANEIRAS DE ACESSAR CONTEUDO DO PAINEL
    public String getradio()
    {
        //SE MASCULINO SELECIONADO
        if (m.isSelected())
        {
            return m.getText();
        }        
        //SENÃO
        else
        {
            return f.getText();
        }            
    }
        
    public String getcheck()
    {
        //DECLARANDO VARIAVEL
        String resultado = "";
        
        //SE MASCULINO SELECIONADO
        if (a.isSelected())
        {
            resultado += " " + a.getText();
        }        
        if(b.isSelected())
        {
            resultado += " " + b.getText();            
        }         
        return resultado;
    }       
}


