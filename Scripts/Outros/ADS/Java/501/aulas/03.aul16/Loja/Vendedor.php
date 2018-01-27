<?php
  class Vendedor
  {
    //criando atributos
      public $nome, $cpf, $salario, $totalVendas;

    //criando função para contabilizar a venda
      function contabilizarVenda($valorVenda)
      {
        $this->totalVendas += $valorVenda;
      }

    //calculando bonificação
      function calcularBonificacao()
      {
        echo "Bonificação: ". $this -> salario * 0.10;
      }

    //criando função para ser chamado automaticamente
      public function __tostring()
      {
        return "Nome: ".$this->nome. "Cpf: ".$this->cpf. "Salario: ".$this->salario. " Total de vendas: ".$this->totalVendas;
      }
  }

?>
