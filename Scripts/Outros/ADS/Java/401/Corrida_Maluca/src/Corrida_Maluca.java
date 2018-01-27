
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author lenonr
 */

public class Corrida_Maluca implements Runnable
{
    //CRIANDO VARIAVEIS
    private int id;
    
    public void setID(int x)
    {
        id = x;        
    }
    
    @Override
    public void run() 
    {
        //CRIANDO LAÇO DE REPETIÇÃO
        for(int i = 0; i <= 10; i++)
        {
            //IMPRIMINDO MENSAGEM
            System.out.println("Carro de codigo " + id + " se movimentou 1 metro E PAROU! - " + i);
            
            //FAZENDO O METODO 'DURMIR' POR UM DETERMINADO TEMPO
            try 
            {                
                Thread.sleep(1000);
            }
            catch (InterruptedException ex) 
            {
                Logger.getLogger(Corrida_Maluca.class.getName()).log(Level.SEVERE, null, ex);
            }
        }    
    }
}   
 
