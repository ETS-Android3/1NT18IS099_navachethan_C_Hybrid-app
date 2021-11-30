package com.example.musicplayer;

import androidx.appcompat.app.AppCompatActivity;

import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
       Button play, pause, stop, forward, rewind, reset;
       MediaPlayer mediaPlayer;
       int starttime =0;
       int stoptime = 0;
       int forwardtime = 5000;
       int backwardtime = 5000;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        play = findViewById(R.id.play);
        pause = findViewById(R.id.pause);
        forward = findViewById(R.id.forward);
        rewind = findViewById(R.id.rewind);
        stop = findViewById(R.id.stop);
        reset = findViewById(R.id.restart);

        mediaPlayer = MediaPlayer.create(this, R.raw.music1);
        play.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Toast.makeText(MainActivity.this, "Playing media now", Toast.LENGTH_SHORT).show();
                mediaPlayer.start();
            }
        });
        reset.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                mediaPlayer.seekTo(starttime);
                mediaPlayer.start();
            }
        });
        forward.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                int currentpos = mediaPlayer.getCurrentPosition();
                if((currentpos+forwardtime)<= (stoptime = mediaPlayer.getDuration())){
                    mediaPlayer.seekTo(currentpos+forwardtime);
                }
            }
        });
        rewind.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                int currentpos = mediaPlayer.getCurrentPosition();
                if((currentpos+backwardtime)>= (starttime)){
                    mediaPlayer.seekTo(currentpos+backwardtime);
                }
            }
        });
    }
}