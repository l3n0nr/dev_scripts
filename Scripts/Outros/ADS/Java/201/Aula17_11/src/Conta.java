
import java.util.Scanner;

/*

Lenon Ricardo

*/
public class Conta {
    int numero_conta;
    double saldo;
    String nome_cliente;
    double limiete_conta;
    double Valor_Deposito;
    double Valor_Sacar;
    String leitura;
    //metodo
    
    void depositar_50() //metodo altera o estado
    {
        saldo = saldo + 50;
    }
    
    void sacar_500() //metodo alteresa o estado
    {
        saldo = saldo - 500;
    }
    
    void depositar(double Valor_Deposito)
    {
        saldo = saldo + Valor_Deposito;
    }
    
    void sacar(double Valor_Sacar)
    {
        if (saldo > Valor_Sacar)
        {
            System.out.println("Você não tem saldo suficiente para realizar este saque");
            
        }
        else
        {
           saldo = saldo - Valor_Sacar;
        }
    }   
}
