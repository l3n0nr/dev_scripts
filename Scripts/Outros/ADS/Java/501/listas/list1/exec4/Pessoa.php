<?php

  /*
    Crie uma classe Pessoa com os atributos nome e idade.
    Implemente o Método: void fazAniversario()que quando invocado faz com que a pessoa aumente 1 ano de idade.
    Instancie três pessoas, coloque seus nomes e idades iniciais, faça alguns aniversários
    e imprima seu nomes e suas novas idades.
  */

  class Pessoa
  {
    #criando atributos
      public $nome;
      public $idade;

    #criando metodo
      #fazAniversario
        function fazAniversario()
        {
          //fazendo aniversario
          $this-> idade += 1;
        }

        function mostrar_dados()
        {
          echo "Essa pessoa chamada".$this->nome.", tem ".$this->idade." anos de idade.";
        }
  }
?>
