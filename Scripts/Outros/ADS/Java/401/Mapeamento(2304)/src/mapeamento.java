
import java.util.HashMap;

/**
 *
 * @author lenonr
 * 
 */

public class mapeamento 
{
    public static void main(String [] args)
    {
        HashMap<String,String> mapa = new HashMap<>();
        //ADICIONANDO VALORES AO MAPA
        mapa.put("diretor", "joão");
        mapa.put("gerente", "Pedro");
        
        //CONSULTANDO VALORES DO MAPA
        String resultado = mapa.get("diretor");
        System.out.println("Resultado é " + resultado);
        
        //VERIFICANDO SE CHAVE CONTEM VALOR
        String contem = "diretor";
        System.out.println("Verificando se o valor de "+contem+" existe");
        System.out.println(mapa.containsKey(contem));
        System.out.println("\n");
        
        //REMOVENDO VALORES DO MAPA
        String remove = "diretor";
        System.out.println("Removendo chave " + remove);
        mapa.remove(remove);
        System.out.println("\n");
        
        //VERIFICANDO SE CHAVE CONTEM VALOR
        System.out.println(mapa.containsKey(contem));
        System.out.println("\n");
        
        //MODIFICANDO VALOR DE UMA CHAVE
        String modifica = "gerente";
        String modificaN = "Marcos";
        mapa.replace("gerente", modificaN);
        System.out.println("O novo valor do gerente é " + modificaN);
        System.out.println(mapa.get(modifica));
        System.out.println("\n");
    }
}
