<?php
  class VendedorExterno extends Vendedor
  {
    //
      public $cidadeAtendida;
      public $placaCarroServico;

    //retornando o salario com uma maior bonificação
      public function calcularBonificacao()
      {
        echo "Bonificação". $this->salario * 0.50;
      }

      //chamando as caracteristicas da classe mae
        public function __tostring()
        {
          return parent:: __tostring(). "Cidade ".$this->cidadeAtendida. "Carro: ".$this->placaCarroServico;
        }
  }

?>
