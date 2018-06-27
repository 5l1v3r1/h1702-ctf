.class public Lcom/andrognito/pinlockview/ItemSpaceDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ItemSpaceDecoration.java"


# instance fields
.field private final mHorizontalSpaceWidth:I

.field private final mIncludeEdge:Z

.field private final mSpanCount:I

.field private final mVerticalSpaceHeight:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 18
    iput p1, p0, Lcom/andrognito/pinlockview/ItemSpaceDecoration;->mHorizontalSpaceWidth:I

    .line 19
    iput p2, p0, Lcom/andrognito/pinlockview/ItemSpaceDecoration;->mVerticalSpaceHeight:I

    .line 20
    iput p3, p0, Lcom/andrognito/pinlockview/ItemSpaceDecoration;->mSpanCount:I

    .line 21
    iput-boolean p4, p0, Lcom/andrognito/pinlockview/ItemSpaceDecoration;->mIncludeEdge:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    .line 27
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 28
    iget p3, p0, Lcom/andrognito/pinlockview/ItemSpaceDecoration;->mSpanCount:I

    rem-int p3, p2, p3

    .line 30
    iget-boolean p4, p0, Lcom/andrognito/pinlockview/ItemSpaceDecoration;->mIncludeEdge:Z

    if-eqz p4, :cond_1

    .line 31
    iget p4, p0, Lcom/andrognito/pinlockview/ItemSpaceDecoration;->mHorizontalSpaceWidth:I

    iget v0, p0, Lcom/andrognito/pinlockview/ItemSpaceDecoration;->mHorizontalSpaceWidth:I

    mul-int/2addr v0, p3

    iget v1, p0, Lcom/andrognito/pinlockview/ItemSpaceDecoration;->mSpanCount:I

    div-int/2addr v0, v1

    sub-int/2addr p4, v0

    iput p4, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p3, p3, 0x1

    .line 32
    iget p4, p0, Lcom/andrognito/pinlockview/ItemSpaceDecoration;->mHorizontalSpaceWidth:I

    mul-int/2addr p3, p4

    iget p4, p0, Lcom/andrognito/pinlockview/ItemSpaceDecoration;->mSpanCount:I

    div-int/2addr p3, p4

    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 34
    iget p3, p0, Lcom/andrognito/pinlockview/ItemSpaceDecoration;->mSpanCount:I

    if-ge p2, p3, :cond_0

    .line 35
    iget p2, p0, Lcom/andrognito/pinlockview/ItemSpaceDecoration;->mVerticalSpaceHeight:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 37
    :cond_0
    iget p0, p0, Lcom/andrognito/pinlockview/ItemSpaceDecoration;->mVerticalSpaceHeight:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 39
    :cond_1
    iget p4, p0, Lcom/andrognito/pinlockview/ItemSpaceDecoration;->mHorizontalSpaceWidth:I

    mul-int/2addr p4, p3

    iget v0, p0, Lcom/andrognito/pinlockview/ItemSpaceDecoration;->mSpanCount:I

    div-int/2addr p4, v0

    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 40
    iget p4, p0, Lcom/andrognito/pinlockview/ItemSpaceDecoration;->mHorizontalSpaceWidth:I

    add-int/lit8 p3, p3, 0x1

    iget v0, p0, Lcom/andrognito/pinlockview/ItemSpaceDecoration;->mHorizontalSpaceWidth:I

    mul-int/2addr p3, v0

    iget v0, p0, Lcom/andrognito/pinlockview/ItemSpaceDecoration;->mSpanCount:I

    div-int/2addr p3, v0

    sub-int/2addr p4, p3

    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 41
    iget p3, p0, Lcom/andrognito/pinlockview/ItemSpaceDecoration;->mSpanCount:I

    if-lt p2, p3, :cond_2

    .line 42
    iget p0, p0, Lcom/andrognito/pinlockview/ItemSpaceDecoration;->mVerticalSpaceHeight:I

    iput p0, p1, Landroid/graphics/Rect;->top:I

    :cond_2
    :goto_0
    return-void
.end method
