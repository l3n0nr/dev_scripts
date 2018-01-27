<?php
  #criando classe
  class CarrocomEncapsulamento
  {
    #iniciando variavel
    private $quilometragemTotal = 0;

    #criando funcao acelerar
    function acelerar()
    {
      $this -> quilometragemTotal += 1;
    }

    #criando metodo para mostrar o valor da quilometragemTotal
    public function getQuilometragemTotal()
    {
      return $this->quilometragemTotal;
    }            
  }
 ?>
