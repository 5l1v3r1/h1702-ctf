package com.andrognito.pinlockview;

import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.State;
import android.view.View;

public class ItemSpaceDecoration extends ItemDecoration {
    private final int mHorizontalSpaceWidth;
    private final boolean mIncludeEdge;
    private final int mSpanCount;
    private final int mVerticalSpaceHeight;

    public ItemSpaceDecoration(int i, int i2, int i3, boolean z) {
        this.mHorizontalSpaceWidth = i;
        this.mVerticalSpaceHeight = i2;
        this.mSpanCount = i3;
        this.mIncludeEdge = z;
    }

    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, State state) {
        view = recyclerView.getChildAdapterPosition(view);
        recyclerView = view % this.mSpanCount;
        if (this.mIncludeEdge != null) {
            rect.left = this.mHorizontalSpaceWidth - ((this.mHorizontalSpaceWidth * recyclerView) / this.mSpanCount);
            rect.right = ((recyclerView + 1) * this.mHorizontalSpaceWidth) / this.mSpanCount;
            if (view < this.mSpanCount) {
                rect.top = this.mVerticalSpaceHeight;
            }
            rect.bottom = this.mVerticalSpaceHeight;
            return;
        }
        rect.left = (this.mHorizontalSpaceWidth * recyclerView) / this.mSpanCount;
        rect.right = this.mHorizontalSpaceWidth - (((recyclerView + 1) * this.mHorizontalSpaceWidth) / this.mSpanCount);
        if (view >= this.mSpanCount) {
            rect.top = this.mVerticalSpaceHeight;
        }
    }
}
