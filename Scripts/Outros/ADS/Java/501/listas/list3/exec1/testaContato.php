<?php

  /*create by lenonr*/

  /*
    Crie uma classe para representar um Contato (nome, cidade, endereço, telefone, email).
    O contato deverá ter obrigatoriamente quando instanciado o nome, cidade e endereço.
  */

  #incluindo classe externa
    include ("Contato.php");

    #adicionando usuario
      $cont1 = new Contato("Lenon", "Alegrete", "Passo Novo, 1295");

      #mostrando informações do contato 1
        echo "Informações do Contato 1 " . $cont1-> mostrarInformacoes();

    #adicionando usuario
      $cont2 = new Contato("Ricardo", "Alegrete", "Passo Novo, 1295");

      #mostrando informações do contato 1
        echo "Informações do Contato 2 " . $cont2-> mostrarInformacoes();
?>
