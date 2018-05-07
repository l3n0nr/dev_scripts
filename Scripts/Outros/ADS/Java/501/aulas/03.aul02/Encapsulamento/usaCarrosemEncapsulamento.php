<?php
  #importando arquivo
  include ("CarrosemEncapsulamento.php");

  #criando novo CarrosemEncapsulamento
  $carro1 = new CarrosemEncapsulamento();

  #acelerando carro
  $carro1 -> acelerar();
  $carro1 -> acelerar();

  #mostrando quilometragem
  echo "Quilometragem total: ".$carro1->quilometragemTotal;

  #forçando entrada do valor
  $carro1 -> quilometragemTotal = 0;

  #mostrando quilometragem
  echo "Quilometragem total: ".$carro1->quilometragemTotal;
?>
