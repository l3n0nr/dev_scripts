<?php

  class ContatoBasico
  {
    //criando atributos
      public $nome, $endereco, $telefone;

    //criando funcao para ser chamada automaticamente
      function __construct($nome, $endereco, $telefone)
      {
          //indexando valores
            $this-> nome = $nome;
            $this-> telefone = $telefone;
            $this-> endereco = $endereco;
      }

    //criando funcao para imprimir os valores automaticamente
      public function __toString()
      {
          //retornando todos os valores
            return "Nome: ".$this->nome. "Telefone: ".$this->telefone. "Endereco: ".$this->endereco;
      }
  }

?>
