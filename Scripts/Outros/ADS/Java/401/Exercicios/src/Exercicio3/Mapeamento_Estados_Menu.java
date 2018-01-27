/**
 * 
 * PACOTE EXERCICIO3
 * 
 **/

package Exercicio3;

import java.util.HashMap;
import javax.swing.JOptionPane;

/**
 *
 * @author lenonr
 * 
 **/

public class Mapeamento_Estados_Menu 
{
    public static void main(String [] args)
    {
        //CRIANDO HASHMAP MAPA
        HashMap<String,String> mapa = new HashMap<>();
        
        //ADICIONANDO VALORES AO MAPA DE ESTADOS        
        mapa.put("AC", "Acre");
        mapa.put("AL", "Alagoas");
        mapa.put("AP", "Amapá");
        mapa.put("AM", "Amazonas");
        
        mapa.put("BA", "Bahia");
        
        mapa.put("CE", "Ceará");
        
        mapa.put("DF", "Distrito Federal");
        
        mapa.put("ES", "Espírito Santo");
        
        mapa.put("GO", "Goiás");
        
        mapa.put("MA", "Maranhão");
        mapa.put("MT", "Mato Grosso");
        mapa.put("MS", "Mato Grosso do Sul");
        mapa.put("MG", "Minas Gerais");
        
        mapa.put("PA", "Pará");
        mapa.put("PB", "Paraíba");
        mapa.put("PR", "Paraná");
        mapa.put("PE", "Pernambuco");
        mapa.put("PI", "Piauí");
        
        mapa.put("RJ", "Rio de Janeiro");
        mapa.put("RN", "Rio Grande do Norte");
        mapa.put("RS", "Rio Grande do Sul");
        mapa.put("RO", "Rondônia");
        mapa.put("RR", "Roraima");
        
        /*
        mapa.put("SC", "Santa Catarina");
        mapa.put("SP", "São Paulo");
        mapa.put("SE", "Sergipe");
        */
        
        mapa.put("TO", "Tocantins");
        
        
        /*
            //CONSULTANDO VALORES DO MAPA
            String sigla = "SP";
            String resultado = mapa.get(sigla);
            System.out.println("Esta sigla "+sigla+" corresponde ao estado do " + resultado);
        */
        
        //CRIANDO MENU
        do
            {
            Integer valor = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite um valor correspondente: 1-Inserir Estados, 2-Buscar Estados, 3-Remover Estados ou 4-Atualizar algum estado já existente:"));

            //CRIANDO CONDIÇÕES
            switch(valor)
            {
                //INSERE NOVOS ESTADOS
                case 1:
                {
                    JOptionPane.showMessageDialog(null, "Iniciando a inserção de valores");

                    String sigla,nomeestado;
                    sigla = JOptionPane.showInputDialog(null,"Digite a sigla do estado que deseja adicionar");
                    nomeestado = JOptionPane.showInputDialog(null,"Digite o nome do estado que deseja adicionar");
                    JOptionPane.showMessageDialog(null,"Estado de/do " + nomeestado + " adicionado com sucesso");
                    mapa.put(sigla, nomeestado);                

                    break;
                }
                //BUSCA ESTADOS JÁ EXISTENTES
                case 2:
                {
                    JOptionPane.showMessageDialog(null, "Iniciando a busca de valores");

                    String sigla,consulta;
                    sigla = JOptionPane.showInputDialog(null,"Digite a sigla do estado para buscar");
                    consulta = mapa.get(sigla);
                    if (consulta == null)
                    {
                        JOptionPane.showMessageDialog(null,"Tente digitar outra sigla, pois este estado não estado cadastrado");
                    }
                    else
                    {
                        JOptionPane.showMessageDialog(null, "A sigla " +sigla+ " corresponde ao estado de " + consulta);
                    }
                        

                    break;
                }
                //REMOVENDO ESTADOS JÁ EXISTENTE
                case 3:
                {
                    JOptionPane.showMessageDialog(null, "Iniciando a remoção de valores");

                    String remove,estado;
                    remove = JOptionPane.showInputDialog(null,"Digite a sigla do estado que deseja remover");
                    estado = mapa.get(remove);
                    JOptionPane.showMessageDialog(null,"Estado de/do " + estado + " removido com sucesso");
                    mapa.remove(remove);

                    break;
                }
                //ATUALIZANDO VALORES DE UM ESTADO JÁ EXISTENTE
                case 4:
                {
                    JOptionPane.showMessageDialog(null, "Iniciando a alteração de valores");

                    String sigla, estado;                  
                    sigla = JOptionPane.showInputDialog(null, "Digite a sigla do estado que deseja modificar");
                    if (mapa.containsKey(sigla) == false)
                    {
                        JOptionPane.showMessageDialog(null,"Tente digitar outra sigla, pois este estado não está cadastrado");
                    }
                    else
                    {                        
                        estado = JOptionPane.showInputDialog(null, "Agora digite o nome do estado para modificar");
                        mapa.replace(sigla, estado);
                        JOptionPane.showMessageDialog(null, "Agora a sigla " +sigla+ " corresponde ao estado de " + estado);
                        //JOptionPane.showMessageDialog(null, mapa.get(estado));
                    }                   
                    
                    break;
                }
            }
        }
        while(true);
    }    
}
