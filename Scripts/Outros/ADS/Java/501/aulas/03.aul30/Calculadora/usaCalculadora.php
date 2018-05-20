<?php
  //incluindo classe externa
    include("Calculadora.php");

  //utilizando a classe estatica
    //"::" utilizado para chamar as funcoes estaticas criadas na outra classe
      //imprimindo valor da soma
        echo "Soma: ".Calculadora::somar(10,5);

      //imprimindo nova linha
        echo "<br>";

      //imprimindo valor da subtração
        echo "Subtrair: ".Calculadora::subtrair(10,5);

      //imprimindo nova linha
        echo "<br>";

      //imprimindo valor da multiplicação
        echo "Multiplicar: ".Calculadora::multiplicar(10,5);

      //imprimindo nova linha
        echo "<br>";

      //imprimindo valor da divisao
        echo "Dividir: ".Calculadora::dividir(10,5);

      //imprimindo nova linha
        echo "<br>";
?>
