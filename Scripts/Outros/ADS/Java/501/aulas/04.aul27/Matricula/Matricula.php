<?php
  class Matricula
  {
    //criando variaveis
      //publicas
        public $valorProgriv;
        public $valorSeminarios;
        public $valorMetodologia;

        public $valorMaterialdidatico;

      //privadas
        private $disciplinas;
        private $valorMatricula;
        private $materialDidatico;

    //criando funcao para realizar matricula
      public function realizarMatricula($disc, $material)
      {
        //percorrendo todo o vetor de disciplinas
          foreach ($disc as $d)
          {
            $this->disciplinas[] = $d;
          }
          if ($material)
          {
            $this->materialDidatico = "Sim";
          }
          else
          {
              $this->materialDidatico = "Nao";
          }
      }

    //criando funcao para realizar calculodamatricula
      public function calcularMatricula()
      {
        //percorrendo todo o vetor de disciplinas
          foreach ($this->disciplinas as $d)
          {
            if ($d == "progiv")
            {
              $this->valorMatricula += valorProgiv;
            }
            elseif ($d == "metodologia")
            {
              $this->valorMatricula += valorMetodologia;
            }
            elseif ($d == "seminarios")
            {
              $this->valorMatricula += valorSeminarios;
            }
            if($this->materialDidatico == "sim")
            {
              $this->valorMatricula += valorMaterialDidatico;
            }
          }
      }

    //imprimindo valores
      public function mostrarInformacoes()
      {
        echo "Disciplinas escolhidas";
        echo "<ol>";
          foreach ($this->disciplinas as $d)
          {
            echo "<li>" . $d. "<li>";
          }
        echo "</ol>";

      //mostrando valores da matricula
        echo "<br>". "Valor da Matricula: ".$this->valorMatricula;
        echo "<br>". "Material didático extra: ".$this->materialDidatico;
      }
  }
 ?>
