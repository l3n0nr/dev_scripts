/**
 *
 * @author lenonr
 * 
 */
public class Testa_ContaC_Encapsulamento 
{
    public static void main (String [] args)
    {
        /*UTILIZA ENCAPSULAMENTO PODE GARANTIR A INTEGRIDADE DO SISTEMA*/
        ContaC_Encapsulamento CCE = new ContaC_Encapsulamento();
        
        //Inserindo valores CSE
        CCE.Depositar(100);
        System.out.println(CCE.getsaldo());
        CCE.Sacar(10);
        System.out.println(CCE.getsaldo());
        
        /*UTILIZA ENCAPSULAMENTO PODE GARANTIR A INTEGRIDADE DO SISTEMA*/
        ContaC_Encapsulamento CCE1 = new ContaC_Encapsulamento();
        
        //Inserindo valores CSE
        CCE1.Depositar(100);
        System.out.println(CCE1.getsaldo());
        CCE1.Sacar(10);
        System.out.println(CCE1.getsaldo());
    }
}
