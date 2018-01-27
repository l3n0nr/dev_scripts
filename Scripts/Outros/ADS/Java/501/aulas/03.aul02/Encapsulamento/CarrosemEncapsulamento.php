<?php
  #criando classe
  class CarrosemEncapsulamento
  {
    #iniciando variavel
    public $quilometragemTotal = 0;

    #criando funcao acelerar
    function acelerar()
    {
      $this -> quilometragemTotal += 1;
    }
  }
 ?>
