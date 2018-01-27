<?php
  //create by lenonr

  /*
    Faça uma classe Mercadoria com os atributos nome, preco de Compra,
    margem de lucro e precoDeVenda.

    A margem de lucro é única para todas as mercadorias.

    Crie um método que permite ajustar a margem de lucro das mercadorias
    de acordo com uma porcentagem.

    Mostre as informações de mercadorias com margem de lucro de 15%...
    Mude a margem de lucro para 30% e mostre as informações novamente...

    precoDeVenda (calculado automaticamente no momento da execução do método
    de reajuste da margem) precoDeVenda = precoDeCompra + (precoDeCompra * margem de lucro);
  */

  class Mercadoria
  {
    //criando atributos
      public $nome, $precoCompra, $precoVenda;

    //criando atributos estaticos
      static $margemLucro;

    //criando metodo para ajustar a margem de lucro
     function precoDeVenda()
      {
        //ajustando margem
          $this->precoVenda = $this->precoCompra + ($this->precoCompra *self::$margemLucro);

        //retornando valor da funcao
          return $this->precoVenda;
      }

    //criando construtor
      function __construct($nome, $precoCompra)
      {
        //anexando valores
          $this -> nome = $nome;
          $this -> precoCompra = $precoCompra;
          $this -> precoVenda = $this->precoDeVenda();
      }
  }
?>
