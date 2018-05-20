<?php
  //criando classe extendida
    class Entregador extends Funcionario
    {
      //criando atributo
        public $quantEntregas;

      //criando funcao para mostrarvalores
        public function mostrarInformacoes()
        {
          //mostrando dados sobreescritos com novas informações
            return parent ::mostrarInformacoes() . " Quantidade de moveis entregues: ".$this->quantEntregas;
        }
    }
?>
