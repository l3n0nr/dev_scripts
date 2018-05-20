<?php
  //incluindo funcionarios
    include("Funcionario.php");
    include("Entregador.php");
    include("Montador.php");
    include("Vendedor.php");
    include("GeradorRelatorio.php");

    //criando novo Entregador
      $e1 = new Entregador();
        $e1 -> nome = "João ";
        $e1 -> cpf = "123.123.123.321 ";
        $e1 -> salario = "ruim ";
        $e1 -> quantEntregas = 1;

    //criando novo Montador
      $m1 = new Montador();
        $m1 -> nome = "Pedro ";
        $m1 -> cpf = "123.123 ";
        $m1 -> salario = "mediano ";
        $m1 -> quantMontados = 3;

    //criando novo Vendedor
      $v1 = new Vendedor();
        $v1 -> nome = "Carlos ";
        $v1 -> cpf = "321.12.312.322 ";
        $v1 -> salario = "bom ";
        $v1 -> quantVendidos = 2;

    //criando GeradorRelatorio
      $gr = new GeradorRelatorio();
        $gr -> imprimir($e1);
        $gr -> imprimir($m1);
        $gr -> imprimir($v1);
?>
