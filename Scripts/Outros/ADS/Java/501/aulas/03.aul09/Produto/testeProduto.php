<meta charset="utf-8">;

<?php

  #include classe externa
    include ("Produto.php");

  #criando Produto
    $produto = new Produto(" Gabinete", 100, " Grandau e legal");

  #mostrando valores
    echo "Nome: " .$produto->nome;
    echo "Preço: " .$produto->preco;
    echo "Descrição: " .$produto->descricao;
    echo "Imposto: " .$produto->valorImposto;

?>
