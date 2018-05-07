<?php
  //criando classe extendida
    class Vendedor extends Funcionario
    {
      //criando atributo
        public $quantVendidos;

      //criando funcao para mostrarvalores
        public function mostrarInformacoes()
        {
          //mostrando dados sobreescritos com novas informações
            return parent :: mostrarInformacoes() . " Quantidade de moveis vendidos: ".$this->quantVendidos;
        }
    }
?>
