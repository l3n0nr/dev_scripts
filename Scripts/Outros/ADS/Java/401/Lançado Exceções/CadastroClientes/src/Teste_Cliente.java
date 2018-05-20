
import javax.swing.JOptionPane;

/**
 *
 * @author lenonr
 *  
 */
public class Teste_Cliente 
{
    public static void main(String [] args)
    {
        int i = 0;
        //Cliente c = new Cliente();
        while (i<=3)
        {
            try
            {
                int idade = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite a sua idade"));
                JOptionPane.showMessageDialog(null, "A sua idade é: " + idade);
                i++;
            }
            catch(NumberFormatException e)
            {
                JOptionPane.showMessageDialog(null, "Você deve digitar o valor correspondente");  
                i--;
            }
        }
    }
    
}
