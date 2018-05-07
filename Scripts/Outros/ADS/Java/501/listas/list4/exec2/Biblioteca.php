<?php

  /*create by lenonr*/

  /*
    Crie a classe Livro que tem atributos Titulo, Numero paginas,
    autor e que são parametros obrigatórios na instanciação.

    Crie a classe Ebook que herda os atributos de Livro e tem tipo de arquivo,
    tamanho em megabytes e link como parametros adicionais na instanciação.

    Instancie dois Livros e dois Ebooks.
  */

  //chamando classes externas
    include("Livro.php");
    include("Ebook.php");

  //criando novo Livro com os parametros já definidos
    $livro0 = new Livro("A", 12, "Eu mesmo");
    $livro1 = new Livro("B", 1, "Outro");
    
  //criando novo Ebook com os parametros já definidos
    $ebook0 = new Ebook("C", 200, "Fulano", "PDF", "300", "ebooks.com/fulano.pdf");
    $ebook1 = new Ebook("D", 100, "Seclano","PDF", "100", "ebooks.com/seclano.pdf");

  //imprimindo valores
    echo $livro0;
    echo $livro1;

    echo $ebook0;
    echo $ebook1;
?>
