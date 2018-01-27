<?php

  /*
    Classe: Porta. Atributos: aberta (sim ou não), cor, largura, altura.
    Métodos: abre(), fecha(), boolean "estaAberta()" --> "verifica_estado()".
    Instancie três portas, abra e feche as mesmas e depois imprima as informações de cada porta.
  */

  #incluindo a classe
    include("Porta.php");

  #instanciando objeto
    $porta = new Porta();
    $porta2 = new Porta();
    $porta3 = new Porta();

      #criando objeto 1
      $porta-> est = "true";
      $porta-> cor = "branca";
      $porta-> largura = "a mesma das outras portas";
      $porta-> altura = "a mesma das outras portas";

      #criando objeto 2
      $porta2-> est = "false";
      $porta2-> cor = "preta";
      $porta2-> largura = "a mesma das outras portas";
      $porta2-> altura = "a mesma das outras portas";

      #criando objeto 3
      $porta3-> est = "true";
      $porta3-> cor = "azul";
      $porta3-> largura = "a mesma das outras portas";
      $porta3-> altura = "a mesma das outras portas";

    #verificando estado
      #porta 1
        $porta-> verifica();

      #porta 2
        $porta2-> verifica();

      #porta 3
        $porta3-> verifica();

    #modificando estado
      #abrindo porta 1
        $porta-> fechar();

      #fechando porta 2
        $porta2-> abrir();

      #abrindo porta 3
        $porta3-> fechar();

    #verificando estado
      #porta 1
        $porta-> verifica();

      #porta 2
        $porta2-> verifica();

      #porta 3
        $porta3-> verifica();
?>
