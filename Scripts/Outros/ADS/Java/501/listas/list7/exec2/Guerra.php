<?php
  /*
    Crie uma estrutura escal�vel para um jogo de guerra.

    Haver� a classe Personagem com n�vel de energia e pontos, a qual serve apenas para estrutura��o do projeto, n�o podendo ser instanciada, com um comportamento abstrato atacar().

    Crie tr�s personagens concretos a partir da classe Personagem, com diferentes implementa��es para o comportamento atacar
    (gastando niveis de energia diferentes, somando quantidades diferentes de pontos, e exibindo mensagens diferentes representando o ataque).

    Instancie um objeto de cada uma das classes de personagem e mande executar o m�todo atacar().
  */

  //incluindo classes externas
    include("Personagem.php");
    include("Comandante.php");
    include("Piloto.php");
    include("Sniper.php");

    //imprimindo mensagem
      echo "A GUERRA COMEÇOU!";
      echo "<br>";
      echo "<hr>";

    //criando novo personagem
      $comandante = new Comandante();
      $piloto = new Piloto();
      $sniper = new Sniper();

    //criando atributos
        $comandante -> energia = 100;
        $comandante -> pontos = 4004;

        $piloto -> energia = 95;
        $piloto -> pontos = 1200;

        $sniper -> energia = 70;
        $sniper -> pontos = 1401;

      //mostrando informacoes basicas
        $comandante->info();
        $piloto->info();
        $sniper->info();

      //realizando ataques
        $comandante -> atacar();
        $piloto -> atacar();
        $sniper -> atacar();

      //mostrando informacoes
        $comandante -> status();
        $piloto -> status();
        $sniper -> status();
?>
