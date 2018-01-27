
import java.util.ArrayList;
import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;

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
public class GerenciaProdutos {
    //criando arraylist para mostrar os produtos
        ArrayList<Produto> produtos;
        Produto escolhido;
        
        @PostConstruct
        public void init()
        {
            escolhido = new Produto();
            produtos = new ArrayList();
            
            //criando produtos - Mesa
                Produto p0 = new Produto();
                p0.setId(0);
                p0.setNome("Mesa");
                p0.setDescricao("Mesa qualquer");
                p0.setPreco(10);
                p0.setCor("#FFFFFF");
                p0.setImg("mesa.jpg");
                
            //criando produtos - Cadeira
                Produto p1 = new Produto();
                p1.setId(1);
                p1.setNome("Cadeira");
                p1.setDescricao("Cadeira qualquer");
                p1.setPreco(12);
                p1.setCor("#0000000");
                p1.setImg("cadeira.jpg");                
                
            //criando produtos - Armario
                Produto p2 = new Produto();
                p2.setId(2);
                p2.setNome("Armario");
                p2.setDescricao("Armario qualquer");
                p2.setPreco(15);
                p2.setCor("#F000000");
                p2.setImg("armario.jpg");                                

            //criando produtos - Sofa
                Produto p3 = new Produto();
                p3.setId(3);
                p3.setNome("Sofa");
                p3.setDescricao("Sofa qualquer");
                p3.setPreco(18);
                p3.setCor("#00FF000");
                p3.setImg("sofa.jpg");                                

            //criando produtos - Cama
                Produto p4 = new Produto();
                p4.setId(4);
                p4.setNome("Cama");
                p4.setDescricao("Cama qualquer");
                p4.setPreco(22);
                p4.setCor("#00FFF00");
                p4.setImg("cama.jpg");                    
                
            //criando produtos - Criado mudo
                Produto p5 = new Produto();
                p5.setId(5);
                p5.setNome("Criado mudo");
                p5.setDescricao("Criado mudo qualquer");
                p5.setPreco(22);
                p5.setCor("#00FFFF0");
                p5.setImg("criadomudo.jpg"); 
        
        //adicionando produtos no arraylist
            produtos.add(p0);
            produtos.add(p1);
            produtos.add(p2);
            produtos.add(p3);
            produtos.add(p4);
            produtos.add(p5);        
        }

    public ArrayList<Produto> getProdutos() {
        return produtos;
    }

    public Produto getEscolhido() {
        return escolhido;
    }

    public void setProdutos(ArrayList<Produto> produtos) {
        this.produtos = produtos;
    }

    public void setEscolhido(Produto escolhido) {
        this.escolhido = escolhido;
    }        

    public void carregarEscolhido()
    {
        String parametroEnviado = 
                ((HttpServletRequest)
                FacesContext.getCurrentInstance()
                .getExternalContext().getRequest())
                .getParameter("selecionado");
        
        int procurado = Integer.parseInt(parametroEnviado);
        
        for (Produto p: produtos)
        {
            if(p.getId() == procurado)
            {
                escolhido = p;
                break;
            }
            else
            {
                escolhido = null;
            }
        }
    }
}
