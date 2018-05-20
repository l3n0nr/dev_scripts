/**
 * 
 * PACOTE EXERCICIO2
 * 
 **/

package Exercicio2;

import java.util.ArrayList;
import java.util.HashMap;
import javax.swing.JOptionPane;

/**
 *
 * @author lenonr
 * 
 **/

public class Mapeamento_Classes 
{
    public static void main(String [] args)
    {
        //CRIANDO HASHMAP MAPA DE CARROS
        HashMap<Integer,String> mapa_carros = new HashMap<>();
        
        //CRIANDO OBJETO CARROS
        Carros c = new Carros();
        
        //CRIANDO VARIAVEIS GLOBAIS
        Integer i = 0, op = 0;
       
        //DEVE-SE CRIAR UMA VARIAVEL CHAVE E OUTRA PARA CHAMAR OS VALORES 
        //OS VALORES SERÃO CRIADOS A PARTIR DA CLASSE CARRO, INDEXADOS POR UM FOR.
        
        do
        {
            //CRIANDO VARIAVEIS LOCAIS
            String modelo=null, ano=null, placa = null, v = null, teste = null;
            {
                op = Integer.parseInt(JOptionPane.showInputDialog(null, "Para adicionar carros a lista, digite 1. Para se o seu veiculo esta cadastrado, digite 2."));
                switch(op)
                {
                    //ADICIONANDO CARROS
                    case 1:
                    {
                        //ENTRANDO COM OS VALORES
                        c.modelo = JOptionPane.showInputDialog(null, "Digite o modelo do seu carro");
                        c.ano = JOptionPane.showInputDialog(null, "Digite o ano do seu carro");
                        placa = JOptionPane.showInputDialog(null, "Digite a placa do seu carro");
                        
                        //CRIANDO O ACUMULADOR
                        i++;
                        
                        //ADICIONANDO VALORES AO MAPA
                        mapa_carros.put(i, placa);
                        break;
                    }
                    //VERIFICANDO CARROS
                    case 2:
                    {
                        //ENTRANDO COM PLACA
                        v = JOptionPane.showInputDialog(null, "Digite a placa do carro que deseja buscar");
                        
                        //TESTA ENTRADA
                        teste = mapa_carros.get(i);
                        
                        //SE CARRO FOR ENCONTRADO
                        if(v.equals(teste))
                        {
                            JOptionPane.showMessageDialog(null, "O seu carro foi encontrado");
                            JOptionPane.showMessageDialog(null, "O modelo do seu carro é " + c.modelo);
                            JOptionPane.showMessageDialog(null, "O modelo dele é " + c.ano);
                        }
                        
                        //SE CARRO NAO FOR ENCONTRADO
                        else
                        {
                            JOptionPane.showMessageDialog(null, "O seu veiculo nao foi encontrado");
                        }
                    }
                }
            }
        }
        while(true);
    }
}
