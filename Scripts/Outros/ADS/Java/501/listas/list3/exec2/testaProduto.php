<?php

  /*create by lenonr*/

  /*
    Crie uma classe para representar um Produto (nome, descricao, categoria, preço, desconto).
    Quando instanciado o produto tem que ter no mínimo (nome, descricao e preço).
  */

  #incluindo classe externa
    include ("Produto.php");

    #adicionando usuario
      $prod1 = new Produto("Arroz", "Categoria A", 12);

      #mostrando informações do produto 1
        echo "Informações do Produto 1 " . $prod1-> mostrarInformacoes();

    #adicionando usuario
      $prod2 = new Produto("Feijao", "Categoria C", 4);

      #mostrando informações do produto 2
        echo "Informações do Produto 2 " . $prod2-> mostrarInformacoes();
?>
