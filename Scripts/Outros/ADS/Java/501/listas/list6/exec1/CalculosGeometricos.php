<?php
  //criando classe
    class CalculosGeometricos
    {
      //criandos metodos estatico do Circulo
        static function areaCirculo($r)
        {
          //realizando calculo da area do circulo
            $areaCirculo = 3.14*($r*$r);

          //retornando valor
            return $areaCirculo;
        }

      //criando metodo estatico do triangulo
        static function areaTriangulo($b,$h)
        {
          //realizando calculo da area do triangulo
            $areaTriangulo = ($b*$h)/2;

          //retornando valor
            return $areaTriangulo;
        }

      //criando metodo estatico do retangulo
        static function areaRetangulo($b, $h)
        {
          //realizando calculo da area do retangulo
            $areaRetangulo = ($b*$h);

          //retornando valor
            return $areaRetangulo;
        }
    }
?>
