
public class Testa_Biblioteca {
    public static void main (String [] args)
    {
        //Criando Biblioteca
        Biblioteca b1 = new Biblioteca("\n Rui Ramos \n", 10);
        //Criando Livros
        Livro l = new Livro ("Aprendendo a programar em Java", 400);
        Livro l1 = new Livro ("Aprendendo Algoritmos" , 214);
        Livro l2 = new Livro ("Aprendendo Algoritmos - Parte 2" , 200);
        
        //Cadastrando Livros
        b1.Cadastrar_Livros(l);
        b1.Cadastrar_Livros(l1);
        b1.Cadastrar_Livros(l2);
        
        //Locando Livros
        b1.Locar_Livro(l);
        //Mostrando Livros
        b1.Mostrar_Livros();
        //Mostrando Locados
        b1.Mostrar_Livros_Locados();
        //Mostrando Disponiveis
        b1.Mostrar_Livros_Disponiveis();
        
        //Devolvendo Livro
        b1.Devolver_Livro(l);
        //Mostrando Livros
        b1.Mostrar_Livros();
        //Mostrando Locados
        b1.Mostrar_Livros_Locados();
        //Mostrando Disponiveis
        b1.Mostrar_Livros_Disponiveis();
        
      
    }
}
