package com.hackerone.mobile.challenge4;

import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.os.Bundle;
import android.util.Log;
import java.io.Serializable;
import java.util.ArrayList;

public class MazeMover {
    public static void onReceive(Context context, Intent intent) {
        if (MainActivity.getMazeView() == null) {
            Log.i("MazeMover", "Not currently trying to solve the maze");
            return;
        }
        GameManager gameManager = MainActivity.getMazeView().getGameManager();
        Bundle extras = intent.getExtras();
        if (extras != null) {
            if (intent.hasExtra("get_maze")) {
                intent = new Intent();
                intent.putExtra("walls", gameManager.getMaze().getWalls());
                Serializable arrayList = new ArrayList();
                arrayList.add(Integer.valueOf(gameManager.getPlayer().getX()));
                arrayList.add(Integer.valueOf(gameManager.getPlayer().getY()));
                arrayList.add(Integer.valueOf(gameManager.getExit().getX()));
                arrayList.add(Integer.valueOf(gameManager.getExit().getY()));
                intent.putExtra("positions", arrayList);
                intent.setAction("com.hackerone.mobile.challenge4.broadcast.MAZE_MOVER");
                context.sendBroadcast(intent);
            } else if (intent.hasExtra("move")) {
                intent = extras.getChar("move");
                int i = -1;
                int i2 = 0;
                switch (intent) {
                    case 104:
                        i2 = -1;
                        i = 0;
                        break;
                    case 106:
                        i = 1;
                        break;
                    case 107:
                        break;
                    case 108:
                        i = 0;
                        i2 = 1;
                        break;
                    default:
                        i = 0;
                        break;
                }
                intent = new Point(i2, i);
                Intent intent2 = new Intent();
                if (gameManager.movePlayer(intent) != null) {
                    intent2.putExtra("move_result", "good");
                } else {
                    intent2.putExtra("move_result", "bad");
                }
                intent2.setAction("com.hackerone.mobile.challenge4.broadcast.MAZE_MOVER");
                context.sendBroadcast(intent2);
            } else if (intent.hasExtra("cereal")) {
                ((GameState) intent.getSerializableExtra("cereal")).initialize(context);
            }
        }
    }
}
