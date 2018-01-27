
import java.awt.FlowLayout;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JList;
import javax.swing.JPanel;
import javax.swing.JTable;


/**
 *
 * @author lenonr
 * 
 **/

public class ExemploLista_ComboTable extends JFrame
{
    //CRIANDO COMBOBOX
    private JComboBox estados;
    
    //CRIANDO LISTA
    private JList animais;
    
    //CRIANDO TABELA
    private JTable tabela;
    
    //CRIANDO PAINEL
    private JPanel caixas;

    public ExemploLista_ComboTable()
    {
        //CRIANDO VETORES PARA LISTA
        String[] opAnimais = {"Gato","Cachorro", "Passaro", "Coelho"};
        
        //CRIANDO VETORES PARA ESTADO
        String[] opEstados = {"RS","SC","PR"};
        
        //CRIANDO OBJETOS
        estados = new JComboBox(opEstados);
        animais = new JList(opAnimais);
        caixas  = new JPanel(new FlowLayout());
    }
    
    public void init()
    {
        //DEFININDO TAMANHO
        //setSize(400,500);
        
        //ADICIONANDO VALORES
        caixas.add(estados);
        caixas.add(animais);
        
        //
        getContentPane().add(caixas);
        
        //MOSTRANDO JANELA
        setVisible(true);
        
        //FECHANDO PROCESSO APOS CLICAR NO BOTAO DE FECHAR
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        
        setExtendedState(MAXIMIZED_BOTH); 
    }
    
    //DEFININDO METODO PRINCIPAL
    public static void main(String [] args)
    {
        new ExemploLista_ComboTable().init();
    }
    
}


