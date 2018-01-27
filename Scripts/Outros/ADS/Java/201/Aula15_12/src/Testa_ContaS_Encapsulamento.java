

/**
 *
 * @author lenonr
 * 
 */
public class Testa_ContaS_Encapsulamento 
{
    public static void main (String [] args)
    {
        //Definindo contas
        ContaS_Encapsulamento CSE = new ContaS_Encapsulamento();
        ContaS_Encapsulamento CSE1 = new ContaS_Encapsulamento();
        
        /*NAO UTILIZA ENCAPSULAMENTO PODE INFRINGIR A INTEGRIDADE DO SISTEMA*/

        //Inserindo valores CSE
        CSE.Depositar(100);
        System.out.println(CSE.saldo);
        CSE.Sacar(10);
        System.out.println(CSE.saldo);
        
         /*NAO UTILIZA ENCAPSULAMENTO PODE INFRINGIR A INTEGRIDADE DO SISTEMA*/
        //Inserindo valores CSE1
        CSE1.Depositar(1000);
        System.out.println(CSE1.saldo);
        CSE1.Sacar(1000);
        System.out.println(CSE1.saldo);
       
        System.out.println(CSE1.disponibilidade);
    }
    
}
