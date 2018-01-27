<?php

  /*create by lenonr*/

  /*
    Crie a classe Livro que tem atributos Titulo, Numero paginas,
    autor e que são parametros obrigatórios na instanciação.

    Crie a classe Ebook que herda os atributos de Livro e tem tipo de arquivo,
    tamanho em megabytes e link como parametros adicionais na instanciação.

    Instancie dois Livros e dois Ebooks.
  */

  class Ebook extends Livro
  {
    //criando atributos
      public $tipo_arquivo, $tamanho_bytes, $link;

    //criando funcao para construir classe com atributos herdados
      function __construct($titulo, $numero_p, $autor, $tipo_arquivo, $tamanho_bytes, $link)
      {
        //herdando valores da classe mae
          parent ::__construct($titulo, $numero_p, $autor);

        //indexando valores
          $this-> $tipo_arquivo = $tipo_arquivo;
          $this-> $tamanho_bytes = $tamanho_bytes;
          $this-> $link = $link;
      }

    //criando funcao para imprimir os valores automaticamente
      public function __toString()
      {
        //retornado todos os valores
          return "<br> Titulo: ".$this->titulo. " Numero de Páginas: ".$this->numero_p. " Autor: ".$this->autor.
                    " Formato: ".$this->tipo_arquivo.
                    " Tamanho do Arquivo: " .$this->tamanho_bytes ." Link: ".$this->link;
      }
  }

?>
