<?php
  //criando classe extendida
    class Montador extends Funcionario
    {
      //criando atributo
        public $quantMontados;

      //criando funcao para mostrarvalores
        public function mostrarInformacoes()
        {
          //mostrando dados sobreescritos com novas informações
            return parent ::mostrarInformacoes() . " Quantidade de moveis montados: ".$this->quantMontados;
        }
    }
?>
