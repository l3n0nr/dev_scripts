
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import javax.swing.JOptionPane;

/**
 *
 * @author lenonr
 * 
 */

public class Escrita_Gastos 
{
    public void inicializa() throws IOException
    {
        //CRIANDO OBJETO PARA RECEBER O CAMINHO 
        String caminho = JOptionPane.showInputDialog(null, "Digite o caminho que deseja salvar o arquivo(com o nome do arquivo incluso)");
        
        //CRIANDO UM OBJETO PARA ESCRITA
        FileWriter fw = new FileWriter(caminho,true); 
        
        //CRIANDO UMA MEMORIA AUXILIAR PARA MELHORAR A ESCRITA E LEITURA DOS DADOS
        BufferedWriter bw = new BufferedWriter(fw);
        
        //INSERINDO VALORES NO ARQUIVO
        String nomeproduto = JOptionPane.showInputDialog(null, "Digite o nome do produto: ");
        bw.write(nomeproduto);
        bw.newLine();
        String precoproduto = JOptionPane.showInputDialog(null, "Digite o preço do produto: ");
        bw.write(precoproduto);
        bw.newLine();
        String datacompraproduto = JOptionPane.showInputDialog(null, "Digite a data da compra deste produto: ");
        bw.write(datacompraproduto);
        bw.newLine();
        
        //FECHANDO ARQUIVO PARA SER POSSIVEL EXECUTAR O PROGRAMA
        bw.close();
        fw.close();
    }
}
