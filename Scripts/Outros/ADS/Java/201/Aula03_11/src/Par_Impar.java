
import javax.swing.JOptionPane;


public class Par_Impar {
    public static void main (String [] args)
    {
         int v = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite um valor qualquer. (MAIOR QUE ZERO)"));
         if (v%2 == 0)
         {
             JOptionPane.showMessageDialog(null,"Numero par");
         } 
         else
         {
             JOptionPane.showMessageDialog(null,"Numero impar");
         }
    }
}
