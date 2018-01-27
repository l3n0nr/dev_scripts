
public class Calculadora 
{
    int pilha=10;
    int numero;
    int numero1;
    int resultado;
    
    void recarregar()
    {
       pilha = 10; 
    }
    int somar()
    {
        if (pilha>0)
        {
            resultado = (numero+numero1);
            pilha--;
            return resultado;
        }
        else
        {
            System.out.println("Calculadora sem pilha");
            return 0;
        }
    }
    
    int subtrair()
    {
        if (pilha>0)
        {
            if (numero>numero1)
            {
                resultado = (numero-numero1);
                pilha--;
                return resultado;
            }
            if (numero<numero1)
            {
                resultado = (numero1-numero);
                pilha--;
                return resultado;
            }
            else
            {
                System.out.println("Calculadora sem pilha");
                return 0;
            }
        }
    }
    
    int multiplicar()
    {
        if (pilha>0)
        {
            resultado = (numero*numero1);
            pilha--;
            return resultado;
        }
        else
        {
            System.out.println("Calculadora sem pilha");
            return 0;
        }
    }
    
    int dividir()
    {
        if (pilha>0)
        {
            if (numero>numero1)
            {
                resultado = (numero/numero1);
                pilha--;
                return resultado;
            }
            if (numero<numero1)
            {
                resultado = (numero1/numero);
                pilha--;
                return resultado;
            }
            else
            {
                System.out.println("Calculadora sem pilha"); 
                return 0;
            }
        }   
    }
}