
import javax.swing.ImageIcon;
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
public class ExemploGUI5 {
    public static void main(String [] args)
    {
        
        /*
        //Janela de entrada
        String nome = JOptionPane.showInputDialog(null, "Digite o seu nome: ");
        String idade =JOptionPane.showInputDialog(null, "Digite a sua idade: ");
        
        //Janela da saida
        JOptionPane.showMessageDialog(null, nome + " tem " + idade + " anos");
        */
        
        /*
        // Janela de entrada com valor preenchido
        //Primeiro parametro, mensagem usuario. Segundo valor, mensagem caixa de texto
        String nome = JOptionPane.showInputDialog("Digite um nome", "nome");
        //Janela de saida
        JOptionPane.showMessageDialog(null,"Olá " + nome);
        */
        
        /*
        //Primeiro parametro, é a janela a qual pertence
        //Segundo parametro, mensagem ao usuario
        //Terceiro é o titulo da janela;
        String nome = JOptionPane.showInputDialog(null,"Digite um nome", "INFORMAÇÃO", 1);
        //Janela de saida
        JOptionPane.showConfirmDialog(null, nome, nome, optionType);
        JOptionPane.showMessageDialog(null,"Olá " + nome);
        */
        
        
        //Primeiro parametro null;
        //Segundo, mensagem usuario;
        //Terceiro, titulo janela;
        //Quarto, classificar informação;
        //Quinto, icone;
        //Sexto e setimo, Null;
        JOptionPane.showInputDialog(null,"Digite a idade","IDADE", 2,new ImageIcon("C:\\Users\\IFFarroupilha\\Downloads\\1.jpg"),null,null);
    }
}
