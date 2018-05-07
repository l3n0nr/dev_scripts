<?php

  /*
    Crie uma classe calculadora que realiza as quatro operações.
    A calculadora deve ter uma pilha que a cada vez que uma operação for realizada é diminuida em uma unidade.
    Os cálculos só podem ser feitos se houver pilha.
  */

  class Calculadora
  {
    #criando variaveis e definindo seus valores
      #entradas
        public $var1 = 10;
        public $var2 = 10;

      #internos
        public $res;
        public $batt = 3;

    #criando funcao de soma
      public function somar($var1, $var2)
      {
        #verificando se ainda existe bateria
        if ($this->batt > 0)
        {
          #realizando soma
          $res = $var1 + $var2;

          #mostrando valor
          echo " O valor da soma é " . $res;

          #descarregando bateria em 1
          $this->batt -= 1;
        }
      #mostrando mensagem de erro
        else
        {
            echo " A bateria descarregou";
        }
      }

    public function diminuir($var1, $var2)
    {
      #verificando se ainda existe bateria
        if ($this->batt > 0)
        {
          #realizando subtração
            $res = $var1 - $var2;

          #mostrando valor
            echo "\n O valor da subtração é " . $res;

          #descarregando bateria em 1
            $this->batt -= 1;
        }
      #mostrando mensagem de erro
        else
        {
            echo "\n A bateria descarregou";
        }
    }

    public function multiplicar($var1, $var2)
    {
      #verificando se ainda existe bateria
        if ($this->batt > 0)
        {
          #realizando soma
            $res = $var1 * $var2;

          #mostrando valor
            echo "O valor da multiplicação é " . $res;

          #descarregando bateria em 1
            $this->batt -= 1;
        }
      #mostrando mensagem de erro
        else
        {
            echo "A bateria descarregou";
        }
    }

    public function dividir($var1, $var2)
    {
      #verificando se ainda existe bateria
        if ($this->batt > 0)
        {
          #realizando soma
            $res = $var1 / $var2;

          #mostrando valor
            echo "O valor da divisão é " . $res;

          #descarregando bateria em 1
            $this->batt -= 1;
        }
      #mostrando mensagem de erro
        else
        {
            echo "A bateria descarregou";
        }
    }
  }
?>
