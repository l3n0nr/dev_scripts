
package serialização;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;

/**
 *
 * @author lenonr
 * 
 */

public class Recuperar 
{
    public void recuperar () throws IOException
    {
        FileInputStream fim = new FileInputStream("Jogador");
	ObjectInputStream objeto = new ObjectInputStream(fim);

	//Jogador j = (Jogador)Objeto.Read.Object();
        Jogador j = (Jogador)objeto.read();        
        Jogador j = (Jogador)objeto.read();
    }
}
