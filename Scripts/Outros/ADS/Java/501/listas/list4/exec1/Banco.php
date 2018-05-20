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

  //chamando classes externas
    include("ContaBasica.php");
    include("ContaEspecial.php");

  //criando novo ContatoBasico com os parametros já definidos
    $cont_B1 = new ContaBasica("Lenon ", "500");
    $cont_B2 = new ContaBasica("Ricardo ", "0");

  //criando novo  ContaEspecial com os parametros já definidos
    $cont_E1 = new ContaEspecial("Joao", "100", "40");
    $cont_E2 = new ContaEspecial("Maria", "0", "0");

  //imprimindo valores
    echo $cont_B1;
    echo $cont_B2;

    echo $cont_E1;
    echo $cont_E2;

    //realizando saques
      $cont_B1->sacar(60);
      $cont_B2->sacar(60);

      $cont_E1->sacar(60);
      $cont_E2->sacar(60);

  //imprimindo valores
    echo $cont_B1;
    echo $cont_B2;

    echo $cont_E1;
    echo $cont_E2;

    //realizando saques
      $cont_B1->depositar(60);
      $cont_B2->depositar(60);

      $cont_E1->depositar(60);
      $cont_E2->depositar(60);

  //imprimindo valores
    echo $cont_B1;
    echo $cont_B2;

    echo $cont_E1;
    echo $cont_E2;
?>
