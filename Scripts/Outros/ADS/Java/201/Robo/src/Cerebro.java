
import java.util.Random;


public class Cerebro {
    Random r1 = new Random();
    
    int Retorna_Comando()
    {
        int cmd = r1.nextInt(6);
        System.out.println("Comando: " + cmd);
        return cmd;
    }
}
