<?php
  //criando classe Fusca extendendo CarroDeCorrida
    class Fusca extends CarroDeCorrida
    {
      //criando metodo movimentar
        public function movimentar()
        {
          //somando valor a quilometragem do carro
            $this-> kmPercorrida+=0.005;
        }
    }
?>
