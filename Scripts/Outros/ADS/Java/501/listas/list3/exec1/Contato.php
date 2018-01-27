<?php

  /*create by lenonr*/

  /*
    Crie uma classe para representar um Contato (nome, cidade, endereço, telefone, email).
    O contato deverá ter obrigatoriamente quando instanciado o nome, cidade e endereço.
  */

  class Contato
  {
    #criando atributos
      public $nome, $cidade, $endereco, $telefone, $email;

    #construtor
      function __construct($nome, $cidade, $endereco)
      {
        #enviando dados
          $this->nome = $nome;
          $this->cidade = $cidade;
          $this->endereco = $endereco;
      }

    #mostrando valores
      function mostrarInformacoes()
      {
        #definindo troca de valores
          $informacoes = "Nome: " .$this->nome ." Cidade: " .$this->cidade ."Endereco: " .$this->endereco;

          #verificando outros valores
            if ($this->telefone != null)
            {
              $informacoes .= " Telefone: ".$this->telefone;
            }

            if ($this->email != null)
            {
              $informacoes .= " Email: ".$this->email;
            }

        #retornando informações
          return $informacoes;
      }
  }
?>
