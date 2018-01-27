
import javax.swing.JOptionPane;


public class Media_Notas {
    public static void main (String [] main)
    {
        Float resultado;
        Float nota = Float.parseFloat(JOptionPane.showInputDialog(null, "Digite a primeira nota "));
        Float nota1 = Float.parseFloat(JOptionPane.showInputDialog(null, "Digite a sua segunda nota "));
        resultado = (nota+nota1)/2 ;
        if ( resultado >= 7)
        {
         JOptionPane.showMessageDialog(null, "Você foi aprovado, com nota: " + resultado);
        }
        else
        {
        JOptionPane.showMessageDialog(null,"Você foi reprovado, você não alcançou a media necessária. ");
        }
    }
}
