<?php
  #incluindo arquivo
  include ("Produto.php");

  #criando novo Produto
  $p = new Produto;

  #colocando nome - CERTO
  $p -> setNome("Mesa");
  echo "Nome " .$p -> getNome();

  #colocando preco - CERTO
  $p -> setPreco("10.00");
  echo "Preco " .$p -> getPreco();

  #colocando quantidade
  $p -> setquantidade("1");
  echo "Quantidade ".$p -> getQuantidade();

  #colocando  nome - ERRADO
  //echo "Nome " . $p -> getNome();
?>
