
import javax.swing.JOptionPane;



public class Salario_Aliquota {
     public static void main (String [] args)
    {
        //declaração de variaveis
        double salario_bruto,salario_liquido,aliquota = 0;
        //calculos
        salario_bruto = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite o valor do salario "));
        if (salario_bruto <= 1317)
        {
            aliquota = 0.08;
        }
        else
        if (salario_bruto <1317 && salario_bruto >= 2195.12) 
        {
            aliquota = 0.09;
        }
        else
        if (salario_bruto <2195.13 && salario_bruto > 4390.24) 
        {
            aliquota = 0.11;
        }
        salario_liquido = (salario_bruto -(salario_bruto*aliquota));
        JOptionPane.showMessageDialog(null, "O valor do salario bruto é: " + String.format("%.2f", salario_bruto) + "E o liquido é: " + String.format("%2.f", salario_liquido);    
    }
}
