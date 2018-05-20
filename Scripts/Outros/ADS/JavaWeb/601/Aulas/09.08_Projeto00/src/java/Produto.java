/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author IFFarroupilha
 */
public class Produto {
    private int id, quantidade;
    private String nome, descricao, img ,cor;
    double preco;

    public int getId() {
        return id;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public String getNome() {
        return nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public String getImg() {
        return img;
    }

    public String getCor() {
        return cor;
    }

    public double getPreco() {
        return preco;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }
    
    
    
}
