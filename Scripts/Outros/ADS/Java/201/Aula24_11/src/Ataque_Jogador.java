

public class Ataque_Jogador {
        String nome;
        int vida = 90;    //100 
        int nivel = 3;    //20
        int pontos = 41;  //50
        int energia = 10; //100
        int cont;
        
    void Atacar() 
    {
        if (energia > 0)
        {
            energia--;
            pontos++;
            cont++;
            if (cont == 10)
            {
                nivel++;
                cont=1;
                System.out.println("O seu jogador subiu de nivel, agora ele é " + nivel);
            }      
        }
        else
        {
            System.out.println("Seu jogador precisa descansar, ele está sem energia");
        }
        
    }
    
    void Descansar()
    {
        energia=100;
    }
        
        
        
}



