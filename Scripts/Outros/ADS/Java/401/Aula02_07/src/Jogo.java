
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.ObjectOutputStream;
import java.util.Scanner;

/**
 *
 * @author lenonr
 * 
 */

public class Jogo 
{
    //CRIANDO JOGADOR
    Jogador j;

    public boolean salvar() throws FileNotFoundException
    {
        //TENTAR EXECUTAR O COMANDO
        try
        {
            //CRIANDO CANAL PARA UM NO ARQUIVO
            FileOutputStream entrada = new FileOutputStream("jogo.ser");
            
            //CRIANDO CANAL DE LIGAÇÃO COM O ARQUIVO
            ObjectOutputStream saida = new ObjectOutputStream(entrada);
                    
            //ESCREVENDO OBJETO NO ARQUIVO
            saida.writeObject(j); 
            
            //TESTANDO SAIDA
            System.out.printf("Jogo salvo...");
            
            //RETORNANDO VALOR VERDADEIRO
            return true;                       
        }               
        catch(Exception e) 
        {
            //TESTANDO SAIDA
            System.out.printf("Ocorreu um erro..");
            
            //RETORNANDO VALOR FALSO 
            return false;
        }               
    }
    
    //CRIANDO METODO RESULTADO
    public boolean recuperar() throws FileNotFoundException
    {
        //TENTANDO REALIZAR EXECUÇÃO
        try
        {
            //CRIAÇÃO CONEXÃO COM O ARQUIVO
            FileInputStream conec = new FileInputStream("jogo.ser");
            
            //CRIAÇÃO LEITURA DO ARQUIVO
            ObjectInputStream lendo = new ObjectInputStream(conec);
            
            //ENVIANDOS DADOS PARA O ARQUIVO
            j = (Jogador) lendo.readObject();
                    
            //TESTANDO SAIDA
            System.out.printf("Jogo carregado com sucesso");
            
            //RETORNANDO VALOR VERDADEIRO
            return true;            
        }
        catch(Exception e)
        {
            //TESTANDO SAIDA
            System.out.println("Ocorreu um erro..");
            
            //RETORNANDO VALOR FALSO
            return false;
        }
    }
    
    //CRIANDO METODO PRINCIPAL
    public static void main(String [] args) throws FileNotFoundException
    {
        //CRIANDO SCANNEAR PARA REALIZAR A LEITURA
        Jogo jogo = new Jogo();        
        Scanner leitura = new Scanner(System.in);
        
        //PERGUNTANDO AO USUARIO UM VALOR
        System.out.print("Deseja continuar... [1]SIM,[2]NAO");
        
        //CRIANDO VARIAVEL OPCAO
        int opcao = leitura.nextInt();
        
        //SALVAR JOGO
        if(opcao == 1)
        {
            jogo.recuperar();
            System.out.println("Balas: " + jogo.j.numerodebalas);
            
            System.out.println("PosicaoX: " + jogo.j.posicaox);
            System.out.println("PosicaoY: " + jogo.j.posicaoy);
        }
        else
        {
            //CRIANDO NOVO JOGADOR
            jogo.j = new Jogador(0, 0, 10);
            
            System.out.println("Quantidade de Balas: " + jogo.j.numerodebalas);
            System.out.println("PosicaoX: " + jogo.j.posicaox);
            System.out.println("PosicaoY: " + jogo.j.posicaoy);
            
        }
        
        while(true)
        {
            System.out.println("[1]Atirar. [2]Salvar");
            int cmd = leitura.nextInt();
            
            if(cmd == 1)
            {
                jogo.j.atirar();
                System.out.println("Balas: " + jogo.j.numerodebalas);
            }
            else
            {
                jogo.salvar();
            }
        }
    }
}
