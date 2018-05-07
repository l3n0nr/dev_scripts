
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.List;
import javax.swing.ButtonGroup;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JFrame;
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
    private JCheckBox azul,
                      vermelho,
                      tantofaz;
    /**********************************/   
    
    //CRIANDO GRUPO DE BOTOES - RADIOBUTTON
    private ButtonGroup grupo;
    /*************************************/
    
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
        setLayout(new GridLayout(7,1));
        
        p_nome  = new JPanel();
        p_telefone  = new JPanel();
        p_endereco  = new JPanel();        
        p_checkbox = new JPanel();
        p_radiobutton = new JPanel();
        p_animais = new JPanel();
        p_botao = new JPanel();
        grupo = new ButtonGroup();
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
        azul = new JCheckBox("Azul");
        vermelho  = new JCheckBox("Vermelho");
        tantofaz = new JCheckBox("Tanto Faz");
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
        p_checkbox.add(azul);
        p_checkbox.add(vermelho);
        p_checkbox.add(tantofaz);
        /**********************************/        
        
        //ADICIONANDO RADIOBUTTON AO PAINEL
        p_radiobutton.add(lblsexo);
        p_radiobutton.add(masculino);
        p_radiobutton.add(feminino);
        /**********************************/        
        
        //ADICIONANDO RADIOGROUP AO GRUPO
        grupo.add(masculino);
        grupo.add(feminino);
        /*******************************/
        
        //ADICIONANDO LABEL NO PAINEL ANIMAIS
        p_animais.add(lblanimais);
        p_animais.add(animais);
        /**********************************/   
                
        //ADICIONANDO BOTAO AO PAINEL BOTAO
        p_botao.add(cadastrar);
        /**********************************/        
        
        //COLOCANDO PAINEL DENTRO DA JANELA
        getContentPane().add(p_nome);
        getContentPane().add(p_endereco);
        getContentPane().add(p_telefone);
        getContentPane().add(p_radiobutton);
        getContentPane().add(p_checkbox);
        getContentPane().add(p_animais);
        getContentPane().add(p_botao);
        /**********************************/        

    }
    
    public void init()
    {   
        //REGISTRANDO LISTENER PARA OS BOTOES
        ButtonManipulator bm1 = new ButtonManipulator();
        
        //ADICIONANDO EVENTOS PARA OS BOTOES
        cadastrar.addActionListener(bm1);
        
        //DEFININDO TAMANHO
        setSize(600,600);
        
        //MOSTRANDO JANELA
        setVisible(true);      
    }
    
    //CRIANDO CLASSE INTERNA
    class ButtonManipulator implements ActionListener
    {
        //CRIANDO VAARIAVEL 'RESULTADO'
        String resultado;
        /****************************/
        
        @Override
        public void actionPerformed(ActionEvent e) 
        {
            //VERIFICANDO VALORES DO CHECKBOX
                if(azul.isSelected())                
                {
                    //CONCATENANDO VALOR COM VARIAVEL RESULTADO
                    resultado=" \n-Cor selecionada: "+azul.getText();
                }
                else
                if(vermelho.isSelected())
                {
                    //CONCATENANDO VALOR COM VARIAVEL RESULTADO
                    resultado= " \n-Cor selecionada: "+vermelho.getText();
                }
                else
                if(tantofaz.isSelected())
                {
                    //CONCATENANDO VALOR COM VARIAVEL RESULTADO
                    resultado= " \n-Cor selecionada: "+tantofaz.getText();
                }           
                
                //VERIFICANDO VALORES DE RADIOBUTTON
                if(masculino.isSelected())
                {
                    //CONCATENANDO VALOR COM VARIAVEL RESULTADO
                    resultado+= " \n-Genero: "+masculino.getText();
                }
                else
                if(feminino.isSelected())
                {
                    //CONCATENANDO VALOR COM VARIAVEL RESULTADO
                    resultado+= " \n-Genero: "+feminino.getText();                    
                }
                
                //VERIFICANDO LISTA
                List selecionados = animais.getSelectedValuesList();
                //VERIFICANDO TAMANHO DA LISTA 
                if (selecionados.size() > 0)
                {
                    resultado+= " \n-Animais de estimação: "+selecionados;
                }
            
            if (e.getSource() == cadastrar)
            {
                JOptionPane.showMessageDialog   (
                                                null, 
                                                "Dados cadastrados com sucesso! \n"
                                                + "\n-Nome: "+ txtnome.getText()
                                                + "\n-Endereco: "+ txtendereco.getText()
                                                + "\n-Telefone:"+ txttelefone.getText() + resultado                                                   
                                                );            
            }
        }
    }   
}
