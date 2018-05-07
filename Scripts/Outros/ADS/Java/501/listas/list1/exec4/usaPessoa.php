<?php

  /*
    Crie uma classe Pessoa com os atributos nome e idade.
    Implemente o Método: void fazAniversario()que quando invocado faz com que a pessoa aumente 1 ano de idade.
    Instancie três pessoas, coloque seus nomes e idades iniciais, faça alguns aniversários
    e imprima seu nomes e suas novas idades.
  */

  #incluindo classe
    include("Pessoa.php");

  #instanciando objetos
    $pessoa = new Pessoa();
    $pessoa2 = new Pessoa();
    $pessoa3 = new Pessoa();

  #definindo valores
    #pessoa
      $pessoa->nome="Lenon";
      $pessoa->idade="19";

    #pessoa2
      $pessoa2->nome="Ricardo";
      $pessoa2->idade="21";

    #pessoa3
      $pessoa3->nome="Newton";
      $pessoa3->idade="102";

  #mostrando dados
    #pessoa
      $pessoa-> mostrar_dados();

    #pessoa2
      $pessoa2-> mostrar_dados();

    #pessoa3
      $pessoa3-> mostrar_dados();    
?>
