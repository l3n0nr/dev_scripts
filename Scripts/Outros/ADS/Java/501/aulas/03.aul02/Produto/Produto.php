<?php
  class Produto
  {
    #definindo variaveis
    private $nome, $preco, $quantidade;

    #verificando nome
    public function setNome($n)
    {
      #verificando tipo digitado
      if (is_string($n))
      {
        $this->nome = $n;
      }
      else
      {
        echo "Valor incorreto, digite uma palavra";
      }
    }

    #verificando preco
    public function setPreco($n)
    {
      #verificando tipo digitado
      if (is_float($n))
      {
        $this->preco = $n;
      }
      else
      {
        echo "Valor incorreto, digite um valor virgula";
      }
    }

    #verificando quantidade
    public function setquantidade($n)
    {
      #verificando tipo digitado
      if (is_int($n))
      {
        $this->quantidade = $n;
      }
      else
      {
        echo "Valor incorreto, digite uma quantidade como um numero inteiro";
      }
    }

    #mostrando nome
    public function getNome()
    {
      return $this->nome;
    }

    #mostrando preco
    public function getPreco()
    {
      return $this->preco;
    }

    #mostrando quantidade
    public function getQuantidade()
    {
      return $this->quantidade;
    }

}
?>
