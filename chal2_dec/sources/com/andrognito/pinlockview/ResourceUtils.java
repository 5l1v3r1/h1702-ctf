package com.andrognito.pinlockview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorRes;
import android.support.annotation.DimenRes;
import android.support.annotation.DrawableRes;
import android.support.v4.content.ContextCompat;

public class ResourceUtils {
    private ResourceUtils() {
        throw new AssertionError();
    }

    public static int getColor(Context context, @ColorRes int i) {
        return ContextCompat.getColor(context, i);
    }

    public static float getDimensionInPx(Context context, @DimenRes int i) {
        return context.getResources().getDimension(i);
    }

    public static Drawable getDrawable(Context context, @DrawableRes int i) {
        return ContextCompat.getDrawable(context, i);
    }
}
