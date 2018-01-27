
import javax.swing.JOptionPane;


public class MaiorMenor_Zero {
    public static void main (String [] args)
    {
         Float v = Float.parseFloat(JOptionPane.showInputDialog(null, "Digite um valor qualquer "));
         if (v >0)
         {
             JOptionPane.showMessageDialog(null,"Numero maior que Zero ");
         } 
         else
         if (v <0)
         {
             JOptionPane.showMessageDialog(null,"Numero menor que Zero ");
         }
         else
         {
             JOptionPane.showMessageDialog(null,"Valor igual a Zero. Digite um valor diferente do que você acabou de digitar!");
         }
    }
}
