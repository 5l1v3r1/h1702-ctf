package android.support.v4.content.res;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.annotation.AnyRes;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.annotation.StyleableRes;
import android.util.TypedValue;

@RestrictTo({Scope.LIBRARY_GROUP})
public class TypedArrayUtils {
    public static boolean getBoolean(TypedArray typedArray, @StyleableRes int i, @StyleableRes int i2, boolean z) {
        return typedArray.getBoolean(i, typedArray.getBoolean(i2, z));
    }

    public static Drawable getDrawable(TypedArray typedArray, @StyleableRes int i, @StyleableRes int i2) {
        i = typedArray.getDrawable(i);
        return i == 0 ? typedArray.getDrawable(i2) : i;
    }

    public static int getInt(TypedArray typedArray, @StyleableRes int i, @StyleableRes int i2, int i3) {
        return typedArray.getInt(i, typedArray.getInt(i2, i3));
    }

    @AnyRes
    public static int getResourceId(TypedArray typedArray, @StyleableRes int i, @StyleableRes int i2, @AnyRes int i3) {
        return typedArray.getResourceId(i, typedArray.getResourceId(i2, i3));
    }

    public static String getString(TypedArray typedArray, @StyleableRes int i, @StyleableRes int i2) {
        i = typedArray.getString(i);
        return i == 0 ? typedArray.getString(i2) : i;
    }

    public static CharSequence getText(TypedArray typedArray, @StyleableRes int i, @StyleableRes int i2) {
        i = typedArray.getText(i);
        return i == 0 ? typedArray.getText(i2) : i;
    }

    public static CharSequence[] getTextArray(TypedArray typedArray, @StyleableRes int i, @StyleableRes int i2) {
        i = typedArray.getTextArray(i);
        return i == 0 ? typedArray.getTextArray(i2) : i;
    }

    public static int getAttr(Context context, int i, int i2) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId != null ? i : i2;
    }
}
