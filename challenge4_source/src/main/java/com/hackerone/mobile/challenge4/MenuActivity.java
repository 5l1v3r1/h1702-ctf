package com.hackerone.mobile.challenge4;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.TextView;

public class MenuActivity extends AppCompatActivity implements OnClickListener {
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_menu);
        ((Button) findViewById(R.id.StartGame)).setOnClickListener(this);
        TextView textView = (TextView) findViewById(R.id.Name);
        ((Button) findViewById(R.id.info)).setOnClickListener(this);
        Animation loadAnimation = AnimationUtils.loadAnimation(this, R.anim.myscale);
        loadAnimation.setFillAfter(true);
        loadAnimation.setStartOffset(0);
        textView.setAnimation(loadAnimation);
        registerReceiver(new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                if (intent.hasExtra("start_game")) {
                    context.startActivity(new Intent(context, MainActivity.class));
                }
            }
        }, new IntentFilter("com.hackerone.mobile.challenge4.menu"));
    }

    public void onClick(View view) {
        view = view.getId();
        if (view == R.id.StartGame) {
            startActivity(new Intent(this, MainActivity.class));
        } else if (view == R.id.info) {
            startActivity(new Intent(this, InfoActivity.class));
        }
    }
}
