
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

public class Imc {
    private double altura, peso;   
    private double resultado;

    public double getAltura() {
        return altura;
    }

    public double getPeso() {
        return peso;
    }

    public double getResultado() {
        return resultado;
    }

    public void setAltura(double altura) {
        this.altura = altura;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public void setResultado(double resultado) {
        this.resultado = resultado;
    }
    
    public void calculo_imc()
    {
        resultado = peso/(altura*altura);
    }
    
}
