
import javax.swing.JFrame;


/**
 *
 * @author lenonr
 * 
 */

public class Minha_Janela extends JFrame
{
    //CRIANDO CONSTRUTOR DE UMA JANELA
    public Minha_Janela()
    {
        //CRIANDO TITULO DA JANELA
        super("Exemplo");
    }
    
    //CRIANDO A JANELA 
    public void init()
    {
        //DEFININDO O TAMANHO DA JANELA
        setSize(300,300);
        //DEFININDO POSIÇÃO DA JANELA
        setLocation(500,250);
        //MOSTRANDO A JANELA
        setVisible(true);
    }
    
    public static void main(String [] args)
    {
        new Minha_Janela().init();
    }
    
}
