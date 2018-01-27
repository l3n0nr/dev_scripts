/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author IFFarroupilha
 */
public class Robo {
    Braco_Direito b1;
    Braco_Esquerdo b2;
    Cerebro c;
    int pilha;
    
    public Robo(int qtdpilha)
    {
        b1 = new Braco_Direito();
        b2 = new Braco_Esquerdo();
        c = new Cerebro();
        pilha = qtdpilha;   
    }
    
    void ligar ()
    {
        System.out.println(c.Retorna_Comando());
        
        for (int i =0; i<=pilha; i++)
        {
            switch (c.Retorna_Comando())
            {
                case 0: b1.movimentar("meio");
                    break;
                case 1: b2.movimentar("meio");
                    break;
                case 2: b1.movimentar("acima");
                    break;
                case 3: b1.movimentar("abaixo");
                    break;
                case 4: b2.movimentar("acima");
                    break;
                case 5: b2.movimentar("abaixo");      
                    break;
            }
            System.out.println("Execução " + i);
            System.out.println("Braço Direito: " + b1.posicao);
            System.out.println("Braço Esquerdo " + b2.posicao);
        }
    }
}
