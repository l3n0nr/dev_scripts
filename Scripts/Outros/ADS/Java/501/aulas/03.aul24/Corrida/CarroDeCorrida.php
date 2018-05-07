<?php
  //criando classe carro
    class CarroDeCorrida
    {
      //criando atributos
        public $kmPercorrida = 0;
        public $numeroIdentificador;

      //criando metodo para movimentar o carro
        function movimentar()
        {

        }

      //mostrando informacoes do carro
        public function mostrarInformacoes()
        {
          //imprimindo informacoes do carro
            echo "<br><br>Carro ".$this->numeroIdentificador."<br>Km Percorrido ".$this->kmPercorrida;
        }

      //
    }
?>
