<?php

  /*
    Crie a classe Time a qual tem os atributos hora, minuto e segundo.
    Faça os métodos set dos atributos da seguinte forma:
    hora -> só pode ser inteiro, maior ou igual à 0 e menor que 24
    minuto -> só pode ser inteiro, maior ou igual à 0 e menor que 60
    segundo -> só pode ser inteiro, maior ou igual à 0 e menor que 60
    Impeça o acesso direto aos atributos.
    Faça os métodos get para retornar o valor dos atributos.
    Crie a classe usaTime e instancie 2 horários válidos e 2 inválidos.
    Mostre os valores com o echo.
  */

  class Time
  {
    #criando atributos
      private $hora, $minuto, $segundo;

    #######################
    #      METODO SET     #
    #######################

    #verificando hora
      public function setHora($n)
      {
        #verificando valor digitado
          if (is_int($n) && ($n) >= 0 || ($n) <= 24)
          {
            $this -> hora = $n;
          }
          else
          {
            echo "ERRO!" .$n;
            echo "<br>";
            echo "Digite um numero, entre 0 e 24";
            echo "<br>";
          }
      }

    #verificando minuto
      public function setMinuto($n)
      {
        #verificando valor digitado
          if (is_int($n) && ($n) >= 0 || ($n) <= 60)
          {
            $this -> minuto = $n;
          }
          else
          {
            echo "ERRO!" .$n;
            echo "<br>";
            echo "Digite um numero, entre 0 e 60";
            echo "<br>";
          }
      }

    #verificando segundo
    public function setSegundo($n)
    {
      #verificando valor digitado
        if (is_int($n) && ($n) >= 0 || ($n) <= 60)
        {
          $this -> segundo = $n;
        }
        else
        {
          echo "ERRO!" .$n;
          echo "<br>";
          echo "Digite um numero, entre 0 e 60";
          echo "<br>";
        }
    }

    #######################
    #      METODO GET     #
    #######################

    public function getHora()
    {
      return $this-> hora;
    }

    public function getMinuto()
    {
      return $this-> minuto;
    }

    public function getSegundo()
    {
      return $this-> segundo;
    }


  }
?>
