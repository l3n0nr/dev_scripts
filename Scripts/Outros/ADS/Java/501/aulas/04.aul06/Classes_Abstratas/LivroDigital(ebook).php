<?php
  //criando classe LivroDigital(ebook)
  //extendo as caracteristicas da classe livro
    class LivroDigital extends Livro
    {
      //criando atributos
        public $tipoArquivo;
        public $tamMegBytes;

      //mostrando informações
        public function mostrarInformacoes()
        {
          //mostrando informações junto com a classe mae
            return parent::mostrarInformacoes(). " Tipo de Arquivo: ". $this->tamMegBytes;
        }
    }
?>
