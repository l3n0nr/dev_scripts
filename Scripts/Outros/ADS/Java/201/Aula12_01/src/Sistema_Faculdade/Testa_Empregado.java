package Sistema_Faculdade;

/**
 *
 * @author lenonr
 * 
 */
public class Testa_Empregado {
    public static void main (String [] args)
    {
        /*                                                                      *
        *                   DEFININDO EMPREGADOS                                *
        *                                                                       */
        
        Empregado_Faculdade f = new Empregado_Faculdade();
        f.setNome("Fulano");
        f.setSalario(1000);
        
        Professor_Faculdade f1 = new Professor_Faculdade();
        f1.setNome("Seclano");
        f1.setSalario(1000);
        f1.sethoras_Aula(10);
        
        
        /*                                                                      *
        *                   MOSTRANDO VALORES                                   *
        *                                                                       */
     
        //Mostrando getGastos Empregado
        System.out.println(f.getGastos());
        
        //Mostrnaod getInfo Empregado
        System.out.println(f.getInfo());
        
        //Mostrando Empregado
        System.out.println(f);
        
        //Mostrando Professor
        System.out.println(f1);
    }
}

