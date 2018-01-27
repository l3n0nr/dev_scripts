
import javax.swing.JOptionPane;


public class Exemplo1_IF_Else_Aninhado {
    public static void main (String [] args)
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
        if ( resultado >= 3 && resultado < 7 ) 
        {
         JOptionPane.showMessageDialog(null, "Você não foi aprovado, mas tem direito a realizar o exame " + resultado);
        }
        else    
        {
        JOptionPane.showMessageDialog(null,"Você foi reprovado, você não alcançou a media nem sequeer para exame. ");
        }
    }
}
    
