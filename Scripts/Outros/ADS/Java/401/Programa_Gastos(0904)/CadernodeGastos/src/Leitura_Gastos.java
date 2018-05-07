
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import javax.swing.JOptionPane;

/**
 *
 * @author lenonr
 * 
 */

public class Leitura_Gastos 
{
    public void inicializa() throws FileNotFoundException, IOException
    {
        //MOSTRANDO JANELA
        String caminho = JOptionPane.showInputDialog(null, "Digite o caminho que deseja abrir o arquivo(com o nome do arquivo )");
        
        //LENDO ARQUIVO
        FileReader fr = new FileReader(caminho);
        
        //CRIANDO BUFFER
        BufferedReader br = new BufferedReader(fr);
        
        //LENDO E MOSTRANDO A LINHA NO ARQUIVO
        //ENQUANTO EXISTIR LINHAS NO ARQUIVO, IMPRIME OS VALORES
        while (br.ready())
        {
            System.out.println("Nome do produto:" + br.readLine());
            System.out.println("Preço do produto: " + br.readLine());
            System.out.println("Data da compra do produto: " + br.readLine());
        }
    }
}
