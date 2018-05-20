
/**
 *
 * @author lenonr
 * 
 */

public class Teste_Corrida_Maluca 
{
    public static void main(String [] args)
    {
        /*
        //CRIANDO CARRO N1
        Corrida_Maluca c1 = new Corrida_Maluca();
        c1.setID(1);
        //CRIANDO THREAD
        Thread t1 = new Thread(c1);
        
        //CRIANDO CARRO N2
        Corrida_Maluca c2 = new Corrida_Maluca();
        c2.setID(2);
        //CRIANDO THREAD
        Thread t2 = new Thread(c2);
        
        //CRIANDO CARRO N3
        Corrida_Maluca c3 = new Corrida_Maluca();
        c3.setID(3);
        //CRIANDO THREAD
        Thread t3 = new Thread(c3);
        
        //CRIANDO CARRO N4
        Corrida_Maluca c4 = new Corrida_Maluca();
        c4.setID(4);
        //CRIANDO THREAD
        Thread t4 = new Thread(c4);
        
        //CRIANDO CARRO N5
        Corrida_Maluca c5 = new Corrida_Maluca();
        c5.setID(5);
        //CRIANDO THREAD
        Thread t5 = new Thread(c5);
        
        
        //INICIANDO THREAD'S
        t1.start();
        t2.start();
        t3.start();
        t4.start();
        t5.start();
                
        */
        
        //CRIANDO CARROS
        Carro1 c1 = new Carro1();
        Thread t1 = new Thread(c1);
        
        Carro2 c2 = new Carro2();
        Thread t2 = new Thread(c2);
        
        Carro3 c3 = new Carro3();
        Thread t3 = new Thread(c3);
        
        Carro4 c4 = new Carro4();
        Thread t4 = new Thread(c4);
        
        Carro5 c5 = new Carro5();
        Thread t5 = new Thread(c5);
        
        //INICIANDO THREAD'S
        t1.start();
        t2.start();
        t3.start();
        t4.start();
        t5.start();
        
    }    
}
