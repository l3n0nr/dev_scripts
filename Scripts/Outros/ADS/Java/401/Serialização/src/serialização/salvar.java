
package serialização;

import java.io.FileOutputStream;

/**
 *
 * @author lenonr
 * 
 */
public class salvar
{
    public void Salvar()
    {
        FileOutputStream foot = new FileOutputStream("Jogador");
        ObjectOutputStream objeto = new Object OutputStream(foot);

        Object.writeObject(j);
    }   
}