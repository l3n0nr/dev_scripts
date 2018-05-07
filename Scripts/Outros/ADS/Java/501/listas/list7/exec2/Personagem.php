<?php
  /*
    Crie uma estrutura escal�vel para um jogo de guerra.

    Haver� a classe Personagem com n�vel de energia e pontos, a qual serve apenas para estrutura��o do projeto, n�o podendo ser instanciada, com um comportamento abstrato atacar().

    Crie tr�s personagens concretos a partir da classe Personagem, com diferentes implementa��es para o comportamento atacar
    (gastando niveis de energia diferentes, somando quantidades diferentes de pontos, e exibindo mensagens diferentes representando o ataque).

    Instancie um objeto de cada uma das classes de personagem e mande executar o m�todo atacar().
  */

  //criando metodo abstrato
  abstract class Personagem
  {
    //criando atributos
      public $energia, $pontos;

    //criando metodo atacar de forma abstrata
      public abstract function atacar();

    //mostrando informacoes do personagem
      public function status()
      {
        //mostrando valores
          echo "Energia do Personagem: " .$this->$energia
              ." ,Pontos do Personagem: " .$this->$pontos;
      }

    //mostrando informacoes basicas
      public function info()
      {
        //mostrando informacoes basicas
          echo "Status iniciais dos personagens: ".$this->energia."/".$this->pontos;
          echo "<br>";          
      }
  }
?>
