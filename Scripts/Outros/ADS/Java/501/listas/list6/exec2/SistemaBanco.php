<?php
  //create by lenonr
  /*
    Faça a classe Conta que tem atributo estático contadorContas e atributos
    de instancia nome, e numero conta; O contadorContas é incrementado
    automaticamente na instanciação de um objeto conta;

    Faça um SistemaBanco que intancia algumas contas e depois
    mostra a contagem das mesmas.
  */

  //incluindo classe externa
    include ("Conta.php");

  //imprimindo valores
    echo "Numero de contas ".Conta::$contadorContas;
    echo "<br>";

  //criando solicitacao
    $c1 = new Conta("Lenon", 11);
    $c2 = new Conta("Ricardo", 0);

  //mostrando contador
    echo "Numero de contas ".Conta::$contadorContas;
    echo "<br>";
?>
