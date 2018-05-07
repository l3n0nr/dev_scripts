<?php

  /*
    Crie uma classe calculadora que realiza as quatro operações.
    A calculadora deve ter uma pilha que a cada vez que uma operação for realizada é diminuida em uma unidade.
    Os cálculos só podem ser feitos se houver pilha.
  */

  #incluindo a classe Calculadora
    include("Calculadora.php");

  #instanciando objeto
    $calculadora=new Calculadora();

    //qual seria a forma para importar os valores das variaveis da classe Calculadora?
    //não sendo necessario colocar os valores direto -----
                                                        //|
  #mostrando informações usando a funcao ja definida    //|
    $calculadora->somar(10, 10);                      //<-|
    $calculadora->diminuir(10,10);                    //<-|
    $calculadora->multiplicar(10,10);                 //<-|
    $calculadora->dividir(10,10);                     //<-|

?>
