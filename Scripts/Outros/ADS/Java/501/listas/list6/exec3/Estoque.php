<?php
  //create by lenonr

  /*
    Faça uma classe Mercadoria com os atributos nome, preco de Compra,
    margem de lucro e precoDeVenda.

    A margem de lucro é única para todas as mercadorias.

    Crie um método que permite ajustar a margem de lucro das mercadorias
    de acordo com uma porcentagem.

    Mostre as informações de mercadorias com margem de lucro de 15%...
    Mude a margem de lucro para 30% e mostre as informações novamente...

    precoDeVenda (calculado automaticamente no momento da execução do método
    de reajuste da margem) precoDeVenda = precoDeCompra + (precoDeCompra * margem de lucro);
  */

  //incluindo classe externa
    include ("Mercadoria.php");

    //imprimindo valores com reajuste de 15%
    Mercadoria:: $margemLucro = 0.15;

    //criando produto
      $p1 = new Mercadoria("Arroz", 20);

    //imprimindo valor produto 1
      echo "Reajuste de 15%";
      echo "<br>";
      echo "Preco do ". $p1-> nome. " sem reajuste " .$p1->precoCompra;
      echo ",agora o preco com reajuste ". $p1->precoVenda;
      echo "<br>";
      echo "<br>";

    //imprimindo valores com reajuste de 30%
    Mercadoria:: $margemLucro = 0.30;

    $p2 = new Mercadoria("Feijao", 20);

    //imprimindo valor produto 2
      echo "Reajuste de 30%";
      echo "<br>";
      echo "Preco do ". $p2-> nome. " sem reajuste " .$p2->precoCompra;
      echo ",agora o preco com reajuste ". $p2->precoVenda;
      echo "<br>";
?>
