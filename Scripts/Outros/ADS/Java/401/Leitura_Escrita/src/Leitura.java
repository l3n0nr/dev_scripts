
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/**
 *
 * @author lenonr
 * 
 */
public class Leitura 
{
    public static void main(String [] args) throws FileNotFoundException, IOException
    {
        FileReader fr = new FileReader("C:\\Users\\IFFarroupilha\\Desktop\\dados.txt");
        //CRIANDO BUFFER
        BufferedReader br = new BufferedReader(fr);
        //LENDO E MOSTRANDO A LINHA NO ARQUIVO
        // System.out.println(br.readLine());
        //ENQUANTO EXISTIR LINHAS NO ARQUIVO, IMPRIME OS VALORES
        while (br.ready())
        {
            System.out.println("Nome:" + br.readLine());
            System.out.println("Endereço:" + br.readLine());
            System.out.println("Telefone:" + br.readLine());
        }

    }
    
    
}
