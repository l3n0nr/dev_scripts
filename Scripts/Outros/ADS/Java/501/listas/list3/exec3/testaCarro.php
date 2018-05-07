<?php

  /*create by lenonr*/

  /*
    Fazer carro com comportamentos internos que são chamados na inicialização.
    -print "injecao iniciada"
    -print "motor ativado"
    atributos obrigatorios modelo, placa.
  */

  #incluindo classe externa
    include ("Carro.php");

    #adicionando usuario
      $car1 = new Carro("Gol", "po2-i32");

      #mostrando informações do contato 1
        echo "Informações do Carro: " . $car1-> mostrarInformacoes();

?>
