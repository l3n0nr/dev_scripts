<?php

  //incluindo classes externas
    include("CarroDeCorrida.php");
    include("Camaro.php");
    include("Ferrari.php");
    include("Fusca.php");
    include("Motociclo.php");

  //criando classe fusca
  $fusca = new Fusca();
    $fusca-> numeroIdentificador = 1;

  //criando classe camaro
  $camaro = new Camaro();
    $camaro->numeroIdentificador = 2;

  //criando classe Ferrari
  $ferrari = new Ferrari();
    $ferrari->numeroIdentificador = 3;

  //criando classe motociclo
    $motociclo = new Motociclo();
      $motociclo->numeroIdentificador = 4;

  //criando array
    $carros[1] = $fusca;
    $carros[2] = $camaro;
    $carros[3] = $ferrari;
    $carros[4] = $motociclo;

  //executando por um determinado tempo
    for ($i=0; $i<=10; $i++)
    {
      //captura os valores do array e tranforma em um objeto unico
        foreach ($carros as $c)
        {
          //movimentando o carro
            $c -> movimentar();

          //mostrando suas informacoes
            $c -> mostrarInformacoes();

          //imprimindo nova linha
            echo "<br>";
        }
    }
?>
