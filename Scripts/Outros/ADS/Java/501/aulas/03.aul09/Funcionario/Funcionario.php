<?php
  #criando classe funcionario
  class Funcionario
  {
    #criando atributos
      public $nome, $endereco, $salario, $email;

    #criando construtor
      function __construct($nome, $endereco, $salario)
      {
        #enviando valores
          $this-> nome = $nome;
          $this-> endereco = $endereco;
          $this-> salario = $salario;
      }

    #criando funcao para mostrar os valores
      function mostrarInformacoes()
      {
        #definindo troca de valores
          $informacoes = "Nome: " .$this->nome ." Endereco: " .$this->endereco ."Salario: " .$this->salario;

        #verificando se email é vazio
          if ($this->email != null)
          {
            $informacoes .= " Email: ".$this->email;
          }

        #retorna valor da funcao definida
          return $informacoes;
      }
  }

?>
