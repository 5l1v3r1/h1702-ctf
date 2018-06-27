.class interface abstract Landroid/support/design/internal/FlexContainer;
.super Ljava/lang/Object;
.source "FlexContainer.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# virtual methods
.method public abstract addView(Landroid/view/View;)V
.end method

.method public abstract addView(Landroid/view/View;I)V
.end method

.method public abstract getChildHeightMeasureSpec(III)I
.end method

.method public abstract getChildWidthMeasureSpec(III)I
.end method

.method public abstract getDecorationLengthCrossAxis(Landroid/view/View;)I
.end method

.method public abstract getDecorationLengthMainAxis(Landroid/view/View;II)I
.end method

.method public abstract getFlexItemAt(I)Landroid/view/View;
.end method

.method public abstract getFlexItemCount()I
.end method

.method public abstract getFlexLines()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/design/internal/FlexLine;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFlexLinesInternal()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/design/internal/FlexLine;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFlexWrap()I
.end method

.method public abstract getLargestMainSize()I
.end method

.method public abstract getPaddingBottom()I
.end method

.method public abstract getPaddingEnd()I
.end method

.method public abstract getPaddingLeft()I
.end method

.method public abstract getPaddingRight()I
.end method

.method public abstract getPaddingStart()I
.end method

.method public abstract getPaddingTop()I
.end method

.method public abstract getReorderedFlexItemAt(I)Landroid/view/View;
.end method

.method public abstract getSumOfCrossSize()I
.end method

.method public abstract isMainAxisDirectionHorizontal()Z
.end method

.method public abstract onNewFlexItemAdded(Landroid/view/View;IILandroid/support/design/internal/FlexLine;)V
.end method

.method public abstract onNewFlexLineAdded(Landroid/support/design/internal/FlexLine;)V
.end method

.method public abstract removeAllViews()V
.end method

.method public abstract removeViewAt(I)V
.end method

.method public abstract setFlexLines(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/design/internal/FlexLine;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setFlexWrap(I)V
.end method

.method public abstract updateViewCache(ILandroid/view/View;)V
.end method
