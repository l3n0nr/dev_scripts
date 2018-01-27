
import javax.swing.JOptionPane;


public class Iguais_Diferentes {
    public static void main (String [] args)
    {
         int v = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite um valor qualquer "));
         int v1 = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite outro valor "));
         if (v == v1)
         {
             JOptionPane.showMessageDialog(null,"Numero são iguais");
         } 
         else
         {
             JOptionPane.showMessageDialog(null,"Numero são diferentes ");
         }
    
    }
}
