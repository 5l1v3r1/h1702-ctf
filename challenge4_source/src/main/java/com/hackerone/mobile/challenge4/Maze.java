package com.hackerone.mobile.challenge4;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import java.lang.reflect.Array;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;
import java.util.Stack;

public class Maze implements Drawable {
    private final boolean[][] array;
    private int bestScore = 0;
    private final Point end = new Point(1, 1);
    private final int size;
    private Point start;
    private Paint wallPaint = new Paint(1);

    public int getSize() {
        return this.size;
    }

    public Maze(int i, long j) {
        this.wallPaint.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.size = i;
        this.array = (boolean[][]) Array.newInstance(boolean.class, new int[]{i, i});
        generateMaze(j);
    }

    public Point getStart() {
        return this.start;
    }

    public Point getEnd() {
        return this.end;
    }

    private void generateMaze(long j) {
        int i = 0;
        while (i < this.size) {
            int i2 = 0;
            while (i2 < this.size) {
                boolean[] zArr = this.array[i];
                boolean z = i % 2 != 0 && i2 % 2 != 0 && i < this.size - 1 && i2 < this.size - 1;
                zArr[i2] = z;
                i2++;
            }
            i++;
        }
        Random random = new Random(j);
        j = new Stack();
        j.push(this.end);
        while (j.size() > 0) {
            Point point = (Point) j.peek();
            List linkedList = new LinkedList();
            if (point.x > 2 && !isUsedCell(point.x - 2, point.y)) {
                linkedList.add(new Point(point.x - 2, point.y));
            }
            if (point.y > 2 && !isUsedCell(point.x, point.y - 2)) {
                linkedList.add(new Point(point.x, point.y - 2));
            }
            if (point.x < this.size - 2 && !isUsedCell(point.x + 2, point.y)) {
                linkedList.add(new Point(point.x + 2, point.y));
            }
            if (point.y < this.size - 2 && !isUsedCell(point.x, point.y + 2)) {
                linkedList.add(new Point(point.x, point.y + 2));
            }
            if (linkedList.size() > 0) {
                Point point2 = (Point) linkedList.get(random.nextInt(linkedList.size()));
                this.array[point.y + ((point2.y - point.y) / 2)][point.x + ((point2.x - point.x) / 2)] = true;
                j.push(point2);
            } else {
                if (this.bestScore < j.size()) {
                    this.bestScore = j.size();
                    this.start = point;
                }
                j.pop();
            }
        }
    }

    public boolean canPlayerGoTo(int i, int i2) {
        return this.array[i2][i];
    }

    private boolean isUsedCell(int i, int i2) {
        boolean z = true;
        if (i >= 0 && i2 >= 0 && i < this.size - 1) {
            if (i2 < this.size - 1) {
                if (!(this.array[i2 - 1][i] || this.array[i2][i - 1] || this.array[i2 + 1][i])) {
                    if (!this.array[i2][i + 1]) {
                        z = false;
                    }
                }
                return z;
            }
        }
        return true;
    }

    public void draw(Canvas canvas, Rect rect) {
        float f = ((float) (rect.right - rect.left)) / ((float) this.size);
        Log.i("MAZE", String.valueOf(f));
        for (int i = 0; i < this.size; i++) {
            for (int i2 = 0; i2 < this.size; i2++) {
                if (!this.array[i][i2]) {
                    float f2 = (((float) i2) * f) + ((float) rect.left);
                    float f3 = (((float) i) * f) + ((float) rect.top);
                    canvas.drawRect(f2, f3, f2 + f, f3 + f, this.wallPaint);
                }
            }
        }
    }

    public boolean[][] getWalls() {
        return this.array;
    }
}
