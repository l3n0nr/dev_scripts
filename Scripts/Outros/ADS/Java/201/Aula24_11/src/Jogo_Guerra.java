
import java.util.Scanner;


public class Jogo_Guerra {
    public static void main (String [] args)
    {
        int i;
        Ataque_Jogador c1 = new Ataque_Jogador(); 
        //Scanner leitura = new Scanner (System.in);
        //entrando com o nome do jogador
        //System.out.println("Digite o nome do jogador");

            while (c1.energia > 0)
            {
                c1.nome = "Lenon Ricardo";
                c1.Atacar();
                System.out.println("Energia do seu jogador é: " + c1.energia);
                if (c1.energia == 0)
                {
                    System.out.println("O seu jogador descansou e não pode atacar por duas rodadas");
                    c1.Descansar(); 
                    c1.vida= c1.vida-4;
                }
                if (c1.vida == 0)
                {
                    System.out.println("O seu jogador morreu");
                }
            }
    }
}

