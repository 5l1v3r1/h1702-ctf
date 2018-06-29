package com.hackerone.mobile.challenge4;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.PersistableBundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

public class MainActivity extends AppCompatActivity {
    public static Context context;
    private static MazeView view;
    private GestureDetector gestureDetector;

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Log.i(MainActivity.class.getName(), "Title");
        bundle = new GameManager();
        view = new MazeView(this, bundle);
        this.gestureDetector = new GestureDetector(this, bundle);
        setContentView((View) view);
        context = getApplicationContext();
        registerReceiver(new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                MazeMover.onReceive(context, intent);
            }
        }, new IntentFilter("com.hackerone.mobile.challenge4.broadcast.MAZE_MOVER"));
    }

    public void onSaveInstanceState(Bundle bundle, PersistableBundle persistableBundle) {
        super.onSaveInstanceState(bundle, persistableBundle);
        bundle.putString("Title", "Hello");
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.gestureDetector.onTouchEvent(motionEvent);
    }

    public static MazeView getMazeView() {
        return view;
    }
}
