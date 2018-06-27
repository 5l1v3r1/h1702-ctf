package com.andrognito.pinlockview;

import android.animation.LayoutTransition;
import android.content.Context;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class IndicatorDots extends LinearLayout {
    private static final int DEFAULT_PIN_LENGTH = 4;
    private int mDotDiameter;
    private int mDotSpacing;
    private int mEmptyDrawable;
    private int mFillDrawable;
    private int mIndicatorType;
    private int mPinLength;
    private int mPreviousLength;

    @Retention(RetentionPolicy.SOURCE)
    public @interface IndicatorType {
        public static final int FILL = 1;
        public static final int FILL_WITH_ANIMATION = 2;
        public static final int FIXED = 0;
    }

    public IndicatorDots(Context context) {
        this(context, null);
    }

    public IndicatorDots(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public IndicatorDots(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        attributeSet = context.obtainStyledAttributes(attributeSet, R.styleable.PinLockView);
        try {
            this.mDotDiameter = (int) attributeSet.getDimension(R.styleable.PinLockView_dotDiameter, ResourceUtils.getDimensionInPx(getContext(), R.dimen.default_dot_diameter));
            this.mDotSpacing = (int) attributeSet.getDimension(R.styleable.PinLockView_dotSpacing, ResourceUtils.getDimensionInPx(getContext(), R.dimen.default_dot_spacing));
            this.mFillDrawable = attributeSet.getResourceId(R.styleable.PinLockView_dotFilledBackground, R.drawable.dot_filled);
            this.mEmptyDrawable = attributeSet.getResourceId(R.styleable.PinLockView_dotEmptyBackground, R.drawable.dot_empty);
            this.mPinLength = attributeSet.getInt(R.styleable.PinLockView_pinLength, 4);
            this.mIndicatorType = attributeSet.getInt(R.styleable.PinLockView_indicatorType, 0);
            initView(context);
        } finally {
            attributeSet.recycle();
        }
    }

    private void initView(Context context) {
        ViewCompat.setLayoutDirection(this, 0);
        if (this.mIndicatorType == 0) {
            for (int i = 0; i < this.mPinLength; i++) {
                View view = new View(context);
                emptyDot(view);
                LayoutParams layoutParams = new LinearLayout.LayoutParams(this.mDotDiameter, this.mDotDiameter);
                layoutParams.setMargins(this.mDotSpacing, 0, this.mDotSpacing, 0);
                view.setLayoutParams(layoutParams);
                addView(view);
            }
        } else if (this.mIndicatorType == 2) {
            setLayoutTransition(new LayoutTransition());
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mIndicatorType != 0) {
            getLayoutParams().height = this.mDotDiameter;
            requestLayout();
        }
    }

    void updateDot(int i) {
        if (this.mIndicatorType == 0) {
            if (i > 0) {
                if (i > this.mPreviousLength) {
                    fillDot(getChildAt(i - 1));
                } else {
                    emptyDot(getChildAt(i));
                }
                this.mPreviousLength = i;
                return;
            }
            for (i = 0; i < getChildCount(); i++) {
                emptyDot(getChildAt(i));
            }
            this.mPreviousLength = 0;
        } else if (i > 0) {
            if (i > this.mPreviousLength) {
                View view = new View(getContext());
                fillDot(view);
                LayoutParams layoutParams = new LinearLayout.LayoutParams(this.mDotDiameter, this.mDotDiameter);
                layoutParams.setMargins(this.mDotSpacing, 0, this.mDotSpacing, 0);
                view.setLayoutParams(layoutParams);
                addView(view, i - 1);
            } else {
                removeViewAt(i);
            }
            this.mPreviousLength = i;
        } else {
            removeAllViews();
            this.mPreviousLength = 0;
        }
    }

    private void emptyDot(View view) {
        view.setBackgroundResource(this.mEmptyDrawable);
    }

    private void fillDot(View view) {
        view.setBackgroundResource(this.mFillDrawable);
    }

    public int getPinLength() {
        return this.mPinLength;
    }

    public void setPinLength(int i) {
        this.mPinLength = i;
        removeAllViews();
        initView(getContext());
    }

    public int getIndicatorType() {
        return this.mIndicatorType;
    }

    public void setIndicatorType(int i) {
        this.mIndicatorType = i;
        removeAllViews();
        initView(getContext());
    }
}
