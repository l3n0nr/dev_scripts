<?php

  /*
    Crie uma classe para representar um jogador de um jogo de guerra.
    O mesmo deverá ter nome, vida, nivel, pontos e energia. Deverá haver o método atacar,
    sendo que a cada ataque gasta uma unidade de energia e ganha pontos proporcionais ao nível.
    A cada 10 pontos atingidos o jogador passará para um próximo nível.
  */

  #importando arquivo
    include("Guerra.php");

  #instanciando objetos
    $player1 = new Guerra();

  #definindo valores
    #player1
      $player1->nome = "Lenon Ricardo";
      $player1->vida = "99";
      $player1->nivel = "99";
      $player1->pontos = "6";
      $player1->energia = "100";

  #atacando adversario QUE NAO EXISTE!
    #player 1(5X)
      $player1->atacar();
      $player1->atacar();
      $player1->atacar();
      $player1->atacar();
      $player1->atacar();
?>
