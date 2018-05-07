
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.List;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JList;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;


/**
 *
 * @author lenonr
 */

public class Eventos_Listas_Combos extends JFrame
{
    //CRIANDO COMBOBOX
    private JComboBox estados;
    
    //CRIANDO LISTA
    private JList animais;
    
    //CRIANDO PAINEL
    private JPanel caixas;
    
    //CRIANDO CONSTRUTOR
    public Eventos_Listas_Combos()
    {
        //VETOR DE STRING'S
        String [] op_Animais = {"Gato","Cachorro","Pássaro","Coelho"};
        String [] op_Estados = {"RS","SC","PR","SP"};
        
        //CRIANDO LISTA DE VETORES
        estados = new JComboBox(op_Estados);
        animais = new JList(op_Animais);
        
        //INICIALIZANDO LAYOUT DE CAIXAS
        caixas = new JPanel(new FlowLayout());
    }
        
    //CRIANOD METODO INIT
    public void init()
    {
        //DEFININDO TAMANHO DA CAIXA
        setSize(400,500);

        //ADICIONANDO ESTADOS EM CAIXA
        caixas.add(estados);

        //ADICIONANDO ANIMAIS EM CAIXA
        caixas.add(animais);

        //ADICIONANDO PAINEIS A JANELA
        getContentPane().add(caixas);

        //MOSTRANDO A JANELA
        setVisible(true);

        //FECHANDO PROCESSO DA JANELA AUTOMATICAMENTE
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        
        //ADICIONANDO UM LISTENER PARA UMA LISTA
        animais.addListSelectionListener(new ListHandler());
        
        //ADICIONANDO UM LISTENER PARA O COMBOBOX
        estados.addActionListener(new ComboHandler());
    }
    //CRIANDO CLASSE INTERNA
    class ComboHandler implements ActionListener
    {
        @Override
        public void actionPerformed(ActionEvent e) 
        {
            //MOSTRANDO A OPÇÃO MARCADA NO COMBOBOX DE ESTADOS
            JOptionPane.showMessageDialog(null,estados.getSelectedItem());
            
            //animais.setListData();
        }        
    }
     
    //CRIANDO CLASSE INTERNA
    class ListHandler implements ListSelectionListener
    {
        @Override
        public void valueChanged(ListSelectionEvent e) 
        {
            //CRIANDO UMA LISTA
            //ACESSANDO LISTA DE ANIMAIS
            List selecionados = animais.getSelectedValuesList();
            
            //MOSTRANDO A OPÇÃO SELECIONADA NA LISTA DE ANIMAIS
            JOptionPane.showMessageDialog(null, selecionados);
        }
    }
    
    //CRIANDO METODO MAIN
    public static void main(String [] args)
    {
        //CRIANDO 
        Eventos_Listas_Combos e = new Eventos_Listas_Combos();
        
        //CHAMANDO METODO INIT
        e.init();
    }
}
