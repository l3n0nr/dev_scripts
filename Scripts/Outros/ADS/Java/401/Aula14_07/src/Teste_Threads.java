
/**
 *
 * @author lenonr
 * 
 */

public class Teste_Threads 
{
    public static void main(String [] args)
    {
        //CRIANDO OBJETO CONTADOR
        Programa_Contador p1 = new Programa_Contador();
        p1.setID(1);
       
        //CRIANDO THREAD
        Thread t1 = new Thread(p1);
        
        //CRIANDO OBJETO CONTADOR_2
        Programa_Contador p2 = new Programa_Contador();
        p2.setID(2);
        Thread t2 = new Thread(p2);
        
        //CRIANDO OBJETO HELLO_WORD
        Hello_Word h0 = new Hello_Word();
        //h0.
        Thread t3 = new Thread(h0);
        
        //INICIANDO THREAD'S
        t1.start();
        t2.start();
        t3.start();
        
        
    }
}
