<?php

  /*create by lenonr*/

  /*
    Crie uma classe para representar um Produto (nome, descricao, categoria, preço, desconto).
    Quando instanciado o produto tem que ter no mínimo (nome, descricao e preço).
  */

  class Produto
  {
    #criando atributos
      public $nome, $descricao, $categoria, $preco, $desconto;

    #construtor
      function __construct($nome, $descricao, $preco)
      {
        #enviando dados
          $this->nome = $nome;
          $this->descricao = $descricao;
          $this->preco = $preco;
      }

    #mostrando valores
      function mostrarInformacoes()
      {
        #definindo troca de valores
          $informacoes = "Nome: " .$this->nome ." Descricao: " .$this->descricao ."Preco: " .$this->preco;

          #verificando outros valores
            if ($this->categoria != null)
            {
              $informacoes .= " Telefone: ".$this->categoria;
            }

            if ($this->preco != null)
            {
              $informacoes .= " Email: ".$this->preco;
            }
      }
  }
?>
