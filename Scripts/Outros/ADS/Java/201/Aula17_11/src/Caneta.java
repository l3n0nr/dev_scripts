
public class Caneta {
    int nivel_tinta = 5; 
    String palavra;
    
    void escrever() 
    {
        nivel_tinta = nivel_tinta - 1;
        //Imprimindo valores
        System.out.println("A caneta escreveu a palavra " + palavra);
    }
    
    void recarregar()
    {
        nivel_tinta = 5;
        //Imprimindo valores
        System.out.println("A caneta foi recarregada");
    }
    
}
