<?php
  /*
    Crie uma estrutura escal�vel para um jogo de guerra.

    Haver� a classe Personagem com n�vel de energia e pontos, a qual serve apenas para estrutura��o do projeto, n�o podendo ser instanciada, com um comportamento abstrato atacar().

    Crie tr�s personagens concretos a partir da classe Personagem, com diferentes implementa��es para o comportamento atacar
    (gastando niveis de energia diferentes, somando quantidades diferentes de pontos, e exibindo mensagens diferentes representando o ataque).

    Instancie um objeto de cada uma das classes de personagem e mande executar o m�todo atacar().
  */

  //extendendo classe do Personagem
    class Comandante extends Personagem
    {
      //valores da manobra
        public $vEnergia=2, $vPontos=3;

      //escrevendo metodo para implementar classe extendida
        public function atacar()
        {
          //realizando ataque
              $this->energia = $this->energia-2;
              $this->pontos = $this->pontos+3;
        }

      //mostrando informacoes do Comandante
        public function status()
        {
          //mostrando valores
            echo "<br>";
            echo "O <b>Comandante</b> ordenou o Piloto voar e o Sniper, se posicionar "
                ."com isso ele gastou ".$this->vEnergia." de energia e ganhou ".$this->vPontos." de pontos "
                ."dessa forma ele esta com " .$this->energia. " de energia "." e ".$this->pontos. " de pontos.";
        }
    }
?>
