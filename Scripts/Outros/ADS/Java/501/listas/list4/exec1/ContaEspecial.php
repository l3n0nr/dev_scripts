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

  class ContaEspecial extends ContaBasica
  {
    //criando atributos
      public $limite_cheque, $valor;

      //criando funcao para construir classe com atributos herdados
        function __construct($cliente, $saldo, $limite_cheque)
        {
          //herdando valores da classe mae
            parent ::__construct($cliente, $saldo);

          //indexando valores
            $this-> $limite_cheque = $limite_cheque;
        }

      //alterando comportamento do metodo sacar
      //atraves de verificação da soma dos valores do saldo e do limite_cheque
      function sacar($valor)
      {
        //verificando saldo
          if ($this->saldo > 0 & $this->saldo > $valor)
          {
            //realizando subtração do valor definido
              $this->saldo -= $valor;
              echo "<br>Saldo realizado com sucesso!";
          }
          else
          {
            //mostrando mensagem de erro
              echo "<br> Você não tem saldo para realizar o saque";
          }
      }
  }
?>
