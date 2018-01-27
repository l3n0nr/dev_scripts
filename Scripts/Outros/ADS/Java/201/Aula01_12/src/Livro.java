
public class Livro 
{
    String Titulo;
    int Numero_Paginas;
    Boolean Disponivel;
    
    //gerador automatico de caracteristicas do livro
    Livro(String Titulo, int Numero_Paginas)
    {
        // CONSTRUTOR: se usa THIS quando o nome de uma variavel inicial deve receber um valor quando criado.
        this.Titulo = Titulo;
        this.Numero_Paginas = Numero_Paginas;
        this.Disponivel = true;
    }  

    //Verificando a disponibilidade do livro
    String Mostrar_Disponibilidade()
    {
        if (Disponivel)
        {
            return "Disponivel";
        }
        else
        {
            return "Não Disponivel";
        }
    }
}
