<?php
  /*
    Crie uma estrutura escal�vel para um jogo de guerra.

    Haver� a classe Personagem com n�vel de energia e pontos, a qual serve apenas para estrutura��o do projeto, n�o podendo ser instanciada, com um comportamento abstrato atacar().

    Crie tr�s personagens concretos a partir da classe Personagem, com diferentes implementa��es para o comportamento atacar
    (gastando niveis de energia diferentes, somando quantidades diferentes de pontos, e exibindo mensagens diferentes representando o ataque).

    Instancie um objeto de cada uma das classes de personagem e mande executar o m�todo atacar().
  */

  //extendendo classe do Personagem
    class Piloto extends Personagem
    {
      //valores da manobra
        public $vEnergia=4, $vPontos=2;

      //escrevendo metodo para implementar classe extendida
        public function atacar()
        {
          //realizando ataque
            $this->energia = $this->energia-$this->vEnergia;
            $this->pontos = $this->pontos+$this->vPontos;
        }

      //mostrando informacoes do Piloto
        public function status()
        {
          //mostrando valores
            echo "<br>";
            echo "O <b>Piloto</b> executou a manobra que o Comandante ordenou, dessa forma perdeu ".$this->vEnergia
            ." de energia e ganhou ".$this->vPontos." pontos"
            ." dessa forma ele esta com ".$this->energia.
            " de energia " ."e ".$this->pontos. " de pontos.";
        }
    }
?>
