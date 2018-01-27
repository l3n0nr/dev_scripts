
import java.util.ArrayList;
import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author lenonr
 */

@ManagedBean
public class Servicos {
    private ArrayList<String> servicos;
    private ArrayList<String> servicosSelecionados;
    private ArrayList<String> dias;
    private ArrayList<String> diasSelecionados;   
    private double resultado;
    
    @PostConstruct
    public void init()
    {
        servicos = new ArrayList();   
        servicosSelecionados = new ArrayList();   
        dias = new ArrayList();   
        diasSelecionados = new ArrayList();    
        
        servicos.add("trocaoleo");
        servicos.add("trocafiltro");
        servicos.add("trocavelas");
        servicos.add("revisao");        
    }
    
    public void calcularServicos()
    {      
        for(String s : servicosSelecionados)
        {
            if(s.equals("trocaoleo"))
            {
               resultado =+ resultado + 10;
            }
            else
            if(s.equals("trocafiltros"))
            {
                resultado =+ resultado + 11;
            }     
            else
            if (s.equals("trocavelas"))
            {
                resultado =+ resultado + 12;
            }
            else
            if (s.equals("revisao"))
            {
                resultado =+ resultado + 13;
            }
        }
        
        for(String d : diasSelecionados)
        {
            if (d.equals("1"))        
            {
            
            }
            else
            if (d.equals("2"))        
            {
            
            }            
            else
            if (d.equals("3"))        
            {
            
            }            
            else
            if (d.equals("4"))        
            {
            
            }            
            else
            if (d.equals("5"))        
            {
            
            }            
            else
            if (d.equals("6"))        
            {
                resultado =+ resultado + 20;   
            }            
            else
            if (d.equals("7"))        
            {
            
            }                              
        }                          
    }

    public ArrayList<String> getServicos() {
        return servicos;
    }

    public ArrayList<String> getServicosSelecionados() {
        return servicosSelecionados;
    }

    public void setServicos(ArrayList<String> servicos) {
        this.servicos = servicos;
    }

    public void setServicosSelecionados(ArrayList<String> servicosSelecionados) {
        this.servicosSelecionados = servicosSelecionados;
    }   

    public ArrayList<String> getDias() {
        return dias;
    }

    public ArrayList<String> getDiasSelecionados() {
        return diasSelecionados;
    }

    public void setDias(ArrayList<String> dias) {
        this.dias = dias;
    }

    public void setDiasSelecionados(ArrayList<String> diasSelecionados) {
        this.diasSelecionados = diasSelecionados;
    }    

    public double getResultado() {
        return resultado;
    }

    public void setResultado(double resultado) {
        this.resultado = resultado;
    }
    
    
}
