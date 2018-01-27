
public class Biblioteca {

        String Nome;
        int Capacidade;
        int Q_LivrosCadastrados;
        int Q_LivrosLocados;
        Livro[] livro;
        
       //Biblioteca com capacidade fixa definida.
       Biblioteca (String Nome)
       {
           this.Nome = Nome;
           this.Capacidade = 10;
           livro = new Livro [Capacidade];
           Q_LivrosCadastrados = 0;
           Q_LivrosLocados = 0;
       }
       
       //Biblioteca com capacidade variavel.
       Biblioteca (String Nome, int Capacidade)
       {
           this.Nome = Nome;
           this.Capacidade = Capacidade;
           livro = new Livro [Capacidade];
           Q_LivrosCadastrados = 0;
           Q_LivrosLocados = 0;
       }
       
       void Cadastrar_Livros(Livro l)
       {
           if (Q_LivrosCadastrados < Capacidade)
           {
               livro[Q_LivrosCadastrados] = l;
               Q_LivrosCadastrados++;
           }
           else
           {
               System.out.println("A biblioteca não possui mais espaço para armazenar livros");
           }
       }
       
       void Locar_Livro(Livro l)
       {
           if(l.Disponivel)
           {
               l.Disponivel = false;
               System.out.println("Livro " + l.Titulo + " retirado! ");
               Q_LivrosLocados++;
           }
           else
           {
               System.out.println("Livro " + l.Titulo + " não está disponivel!");
           }
       }
       
       void Devolver_Livro(Livro l)
       {
           l.Disponivel = true;
           System.out.println("Livro " + l.Titulo + " devolvido!");
           Q_LivrosLocados --;
       }
       
       void Mostrar_Livros()
       {
           System.out.println("Mostrando livros da Biblioteca " + this.Nome);
           if (Q_LivrosCadastrados == 0)
           {
               System.out.println("Sem livros cadastrados na Biblioteca");
           }
           else
           {
               for (int i = 0; i < Q_LivrosCadastrados; i++)
               {
                   System.out.println("Livro " + i + ": Titulo: " + livro[i].Titulo + " Numero de páginas: " + livro[i].Numero_Paginas);
               }
           }
       }
       
       void Mostrar_Livros_Locados()
       {
           System.out.println("\n Mostrando livros locados \n");
           if (Q_LivrosCadastrados == 0)
           {
               System.out.println("Sem livros locados na Biblioteca");
           }
           else
           {
               for (int i = 0; i < Q_LivrosCadastrados; i++)
               {
                   if (livro[i].Disponivel == false)
                   {
                        System.out.println("Livro " + i + ": Titulo: " + livro[i].Titulo + " Numero de páginas: " + livro[i].Numero_Paginas);
                   }   
               }
           }
       }
       
       void Mostrar_Livros_Disponiveis()
       {
           System.out.println("\n Mostrando livros disponiveis \n");
           if (Q_LivrosCadastrados == 0)
           {
               System.out.println("Sem livros disponiveis na Biblioteca");
           }
           else
           {
               for (int i = 0; i < Q_LivrosCadastrados; i++)
               {
                   if (livro[i].Disponivel == true)
                   {
                        System.out.println("Livro " + i + ": Titulo: " + livro[i].Titulo + " Numero de páginas: " + livro[i].Numero_Paginas);
                   }   
               }
           }
       }
}
