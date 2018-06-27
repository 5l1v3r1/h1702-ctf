.class Landroid/support/v7/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field private mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 4691
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4682
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 4686
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4689
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 4692
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {p1, v0}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    return-void
.end method

.method private computeScrollDuration(IIII)I
    .locals 4

    .line 4858
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 4859
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    mul-int/2addr p3, p3

    mul-int/2addr p4, p4

    add-int/2addr p3, p4

    int-to-double p3, p3

    .line 4861
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-int p3, p3

    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p1, p2

    int-to-double p1, p1

    .line 4862
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    if-eqz v2, :cond_1

    .line 4863
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result p2

    goto :goto_1

    :cond_1
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p2

    .line 4864
    :goto_1
    div-int/lit8 p4, p2, 0x2

    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr p1, v3

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 4865
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float p4, p4

    .line 4867
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result p0

    mul-float/2addr p0, p4

    add-float/2addr p4, p0

    if-lez p3, :cond_2

    const/4 p0, 0x4

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p2, p3

    div-float/2addr p4, p2

    .line 4871
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/2addr p0, p1

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    int-to-float p0, v0

    div-float/2addr p0, p2

    add-float/2addr p0, v3

    const/high16 p1, 0x43960000    # 300.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    :goto_3
    const/16 p1, 0x7d0

    .line 4876
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private disableRunOnAnimationRequests()V
    .locals 1

    const/4 v0, 0x0

    .line 4815
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    const/4 v0, 0x1

    .line 4816
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 2

    const/high16 p0, 0x3f000000    # 0.5f

    sub-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v0, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr p0, v0

    double-to-float p0, p0

    float-to-double p0, p0

    .line 4854
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private enableRunOnAnimationRequests()V
    .locals 1

    const/4 v0, 0x0

    .line 4820
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4821
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v0, :cond_0

    .line 4822
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    :cond_0
    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 10

    .line 4836
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    const/4 v0, 0x0

    .line 4837
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4838
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 4840
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method postOnAnimation()V
    .locals 1

    .line 4827
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4828
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    goto :goto_0

    .line 4830
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4831
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 4697
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 4698
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->stop()V

    return-void

    .line 4701
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->disableRunOnAnimationRequests()V

    .line 4702
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 4705
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 4706
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 4707
    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1c

    .line 4708
    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v3

    .line 4709
    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v5

    .line 4710
    iget v6, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    sub-int v6, v3, v6

    .line 4711
    iget v7, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    sub-int v7, v5, v7

    .line 4714
    iput v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4715
    iput v5, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 4717
    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    const/4 v9, 0x1

    if-eqz v8, :cond_5

    .line 4718
    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 4719
    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    const-string v8, "RV Scroll"

    .line 4720
    invoke-static {v8}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    if-eqz v6, :cond_1

    .line 4722
    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v10, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v8, v6, v10, v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v8

    sub-int v10, v6, v8

    goto :goto_0

    :cond_1
    move v8, v4

    move v10, v8

    :goto_0
    if-eqz v7, :cond_2

    .line 4726
    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v13, v13, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v11, v7, v12, v13}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v11

    sub-int v12, v7, v11

    goto :goto_1

    :cond_2
    move v11, v4

    move v12, v11

    .line 4729
    :goto_1
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 4730
    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView;->repositionShadowingViews()V

    .line 4732
    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 4733
    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v13, v4}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    if-eqz v2, :cond_6

    .line 4735
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v13

    if-nez v13, :cond_6

    .line 4736
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 4737
    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v13, v13, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v13

    if-nez v13, :cond_3

    .line 4739
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_2

    .line 4740
    :cond_3
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v14

    if-lt v14, v13, :cond_4

    sub-int/2addr v13, v9

    .line 4741
    invoke-virtual {v2, v13}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    sub-int v13, v6, v10

    sub-int v14, v7, v12

    .line 4742
    invoke-static {v2, v13, v14}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$400(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    goto :goto_2

    :cond_4
    sub-int v13, v6, v10

    sub-int v14, v7, v12

    .line 4744
    invoke-static {v2, v13, v14}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$400(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    goto :goto_2

    :cond_5
    move v8, v4

    move v10, v8

    move v11, v10

    move v12, v11

    .line 4748
    :cond_6
    :goto_2
    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v13, v13, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_7

    .line 4749
    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4751
    :cond_7
    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_8

    .line 4752
    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v13, v6, v7}, Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    :cond_8
    if-nez v10, :cond_9

    if-eqz v12, :cond_11

    .line 4755
    :cond_9
    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrVelocity()F

    move-result v13

    float-to-int v13, v13

    if-eq v10, v3, :cond_b

    if-gez v10, :cond_a

    neg-int v15, v13

    goto :goto_3

    :cond_a
    if-lez v10, :cond_b

    move v15, v13

    goto :goto_3

    :cond_b
    move v15, v4

    :goto_3
    if-eq v12, v5, :cond_d

    if-gez v12, :cond_c

    neg-int v13, v13

    goto :goto_4

    :cond_c
    if-lez v12, :cond_d

    goto :goto_4

    :cond_d
    move v13, v4

    .line 4767
    :goto_4
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v9

    if-eq v9, v14, :cond_e

    .line 4768
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9, v15, v13}, Landroid/support/v7/widget/RecyclerView;->absorbGlows(II)V

    :cond_e
    if-nez v15, :cond_f

    if-eq v10, v3, :cond_f

    .line 4770
    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getFinalX()I

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    if-nez v13, :cond_10

    if-eq v12, v5, :cond_10

    .line 4771
    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v3

    if-nez v3, :cond_11

    .line 4772
    :cond_10
    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    :cond_11
    if-nez v8, :cond_12

    if-eqz v11, :cond_13

    .line 4776
    :cond_12
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v8, v11}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 4779
    :cond_13
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$500(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 4780
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_14
    if-eqz v7, :cond_15

    .line 4783
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_15

    if-ne v11, v7, :cond_15

    const/4 v3, 0x1

    goto :goto_5

    :cond_15
    move v3, v4

    :goto_5
    if-eqz v6, :cond_16

    .line 4785
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_16

    if-ne v8, v6, :cond_16

    const/4 v5, 0x1

    goto :goto_6

    :cond_16
    move v5, v4

    :goto_6
    if-nez v6, :cond_17

    if-eqz v7, :cond_19

    :cond_17
    if-nez v5, :cond_19

    if-eqz v3, :cond_18

    goto :goto_7

    :cond_18
    move/from16 v16, v4

    goto :goto_8

    :cond_19
    :goto_7
    const/16 v16, 0x1

    .line 4790
    :goto_8
    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1b

    if-nez v16, :cond_1a

    goto :goto_9

    .line 4796
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4797
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    if-eqz v1, :cond_1c

    .line 4798
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3, v6, v7}, Landroid/support/v7/widget/GapWorker;->postFromTraversal(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_a

    .line 4791
    :cond_1b
    :goto_9
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4792
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$600()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 4793
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v1}, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    :cond_1c
    :goto_a
    if-eqz v2, :cond_1e

    .line 4804
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 4805
    invoke-static {v2, v4, v4}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$400(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    .line 4807
    :cond_1d
    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-nez v1, :cond_1e

    .line 4808
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 4811
    :cond_1e
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->enableRunOnAnimationRequests()V

    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1

    const/4 v0, 0x0

    .line 4844
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIII)V

    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 1

    .line 4880
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IIII)V
    .locals 0

    .line 4848
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    .line 4889
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 4890
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 4891
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object p4

    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 4893
    :cond_0
    iget-object p4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x2

    invoke-virtual {p4, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    const/4 p4, 0x0

    .line 4894
    iput p4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput p4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4895
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 4896
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x0

    .line 4884
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    if-nez p3, :cond_0

    sget-object p3, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    :cond_0
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 4900
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4901
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {p0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    return-void
.end method
