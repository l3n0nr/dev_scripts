/**
 *
 * @author lenonr
 * 
 */
public class TestaConta {
    
    static int  contaespecial =0;
    static int contanormal = 0;
    public static void main (String [] args)
    {
        //CRIANDO CONTA 
        Conta c = new Conta(00,100.00,"Lenon");
        contar(c);
        
        /*
        c.nomecliente = "Lenon";
        c.numeroconta = 00;
        c.saldo = 00.00;
        */
        
        //CRIANDO CONTA 1
        Conta c1 = new Conta(01,1000.00,"Ricardo");
        contar(c1);
        
        System.out.println("Conta com valor " + c.numeroconta + ". É do cliente " + c.nomecliente + " que possui um saldo de R$ " + c.saldo);
        System.out.println("Conta com valor " + c1.numeroconta + ". É do cliente " + c1.nomecliente + " que possui um saldo de R$ " + c1.saldo);
        
        //USANDO METODO ESPECIAL DE SAQUE
        c.sacar(100, 1);
        c1.sacar(100, 2);
        
        /*
        c1.nomecliente = "Ricardo";
        c1.numeroconta = 01;
        c.saldo = 1000.00;
        */

        //CRIANDO CONTA ESPECIAL
        Conta e = new ContaEspecial(02,10000.00,"Lenon Ricardo", 200000.00);
        contar(e);
        
        //IMPRIMINDO VALORES DE CONTA
        System.out.println("Conta com valor " + c.numeroconta + ". É do cliente " + c.nomecliente + " que possui um saldo de R$ " + c.saldo);
        System.out.println("Conta com valor " + c1.numeroconta + ". É do cliente " + c1.nomecliente + " que possui um saldo de R$ " + c1.saldo);
        System.out.println("Conta com valor " + e.numeroconta + ". É do cliente " + e.nomecliente + " que possui um saldo de R$ " + e.saldo /*+ " e possui um limite de: " + e.*/);
              
        //IMPRIMINDO TIPO DE CONTA
        System.out.println("O numero de contas normais é: " + contanormal);
        System.out.println("O numero de contas especiais é: " + contaespecial);
    }
    

    //USANDO POLIMORFISMO
    private static void contar(Conta c)
    {
        if (c instanceof ContaEspecial)
        {
            contaespecial++;
        }
        else
        {
            contanormal++;
        }
    }
}
