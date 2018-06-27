package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.ActionBar;
import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.support.annotation.RequiresApi;

@TargetApi(18)
@RequiresApi(18)
class ActionBarDrawerToggleJellybeanMR2 {
    private static final String TAG = "ActionBarDrawerToggleImplJellybeanMR2";
    private static final int[] THEME_ATTRS = new int[]{16843531};

    ActionBarDrawerToggleJellybeanMR2() {
    }

    public static Object setActionBarUpIndicator(Object obj, Activity activity, Drawable drawable, int i) {
        activity = activity.getActionBar();
        if (activity != null) {
            activity.setHomeAsUpIndicator(drawable);
            activity.setHomeActionContentDescription(i);
        }
        return obj;
    }

    public static Object setActionBarDescription(Object obj, Activity activity, int i) {
        activity = activity.getActionBar();
        if (activity != null) {
            activity.setHomeActionContentDescription(i);
        }
        return obj;
    }

    public static Drawable getThemeUpIndicator(Activity activity) {
        ActionBar actionBar = activity.getActionBar();
        if (actionBar != null) {
            activity = actionBar.getThemedContext();
        }
        activity = activity.obtainStyledAttributes(null, THEME_ATTRS, 16843470, 0);
        Drawable drawable = activity.getDrawable(0);
        activity.recycle();
        return drawable;
    }
}
