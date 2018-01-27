
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Cursor;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.Insets;
import java.awt.Toolkit;
import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextArea;
import javax.swing.border.Border;
import javax.swing.border.LineBorder;

/**
 *
 * @author lenonr
 * 
 */

public class Efeitos_Visuais0 extends JFrame
{
    //CRIANDO CAMPO DE RELOGIO E BARRA DE STATUS
    private JPanel botoes,barrastatus;
    
    //CRIANDO BOTOES
    private JButton novo,limpar,salvar,sair,apagar;
    
    //CRIANDO RELOGIO E LABEL DE MENSAGEM
    private JLabel mensagem,relogio;
    
    //CRIANDO CAMPO DE TEXTO
    private JTextArea areaTexto;
    private Object ToolKit;


    public Efeitos_Visuais0()
    {
        super("Exemplo 0 Estilos");
        
        //CRIANDO OS BOTOES
        novo =  new JButton("Novo");
        limpar = new JButton("Limpar");
        salvar = new JButton("Salvar");
        apagar = new JButton();
        sair = new JButton("Sair");
        
        barrastatus = new JPanel(new FlowLayout());
        areaTexto = new JTextArea("Digite o seu texto:");
        mensagem = new JLabel("Data/Hora" + new java.util.Date().toString());        
    }
    
    public void init()
    {
        //COR DA FRENTE USANDO CONSTANTES DA CLASSE COLOR
        novo.setForeground(Color.RED);
        
        //COR DE FUNDO USANDO RGB
        novo.setBackground(new Color(255,0,255));
        
        //CRIANDO ICON CHAMADO ICONE, COM O CAMINHO PARA OS BOTOES POSSAM USÁ-LO
        Icon icone = new ImageIcon("/home/lenonr/Imagens/Teste2.png");
        
        //CHAMANDO IMAGEM PARA O BOTAO APAGAR
        apagar.setIcon(icone);
        
        //CONFIGURANDO O BOTAO COM ALTURA E LARGURA
        apagar.setSize(icone.getIconHeight(), icone.getIconWidth());
        //TRABALHANDO COM MARGEM
        apagar.setMargin(new Insets(0,0,0,0)); //ZERA AS MARGENS
        
        //DEIXANDO A JANELA COM TAMANHO IGUAL AO DA TELA
        setSize(Toolkit.getDefaultToolkit().getScreenSize().width, Toolkit.getDefaultToolkit().getScreenSize().width);
        
        //FECHANDO A JANELA PRINCIPAL
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        //DEFININDO POSICIONAMENTO DOS BOTOES NA JANELA(C,B,LD,LE)
        getContentPane().setLayout(new BorderLayout());
        
        //TRABALHANDO COM BORDA
        Border borda = new LineBorder(Color.BLUE,2);
        
        //APLICANDO BORDA NA BARRA DE STATUS
        barrastatus.setBorder(borda);
        
        //ALTERANCO CURSOR
            //EM BOTOES
            Cursor hand = new Cursor(Cursor.HAND_CURSOR);
            botoes.setCursor(hand);
            //NA CAIXA DE TEXTO
            Cursor text = new Cursor(Cursor.TEXT_CURSOR);
            areaTexto.setCursor(text);
            
        //ALTERANDO FONTE
            //NA CAIXA DE TEXTO
            Font times = new Font("Liberation Serif",Font.BOLD, 14);
            areaTexto.setFont(times);

            //NA MENSAGEM
            Font arialBold = new Font("Liberation Serif", Font.ITALIC,14);
            mensagem.setFont(arialBold);

        //COLOCANDO DICAS
        novo.setToolTipText("Cria um novo documento");
        limpar.setToolTipText("Limpa o documento");
        salvar.setToolTipText("Salva o documento");
        sair.setToolTipText("Sair do programa");
        
        //DEFININDO AREA DOS BOTOES
        botoes.add(novo);
        botoes.add(limpar);
        botoes.add(salvar);
        botoes.add(apagar);
        
        //DEFINDO COR DE FUNDO DOS BOTOES
        botoes.setBackground(Color.red);
        
        //DEFINIÇÃO DA AREA DE MENSAGEM
        barrastatus.add(mensagem);
        barrastatus.add(relogio);
        
        //PARTE SUPERIOR QUE CONTERÁ OS BOTOES
        getContentPane().add(botoes,BorderLayout.NORTH);
        
        //PARTE CENTRAL QUE CONTERÁ A AREA DE TEXTO
        getContentPane().add(areaTexto,BorderLayout.CENTER);
        
        //PARTE INFERIOR QUE CONTERÁ MENSAGENS
        getContentPane().add(mensagem,BorderLayout.SOUTH);   
    }    

    public static void main(String [] args)
    {
        new Efeitos_Visuais0().init();
    }

}
