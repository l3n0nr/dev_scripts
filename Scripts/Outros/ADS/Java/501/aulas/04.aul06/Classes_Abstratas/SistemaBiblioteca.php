<?php
  //incluindo arquivos externo
    include ("Livro.php");
    include ("LivroFisico.php");
    include ("LivroDigital(ebook).php");

  //instanciando livros
    //$l1 = new Livro();

  //criando livro fisico
    $l01_f = new LivroFisico();

  //criando livro digital
    $l001_d = new LivroDigital();

  //definindo atributos para o livro fisico
    $l01_f -> autor = "Lenon Ricardo";
    $l01_f -> numeroPaginas = 200;
    $l01_f -> preco = 100;
    $l01_f -> resumo = "Autobiografia";
    $l01_f -> titulo = "Não sei";

    //usando funcao definida
      $l01_f -> calcularTaxaImpressao();

  //mostrando informações
    $l01_f -> mostrarInformacoes();

  //definindo atributos para o livro digital
    $l001_d -> autor = "Eu mesmo";
    $l001_d -> numeroPaginas = 0;
    $l001_d -> preco = "DE GRAÇA!";
    $l001_d -> resumo = "A minha vida, resumida";
    $l001_d -> titulo = "O livro que conta a minha historia";

  //mostrando informacoes do livro digital
    $l001_d -> mostrarInformacoes();
?>
