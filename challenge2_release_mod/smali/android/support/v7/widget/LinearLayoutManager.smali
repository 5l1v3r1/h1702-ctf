.class public Landroid/support/v7/widget/LinearLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "LinearLayoutManager.java"

# interfaces
.implements Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;
.implements Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;,
        Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;,
        Landroid/support/v7/widget/LinearLayoutManager$SavedState;,
        Landroid/support/v7/widget/LinearLayoutManager$LayoutState;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "LinearLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field final mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

.field private mInitialPrefetchItemCount:I

.field private mLastStackFromEnd:Z

.field private final mLayoutChunkResult:Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

.field private mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

.field mOrientation:I

.field mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

.field mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .line 168
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 p1, 0x0

    .line 99
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 106
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 113
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v0, -0x1

    .line 125
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    .line 131
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 141
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;-><init>(Landroid/support/v7/widget/LinearLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    .line 146
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutChunkResult:Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    const/4 v0, 0x2

    .line 151
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 169
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 170
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 171
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->setAutoMeasureEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 183
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 106
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 113
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v1, -0x1

    .line 125
    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 v1, -0x80000000

    .line 131
    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/4 v1, 0x0

    .line 135
    iput-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 141
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;-><init>(Landroid/support/v7/widget/LinearLayoutManager;)V

    iput-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    .line 146
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    invoke-direct {v1}, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutChunkResult:Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    const/4 v1, 0x2

    .line 151
    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 184
    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p1

    .line 185
    iget p2, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 186
    iget-boolean p2, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 187
    iget-boolean p1, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 188
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->setAutoMeasureEnabled(Z)V

    return-void
.end method

.method private computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 6

    .line 1106
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1109
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1110
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1111
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    .line 1112
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    .line 1110
    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/ScrollbarHelper;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)I

    move-result p0

    return p0
.end method

.method private computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 7

    .line 1095
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1098
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1099
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1100
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    .line 1101
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    .line 1099
    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/ScrollbarHelper;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;ZZ)I

    move-result p0

    return p0
.end method

.method private computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 6

    .line 1117
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1120
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1121
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1122
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    .line 1123
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    .line 1121
    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/ScrollbarHelper;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)I

    move-result p0

    return p0
.end method

