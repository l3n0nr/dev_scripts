<?php
  //create by lenonr
  /*
    Faça a classe Conta que tem atributo estático contadorContas e atributos
    de instancia nome, e numero conta; O contadorContas é incrementado
    automaticamente na instanciação de um objeto conta;

    Faça um SistemaBanco que intancia algumas contas e depois
    mostra a contagem das mesmas.
  */

  class Conta
  {
    //criando variavel estavel
      static $contadorContas=0;

    //criando variaveis
      public $nome, $numeroConta;

    //criando construtor
      function __construct($nome, $numeroConta)
      {
        //direcionando valores para as variaveis
          $this->nome = $nome;
          $this->numeroConta = $numeroConta;

        //'self' é usado para tornar o contador para uma conta unica
          self::$contadorContas++;
      }
  }
?>
