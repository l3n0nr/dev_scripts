<?php
  //criando classe calculosGeometricos
    class CalculosGeometricos
    {
      //criando atributo constante
        const pi = 3.14;

      //criando funcao final para calcularAreaRetangulo
      //que nao pode ser alterada
        public final function calcularAreaRetangulo($base, $altura)
        {
          //retornando valor
            return $base * $altura;
        }

      //criando funcao final para calcularAreaTriangulo
        public final function calcularAreaTriangulo($base, $altura)
        {
          //retornando valor
            return ($base * $altura) / 2;
        }



    }
?>