.method private findFirstPartiallyOrCompletelyInvisibleChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 0

    .line 1824
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private findFirstReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6

    .line 1769
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->findReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .locals 2

    .line 1725
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1726
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 1729
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .locals 2

    .line 1707
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1708
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 1711
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private findLastPartiallyOrCompletelyInvisibleChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 0

    .line 1829
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private findLastReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 7

    .line 1773
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/widget/LinearLayoutManager;->findReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private findPartiallyOrCompletelyInvisibleChildClosestToEnd(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1

    .line 1810
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 1811
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private findPartiallyOrCompletelyInvisibleChildClosestToStart(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1

    .line 1818
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 1819
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private findReferenceChildClosestToEnd(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1

    .line 1747
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 1748
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private findReferenceChildClosestToStart(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1

    .line 1764
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 1765
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private fixLayoutEndGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 1

    .line 891
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    .line 894
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    .line 902
    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    .line 904
    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    add-int/2addr p3, p2

    return p3

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private fixLayoutStartGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 1

    .line 916
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    .line 920
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    .line 927
    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_0

    .line 929
    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    neg-int p3, p1

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    sub-int/2addr p2, p1

    return p2

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    .line 1695
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    .line 1685
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private layoutForPredictiveAnimations(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_8

    .line 686
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 691
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v3

    .line 692
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    .line 693
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    move v7, v5

    move v8, v7

    move v9, v8

    :goto_0
    if-ge v7, v4, :cond_5

    .line 695
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 696
    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_2

    .line 699
    :cond_1
    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v6, :cond_2

    move v11, v12

    goto :goto_1

    :cond_2
    move v11, v5

    .line 700
    :goto_1
    iget-boolean v13, v0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v14, -0x1

    if-eq v11, v13, :cond_3

    move v12, v14

    :cond_3
    if-ne v12, v14, :cond_4

    .line 703
    iget-object v11, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v10

    add-int/2addr v8, v10

    goto :goto_2

    .line 705
    :cond_4
    iget-object v11, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v10

    add-int/2addr v9, v10

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 713
    :cond_5
    iget-object v4, v0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput-object v3, v4, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-lez v8, :cond_6

    .line 715
    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v3

    .line 716
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    move/from16 v4, p3

    invoke-direct {v0, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 717
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v8, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 718
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v5, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 719
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 720
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    :cond_6
    if-lez v9, :cond_7

    .line 724
    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v3

    .line 725
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    move/from16 v4, p4

    invoke-direct {v0, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 726
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v9, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 727
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v5, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 728
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 729
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 731
    :cond_7
    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    return-void

    :cond_8
    :goto_3
    return-void
.end method

.method private logChildren()V
    .locals 5

    const-string v0, "LinearLayoutManager"

    const-string v1, "internal representation of views on the screen"

    .line 2018
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2019
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2020
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "LinearLayoutManager"

    .line 2021
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", coord:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2022
    invoke-virtual {v4, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2021
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "LinearLayoutManager"

    const-string v0, "=============="

    .line 2024
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private recycleByLayoutState(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;)V
    .locals 2

    .line 1472
    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1475
    :cond_0
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1476
    iget p2, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleViewsFromEnd(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    goto :goto_0

    .line 1478
    :cond_1
    iget p2, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleViewsFromStart(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V
    .locals 0

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    if-le p3, p2, :cond_1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_2

    .line 1363
    invoke-virtual {p0, p3, p1}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    .line 1367
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private recycleViewsFromEnd(Landroid/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 5

    .line 1428
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-gez p2, :cond_0

    return-void

    .line 1436
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v1

    sub-int/2addr v1, p2

    .line 1437
    iget-boolean p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    move v2, p2

    :goto_0
    if-ge v2, v0, :cond_6

    .line 1439
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1440
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-lt v4, v1, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1441
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v3

    if-ge v3, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1443
    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_3
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    :goto_2
    if-ltz p2, :cond_6

    .line 1449
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1450
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    if-lt v3, v1, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1451
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v2

    if-ge v2, v1, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 1453
    :cond_5
    :goto_3
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_6
    return-void
.end method

.method private recycleViewsFromStart(Landroid/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 5

    if-gez p2, :cond_0

    return-void

    .line 1392
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    .line 1393
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_6

    .line 1395
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1396
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1397
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v2

    if-le v2, p2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1399
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_3
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_6

    .line 1405
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1406
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-gt v4, p2, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1407
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1409
    :cond_5
    :goto_3
    invoke-direct {p0, p1, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_6
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .line 356
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    goto :goto_1

    .line 357
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    :goto_1
    return-void
.end method

.method private updateAnchorFromChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z
    .locals 4

    .line 764
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 767
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 768
    invoke-virtual {p3, v0, p2}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->isViewValidAsAnchor(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 769
    invoke-virtual {p3, v0}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;)V

    return v2

    .line 772
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eq v0, v3, :cond_2

    return v1

    .line 775
    :cond_2
    iget-boolean v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_3

    .line 776
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findReferenceChildClosestToEnd(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 777
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findReferenceChildClosestToStart(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_8

    .line 779
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    .line 782
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 784
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 785
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 786
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    if-ge p2, v0, :cond_4

    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 787
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 788
    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p2

    if-ge p1, p2, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    if-eqz v1, :cond_7

    .line 790
    iget-boolean p1, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz p1, :cond_6

    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 791
    invoke-virtual {p0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p0

    goto :goto_1

    :cond_6
    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 792
    invoke-virtual {p0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    :goto_1
    iput p0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    :cond_7
    return v2

    :cond_8
    return v1
.end method

.method private updateAnchorFromPendingData(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z
    .locals 4

    .line 805
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_6

    .line 809
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 v3, -0x80000000

    if-ltz v0, :cond_e

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-lt v0, p1, :cond_1

    goto/16 :goto_5

    .line 820
    :cond_1
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    iput p1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 821
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 824
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean p1, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean p1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 825
    iget-boolean p1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz p1, :cond_2

    .line 826
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget p0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    sub-int/2addr p1, p0

    iput p1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    .line 829
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget p0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr p1, p0

    iput p1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    :goto_0
    return v0

    .line 835
    :cond_3
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    if-ne p1, v3, :cond_c

    .line 836
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 838
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    .line 839
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 841
    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    return v0

    .line 844
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 845
    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v2, v3

    if-gez v2, :cond_5

    .line 847
    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    iput p0, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 848
    iput-boolean v1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    return v0

    .line 851
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 852
    invoke-virtual {v2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_6

    .line 854
    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p0

    iput p0, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 855
    iput-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    return v0

    .line 858
    :cond_6
    iget-boolean v1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 859
    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 860
    invoke-virtual {p0}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_1

    :cond_7
    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 861
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    :goto_1
    iput p1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_3

    .line 863
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result p1

    if-lez p1, :cond_b

    .line 865
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 866
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ge v2, p1, :cond_9

    move p1, v0

    goto :goto_2

    :cond_9
    move p1, v1

    :goto_2
    iget-boolean p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-ne p1, p0, :cond_a

    move v1, v0

    :cond_a
    iput-boolean v1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 869
    :cond_b
    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    :goto_3
    return v0

    .line 874
    :cond_c
    iget-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean p1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 876
    iget-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz p1, :cond_d

    .line 877
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iget p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr p1, p0

    iput p1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_4

    .line 880
    :cond_d
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iget p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr p1, p0

    iput p1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    :goto_4
    return v0

    .line 810
    :cond_e
    :goto_5
    iput v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 811
    iput v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    return v1

    :cond_f
    :goto_6
    return v1
.end method

.method private updateAnchorInfoForLayout(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 1

    .line 736
    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->updateAnchorFromPendingData(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 743
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->updateAnchorFromChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 752
    :cond_1
    invoke-virtual {p3}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 753
    iget-boolean p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    iput p0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    return-void
.end method

.method private updateLayoutState(IIZLandroid/support/v7/widget/RecyclerView$State;)V
    .locals 4

    .line 1162
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v1

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 1163
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p4

    iput p4, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1164
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p1, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 p4, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1167
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v1, p1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getEndPadding()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1169
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p1

    .line 1171
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    iput p4, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1173
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1174
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1176
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p4, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1177
    invoke-virtual {p4}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_1

    .line 1180
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object p1

    .line 1181
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v2, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1182
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_2

    move p4, v0

    :cond_2
    iput p4, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1184
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1185
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1186
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p4, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1187
    invoke-virtual {p4}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p4

    add-int/2addr p1, p4

    .line 1189
    :goto_1
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p2, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-eqz p3, :cond_3

    .line 1191
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget p3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr p3, p1

    iput p3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1193
    :cond_3
    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 3

    .line 941
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 942
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 944
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 945
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v2, p1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 946
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p2, p1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 947
    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillEnd(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 1

    .line 937
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget p1, p1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 2

    .line 955
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 956
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 957
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 959
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v1, p1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 960
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p2, p1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 961
    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillStart(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 1

    .line 951
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget p1, p1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .line 1343
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1344
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 0

    .line 293
    iget p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canScrollVertically()Z
    .locals 1

    .line 301
    iget p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 1

    .line 1303
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 1304
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 p2, 0x1

    if-lez p1, :cond_2

    move v0, p2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    .line 1310
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 1311
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutState(IIZLandroid/support/v7/widget/RecyclerView$State;)V

    .line 1312
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p3, p1, p4}, Landroid/support/v7/widget/LinearLayoutManager;->collectPrefetchPositionsForLayoutState(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public collectInitialPrefetchPositions(ILandroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 5

    .line 1214
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 1217
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    goto :goto_0

    .line 1219
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1220
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 1221
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v3, v1, :cond_2

    if-eqz v0, :cond_1

    add-int/lit8 v3, p1, -0x1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_0

    .line 1224
    :cond_2
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    move v0, v2

    .line 1232
    :goto_2
    iget v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    if-ge v0, v4, :cond_4

    if-ltz v3, :cond_4

    if-ge v3, p1, :cond_4

    .line 1234
    invoke-interface {p2, v3, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    add-int/2addr v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method collectPrefetchPositionsForLayoutState(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0

    .line 1203
    iget p0, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    if-ltz p0, :cond_0

    .line 1204
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-ge p0, p1, :cond_0

    const/4 p1, 0x0

    .line 1205
    iget p2, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {p3, p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 1076
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 1066
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 1086
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3

    .line 456
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 459
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    move v0, v2

    .line 460
    :cond_1
    iget-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v0, p1, :cond_2

    const/4 v2, -0x1

    .line 461
    :cond_2
    iget p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 p1, 0x0

    if-nez p0, :cond_3

    .line 462
    new-instance p0, Landroid/graphics/PointF;

    int-to-float v0, v2

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    .line 464
    :cond_3
    new-instance p0, Landroid/graphics/PointF;

    int-to-float v0, v2

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 1081
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 1071
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 1091
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method convertFocusDirectionToLayoutDirection(I)I
    .locals 4

    const/16 v0, 0x11

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    if-eq p1, v0, :cond_a

    const/16 v0, 0x21

    const/4 v3, 0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x42

    if-eq p1, v0, :cond_6

    const/16 v0, 0x82

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    return v2

    .line 1650
    :pswitch_0
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v3, :cond_0

    return v3

    .line 1652
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v3

    .line 1642
    :pswitch_1
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v3, :cond_2

    return v1

    .line 1644
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result p0

    if-eqz p0, :cond_3

    return v3

    :cond_3
    return v1

    .line 1661
    :cond_4
    iget p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p0, v3, :cond_5

    move v2, v3

    :cond_5
    return v2

    .line 1667
    :cond_6
    iget p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez p0, :cond_7

    move v2, v3

    :cond_7
    return v2

    .line 1658
    :cond_8
    iget p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p0, v3, :cond_9

    goto :goto_0

    :cond_9
    move v1, v2

    :goto_0
    return v1

    .line 1664
    :cond_a
    iget p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez p0, :cond_b

    goto :goto_1

    :cond_b
    move v1, v2

    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method createLayoutState()Landroid/support/v7/widget/LinearLayoutManager$LayoutState;
    .locals 0

    .line 984
    new-instance p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;-><init>()V

    return-object p0
.end method

.method ensureLayoutState()V
    .locals 1

    .line 970
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    if-nez v0, :cond_0

    .line 971
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->createLayoutState()Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    .line 973
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    if-nez v0, :cond_1

    .line 974
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/OrientationHelper;->createOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    :cond_1
    return-void
.end method

.method fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 7

    .line 1496
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1497
    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 1499
    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v1, :cond_0

    .line 1500
    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v1, v3

    iput v1, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1502
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleByLayoutState(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;)V

    .line 1504
    :cond_1
    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    add-int/2addr v1, v3

    .line 1505
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutChunkResult:Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    .line 1506
    :cond_2
    iget-boolean v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    if-nez v4, :cond_3

    if-lez v1, :cond_9

    :cond_3
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1507
    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->resetInternal()V

    .line 1511
    invoke-virtual {p0, p1, p3, p2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->layoutChunk(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;)V

    .line 1515
    iget-boolean v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    if-eqz v4, :cond_4

    goto :goto_0

    .line 1518
    :cond_4
    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v5, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v6, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1525
    iget-boolean v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v4, v4, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v4, :cond_5

    .line 1526
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1527
    :cond_5
    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v5, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v4, v5

    iput v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1529
    iget v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v1, v4

    .line 1532
    :cond_6
    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-eq v4, v2, :cond_8

    .line 1533
    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v5, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v4, v5

    iput v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1534
    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v4, :cond_7

    .line 1535
    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v5, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v4, v5

    iput v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1537
    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleByLayoutState(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;)V

    :cond_8
    if-eqz p4, :cond_2

    .line 1539
    iget-boolean v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    if-eqz v4, :cond_2

    .line 1546
    :cond_9
    :goto_0
    iget p0, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 3

    .line 1868
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 1869
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 3

    .line 1851
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 1852
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 4

    .line 1908
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1909
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method

.method public findLastVisibleItemPosition()I
    .locals 4

    .line 1891
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1892
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method

.method findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;
    .locals 3

    .line 1940
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 1943
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 1947
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1948
    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/16 v0, 0x4104

    const/16 v1, 0x4004

    goto :goto_1

    :cond_3
    const/16 v0, 0x1041

    const/16 v1, 0x1001

    .line 1959
    :goto_1
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_4

    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mHorizontalBoundCheck:Landroid/support/v7/widget/ViewBoundsCheck;

    .line 1960
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object p0

    goto :goto_2

    :cond_4
    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mVerticalBoundCheck:Landroid/support/v7/widget/ViewBoundsCheck;

    .line 1962
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 1

    .line 1918
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    const/16 v0, 0x140

    if-eqz p3, :cond_0

    const/16 p3, 0x6003

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1932
    :goto_1
    iget p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez p4, :cond_2

    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mHorizontalBoundCheck:Landroid/support/v7/widget/ViewBoundsCheck;

    .line 1933
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object p0

    goto :goto_2

    :cond_2
    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mVerticalBoundCheck:Landroid/support/v7/widget/ViewBoundsCheck;

    .line 1935
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method findReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 5

    .line 1779
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1782
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    .line 1783
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p2

    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    move-object v2, v1

    :goto_1
    if-eq p3, p4, :cond_5

    .line 1786
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1787
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_4

    if-ge v4, p5, :cond_4

    .line 1789
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_4

    move-object v2, v3

    goto :goto_3

    .line 1793
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-ge v4, p2, :cond_3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1794
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-ge v4, p1, :cond_2

    goto :goto_2

    :cond_2
    return-object v3

    :cond_3
    :goto_2
    if-nez v1, :cond_4

    move-object v1, v3

    :cond_4
    :goto_3
    add-int/2addr p3, v0

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v1, v2

    :goto_4
    return-object v1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 2

    .line 401
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 405
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    .line 408
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 409
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_1

    return-object v0

    .line 414
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 196
    new-instance p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method protected getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 438
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->hasTargetScrollPosition()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 439
    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p0}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getInitialItemPrefetchCount()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1297
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getInitialPrefetchItemCount()I

    move-result p0

    return p0
.end method

.method public getInitialPrefetchItemCount()I
    .locals 0

    .line 1288
    iget p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    return p0
.end method

.method public getOrientation()I
    .locals 0

    .line 327
    iget p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    return p0
.end method

.method public getRecycleChildrenOnDetach()Z
    .locals 0

    .line 208
    iget-boolean p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    return p0
.end method

.method public getReverseLayout()Z
    .locals 0

    .line 370
    iget-boolean p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    return p0
.end method

.method public getStackFromEnd()Z
    .locals 0

    .line 317
    iget-boolean p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    return p0
.end method

.method protected isLayoutRTL()Z
    .locals 1

    .line 966
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 0

    .line 1156
    iget-boolean p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    return p0
.end method

.method layoutChunk(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 7

    .line 1551
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->next(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 1558
    iput-boolean p2, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    return-void

    .line 1561
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 1562
    iget-object v0, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 1563
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_1

    move v3, p2

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-ne v0, v3, :cond_2

    .line 1565
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1567
    :cond_2
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 1570
    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_4

    move v3, p2

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    if-ne v0, v3, :cond_5

    .line 1572
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_2

    .line 1574
    :cond_5
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 1577
    :goto_2
    invoke-virtual {p0, p1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1578
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 1580
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne v0, p2, :cond_8

    .line 1581
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1582
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1583
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    goto :goto_3

    .line 1585
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingLeft()I

    move-result v2

    .line 1586
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    .line 1588
    :goto_3
    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_7

    .line 1589
    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1590
    iget p3, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v3, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr p3, v3

    move v3, p3

    move v4, v0

    move v5, v1

    goto :goto_4

    .line 1592
    :cond_7
    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1593
    iget p3, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v3, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr p3, v3

    move v5, p3

    move v4, v0

    move v3, v1

    goto :goto_4

    .line 1596
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingTop()I

    move-result v0

    .line 1597
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    .line 1599
    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_9

    .line 1600
    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1601
    iget p3, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v3, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr p3, v3

    move v3, v0

    move v4, v1

    move v5, v2

    move v2, p3

    goto :goto_4

    .line 1603
    :cond_9
    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1604
    iget p3, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v3, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr p3, v3

    move v4, p3

    move v3, v0

    move v5, v2

    move v2, v1

    :goto_4
    move-object v0, p0

    move-object v1, p1

    .line 1609
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1616
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result p0

    if-nez p0, :cond_a

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 1617
    :cond_a
    iput-boolean p2, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 1619
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p0

    iput-boolean p0, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    return-void
.end method

.method onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 230
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 231
    iget-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 233
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 3

    .line 1969
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1970
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1974
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_1

    return-object v0

    .line 1978
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1979
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    const v1, 0x3eaaaaab

    .line 1980
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 1981
    invoke-direct {p0, p1, v1, v2, p4}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutState(IIZLandroid/support/v7/widget/RecyclerView$State;)V

    .line 1982
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p2, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1983
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput-boolean v2, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1984
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v1, 0x1

    invoke-virtual {p0, p3, p2, p4, v1}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 1992
    invoke-direct {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->findPartiallyOrCompletelyInvisibleChildClosestToStart(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    .line 1994
    :cond_2
    invoke-direct {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->findPartiallyOrCompletelyInvisibleChildClosestToEnd(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p3

    :goto_0
    if-ne p1, p2, :cond_3

    .line 2000
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object p0

    goto :goto_1

    .line 2002
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p0

    .line 2004
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez p3, :cond_4

    return-object v0

    :cond_4
    return-object p0

    :cond_5
    return-object p3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 239
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 240
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 242
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object p1

    .line 243
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 244
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 8

    .line 483
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-eq v0, v1, :cond_1

    .line 484
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 485
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    return-void

    .line 489
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 490
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 493
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 494
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 496
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 498
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_4

    .line 500
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 501
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v4, v5

    iput-boolean v4, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 503
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->updateAnchorInfoForLayout(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 504
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    iput-boolean v3, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    .line 514
    :cond_4
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    .line 517
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    if-ltz v4, :cond_5

    move v4, v0

    move v0, v2

    goto :goto_0

    :cond_5
    move v4, v2

    .line 524
    :goto_0
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    add-int/2addr v0, v5

    .line 525
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getEndPadding()I

    move-result v5

    add-int/2addr v4, v5

    .line 526
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-eq v5, v1, :cond_8

    iget v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_8

    .line 531
    iget v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 535
    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_6

    .line 536
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 537
    invoke-virtual {v7, v5}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v6, v5

    .line 538
    iget v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v6, v5

    goto :goto_1

    .line 540
    :cond_6
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 541
    invoke-virtual {v6}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    sub-int/2addr v5, v6

    .line 542
    iget v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v6, v5

    :goto_1
    if-lez v6, :cond_7

    add-int/2addr v0, v6

    goto :goto_2

    :cond_7
    sub-int/2addr v4, v6

    .line 554
    :cond_8
    :goto_2
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v5, v5, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_a

    .line 555
    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_b

    :cond_9
    move v1, v3

    goto :goto_3

    .line 558
    :cond_a
    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_9

    .line 562
    :cond_b
    :goto_3
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {p0, p1, p2, v5, v1}, Landroid/support/v7/widget/LinearLayoutManager;->onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 563
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 564
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v5

    iput-boolean v5, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 565
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    iput-boolean v5, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 566
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v1, v1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v1, :cond_d

    .line 568
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 569
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 570
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 571
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 572
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 573
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v5, :cond_c

    .line 574
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v4, v5

    .line 577
    :cond_c
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 578
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v4, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 579
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v4, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v6, v6, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 580
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v4, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 581
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 583
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v5, :cond_f

    .line 585
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 586
    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 587
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v5, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 588
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 589
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    goto :goto_4

    .line 593
    :cond_d
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 594
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v4, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 595
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 596
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v4, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 597
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 598
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v5, :cond_e

    .line 599
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v0, v5

    .line 602
    :cond_e
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 603
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v0, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 604
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v6, v6, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v5, v6

    iput v5, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 605
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 606
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 608
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v5, :cond_f

    .line 609
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 611
    invoke-direct {p0, v1, v4}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 612
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v5, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 613
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 614
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v4, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 621
    :cond_f
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_11

    .line 625
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v1, v5

    if-eqz v1, :cond_10

    .line 626
    invoke-direct {p0, v4, p1, p2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutEndGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v4, v1

    .line 629
    invoke-direct {p0, v0, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutStartGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v4, v1

    goto :goto_5

    .line 633
    :cond_10
    invoke-direct {p0, v0, p1, p2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutStartGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v4, v1

    .line 636
    invoke-direct {p0, v4, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutEndGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v4, v1

    .line 641
    :cond_11
    :goto_5
    invoke-direct {p0, p1, p2, v0, v4}, Landroid/support/v7/widget/LinearLayoutManager;->layoutForPredictiveAnimations(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 642
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p1

    if-nez p1, :cond_12

    .line 643
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->onLayoutComplete()V

    goto :goto_6

    .line 645
    :cond_12
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 647
    :goto_6
    iget-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    return-void
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 655
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    const/4 p1, 0x0

    .line 656
    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 p1, -0x1

    .line 657
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    .line 658
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 659
    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->reset()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 277
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 278
    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 279
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 250
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V

    return-object v0

    .line 253
    :cond_0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 254
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 255
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 256
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    xor-int/2addr v1, v2

    .line 257
    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v1, :cond_1

    .line 259
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    .line 260
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 261
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 262
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    iput p0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    goto :goto_0

    .line 264
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 265
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 266
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 267
    invoke-virtual {p0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    goto :goto_0

    .line 270
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    :goto_0
    return-object v0
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const-string p3, "Cannot drop a view during a scroll or layout calculation"

    .line 2088
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 2089
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 2090
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 2091
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p3

    .line 2092
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ge p3, p4, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v0

    .line 2095
    :goto_0
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_2

    if-ne p3, v1, :cond_1

    .line 2097
    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2098
    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p3

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2099
    invoke-virtual {v0, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2100
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p1

    add-int/2addr p2, p1

    sub-int/2addr p3, p2

    .line 2097
    invoke-virtual {p0, p4, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 2102
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2103
    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2104
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    .line 2102
    invoke-virtual {p0, p4, p1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    :cond_2
    if-ne p3, v0, :cond_3

    .line 2108
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p4, p1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 2110
    :cond_3
    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2111
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2112
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p2, p1

    .line 2110
    invoke-virtual {p0, p4, p2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :goto_1
    return-void
.end method

.method resolveIsInfinite()Z
    .locals 1

    .line 1197
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1198
    invoke-virtual {p0}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 5

    .line 1316
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1319
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1320
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    if-lez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 1322
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1323
    invoke-direct {p0, v0, v3, v2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutState(IIZLandroid/support/v7/widget/RecyclerView$State;)V

    .line 1324
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    .line 1325
    invoke-virtual {p0, p2, v4, p3, v1}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result p2

    add-int/2addr v2, p2

    if-gez v2, :cond_2

    return v1

    :cond_2
    if-le v3, v2, :cond_3

    mul-int p1, v0, v2

    .line 1333
    :cond_3
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 1337
    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2

    .line 1046
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1049
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public scrollToPosition(I)V
    .locals 0

    .line 1003
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    .line 1004
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 1005
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz p1, :cond_0

    .line 1006
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 1008
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 0

    .line 1031
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 1032
    iput p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 1033
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz p1, :cond_0

    .line 1034
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 1036
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .line 1058
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1061
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public setInitialPrefetchItemCount(I)V
    .locals 0

    .line 1272
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 338
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v0, 0x0

    .line 340
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 341
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_1

    return-void

    .line 344
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    .line 345
    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 346
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    return-void
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .locals 0

    .line 225
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 388
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 389
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 392
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 393
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0

    .line 1145
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 308
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 309
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 312
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 313
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    return-void
.end method

.method shouldMeasureTwice()Z
    .locals 2

    .line 1624
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getHeightMode()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 1625
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getWidthMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1626
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hasFlexibleChildInBothOrientations()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 0

    .line 448
    new-instance p2, Landroid/support/v7/widget/LinearSmoothScroller;

    .line 449
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 450
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 451
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .line 2079
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method validateChildOrder()V
    .locals 8

    const-string v0, "LinearLayoutManager"

    .line 2038
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validating child count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2042
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 2043
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    .line 2044
    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_4

    move v4, v1

    .line 2045
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 2046
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2047
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 2048
    iget-object v7, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    if-ge v6, v2, :cond_2

    .line 2050
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->logChildren()V

    .line 2051
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "detected invalid position. loc invalid? "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v5, v3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-le v5, v3, :cond_3

    .line 2055
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->logChildren()V

    .line 2056
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "detected invalid location"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move v4, v1

    .line 2060
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 2061
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2062
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 2063
    iget-object v7, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    if-ge v6, v2, :cond_6

    .line 2065
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->logChildren()V

    .line 2066
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "detected invalid position. loc invalid? "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v5, v3, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-ge v5, v3, :cond_7

    .line 2070
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->logChildren()V

    .line 2071
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "detected invalid location"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method
