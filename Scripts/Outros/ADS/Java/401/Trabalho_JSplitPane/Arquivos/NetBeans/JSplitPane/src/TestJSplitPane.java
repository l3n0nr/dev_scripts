
import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JSplitPane;
import javax.swing.JTabbedPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;

public class TestJSplitPane extends JFrame
{   
    //CRIANDO BOTOES - PAINEL 1 
                    
    private JButton             
                    //PASTAS
                    b0,b1,b2,b3,b4,b5,b6, 
            
                    //DISCOS
                    b7,b8,b9,
            
                    //REDE
                    b10;    
    //CRIANDO BOTOES - PAINEL 2
    private JButton 
                    //TESTE
                    bb1,
                    bb2,
                    bb3,
    
                    //CRIANDO PASTAS
                    pasta1, 
                    pasta2,
                    pasta3;
    
    //CRIANDO PAINEL INTERNO    
    private JPanel p1, p2, p3;    
    
    //CRIANDO LABEL NA PAINEL1
    private JLabel l1, l2, l3;
    
    //CRIANDO TEXTFIELD
    private JTextField caminho;
                
    //CRIANDO CAIXA DE TEXTO
    private JTextArea caixa;
    
    private void init()
    {        
        //CRIANDO PAINEIS
        p1 = new JPanel(new GridLayout(14,1));
        p2 = new JPanel(new FlowLayout());
        p3 = new JPanel(new GridLayout(1,3));
        
        //CRIANDO BOTOES - PASTAS
        l1 = new JLabel("Pastas");
        b0 = new JButton("Itens Recentes");
        b1 = new JButton("Area de Trabalho");
        b2 = new JButton("Documentos");
        b3 = new JButton("Downloads");
        b4 = new JButton("Imagens");
        b5 = new JButton("Musicas");
        b6 = new JButton("Videos");
        
        //CRIANDO BOTOES - LOCAIS
        l2 = new JLabel("Locais");
        b7 = new JButton("OS");
        b8 = new JButton("Dados");
        b9 = new JButton("Arquivos");
        
        //CRIANDO BOTAO - REDE
        l3   = new JLabel("Rede");
        b10 = new JButton("Conectar");        
        
        //ADICIONANDO BOTOES AO PAINEL - PASTAS
        p1.add(l1);
        p1.add(b0);
        p1.add(b1);
        p1.add(b2);
        p1.add(b3);
        p1.add(b4);
        p1.add(b5);
        p1.add(b6);                
        
        //ADICIONANDO BOTOES AO PAINEL - LOCAIS
        p1.add(l2);
        p1.add(b7);
        p1.add(b8);
        p1.add(b9);
        
        //ADICIONANDO BOTOES AO PAINEL - REDE
        p1.add(l3);
        p1.add(b10);
        
        //CRIANDO BOTAO - CAMINHO
        bb1 = new JButton("Home");
        bb2 = new JButton("<--");
        bb3 = new JButton("-->");
        caminho = new JTextField(40);
        caixa = new JTextArea();
        
        //CRIANDO BOTAO - PASTAS
        pasta1 = new JButton("Pasta1");
        pasta2 = new JButton("Pasta2");
        pasta3 = new JButton("Pasta3");
        
        //ADICIONANDO BOTOES AO PAINEL 
        p2.add(bb2);
        p2.add(bb3);
        p2.add(bb1);
        p2.add(caminho);
        p2.add(caixa);
                 
        //ADICIONANDO BOTOES AO PAINEL 3
        p3.add(pasta1);
        p3.add(pasta2);
        p3.add(pasta3);
        
        //DEFININDO LOCAL ONDE SERÃO ARMAZENADOS OS PAINEIS
        JTabbedPane pane = new JTabbedPane();
        
        //CRIANDO FRAME
        JFrame frame = new JFrame();
        
        //DEFININDO LAYOUT DA JANELA
        frame.setLayout(new BorderLayout());                      
                            
        //CRIANDO SPLITPANE - HORIZONTAL
        JSplitPane splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT);

            //POSICIONANDO PAINEL 1 NA ESQUERDA
            splitPane.setLeftComponent(p1);

            //DEFININDO DISTANCIA MINIMA DA BORDA
            splitPane.setResizeWeight(0.1);                    
            
            //POSICIONANDO BORDA            
            frame.add(splitPane, BorderLayout.CENTER);       

        //CRIANDO SPLITPANE - VERTICAL
        JSplitPane splitPane1 = new JSplitPane(JSplitPane.VERTICAL_SPLIT);    
        
            //POSICIONANDO COMPONENTE NA PARTE DE BAIXO DA JANELA
            splitPane1.setTopComponent(p2);
            
            //POSICIONANDO PAINEL 3 NA PARTE SUPERIOR DA AREA 1
            splitPane1.setBottomComponent(p3);
            
            //DEFININDO DISTANCIA MINIMA DA BORDA
            splitPane1.setResizeWeight(0.1);
        
        //CRIANDO SPLITPANE - VERTICAL
        JSplitPane splitPane2 = new JSplitPane(JSplitPane.VERTICAL_SPLIT);    
        
            //POSICIONANDO COMPONENTE NA PARTE DE BAIXO DA JANELA
            //splitPane2.setTopComponent(p2);

            //POSICIONANDO COMPONENTE NA PARTE DE CIMA DA JANELA
            splitPane2.setBottomComponent(new JLabel("Detalhes: "));
            
            //DEFININDO DISTANCIA MINIMA DA BORDA
            splitPane2.setResizeWeight(0.9);
                        
        //POSICIONANDO JSplit1 NA DIREITA
        splitPane.setRightComponent(splitPane2);     
        splitPane2.setTopComponent(splitPane1);
            
        //DEFININDO ESTILO DA JANELA
        frame.pack();
        
        //FECHANDO A JANELA AUTOMATICAMENTE
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        //MOSTRANDO A JANELA
        frame.setVisible(true);
    }
    
    //CRIANDO CLASSE PRINCIPAL
    public static void main(String[] args) 
    {
        new TestJSplitPane().init();        
    }
}    
