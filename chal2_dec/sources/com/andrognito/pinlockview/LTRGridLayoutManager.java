package com.andrognito.pinlockview;

import android.content.Context;
import android.support.v7.widget.GridLayoutManager;
import android.util.AttributeSet;

public class LTRGridLayoutManager extends GridLayoutManager {
    protected boolean isLayoutRTL() {
        return false;
    }

    public LTRGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public LTRGridLayoutManager(Context context, int i) {
        super(context, i);
    }

    public LTRGridLayoutManager(Context context, int i, int i2, boolean z) {
        super(context, i, i2, z);
    }
}
