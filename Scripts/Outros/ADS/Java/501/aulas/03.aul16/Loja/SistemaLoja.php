<?php
  //importando arquivo externo
    include("Vendedor.php");
    include("VendedorExterno.php"); 

  //criando um Vendedor
    $v1 = new Vendedor();
    $v1 -> nome = "Zeca";
    $v1 -> cpf = "123123.12.312.3";
    $v1 -> salario = 1500;

    //contabilizando vendas
      $v1 -> contabilizarVenda(500);
      $v1 -> contabilizarVenda(50);
      $v1 -> contabilizarVenda(5);

  //imprimindo valores de todo o objeto
    echo $v1;

  //criando novo usuario
    $v2 = new VendedorExterno();
    $v2 -> nome = "Sistem ofy a dau";
    $v2 -> cpf = "34.324.32.432";
    $v2 -> salario = "sem dinheiro";
    $v2 -> cidadeAtendida = "Passo novo";
    $v2 -> placaCarroServio = "chop-suey";

    //contabilizando vendas
      $v2 -> contabilizarVenda(1999);
      $v2 -> contabilizarVenda(99);
      $v2 -> contabilizarVenda(1);
      $v2 -> calcularBonificacao();

    //imprimindo valores de todo objeto
      echo $v2;
?>
