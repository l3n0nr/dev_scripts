
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

/**
 *
 * @author lenonr
 * 
 */
public class Escrita 
{
    public static void main (String [] args) throws IOException
    {
        //CRIANDO UM OBJETO PARA ESCRITA
        FileWriter fw = new FileWriter("C:\\Users\\IFFarroupilha\\Desktop\\dados.txt",true); 
        /*                                                                              |
        .                                               _____                           |                        ____    
        .   CASO DESEJE SOBRE-ESCREVER O ARQUIVO, USE "FALSE". SENÃO PARA CONTINUAR A ESCRITA DO ARQUIVO USA-SE "TRUE".
        .        
        */
        //CRIANDO UMA MEMORIA AUXILIAR PARA MELHORAR A ESCRITA E LEITURA DOS DADOS
        BufferedWriter bw = new BufferedWriter(fw);
        //INSERINDO VALORES NO ARQUIVO
        bw.write(" Lenon");
        bw.newLine();
        bw.write(" Passo novo");
        bw.newLine();
        bw.write(" 34227070");
        bw.newLine();
        
        bw.write(" Ricardo");
        bw.newLine();
        bw.write(" Passo novo");
        bw.newLine();
        bw.write(" 34227071");
       
        //FECHANDO ARQUIVO PARA SER POSSIVEL EXECUTAR O PROGRAMA
        bw.close();
        fw.close();
        
    }
    
}
