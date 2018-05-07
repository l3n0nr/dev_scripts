/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aula16_11;

import java.net.URL;
import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.layout.VBox;
import javafx.scene.media.Media;
import javafx.scene.media.MediaPlayer;
import javafx.scene.media.MediaView;
import javafx.stage.Stage;



/**
 *
 * @author lenonr
 */
public class ExemploMediaPlayerAudio extends Application
{
    Button playPause;
    Button aumentaVolume;
    Button diminuiVolume;
    Label volumeindicador;
    double volume = 0.5;               
    MediaPlayer mediaPlayer;
    boolean playing = false;
    
    @Override
    public void start(Stage stage) throws Exception 
    {
        playPause = new Button("Play");
        aumentaVolume = new Button("+");
        diminuiVolume = new Button("-");
        volumeindicador = new Label();
        volumeindicador.setText(String.valueOf(volume));
        
        VBox pane = new VBox();
        pane.setPrefSize(400, 300);
        URL audio = getClass().getResource("audio.mp3");
        
        Media media = new Media(audio.toString());
        mediaPlayer = new MediaPlayer(media);
        
        //reproduzindo midia automaticamente
        //mediaPlayer.setAutoPlay(true);
        
        MediaView mediaView = new MediaView(mediaPlayer);  
        
        //colocando musica para tocar
        playPause.setOnAction(new EventHandler<ActionEvent>(){
            @Override
            public void handle(ActionEvent event) 
            {
                //verificando se esta tocando
                if (playing)
                {
                    playing = false;
                    mediaPlayer.pause();
                    playPause.setText("Stop");
                }
                //começa a tocar
                else
                {
                    playing = true;
                    mediaPlayer.play();
                    playPause.setText("Play");
                }
            }
        });
        
        //aumentando volume
        aumentaVolume.setOnAction(new EventHandler<ActionEvent>()
        {
            @Override
            public void handle(ActionEvent event) 
            {
                if (volume < 1)
                {
                    volume += 0.1;
                    mediaPlayer.setVolume(volume);
                    volumeindicador.setText(String.valueOf(volume));
                }
            }
        });
        
        //aumentando volume
        diminuiVolume.setOnAction(new EventHandler<ActionEvent>()
        {
            @Override
            public void handle(ActionEvent event) 
            {
                if (volume > 0)
                {
                    volume -= 0.1;
                    mediaPlayer.setVolume(volume);
                    volumeindicador.setText(String.valueOf(volume));
                }
            }
        });       
                
        pane.getChildren().addAll(mediaView, playPause, aumentaVolume, diminuiVolume, volumeindicador);
        Scene scene = new Scene(pane);
        stage.setScene(scene);
        stage.show();
    }
    
    public static void main(String [] args)
    {
        launch();
    }
}
