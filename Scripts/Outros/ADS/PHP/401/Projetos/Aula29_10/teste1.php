<html>
	<head>
		<meta charset="utf8">
		<title> Calculos matematicos </title>	

		<style type="text/css">
			body
			{
				text-align: center;	
			}
		</style>
	</head>
	
	<body>
		<?php
			$num1 = 11;
			$num2 = 11;			
			
			echo "<hr>";
			echo "<b> Calculando valores </b>";
			
			$resultado = $num1+$num2;
			echo "</br></br>A soma dos valores e ".$resultado;
			
			$resultado = $num1-$num2;
			echo "</br></br>A subtração dos valores e ".$resultado;
			
			$resultado = $num1*$num2;
			echo "</br></br>A multiplicação dos valores e ".$resultado;
			
			$resultado = $num1/$num2;
			echo "</br></br>A divisão dos valores e ".$resultado;	

			echo "<hr>";
			if ($num1>$num2)
			{
				echo "<h1> O primeiro valor é o maior</h1>";
			}
			else{			
				if ($num1<$num2)
				{
					echo "<h1> O segundo valor é o maior</h1>";
				}
				else
				{
					echo "<h1>Os dois valores são iguais</h1>";
				}
			}			
			echo "<hr>";
		?>
	</body>
</html>