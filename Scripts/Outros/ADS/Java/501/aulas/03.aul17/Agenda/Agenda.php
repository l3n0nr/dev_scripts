<?php
  //chamando classe externa
    include("ContatoBasico.php");
    include("ContatoCompleto.php");

  //criando novo ContatoBasico com os paramentros ja definidos
    $cb1 = new ContatoBasico("Dilma", "Casa da mãe joana", "5555-5555");

  //criando contato completo
    $cc1 = new ContatoCompleto("Lula", "Atibaia", "5555-5555", "555.555.555-55", "naoseidenada@souinocente.acredite", "555-555-5");

  //imprimindo valores
    echo $cb1;
    echo $cc1;
?>
