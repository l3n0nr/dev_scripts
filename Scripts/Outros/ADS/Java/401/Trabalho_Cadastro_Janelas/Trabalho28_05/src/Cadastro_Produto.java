
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
import javax.swing.JRadioButton;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;


/**
 *
 * @author lenonr
 * 
 **/

public class Cadastro_Produto extends JFrame
{
    //CRIANDO SCROLL DO MOOUSE
    private JScrollPane painelTexto;
    /**********************************/        
    
    //CRIANDO LABEL'S 
    private JLabel lblnome, lblpreco, lblimposto, lbldetalhes_produto;
    /**********************************/        
    
    //CRIANDO CAMPOS DE TEXTO
    private JTextField txtnome, txtpreco;
    /**********************************/        
    
    //CRIANDO RADIO BUTTON
    private JRadioButton sim, nao;
    /**********************************/        
    
    //CRIANDO AREA DE TEXTO
    private JTextArea detalhes_produto;
    /**********************************/        
    
    //CRIANDO BOTAO
    private JButton cadastrar;
    /**********************************/        
    
    //CRIANDO PAINEL
    private JPanel cima,
                   p_nome, 
                   p_preco,
                   p_imposto, 
                   p_detalhes,
                   p_radiobutton,
                   p_botao;
    /**********************************/        
    
    //CRIANDO CONSTRUTOR
    public Cadastro_Produto()
    {
        //TITULO DA JANELA
        super("Cadastro de Produtos");
        /**********************************/        

        //CRIANDO O CONSTRUTOR DOS PAINEIS
        cima  = new JPanel(new FlowLayout());     
        p_nome  = new JPanel();
        p_preco  = new JPanel();        
        p_imposto = new JPanel();
        p_radiobutton = new JPanel();
        p_detalhes = new JPanel();        
        p_botao = new JPanel();
        /**********************************/        
        
        //CONSTRUINDO NOME
        lblnome = new JLabel("Nome:");
        txtnome = new JTextField(40);
        /**********************************/        
        
        //CONSTRUINDO PREÇO
        lblpreco = new JLabel("Preço:");
        txtpreco = new JTextField(40);        
        /**********************************/        
        
        //CRIANDO DETALHES DO PRODUTO
        lbldetalhes_produto = new JLabel("Detalhes do Produto: ");
        detalhes_produto = new JTextArea(4,30);
        
            //CRIANDO O SCROLL DA JANELA - VERTICAL/HORIZONTAL
            painelTexto = new JScrollPane(detalhes_produto,JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
            /**********************************/         
            
        /**********************************/        
        
        //CONSTRUINDO RADIOBUTTON
        lblimposto = new JLabel("Produto possui imposto");
        sim = new JRadioButton("SIM");
        nao = new JRadioButton("NÃO");
        /**********************************/                              
        
        //CONSTRUINDO BOTAO
        cadastrar = new JButton("Cadastrar Dados dos Produtos");
        /**********************************/        
               
        //ADICIONANDO LABEL E CAIXA "NOME"
        p_nome.add(lblnome);  
        p_nome.add(txtnome);
        /**********************************/        
        
        //ADICIONANDO LABEL E CAIXA "PRECO"
        p_preco.add(lblpreco);  
        p_preco.add(txtpreco);  
        /**********************************/        
        
        //ADICIONANDO RADIOBUTTON AO PAINEL
        p_radiobutton.add(lblimposto);
        p_radiobutton.add(sim);
        p_radiobutton.add(nao);
        /**********************************/        
        
        //ADICIONANDO DETALHES DO PRODUTO AO PAINEL
        p_detalhes.add(lbldetalhes_produto);
        p_detalhes.add(detalhes_produto);
        p_detalhes.add(painelTexto);
        /**********************************/        
                
        //ADICIONANDO BOTAO AO PAINEL BOTAO
        p_botao.add(cadastrar);
        /**********************************/        
        
        //COLOCANDO PAINEIS DENTRO DO PAINEL PRINCIPAL
        cima.add(p_nome);
        cima.add(p_preco);
        cima.add(p_radiobutton);                                   
        cima.add(p_detalhes);         
        cima.add(p_botao);      
        /**********************************/        

        //COLOCANDO PAINEL DENTRO DA JANELA
        getContentPane().add(cima);
        /**********************************/        
    }
    
    public void init()
    {
        //REGISTRANDO LISTENER PARA OS BOTOES
        ButtonManipulator bm1 = new ButtonManipulator();
        
        //ADICIONANDO EVENTOS PARA OS BOTOES
        cadastrar.addActionListener(bm1);
        
        //DEFININDO TAMANHO
        setSize(600,500);
        /**********************************/        
        
        //MOSTRANDO JANELA
        setVisible(true);
        /**********************************/        
        
        //FECHANDO PROCESSO APOS CLICAR NO BOTAO DE FECHAR
        //setDefaultCloseOperation(EXIT_ON_CLOSE);
        /**********************************/          
    }
    
    //CRIANDO CLASSE INTERNA
    class ButtonManipulator implements ActionListener
    {
        @Override
        public void actionPerformed(ActionEvent e) 
        {
            if (e.getSource() == cadastrar)
            {
                //REALIZANDO CONVERSÃO
                
                //CRIANDO VARIAVEIS 
                double taxa = 0.12,preco;
                /*******************/
                
                //REALIZANDO CALCULO
                preco = Double.parseDouble(txtpreco.getText());
                preco = preco+(preco*taxa);
                /*******************/

                //MOSTRANDO MENSAGEM
                JOptionPane.showMessageDialog   (
                                                null, 
                                                "Dados cadastrados com sucesso! \n"
                                                + "\nNome: "+ txtnome.getText()
                                                + "\nPreço(R$): "+ txtpreco.getText() 
                                                + "\nDetalhes do Produto:\n"+ detalhes_produto.getText()
                                                );
                /*******************/
                
                //VERIFICANDO VALORES DE RADIOBUTTON
                if(sim.isSelected())
                {
                    JOptionPane.showMessageDialog(null, "Produto com tarifa custa R$ " + preco);
                }
                if(nao.isSelected())
                {
                    JOptionPane.showMessageDialog(null, "Produto sem tarifa custa R$ " + txtpreco.getText());
                }
            }
        }
    }
    
    /*    
    //DEFININDO METODO PRINCIPAL
    public static void main(String [] args)
    {        
        new Cadastro_Produto().init();
    }
    */
}
