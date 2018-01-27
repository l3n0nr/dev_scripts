<?php

  /*
    Crie a classe Cliente com os atributos nome, idade, sexo.
    Impeça o acesso direto aos atributos.
    Faça os métodos set dos atributos da seguinte forma:
    nome -> só pode ser string e comprimento maior que 2;
    idade -> so pode ser inteiro e maior que 18
    sexo -> só pode ser masculino ou feminino.
    Faça os métodos get para retornar o valor dos atributos.
    Crie a classe usa Produto e instancie 2 clientes válidos e 2 inválidos.
    Mostre os valores com o echo.
  */

  class Cliente
  {
    #criando atributos
      private $nome, $idade, $sexo;

    #######################
    #      METODO SET     #
    #######################

      #verificando nome
        public function setNome($n)
        {
          #verificando tipo digitado
            if (is_string($n) && strlen($n) >= 2)
            {
              $this-> nome = $n;
            }
            else
            {
              echo "ERRO! ".$n;
              echo "<br> Digite uma palavra e/ou maior do que 2";
              echo "<br>";
              echo "<br>";
            }
        }

      #verificando idade
      public function setIdade($n)
      {
        #verificando tipo digitado
          if (is_int($n) && ($n) >= 18)
          {
            $this -> idade = $n;
          }
          else
          {
            echo "<br> ERRO! ".$n;
            echo "<br> Digite um valor numerico, e/ou maior do que 17";
            echo "<br>";
            echo "<br>";
          }
      }

      #verificando sexo
        public function setSexo($n)
        {
          #verificando tipo sexo
            if (is_string($n) && $n == "m" || $n == "f")
            {
              $this -> sexo = $n;
            }
            else
            {
              echo "<br> ERRO! ".$n;
              echo "<br> Você deve digitar uma palavra com mais de duas letras";
              echo "<br>";
              echo "<br>";
            }
        }

    #######################
    #      METODO GET     #
    #######################

      public function getNome()
      {
        return $this->nome;
      }

      public function getIdade()
      {
        return $this->idade;
      }

      public function getSexo()
      {
        return $this->sexo;
      }
  }


?>
