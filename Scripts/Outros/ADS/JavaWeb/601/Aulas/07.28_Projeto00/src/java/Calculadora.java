
import javax.faces.bean.ManagedBean;




/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author IFFarroupilha
 */

@ManagedBean


public class Calculadora {
    private double valor1, valor2;   
    private double resultado = 0;

    public double getValor1() {
        return valor1;
    }

    public double getValor2() {
        return valor2;
    }

    public double getResultado() {
        return resultado;
    }

    public void setValor1(double valor1) {
        this.valor1 = valor1;
    }

    public void setValor2(double valor2) {
        this.valor2 = valor2;
    }

    public void setResultado(double resultado) {
        this.resultado = resultado;
    }
    
    public void soma()
    {
        resultado = valor1 + valor2;
    }       
    
    public void subtracao()
    {
        resultado = valor1 - valor2;
    }     
    
    public void multiplicacao()
    {
        resultado = valor1 * valor2;
    }     
    
    public void divisao()
    {
        resultado = valor1 / valor2;
    }     
}
