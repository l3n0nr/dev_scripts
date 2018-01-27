
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author lenonr
 * 
 */

public class Programa_Contador implements Runnable
{
    //CRIANDO VARIAVEIS
    private int id;
    
    //DEFININDO MÉTODO PARA A DEFINIÇÃO DO VALOR
    public void setID(int x)
    {
        id = x;
    }
    
    
    @Override
    public void run() 
    {
        //CRIANDO LAÇO DE REPETIÇÃO
        for(int i = 0; i <= 10000; i++)
        {
            //IMPRIMINDO MENSAGEM
            System.out.println("Programa " + id + "valor " + i);
            
            //FAZENDO O METODO 'DURMIR' POR UM DETERMINADO TEMPO
            try 
            {                
                Thread.sleep(1000);
            }
            catch (InterruptedException ex) 
            {
                Logger.getLogger(Programa_Contador.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    
}
