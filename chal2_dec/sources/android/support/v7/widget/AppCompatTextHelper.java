package android.support.v7.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.RequiresApi;
import android.support.v7.appcompat.R;
import android.support.v7.text.AllCapsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;

@TargetApi(9)
@RequiresApi(9)
class AppCompatTextHelper {
    private TintInfo mDrawableBottomTint;
    private TintInfo mDrawableLeftTint;
    private TintInfo mDrawableRightTint;
    private TintInfo mDrawableTopTint;
    final TextView mView;

    static AppCompatTextHelper create(TextView textView) {
        if (VERSION.SDK_INT >= 17) {
            return new AppCompatTextHelperV17(textView);
        }
        return new AppCompatTextHelper(textView);
    }

    AppCompatTextHelper(TextView textView) {
        this.mView = textView;
    }

    void loadFromAttributes(AttributeSet attributeSet, int i) {
        boolean z;
        boolean z2;
        ColorStateList colorStateList;
        Context context = this.mView.getContext();
        AppCompatDrawableManager appCompatDrawableManager = AppCompatDrawableManager.get();
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.AppCompatTextHelper, i, 0);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextHelper_android_textAppearance, -1);
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTextHelper_android_drawableLeft)) {
            this.mDrawableLeftTint = createTintInfo(context, appCompatDrawableManager, obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextHelper_android_drawableLeft, 0));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTextHelper_android_drawableTop)) {
            this.mDrawableTopTint = createTintInfo(context, appCompatDrawableManager, obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextHelper_android_drawableTop, 0));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTextHelper_android_drawableRight)) {
            this.mDrawableRightTint = createTintInfo(context, appCompatDrawableManager, obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextHelper_android_drawableRight, 0));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTextHelper_android_drawableBottom)) {
            this.mDrawableBottomTint = createTintInfo(context, appCompatDrawableManager, obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextHelper_android_drawableBottom, 0));
        }
        obtainStyledAttributes.recycle();
        boolean z3 = this.mView.getTransformationMethod() instanceof PasswordTransformationMethod;
        ColorStateList colorStateList2 = null;
        if (resourceId != -1) {
            TintTypedArray obtainStyledAttributes2 = TintTypedArray.obtainStyledAttributes(context, resourceId, R.styleable.TextAppearance);
            if (z3 || !obtainStyledAttributes2.hasValue(R.styleable.TextAppearance_textAllCaps)) {
                z = false;
                z2 = z;
            } else {
                z2 = obtainStyledAttributes2.getBoolean(R.styleable.TextAppearance_textAllCaps, false);
                z = true;
            }
            if (VERSION.SDK_INT < 23) {
                colorStateList = obtainStyledAttributes2.hasValue(R.styleable.TextAppearance_android_textColor) ? obtainStyledAttributes2.getColorStateList(R.styleable.TextAppearance_android_textColor) : null;
                if (obtainStyledAttributes2.hasValue(R.styleable.TextAppearance_android_textColorHint)) {
                    colorStateList2 = obtainStyledAttributes2.getColorStateList(R.styleable.TextAppearance_android_textColorHint);
                }
                ColorStateList colorStateList3 = colorStateList;
                colorStateList = colorStateList2;
                colorStateList2 = colorStateList3;
            } else {
                colorStateList = null;
            }
            obtainStyledAttributes2.recycle();
        } else {
            z = false;
            z2 = z;
            colorStateList = null;
        }
        attributeSet = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.TextAppearance, i, 0);
        if (!(z3 || attributeSet.hasValue(R.styleable.TextAppearance_textAllCaps) == 0)) {
            z2 = attributeSet.getBoolean(R.styleable.TextAppearance_textAllCaps, false);
            z = true;
        }
        if (VERSION.SDK_INT < 23) {
            if (attributeSet.hasValue(R.styleable.TextAppearance_android_textColor) != 0) {
                colorStateList2 = attributeSet.getColorStateList(R.styleable.TextAppearance_android_textColor);
            }
            if (attributeSet.hasValue(R.styleable.TextAppearance_android_textColorHint) != 0) {
                colorStateList = attributeSet.getColorStateList(R.styleable.TextAppearance_android_textColorHint);
            }
        }
        attributeSet.recycle();
        if (colorStateList2 != null) {
            this.mView.setTextColor(colorStateList2);
        }
        if (colorStateList != null) {
            this.mView.setHintTextColor(colorStateList);
        }
        if (!z3 && r5) {
            setAllCaps(z2);
        }
    }

    void onSetTextAppearance(Context context, int i) {
        context = TintTypedArray.obtainStyledAttributes(context, i, R.styleable.TextAppearance);
        if (context.hasValue(R.styleable.TextAppearance_textAllCaps) != 0) {
            setAllCaps(context.getBoolean(R.styleable.TextAppearance_textAllCaps, false));
        }
        if (VERSION.SDK_INT < 23 && context.hasValue(R.styleable.TextAppearance_android_textColor) != 0) {
            i = context.getColorStateList(R.styleable.TextAppearance_android_textColor);
            if (i != 0) {
                this.mView.setTextColor(i);
            }
        }
        context.recycle();
    }

    void setAllCaps(boolean z) {
        this.mView.setTransformationMethod(z ? new AllCapsTransformationMethod(this.mView.getContext()) : false);
    }

    void applyCompoundDrawablesTints() {
        if (this.mDrawableLeftTint != null || this.mDrawableTopTint != null || this.mDrawableRightTint != null || this.mDrawableBottomTint != null) {
            Drawable[] compoundDrawables = this.mView.getCompoundDrawables();
            applyCompoundDrawableTint(compoundDrawables[0], this.mDrawableLeftTint);
            applyCompoundDrawableTint(compoundDrawables[1], this.mDrawableTopTint);
            applyCompoundDrawableTint(compoundDrawables[2], this.mDrawableRightTint);
            applyCompoundDrawableTint(compoundDrawables[3], this.mDrawableBottomTint);
        }
    }

    final void applyCompoundDrawableTint(Drawable drawable, TintInfo tintInfo) {
        if (drawable != null && tintInfo != null) {
            AppCompatDrawableManager.tintDrawable(drawable, tintInfo, this.mView.getDrawableState());
        }
    }

    protected static TintInfo createTintInfo(Context context, AppCompatDrawableManager appCompatDrawableManager, int i) {
        context = appCompatDrawableManager.getTintList(context, i);
        if (context == null) {
            return null;
        }
        appCompatDrawableManager = new TintInfo();
        appCompatDrawableManager.mHasTintList = true;
        appCompatDrawableManager.mTintList = context;
        return appCompatDrawableManager;
    }
}
