
import java.io.Serializable;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author lenonr
 * 
 */

public class Jogador implements Serializable
{
    //CRIANDO VARIAVEIS
    int posicaox = 0;
    int posicaoy = 0;
    int numerodebalas = 0;
    
    //CRIANDO CONSTRUTOR PARA JOGADOR
    public Jogador(int x, int y, int balas)
    {
        posicaox = x;
        posicaoy = y;
        numerodebalas = balas;
    }
    
    //CRIANDO CONSTRUTOR PARA MOVER O JOGADOR
    public void mover(int novox, int novoy)
    {
        posicaox = novox;
        posicaoy = novoy;
    }
    
    //CRIANDO CONSTRUTOR PARA ATIRAR
    public void atirar()
    {
        numerodebalas--;
    }
}
