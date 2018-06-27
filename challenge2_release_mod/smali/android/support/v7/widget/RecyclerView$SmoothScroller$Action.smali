.class public Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final UNDEFINED_DURATION:I = -0x80000000


# instance fields
.field private changed:Z

.field private consecutiveUpdates:I

.field private mDuration:I

.field private mDx:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mJumpToPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 11174
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    .line 11183
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 1

    .line 11193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11159
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v0, 0x0

    .line 11163
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 11167
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    .line 11194
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 11195
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 11196
    iput p3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 11197
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private validate()V
    .locals 2

    .line 11256
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-ge v0, v1, :cond_0

    .line 11257
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11259
    :cond_0
    iget p0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-ge p0, v1, :cond_1

    .line 11260
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Scroll duration must be a positive number"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 0

    .line 11283
    iget p0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    return p0
.end method

.method public getDx()I
    .locals 0

    .line 11265
    iget p0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    return p0
.end method

.method public getDy()I
    .locals 0

    .line 11274
    iget p0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    return p0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    .line 11292
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method hasJumpTarget()Z
    .locals 0

    .line 11220
    iget p0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public jumpTo(I)V
    .locals 0

    .line 11216
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    return-void
.end method

.method runIfNecessary(Landroid/support/v7/widget/RecyclerView;)V
    .locals 5

    .line 11224
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 11225
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v2, -0x1

    .line 11226
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 11227
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    .line 11228
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    return-void

    .line 11231
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    if-eqz v0, :cond_4

    .line 11232
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->validate()V

    .line 11233
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 11234
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 11235
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    invoke-virtual {p1, v0, v2}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    goto :goto_0

    .line 11237
    :cond_1
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    invoke-virtual {p1, v0, v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    goto :goto_0

    .line 11240
    :cond_2
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 11242
    :goto_0
    iget p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    .line 11243
    iget p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_3

    const-string p1, "RecyclerView"

    const-string v0, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    .line 11246
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11249
    :cond_3
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    goto :goto_1

    .line 11251
    :cond_4
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    :goto_1
    return-void
.end method

.method public setDuration(I)V
    .locals 1

    const/4 v0, 0x1

    .line 11287
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 11288
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    return-void
.end method

.method public setDx(I)V
    .locals 1

    const/4 v0, 0x1

    .line 11269
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 11270
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    return-void
.end method

.method public setDy(I)V
    .locals 1

    const/4 v0, 0x1

    .line 11278
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 11279
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x1

    .line 11302
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 11303
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .locals 0

    .line 11315
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 11316
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 11317
    iput p3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 11318
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 p1, 0x1

    .line 11319
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    return-void
.end method
