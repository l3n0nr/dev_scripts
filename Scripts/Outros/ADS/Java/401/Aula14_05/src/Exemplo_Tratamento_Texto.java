

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
import javax.swing.JPasswordField;
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
    private JPasswordField txtSenha;
    
    //CRIANDO BOTAO OK e CANCELAR
    private JButton ok, cancel;
    
    //CRIANDO CONSTRUTUTOR DOS OBJETOS
    public Exemplo_Tratamento_Texto()
    {
        lblSenha = new JLabel("Senha");
        txtSenha = new JPasswordField("",16);
        ok       = new JButton("Ok") ;
        cancel   = new JButton("cancelar");
    }
    
    //CRIANDO METODO INIT
    public void init()
    {
        //DEFININDO LAYOUT DA JANELA - 2 LINHAS e 1 COLUNA
        setLayout(new GridLayout(2,1));
        
        //CRIANDO LAYOUT CENTRO
        FlowLayout centro = new FlowLayout();
        
        //CRIANDO SENHA DENTRO DO PAINEL CENTRO
        JPanel auxSenha = new JPanel(centro);
        
        //ADICIONANDO LABEL SENHA E CAIXA DE TEXTO SENHA
        auxSenha.add(lblSenha);
        auxSenha.add(txtSenha);
        
        //ADICIONANDO BOTÕES AO PAINEL
        JPanel auxBotoes = new JPanel(centro);
        auxBotoes.add(ok);
        auxBotoes.add(cancel);
        
        //ADICIONANDO OBJETOS A JANELA PRINCIPAL
        add(auxSenha);
        add(auxBotoes);
 
    /**EVENTOS DE CAIXAS DE TEXTO
    *
    *       ActionEvent: trata quando for pressionado ENTER
    *       CaretEvent: trata a mudança no cursor(por entrada de caracter ou clique)
    * 
    */
        //CRIANDO EVENTOS
        txtSenha.addActionListener(new ActionHandler());
        txtSenha.addCaretListener(new CaretHandler());
    }
    
    private class CaretHandler implements CaretListener
    {

        //.GETDOT - INFORMA O CARACTERE DE ACORDO COM A POSIÇÃO DO MOUSE
        
        @Override
        public void caretUpdate(CaretEvent e) 
        {
            JOptionPane.showMessageDialog(null, e.getDot());
            
            //ARMAZENANDO SENHA A CADA CARACTER DIGITADO
            char[] senhaAtual = txtSenha.getPassword();
            
            JOptionPane.showMessageDialog(null, senhaAtual[e.getDot()-1]);
            //SENHA NÃO PODE CONTEM A LETRA "A"
            if(senhaAtual[e.getDot()-1] == 'a')
            {
                JOptionPane.showMessageDialog(null, "Senha não pode conter a letra A");
            }
        }
        
    }
    
    
    private class ActionHandler implements ActionListener
    {

        @Override
        public void actionPerformed(ActionEvent e) 
        {
            //TEXTO RECEBE O VALOR DE TXTSENHA(CAPTURA)
            char[] texto = txtSenha.getPassword();
            
            //REALIZA ALGUM PROCEDIMENTO COM O VALOR CAPTURADO
            if (texto.length <= 6)
            {
                JOptionPane.showMessageDialog(null,"Senha é insegura");
            }
            else
            {
                JOptionPane.showMessageDialog(null, "Senha é forte!");
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
