<?php
  //incluindo classes externas
    include("Atacante.php");
    include("Romario.php");
    include("Ronaldinho.php");

  //criando novo jogador
    $camisa10 = new Ronaldinho();

  //criando novo jogador
    $camisa11 = new Romario();

  //criando atributos
    $camisa10 -> nome = "Ronaldinho, ";
    $camisa10 -> altura = "1.60, ";
    $camisa10 -> forca = "6, ";
    $camisa10 -> posX = "12, ";
    $camisa10 -> posY = "7, ";
    $camisa10 -> velocidadade = "5, ";

    $camisa11 -> nome = "Romario";
    $camisa11 -> altura = "1,50";
    $camisa11 -> forca = 5;
    $camisa11 -> posX = 10;
    $camisa11 -> posY = 13;
    $camisa11 -> velocidadade = 9;

  //mostrando informações do jogador
    $camisa10 -> mostrarInformacoes();
    $camisa10 -> driblar();

  echo "<br>";
  echo "<br>";

    $camisa11 -> mostrarInformacoes();
    $camisa11 -> driblar();
?>
