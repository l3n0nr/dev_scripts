
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.List;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JFrame;
import static javax.swing.JFrame.EXIT_ON_CLOSE;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.JTextField;

/**
 *
 * @author lenonr
 * 
 */

public class Cadastro_Cliente extends JFrame
{
    //CRIANDO LABEL'S 
    private JLabel lblnome, 
                   lblendereco, 
                   lbltelefone, 
                   lblsexo, 
                   lblsalarios, 
                   lblanimais;
    /**********************************/        
    
    //CRIANDO CAMPOS DE TEXTO
    private JTextField txtnome, 
                       txtendereco, 
                       txttelefone;
    /**********************************/        
    
    //CRIANDO RADIOBUTTON
    private JRadioButton masculino,
                         feminino;
    /**********************************/        
    
    //CRIANDO LISTA
    private JList animais;
    /**********************************/        
    
    //CRIANDO CHECKBOX
    private JCheckBox sal1,
                      sal2,
                      sal3;
    /**********************************/        
    
    //CRIANDO BOTAO CADASTRAR
    private JButton cadastrar;
    /**********************************/        
    
    //CRIANDO PAINEL
    private JPanel cima, 
                   p_nome, 
                   p_telefone, 
                   p_endereco, 
                   p_animais,
                   p_checkbox, 
                   p_radiobutton,
                   p_botao;
    /**********************************/        
    
    //CRIANDO CONSTRUTOR
    public Cadastro_Cliente()
    {
        //TITULO DA JANELA
        super("Cadastro de Clientes");
        /**********************************/        
        
        //CRIANDO VETORES PARA LISTA
        String[] opAnimais = {"Gato","Cachorro", "Passaro", "Coelho"};
        /**********************************/        
        
        //CRIANDO O CONSTRUTOR DOS PAINEIS
        cima  = new JPanel(new FlowLayout());                
        p_nome  = new JPanel();
        p_telefone  = new JPanel();
        p_endereco  = new JPanel();        
        p_checkbox = new JPanel();
        p_radiobutton = new JPanel();
        p_animais = new JPanel();
        p_botao = new JPanel();
        /**********************************/        
                
        //CONSTRUINDO NOME
        lblnome = new JLabel("Nome:");
        txtnome = new JTextField(40);
        /**********************************/        
        
        //CONSTRUINDO ENDEREÇO
        lblendereco = new JLabel("Endereço:");
        txtendereco = new JTextField(40);
        /**********************************/        
        
        //CONSTRUINDO TELEFONE
        lbltelefone = new JLabel("Telefone:");
        txttelefone = new JTextField(40);
        /**********************************/        
        
        //CRIANDO LABEL SEXO
        lblsexo = new JLabel("Sexo:");
        /**********************************/        
        
        //CONSTRUINDO CHECKBOX
        lblsalarios = new JLabel("Cor preferida:");
        sal1 = new JCheckBox("Azul");
        sal2  = new JCheckBox("Vermelho");
        sal3 = new JCheckBox("Tanto Faz");
        /**********************************/        
        
        //CONSTRUINDO RADIOBUTTON
        masculino = new JRadioButton("Masculino");
        feminino = new JRadioButton("Feminino");
        /**********************************/        
        
        //CRIANDO OBJETOS
        animais = new JList(opAnimais);  
        lblanimais = new JLabel("Que animal de estimação você possui?");
        /**********************************/        
        
        //CONSTRUINDO BOTAO
        cadastrar = new JButton("Cadastrar Dados dos Clientes");
        /**********************************/        
        
        //ADICIONANDO LABEL E CAIXA "NOME"
        p_nome.add(lblnome);  
        p_nome.add(txtnome);
        /**********************************/        
        
        //ADICIONANDO LABEL E CAIXA "ENDERECO"
        p_endereco.add(lblendereco);  
        p_endereco.add(txtendereco);
        /**********************************/        
        
        //ADICIONANDO LABEL E CAIXA "TELEFONE"
        p_telefone.add(lbltelefone);  
        p_telefone.add(txttelefone);
        /**********************************/        
        
        //ADICIONANDO CHECKBOX AO PAINEL
        p_checkbox.add(lblsalarios);
        p_checkbox.add(sal1);
        p_checkbox.add(sal2);
        p_checkbox.add(sal3);
        /**********************************/        
        
        //ADICIONANDO RADIOBUTTON AO PAINEL
        p_radiobutton.add(lblsexo);
        p_radiobutton.add(masculino);
        p_radiobutton.add(feminino);
        /**********************************/        
        
        //ADICIONANDO LABEL NO PAINEL ANIMAIS
        p_animais.add(lblanimais);
        p_animais.add(animais);
        /**********************************/        
        
        //ADICIONANDO BOTAO AO PAINEL BOTAO
        p_botao.add(cadastrar);
        /**********************************/        
        
        //COLOCANDO PAINEIS DENTRO DO PAINEL PRINCIPAL
        cima.add(p_nome);
        cima.add(p_endereco);
        cima.add(p_telefone);    
        cima.add(p_radiobutton);     
        cima.add(p_checkbox);                   
        cima.add(p_animais);
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
        
        //ADICIONANDO UM LISTENER PARA O COMBOBOX
        //estados.addActionListener(new ComboHandler());
        
        //DEFININDO TAMANHO
        setSize(600,500);
        
        //MOSTRANDO JANELA
        setVisible(true);
        
        //FECHANDO PROCESSO APOS CLICAR NO BOTAO DE FECHAR
        //setDefaultCloseOperation(EXIT_ON_CLOSE);
        
        
    }
    
    //CRIANDO CLASSE INTERNA
    class ButtonManipulator implements ActionListener
    {
        @Override
        public void actionPerformed(ActionEvent e) 
        {
            if (e.getSource() == cadastrar)
            {
                JOptionPane.showMessageDialog   (
                                                null, 
                                                "Dados cadastrados com sucesso! \n"
                                                + "\nNome: "+ txtnome.getText()
                                                + "\nEndereco: "+ txtendereco.getText()
                                                + "\nTelefone:"+ txttelefone.getText()                                                
                                                );
                //VERIFICANDO VALORES DO CHECKBOX
                if(sal1.isSelected())
                {
                    JOptionPane.showMessageDialog(null, lblsalarios.getText() + " " + sal1.getText());
                }
                if(sal2.isSelected())
                {
                    JOptionPane.showMessageDialog(null, lblsalarios.getText() + " " + sal2.getText());
                }
                if(sal3.isSelected())
                {
                    JOptionPane.showMessageDialog(null, lblsalarios.getText() + " " + sal3.getText());
                }           
                
                //VERIFICANDO VALORES DE RADIOBUTTON
                if(masculino.isSelected())
                {
                    JOptionPane.showMessageDialog(null, "Usuário do genero " + masculino.getText());
                }
                else
                if(feminino.isSelected())
                {
                    JOptionPane.showMessageDialog(null, "Usuário do genero " + feminino.getText());
                }
    
            //VERIFICANDO LISTA
            List selecionados = animais.getSelectedValuesList();

            //MOSTRANDO A OPÇÃO SELECIONADA NA LISTA DE ANIMAIS
            JOptionPane.showMessageDialog(null,"Animal de estimação preferido " + selecionados);
            
            }
        }
    }
    
    /*
    //DEFININDO METODO PRINCIPAL
    public static void main(String [] args)
    {
        new Cadastro_Cliente().init();
    } 
    */
}
