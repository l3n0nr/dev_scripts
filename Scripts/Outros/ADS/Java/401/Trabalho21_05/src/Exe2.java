
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JFrame;
import static javax.swing.JFrame.EXIT_ON_CLOSE;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;


/**
 *
 * @author lenonr
 * 
 */

public class Exe2 extends JPanel
{    
    //CRIANDO LABEL SENHA
    private JLabel lblSenha;
    
    //CRIANDO CAMPO PARA SENHA
    private JTextField txtSenha;
    
    //CRIANDO BOTAO OK e CANCELAR
    private JButton ok, cancel;
    
    //CRIANDO CONSTRUTUTOR DOS OBJETOS
    public Exe2()
    {
        lblSenha = new JLabel("Digite um valor");
        txtSenha = new JTextField("",10);
    }
    
    //CRIANDO METODO INIT
    public void init()
    {
        setLayout(new GridLayout(1,1));
        
        //CRIANDO LAYOUT CENTRO
        FlowLayout centro = new FlowLayout();
        
        //CRIANDO SENHA DENTRO DO PAINEL CENTRO
        JPanel auxSenha = new JPanel(centro);
        
        //ADICIONANDO LABEL SENHA E CAIXA DE TEXTO SENHA
        auxSenha.add(lblSenha);
        auxSenha.add(txtSenha);
        
        //ADICIONANDO OBJETOS A JANELA PRINCIPAL
        add(auxSenha);
 
        //CRIANDO EVENTOS
        txtSenha.addActionListener(new ActionHandler());
    }
    
    private class ActionHandler implements ActionListener
    {

        @Override
        public void actionPerformed(ActionEvent e) 
        {
            Integer valor;
            
            //TEXTO RECEBE O VALOR DE TXTSENHA(CAPTURA)
            String texto = txtSenha.getText();
            
            //CONVERTENDO VALOR
            valor = Integer.parseInt(texto);
            
            //REALIZA ALGUM PROCEDIMENTO COM O VALOR CAPTURADO
            if (valor < 18)
            {
                JOptionPane.showMessageDialog(null,"Você não pode acessar o sistema, pois você é menor de idade");
            }
            else
            {
                JOptionPane.showMessageDialog(null, "Você pode acessar o sistema, pois você é maior de idade!");
            }
        }  
    }
    
    //CRIANDO METODO PRINCIPAL
    public static void main(String [] args)
    {
        //CRIANDO CLASSE EXEMPLO_TRATAMENTO_TEXTO COM O NOME DE TEXTO
        Exe2 et = new Exe2();
        
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

