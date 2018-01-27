/**
 *
 * @author lenonr
 * 
 */
public class Testa_Conta {
    public static void main (String [] args)
    {
        /*DEFININDO VALORES DE CONTA 1*/
        ContaBasica c1 = new ContaBasica();
        c1.setAgencia(123);
        c1.setNome_do_Cliente("Lenon");
        c1.setNumero(1);
        c1.setEndereco_Cliente("Rua dos carros");
        c1.setSaldo(100);
        
        /*IMPRIMINDO VALORES DA CONTA 1*/
        System.out.println(c1.getAgencia());
        System.out.println(c1.getNome_do_Cliente());
        System.out.println(c1.getNumero());
        System.out.println(c1.getEndereco_Cliente());
        System.out.println(c1.getSaldo());
        
         /*DEFININDO VALORES DE CONTA 2*/
        ContaEspecial ce = new ContaEspecial();
        ce.setAgencia(123);
        ce.setNome_do_Cliente("Ricardo");
        ce.setNumero(1);
        ce.setEndereco_Cliente("Rua das motos");
        ce.setLimite(10000);
        
         /*IMPRIMINDO VALORES DA CONTA ESPECIAL 1*/
        System.out.println(ce.getAgencia());
        System.out.println(ce.getNome_do_Cliente());
        System.out.println(ce.getNumero());
        System.out.println(ce.getEndereco_Cliente());
        System.out.println(ce.getSaldo());
        
         /*DEFININDO VALORES DE CONTA ESPECIAL 2*/
        Conta_EspecialT1 ce1 = new Conta_EspecialT1();
        ce1.setAgencia(123);
        ce1.setNome_do_Cliente("Machado");
        ce1.setNumero(2);
        ce1.setEndereco_Cliente("Rua dos caminhoes");
        ce1.setLimite(1000);
        ce1.setLimite_Cartao_Credito(3000);
       
         /*IMPRIMINDO VALORES DA CONTA 2*/
        System.out.println(ce1.getAgencia());
        System.out.println(ce1.getNome_do_Cliente());
        System.out.println(ce1.getNumero());
        System.out.println(ce1.getEndereco_Cliente());
        System.out.println(ce1.getSaldo());
        System.out.println(ce1.getLimite_Cartao_Credito());
        
        
        
    }
    
}
