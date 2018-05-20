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

  //incluindo classes externas
    include("Sensor.php");
    include("SensorDeUmidade.php");
    include("SensorDeTemperatura.php");
    include("SensorDePressao.php");

  //criando classe SensorDeUmidade
    $umid = new SensorDeUmidade();
      //passando atributos
        $umid -> serial="01";
        $umid -> fabricante="a";

  //criando classe SensorDeTemperatura
    $temp = new SensorDeTemperatura();
      //passando atributos
        $temp -> serial= "001";
        $temp -> fabricante= "b";

  //criando classe SensorDePressao
    $pres = new SensorDePressao();
      //passando atributos
        $pres -> serial= "0001";
        $pres -> fabricante= "c";
                
  //criando array
    $sens[1] = $umid;
    $sens[2] = $temp;
    $sens[3] = $pres;

  //realizando a leitura por um determinado tempo
    for ($i=0; $i<10; $i++)
    {
      //captura os valores do array e tranforma em um objeto unico
        foreach ($sens as $s)
        {
          //movimentando o carro
            $s -> realizarLeitura();

          //imprimindo nova linha
            echo "<br>";
        }
        echo "<hr>";
    }
?>
