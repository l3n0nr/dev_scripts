<?php

  /*
    Crie uma classe para representar um jogador de um jogo de guerra.
    O mesmo deverá ter nome, vida, nivel, pontos e energia. Deverá haver o método atacar,
    sendo que a cada ataque gasta uma unidade de energia e ganha pontos proporcionais ao nível.
    A cada 10 pontos atingidos o jogador passará para um próximo nível.
  */

  class guerra
  {
    #criando atributos
      public $nome;
      public $vida;
      public $nivel;
      public $pontos;
      public $energia;

    #criando metodo de atacar
      function atacar()
      {
        #gastando energia
          $this->energia -= 1;
          echo "Você perdeu um 1 de energia";

        #pontos proporcionais
        //ponto serão ganhos de acordo com o nivel
          if ($this->nivel < 100)
          {
            #dificuldade baixa
              $this->pontos += 3;
              echo "Você ganhou 3 de pontos";
          }
          elseif ($this->nivel >= 100)
          {
            #dificuldade media
              $this->pontos += 2;
              echo "Você ganhou 2 de pontos";
          }
          else
          {
            #dificuldade alta
              $this->pontos += 1;
              echo "Você ganhou 1 de ponto";
          }

        #verificando quantidade de pontos
          if ($this->pontos >= 10)
          {
            #aumentando de nivel
              $this->nivel += 1;

            #reiniciando quantidade de pontos
              $this->pontos = 0;

              echo "Parabens! Voce subiu de nivel.";
          }
      }
  }
?>
