<?php
  //incluindo classe externa
    include ("Requisicao.php");
    
  //imprimindo valores  
    echo "Contagem de requisitos ".Requisicao::$count;
    
  //criando solicitacao
    $r1 = new Requisicao("Lenon", "Ligar o ar-condicionado");
    $r2 = new Requisicao("Ricardo", "Desligar o ar-condicionado");
  
  //mostrando contador
    echo "Contador de requisições " . Requisicao::$count;
?>