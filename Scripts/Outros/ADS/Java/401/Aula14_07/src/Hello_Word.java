/**
 *
 * @author lenonr
 * 
 */

public class Hello_Word implements Runnable
{
    @Override
    public void run() 
    {
        //CRIANDO LAÇO DE REPETIÇÃO
        for(int i = 0; i <= 10000; i++)
        {
            //IMPRIMINDO MENSAGEM
            System.out.println("Hello Word!");
        } 
    }
}
