<?php
  /*create by lenonr*/

  /*
    Crie um Sistema de Leitura de Sensores
    que faz a leitura de um conjunto de
    qualquer tipo de Sensor (com um array de sensores).

    Para isto, crie a classe Sensor que representa a generalização de qualquer
    sensor e assim tem os atributos serial (identificador inteiro) e fabricante.

    Escreva o método realizarLeitura(), o qual nesta classe tem corpo vazio,
    apenas para abstração.

    Crie as seguintes classes SensorDeUmidade, SensorDeTemperatura e SensorDePressao
    os quais herdam os atributos da classe Sensor e sobrescrevem o método
    realizarLeitura da seguinte forma:

    umidade : mostra valor randomico na saida no formato 0% à 20% UR
    temperatura : mostra valor randomico na saida no formato -1ºC à 100ºC
    pressao: mostra valor randomico na saida no formato 1atm à 100atm

    rand($min,$max)
  */

  //criando classe
  class SensorDeUmidade extends Sensor
  {
    //criando metodo realizarLeitura para sobreescrevendo já existente
      public function realizarLeitura()
      {
        //imprimindo valor
          echo "Sensor de Umidade, valor: ".rand(0,20)." UR";
      }
  }

?>
s
