package Sistema_Faculdade;

/**
 *
 * @author lenonr
 */
public class Testa_Gerador {
    public static void main (String [] args)
    {
        Gerador_Relatorio R = new Gerador_Relatorio();
        
        Empregado_Faculdade f = new Empregado_Faculdade();
        f.setNome("Fulano");
        f.setSalario(600);
        
        Professor_Faculdade f1 = new Professor_Faculdade();
        f1.setNome("Seclano");
        
        R.imprime_relatorio(f);
        R.imprime_relatorio(f1);
        
        
    }
}
