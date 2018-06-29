package mobile.hackerone.com.challenge4;

import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class GameManager extends SimpleOnGestureListener {
    private static final int LEVEL_SIZE = 5;
    public static int levelsCompleted;
    public static View view;
    private BroadcastAnnouncer broadcastAnnouncer;
    private List<Drawable> drawables = new ArrayList();
    private Exit exit;
    private StateLoader loader;
    private Maze maze;
    private Player player;
    private Rect rect = new Rect();
    private int screenSize;
    private long seed;

    public GameManager() {
        levelsCompleted = 0;
        this.loader = new StateLoader("game.state");
        this.broadcastAnnouncer = new BroadcastAnnouncer("MazeGame", "maze_game_win", "http://localhost");
    }

    private void create(long j) {
        int i = (levelsCompleted + 1) * 5;
        System.gc();
        this.drawables.clear();
        this.maze = new Maze(i, j);
        this.drawables.add(this.maze);
        this.exit = new Exit(i, this.maze.getEnd());
        this.drawables.add(this.exit);
        this.player = new Player(this.maze.getStart(), i);
        this.drawables.add(this.player);
    }

    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        Point point = new Point(Math.round(motionEvent2.getX() - motionEvent.getX()), Math.round(motionEvent2.getY() - motionEvent.getY()));
        int i = -1;
        if (Math.abs(point.x) > Math.abs(point.y)) {
            if (point.x > 0) {
                i = 1;
            }
            point.x = i;
            point.y = 0;
        } else {
            point.x = 0;
            if (point.y > 0) {
                i = 1;
            }
            point.y = i;
        }
        movePlayer(point);
        return super.onFling(motionEvent, motionEvent2, f, f2);
    }

    public boolean movePlayer(Point point) {
        boolean z;
        Point point2 = this.player.getPoint();
        point = getNewPosition(point2, point);
        if (point.x == point2.x) {
            if (point.y == point2.y) {
                z = false;
                this.player.goTo(point);
                if (this.exit.getPoint().equals(this.player.getPoint()) != null) {
                    levelsCompleted += 1;
                    create(this.seed);
                    this.broadcastAnnouncer.save(view.getContext(), this);
                    this.loader.save(view.getContext(), new GameState(this.player.getX(), this.player.getY(), this.seed, levelsCompleted));
                }
                view.invalidate();
                return z;
            }
        }
        z = true;
        this.player.goTo(point);
        if (this.exit.getPoint().equals(this.player.getPoint()) != null) {
            levelsCompleted += 1;
            create(this.seed);
            this.broadcastAnnouncer.save(view.getContext(), this);
            this.loader.save(view.getContext(), new GameState(this.player.getX(), this.player.getY(), this.seed, levelsCompleted));
        }
        view.invalidate();
        return z;
    }

    public Point getNewPosition(Point point, Point point2) {
        while (this.maze.canPlayerGoTo(point.x + point2.x, point.y + point2.y)) {
            point.x += point2.x;
            point.y += point2.y;
            if (point2.x != 0) {
                if (!this.maze.canPlayerGoTo(point.x, point.y + 1)) {
                    if (this.maze.canPlayerGoTo(point.x, point.y - 1)) {
                        break;
                    }
                }
                break;
            }
            if (point2.y != 0 && (this.maze.canPlayerGoTo(point.x + 1, point.y) || this.maze.canPlayerGoTo(point.x - 1, point.y))) {
                break;
            }
        }
        return point;
    }

    public void draw(Canvas canvas) {
        for (Drawable draw : this.drawables) {
            draw.draw(canvas, this.rect);
        }
    }

    public void setView(View view) {
        view = view;
        String str = "You won a level!";
        try {
            FileOutputStream openFileOutput = view.getContext().openFileOutput(this.broadcastAnnouncer.getStringRef(), 0);
            openFileOutput.write(str.getBytes());
            openFileOutput.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        BroadcastAnnouncer broadcastAnnouncer = this.broadcastAnnouncer;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(view.getContext().getFilesDir().getAbsolutePath());
        stringBuilder.append("/");
        stringBuilder.append(this.broadcastAnnouncer.getStringRef());
        broadcastAnnouncer.setStringRef(stringBuilder.toString());
        this.broadcastAnnouncer.load(view.getContext());
        GameState gameState = (GameState) this.loader.load(view.getContext());
        if (gameState == null) {
            create(new Random().nextLong());
            this.loader.save(view.getContext(), new GameState(this.player.getX(), this.player.getY(), this.seed, levelsCompleted));
            return;
        }
        levelsCompleted = gameState.levelsCompleted;
        this.seed = gameState.seed;
        create(this.seed);
        this.player.point = new Point(gameState.playerX, gameState.playerY);
    }

    public void setScreenSize(int i, int i2) {
        this.screenSize = Math.min(i, i2);
        this.rect.set((i - this.screenSize) / 2, (i2 - this.screenSize) / 2, (i + this.screenSize) / 2, (i2 - this.screenSize) / 2);
    }

    public Maze getMaze() {
        return this.maze;
    }

    public Player getPlayer() {
        return this.player;
    }

    public Exit getExit() {
        return this.exit;
    }
}
