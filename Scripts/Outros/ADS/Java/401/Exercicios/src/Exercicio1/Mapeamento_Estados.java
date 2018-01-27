/**
 * 
 * PACOTE EXERCICIO1
 * 
 **/

package Exercicio1;

import java.util.HashMap;

/**
 *
 * @author lenonr
 * 
 **/

public class Mapeamento_Estados 
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
        
        mapa.put("SC", "Santa Catarina");
        mapa.put("SP", "São Paulo");
        mapa.put("SE", "Sergipe");
        
        mapa.put("TO", "Tocantins");
        
        
        //CONSULTANDO VALORES DO MAPA
        String sigla = "SP";
        String resultado = mapa.get(sigla);
        System.out.println("Esta sigla "+sigla+" corresponde ao estado do " + resultado);
    }
}
