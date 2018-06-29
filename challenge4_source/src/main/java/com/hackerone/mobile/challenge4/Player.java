package com.hackerone.mobile.challenge4;

import android.graphics.Paint;
import android.graphics.Point;
import android.support.v4.internal.view.SupportMenu;

public class Player extends Dot {
    public Player(Point point, int i) {
        super(i, point, getPaint());
    }

    private static Paint getPaint() {
        Paint paint = new Paint(1);
        paint.setColor(SupportMenu.CATEGORY_MASK);
        return paint;
    }

    public void goTo(Point point) {
        this.point = point;
    }

    public int getX() {
        return this.point.x;
    }

    public int getY() {
        return this.point.y;
    }
}
