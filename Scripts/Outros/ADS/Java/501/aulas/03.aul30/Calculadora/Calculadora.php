<?php
  /*
    basicamente é usado para nao criar
    um novo objeto a cada utilização dos metodos  
  */

  //criando classe
  class Calculadora
  {
    //criando metodos estaticos
      static function somar($v1, $v2)
      {
        //retornando a soma dos valores
          return $v1+$v2;
      }

      static function subtrair($v1, $v2)
      {
        //retornando a subtração dos valores
          return $v1-$v2;
      }

      static function multiplicar($v1, $v2)
      {
        //retornando a multiplicação dos valores
          return $v1*$v2;
      }

      static function dividir($v1, $v2)
      {
        //retornando a divisão dos valores
          return $v1/$v2;
      }
  }
?>
