
import java.awt.FlowLayout;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;


/**
 *
 * @author lenonr
 * 
 */

public class ExemploTratamentoTabela extends JFrame
{
    //CRIANDO TABELA
    private JTable tabela;
    
    //CRIANDO PAINEL
    private JPanel caixas;
    
    //MOSTRANDO NOMES DAS COLUNAS
    private JScrollPane barrarolagem;
    
    //CRIANDO CONSTRUTOR
    public ExemploTratamentoTabela()
    {   
        //CRIANDO ARRAY - COLUNAS DA TABELA
        String[] colunas = {"Nome","Telefone","E-mail"};
        
        //CRIANDO MATRIZ - LINHAS DA TABELA
        Object[][] dados = {
                           {"Ana","34221012","ana@email.com"},
                           {"João","34220920","joao@email.com"},
                           {"Pedro","34221232","pedro@email.com"}
                           };
        //CRIANDO A TABELA
        tabela = new JTable(dados,colunas);
        
        //CRIANDO PAINEL QUE RECEBERÁ A TABELA
        caixas = new JPanel(new FlowLayout());
        
        //CRIANDO A BARRA DE ROLAGEM
        barrarolagem = new JScrollPane(tabela);
    }
    
    //CRIANDO METODO INIT
    public void init()
    {
        //DEFININDO TAMANHO
        setSize(400,500);
        
        //ADICIONANDO DENTRO DO PAINEL A TABELA
        caixas.add(barrarolagem);
        getContentPane().add(caixas);
        
        //MOSTRANDO A JANELA
        setVisible(true);
        
        //FECHANDO A TABELA COM O BOTÃO FECHAR
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        
        //ADICIONANDO O LISTENER NA TABELA
        tabela.addMouseListener(new TableHandler());        
    }
    
    /*
    //CRIANDO MOUSE ADAPTER
    class TableHandler extends MouseAdapter
    {
    
        //O ADAPTADOR(MouseAdapter) POSSIBILITA QUE NÃO SEJA OBRIGADO A IMPLEMENTAR          * 
        //TODOS OS METODOS DA INTERFACE
           
        //SOBRE-ESCREVENDO METODO, QUE JÁ FOI DEFINIDO PELA HERANÇA
        @Override
        public void mouseClicked(MouseEvent e) 
        {
            //LINHA RECEBE O INDICE DA LINHA
            int linha = tabela.getSelectedRow();
            
            //LINHA RECEBE O INDICE DA COLUNA
            int coluna = tabela.getSelectedColumn();
            
            //MOSTRANDO O CONTEUDO DA TABELA DE ACORDO COM A LINHA E COLUNA SELECIONADOS
            JOptionPane.showMessageDialog(null, tabela.getValueAt(linha, coluna));
        }        
    }
    */
    
    //CRIANDO MOUSE ADAPTER
    //MOSTRANDO TODAS AS COLUNAS DA TABELA
    
    class TableHandler extends MouseAdapter
    {   
        //SOBRE-ESCREVENDO METODO, QUE JÁ FOI DEFINIDO PELA HERANÇA
        @Override
        public void mouseClicked(MouseEvent e) 
        {
            //LINHA RECEBE O INDICE DA LINHA
            int linha = tabela.getSelectedRow();
            
            //LINHA RECEBE O INDICE DA COLUNA
            int coluna = tabela.getSelectedColumn();
                        
            JOptionPane.showMessageDialog(null,"Nome: " + tabela.getValueAt(linha, 0) + " Telefone: " + tabela.getValueAt(linha, 1) + " E-mail: " + tabela.getValueAt(linha, 2));
        }        
    }
    
    //CRIANDO METODO PRINCIPAL
    public static void main(String [] args)
    {
        //INSTANCIANDO VALOR E
        ExemploTratamentoTabela e = new ExemploTratamentoTabela();
        
        
        e.init();
        
    }
}