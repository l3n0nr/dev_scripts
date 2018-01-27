<?php
  //criando classe abstrata
    abstract class Livro
    {
      //criando atributos
        public $numeroPaginas, $titulo, $autor, $resumo, $preco;

      //criando funcao para mostrar as informacoes
        function mostrarInformacoes()
        {
          //mostrando valores
            echo "Titulo: " .$this->titulo .", Autor: " .$this->autor .", Numero de Paginas: " .$this->numeroPaginas .", Resumo: " .$this->resumo .", Preco: " .$this->preco;
        }
    }
?>
