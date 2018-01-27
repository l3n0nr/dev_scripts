
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;


/**
 *
 * @author lenonr
 * 
 */

public class Eventos_Botoes extends JFrame
{
    //CRIANDO BOTOES
    private JButton sim,nao;
    
    //CRIANDO CHECKBOX
    private JCheckBox carro;
    
    //CRIANDO LABEL
    private JLabel mensagem;
    
    //CRIANDO PAINEL
    private JPanel button1, button2, button3;
    
    //CRIANDO CONSTRUTOR
    public Eventos_Botoes()
    {
        //DEFININDO TITULO JANELA
        super("Eventos botoes");
        
        //INICIALIZANDO BOTOES
        sim = new JButton("Sim");
        nao = new JButton("Nao");
        carro = new JCheckBox("Carro");
        mensagem = new JLabel("Clicado: ");
    }
    
    //DEFININDO INIT
    public void init()
    {
        //REGISTRANDO LISTENER PARA OS BOTOES
        ButtonManipulator bm1 = new ButtonManipulator();
        
        //ADICIONANDO EVENTOS PARA OS BOTOES
        sim.addActionListener(bm1);
        nao.addActionListener(bm1);
        carro.addActionListener(bm1);
        
        //MONTANDO A TELA
        getContentPane().setLayout(new GridLayout(2,1));
        
        //DEFININDO TAMANHO DA TELA
        setSize(200,200);
        
        //DEFININDO LOCALIZAÇÃO DA JANELA
        setLocation(300,200);
        
        //CRIANDO BOTAO 1
        button1 = new JPanel();
        button1.add(sim);
        button1.add(nao);
        
        //CRIANDO BOTAO 2
        button2 = new JPanel();
        button2.add(mensagem);
        
        //CRIANDO BOTAO 3
        button3 = new JPanel();
        button3.add(carro);
        
        //CRIANDO PAINEL DENTRO DE OUTRO PAINEL
        getContentPane().add(button1);
        getContentPane().add(button2);
        getContentPane().add(button3);
        getContentPane().add(mensagem);
        
        //MOSTRANDO A JANELA
        setVisible(true);
        
        //FECHANDO O PROCESSO DA JANELA AUTOMATICAMENTE
        setDefaultCloseOperation(EXIT_ON_CLOSE);
    }
    
    //CRIANDO CLASSE INTERNA
    class ButtonManipulator implements ActionListener
    {
        @Override
        public void actionPerformed(ActionEvent e) 
        {
            //CASO CLICAR EM 'SIM'
            if(e.getSource() == sim)
            {
                mensagem.setText("Você clicou no -sim-");
            }
            else 
            //CASO CLICAR EM 'NAO'
            if (e.getSource() == nao)
            {
                mensagem.setText("Você clicou no -não-");
            }
            else
            if (e.getSource() == carro)
            {
                if(carro.isSelected())
                {
                    JOptionPane.showMessageDialog(null,"Você selecionou o carro");
                }
                else
                {
                    JOptionPane.showMessageDialog(null,"Você deselecionou o carro");
                }
            }
        }         
    }
    
    //CRIANDO METODO PRINCIPAL
    public static void main(String [] args)
    {
        new Eventos_Botoes().init();
    
    }
}
