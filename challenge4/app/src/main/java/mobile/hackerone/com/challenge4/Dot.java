package mobile.hackerone.com.challenge4;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;

public class Dot implements Drawable {
    protected Paint paint;
    protected Point point;
    private int size;

    public Dot(int i, Point point, Paint paint) {
        this.size = i;
        this.point = point;
        this.paint = paint;
    }

    public Point getPoint() {
        return this.point;
    }

    public void draw(Canvas canvas, Rect rect) {
        float f = ((float) (rect.right - rect.left)) / ((float) this.size);
        canvas.drawRect(((float) rect.left) + (((float) this.point.x) * f), ((float) rect.top) + (((float) this.point.y) * f), (((float) rect.left) + (((float) this.point.x) * f)) + f, (((float) rect.top) + (((float) this.point.y) * f)) + f, this.paint);
    }
}
