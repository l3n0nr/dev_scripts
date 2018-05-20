<?php

class Produto
{
  #definindo atributos
    public $nome, $preco, $descricao, $valorImposto;

  #criando construtor
    function __construct($nome, $preco, $descricao)
    {
      #criando atributos
        $this->nome = $nome;
        $this->preco = $preco;
        $this->descricao = $descricao;

        $this->valorImposto = $this->calcularImposto($preco);
    }

  #criando funcao
    function calcularImposto($valor)
    {
      #definindo valor do calcularImposto
        return $valor * 0.10;
    }
}
?>
