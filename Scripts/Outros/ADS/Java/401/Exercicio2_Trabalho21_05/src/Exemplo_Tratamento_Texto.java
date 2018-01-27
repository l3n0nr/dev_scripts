

import java.awt.FlowLayout;
import java.awt.GridLayout;
import javax.swing.JFrame;
import static javax.swing.JFrame.EXIT_ON_CLOSE;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.event.CaretEvent;
import javax.swing.event.CaretListener;

/**
 *
 * @author lenonr
 * 
 **/

public class Exemplo_Tratamento_Texto extends JPanel
{
    //CRIANDO LABEL SENHA
    private JLabel lblSenha;
    
    //CRIANDO CAMPO PARA SENHA
    private JTextField txtTexto;

    private int count[];
    
    //CRIANDO CONSTRUTUTOR DOS OBJETOS
    public Exemplo_Tratamento_Texto()
    {
        lblSenha = new JLabel("Texto:");
        txtTexto = new JTextField("",16);
        count    = new int[23];
    }
    
    //CRIANDO METODO INIT
    public void init()
    {
        //DEFININDO LAYOUT DA JANELA - 2 LINHAS e 1 COLUNA
        setLayout(new GridLayout(1,1));
        
        //CRIANDO LAYOUT CENTRO
        FlowLayout centro = new FlowLayout();
        
        //CRIANDO SENHA DENTRO DO PAINEL CENTRO
        JPanel auxSenha = new JPanel(centro);
        
        //ADICIONANDO LABEL SENHA E CAIXA DE TEXTO SENHA
        auxSenha.add(lblSenha);
        auxSenha.add(txtTexto);

        //ADICIONANDO OBJETOS A JANELA PRINCIPAL
        add(auxSenha);
        
        txtTexto.addCaretListener(new CaretHandler());
    }
    
    private class CaretHandler implements CaretListener
    {
        @Override
        public void caretUpdate(CaretEvent e) 
        {           
            JOptionPane.showMessageDialog(null,e.getDot());
            //ARMAZENANDO SENHA A CADA CARACTER DIGITADO
            String c = txtTexto.getText();
            if((c.charAt(e.getDot()) == 'a') || (c.charAt(e.getDot()) == 'A'))
            {
                count[1] = 'a';
                JOptionPane.showMessageDialog(null,"O valor digitado foi:" + e.getDot() + count[1]);
            }
            else
            {
                System.out.println("Erro");
            }
        }    
    }

    //CRIANDO METODO PRINCIPAL
    public static void main(String [] args)
    {
        //CRIANDO CLASSE EXEMPLO_TRATAMENTO_TEXTO COM O NOME DE TEXTO
        Exemplo_Tratamento_Texto et = new Exemplo_Tratamento_Texto();
        
        et.init();
        
        JFrame frame = new JFrame("Exemplo tratamento de texto");
        
        frame.getContentPane().add(et);
        
        //AJUSTA O TAMANHO DA JANELA DE ACORDO COM O TAMANHO DO PAINEL DETRO DELE
        frame.pack();
        
        //TORNANDO A JANELA VISIVEL
        frame.setVisible(true);
        
        //FECHANDO JANELA AUTOMATICAMENTE
        frame.setDefaultCloseOperation(EXIT_ON_CLOSE);
    }  
}
