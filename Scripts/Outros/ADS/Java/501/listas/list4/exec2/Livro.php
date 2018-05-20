<?php

  /*create by lenonr*/

  /*
    Crie a classe Livro que tem atributos Titulo, Numero paginas,
    autor e que são parametros obrigatórios na instanciação.

    Crie a classe Ebook que herda os atributos de Livro e tem tipo de arquivo,
    tamanho em megabytes e link como parametros adicionais na instanciação.

    Instancie dois Livros e dois Ebooks.
  */

  class Livro
  {
    //criando atributos
      public $titulo, $numero_p, $autor;

    //criando funcao para ser chamada automaticamente
      function __construct($titulo, $numero_p, $autor)
      {
        //indexando valores
          $this->titulo = $titulo;
          $this->numero_p = $numero_p;
          $this->autor = $autor;
      }

    //criando funcao para imprimir os valores automaticamente
      public function __toString()
      {
        //retornado todos os valores
          return "<br> Titulo: ".$this->titulo. " Numero de Páginas: ".$this->numero_p. " Autor: ".$this->autor;
      }
  }

?>
