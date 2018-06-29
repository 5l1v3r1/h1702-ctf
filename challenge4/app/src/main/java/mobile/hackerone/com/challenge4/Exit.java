package mobile.hackerone.com.challenge4;

import android.graphics.Paint;
import android.graphics.Point;

public class Exit extends Dot {
    public Exit(int i, Point point) {
        super(i, point, getPaint());
    }

    private static Paint getPaint() {
        Paint paint = new Paint(1);
        paint.setColor(-16711936);
        return paint;
    }

    public int getX() {
        return this.point.x;
    }

    public int getY() {
        return this.point.y;
    }
}
