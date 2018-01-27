<?php
  //criando classe Camaro
    class Camaro extends CarroDeCorrida
    {
      //criando metodo para movimentar o carro
        public function movimentar()
        {
          //aumentando kilometragem do carro
            $this->kmPercorrida += 0.0015;
        }
    }
?>
