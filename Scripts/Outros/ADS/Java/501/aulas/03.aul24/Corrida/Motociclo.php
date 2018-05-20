<?php
  //criando classe Camaro
    class Motociclo extends CarroDeCorrida
    {
      //criando metodo para movimentar o carro
        public function movimentar()
        {
          //aumentando kilometragem do carro
            $this->kmPercorrida += 0.001;
        }
    }
?>
