
import java.io.IOException;
import javax.swing.JOptionPane;

/**
 *
 * @author lenonr
 * 
 */

public class Testa_Sistema 
{
    public static void main(String [] args) throws IOException
    {
        do
        {
            int menu = 0;
            menu = Integer.parseInt(JOptionPane.showInputDialog(null, "Se quiser 'Registrar Produtos', digite 1. Caso deseje 'Consultar Produtos', digite 2."));
            switch(menu)
            {
                case 1: 
                {
                    //CHAMANDO CLASSE "ESCRITA_GASTOS"
                    Escrita_Gastos eg = new Escrita_Gastos();
                    eg.inicializa();
                }
                case 2:
                {
                    //CHAMANDO CLASSE "LEITURA_GASTOS"
                    Leitura_Gastos lg = new Leitura_Gastos();
                    lg.inicializa();
                }
            }
        }
        while(true);
    }    
}
