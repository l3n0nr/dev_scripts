<?php
  class Calculos
  {
    public $num1, $num2;
    public $op;
    public $result;

    public function realizarCalculo()
    {

    }

    public function mostrarInformacoes()
    {
      if ($this->op == "+")
      {
        $this->result = ($this->num1 + $this-> num2);
      }
      elseif ($this->op == "-")
      {
        $this->result = ($this->num1 - $this-> num2);
      }
      elseif ($this->op == "*")
      {
        $this->result = ($this->num1 * $this-> num2);
      }
      else
      {
        $this->result = ($this->num1 / $this-> num2);
      }
    echo "Resultado: ".$this->result;
    }
}
?>
