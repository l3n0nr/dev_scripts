<?php

  /*create by lenonr*/

  /*
    Faça uma classe ContaBasica a qual tem atributos cliente e saldo e os métodos sacar e depositar.
    A conta básica considera somente o saldo para o comportamento sacar.

    Faça a ContaEspecial que herda os atributos e métodos da ContaBasica e
    além disso tem limite de cheque especial.
    A conta especial sobescreve o método sacar e considera o limite de cheque especial no saque.

    Instancie duas ContasBásicas e duas Contas especiais estabelaça valores
    para os atributos e saque e deposite.
  */

  class ContaBasica
  {
    //criando atributos
      public $cliente, $saldo, $valor;

//FUNCÕES PARA ALTERARAÇÃO DE VALORES//
    //criando metodo para sacar
      function sacar($valor)
      {
        //verificando saldo
          if ($this->saldo > 0)
          {
            //realizando subtração do valor definido
              $this->saldo -= $valor;
          }
          else
          {
            echo "Saldo insuficiente";
          }
      }

    //criando metodo para depositar
      function depositar($valor)
      {
        //acrescentando valor do deposito ao saldo
          $this->saldo += $valor;
      }
//FIM-FUNCÕES PARA ALTERARAÇÃO DE VALORES//

      //criando funcao para ser chamada automaticamente
        function __construct($cliente, $saldo)
        {
            //indexando valores
              $this-> cliente = $cliente;
              $this-> saldo = $saldo;
        }

      //criando funcao para imprimir os valores automaticamente
        public function __toString()
        {
            //retornando todos os valores
              return "<br><br>Cliente: ".$this->cliente. "<br>Saldo: ".$this->saldo;
        }
  }
?>
