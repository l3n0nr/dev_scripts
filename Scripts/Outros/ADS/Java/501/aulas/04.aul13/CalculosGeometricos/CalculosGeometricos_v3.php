<?php
  //criando classe para extender a CalculosGeometricos_v2
  //classe final
    final class CalculosGeometricos_v3 extends CalculosGeometricos_v2
    {
      //criando funcao final da classe
        final public function calcularAreaQuadrado($lado)
        {
          //retornando valor
            return ($lado*$lado);
        }
    }
?>
