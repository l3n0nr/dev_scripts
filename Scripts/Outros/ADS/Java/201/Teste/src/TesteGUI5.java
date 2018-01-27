
import javax.swing.JOptionPane;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author IFFarroupilha
 */
public class TesteGUI5 {
    public static void main (String [] args)
    {
        int n = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite o primeiro numero: "));
        int n1 = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite novamente, agora o segundo numero: "));
        int soma = n+n1;
        JOptionPane.showMessageDialog(null, "O resultado da soma é: " + soma);
    }
}
