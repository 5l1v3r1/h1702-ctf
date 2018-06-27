package android.support.v7.widget;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build.VERSION;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.v7.appcompat.R;
import android.support.v7.content.res.AppCompatResources;
import android.util.AttributeSet;
import android.widget.ImageView;

@RestrictTo({Scope.LIBRARY_GROUP})
public class AppCompatImageHelper {
    private final ImageView mView;

    public AppCompatImageHelper(ImageView imageView) {
        this.mView = imageView;
    }

    public void loadFromAttributes(AttributeSet attributeSet, int i) {
        Throwable th;
        TintTypedArray tintTypedArray = null;
        try {
            Drawable drawable = this.mView.getDrawable();
            if (drawable == null) {
                attributeSet = TintTypedArray.obtainStyledAttributes(this.mView.getContext(), attributeSet, R.styleable.AppCompatImageView, i, 0);
                try {
                    i = attributeSet.getResourceId(R.styleable.AppCompatImageView_srcCompat, -1);
                    if (i != -1) {
                        drawable = AppCompatResources.getDrawable(this.mView.getContext(), i);
                        if (drawable != null) {
                            this.mView.setImageDrawable(drawable);
                        }
                    }
                    tintTypedArray = attributeSet;
                } catch (Throwable th2) {
                    th = th2;
                    if (attributeSet != null) {
                        attributeSet.recycle();
                    }
                    throw th;
                }
            }
            if (drawable != null) {
                DrawableUtils.fixDrawable(drawable);
            }
            if (tintTypedArray != null) {
                tintTypedArray.recycle();
            }
        } catch (Throwable th3) {
            th = th3;
            attributeSet = tintTypedArray;
            if (attributeSet != null) {
                attributeSet.recycle();
            }
            throw th;
        }
    }

    public void setImageResource(int i) {
        if (i != 0) {
            i = AppCompatResources.getDrawable(this.mView.getContext(), i);
            if (i != 0) {
                DrawableUtils.fixDrawable(i);
            }
            this.mView.setImageDrawable(i);
            return;
        }
        this.mView.setImageDrawable(0);
    }

    boolean hasOverlappingRendering() {
        return VERSION.SDK_INT < 21 || !(this.mView.getBackground() instanceof RippleDrawable);
    }
}
