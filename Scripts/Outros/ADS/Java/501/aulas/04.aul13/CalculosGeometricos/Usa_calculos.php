<?php
  //incluindo classes externas
    include ("CalculosGeometricos.php");
    include ("CalculosGeometricos_v2.php");
    include ("CalculosGeometricos_v3.php");
    include ("CalculosGeometricos_v4.php");

    //criando novos calculos
      $c0 = new CalculosGeometricos();
      $c0_v2 = new CalculosGeometricos_v2();
      $c0_v3 = new CalculosGeometricos_v3();
      $c0_v4 = new CalculosGeometricos_v4();

    //mostrando valores - c0
      echo "Area do retangulo: ".$c0 -> calcularAreaRetangulo(5,10);
      echo "Area do triangulo: ".$c0 -> calcularAreaTriangulo(5,10);

    //mostrando valores - c0_v2
      echo "Area do retangulo: ".$c0_v2 -> calcularAreaRetangulo(5,10);
      echo "Area do triangulo: ".$c0_v2 -> calcularAreaTriangulo(5,10);
      echo "Area do Circulo: ".$c0_v2 -> calcularAreaCirculo(5);

    //mostrando valores - c0_v3
      echo "Area do retangulo: ".$c0_v3 -> calcularAreaRetangulo(5,10);
      echo "Area do triangulo: ".$c0_v3 -> calcularAreaTriangulo(5,10);
      echo "Area do Circulo: ".$c0_v3 -> calcularAreaCirculo(5);
      echo "Area do Quadrado: ".$c0_v3 -> calcularAreaQuadrado(3) ;

    //mostrando valores - c0_v4
      echo "Area do retangulo: ".$c0_v4 -> calcularAreaRetangulo(5,10);
      echo "Area do triangulo: ".$c0_v4 -> calcularAreaTriangulo(5,10);
      echo "Area do Circulo: ".$c0_v4 -> calcularAreaCirculo(5);
      echo "Area do Quadrado: ".$c0_v4 -> calcularAreaQuadrado(3) ;
?>
