package android.support.v4.widget;

import android.annotation.TargetApi;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.widget.TextView;

@TargetApi(17)
@RequiresApi(17)
class TextViewCompatJbMr1 {
    TextViewCompatJbMr1() {
    }

    public static void setCompoundDrawablesRelative(@NonNull TextView textView, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        Object obj = 1;
        if (textView.getLayoutDirection() != 1) {
            obj = null;
        }
        Drawable drawable5 = obj != null ? drawable3 : drawable;
        if (obj == null) {
            drawable = drawable3;
        }
        textView.setCompoundDrawables(drawable5, drawable2, drawable, drawable4);
    }

    public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        Object obj = 1;
        if (textView.getLayoutDirection() != 1) {
            obj = null;
        }
        Drawable drawable5 = obj != null ? drawable3 : drawable;
        if (obj == null) {
            drawable = drawable3;
        }
        textView.setCompoundDrawablesWithIntrinsicBounds(drawable5, drawable2, drawable, drawable4);
    }

    public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, int i, int i2, int i3, int i4) {
        Object obj = 1;
        if (textView.getLayoutDirection() != 1) {
            obj = null;
        }
        int i5 = obj != null ? i3 : i;
        if (obj == null) {
            i = i3;
        }
        textView.setCompoundDrawablesWithIntrinsicBounds(i5, i2, i, i4);
    }

    public static Drawable[] getCompoundDrawablesRelative(@NonNull TextView textView) {
        int i = 1;
        if (textView.getLayoutDirection() != 1) {
            i = 0;
        }
        textView = textView.getCompoundDrawables();
        if (i != 0) {
            Object obj = textView[2];
            Object obj2 = textView[0];
            textView[0] = obj;
            textView[2] = obj2;
        }
        return textView;
    }
}
