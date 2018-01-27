
import javax.swing.JOptionPane;

public class Ex1_IMC 
{
    public static void main (String [] args)
    {
        Float imc;
        //Janela de entrada
        String nome = JOptionPane.showInputDialog(null, "Digite o seu nome: ", "Lenon Ricardo");
        Float peso = Float.parseFloat(JOptionPane.showInputDialog(null, "Digite o seu peso: "));
        Float altura = Float.parseFloat(JOptionPane.showInputDialog(null, "Digite a sua altura "));
        //calculo
        imc = (float)peso/(float)Math.pow(altura, 2);
        //Janela da saida
        JOptionPane.showMessageDialog(null, nome + " voce tem IMC: " + String.format("%.2f",imc));
    }
}
