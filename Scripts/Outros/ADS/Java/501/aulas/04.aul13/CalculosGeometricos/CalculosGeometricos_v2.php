<?php
  //criando classe extendida
    class CalculosGeometricos_v2 extends CalculosGeometricos
    {
      //forçando um sobreescrita
      /*
        public function calcularAreaRetangulo($base,$altura)
        {
          //retornando valores
            return "buenas";
        }
      */

      //adicionando nova funcao
        public final function calcularAreaCirculo($raio)
        {
          //retornando valores
            return self::pi * ($raio * $raio);
        }
    }
?>
