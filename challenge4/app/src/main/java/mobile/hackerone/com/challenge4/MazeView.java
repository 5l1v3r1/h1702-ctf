package mobile.hackerone.com.challenge4;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;

public class MazeView extends View {
    private GameManager gameManager;

    public MazeView(Context context, GameManager gameManager) {
        super(context);
        this.gameManager = gameManager;
        gameManager.setView(this);
    }

    protected void onDraw(Canvas canvas) {
        this.gameManager.draw(canvas);
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.gameManager.setScreenSize(i, i2);
    }

    public GameManager getGameManager() {
        return this.gameManager;
    }
}
