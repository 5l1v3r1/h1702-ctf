.class Landroid/support/v7/widget/helper/ItemTouchHelper$3;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field final synthetic val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIFFFFILandroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 610
    iput-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iput p9, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    iput-object p10, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct/range {p0 .. p8}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIFFFF)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 2

    .line 613
    invoke-super {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->onAnimationEnd(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 614
    iget-boolean p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->mOverridden:Z

    if-eqz p1, :cond_0

    return-void

    .line 617
    :cond_0
    iget p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    if-gtz p1, :cond_1

    .line 619
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 623
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 624
    iput-boolean p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->mIsPendingCleanup:Z

    .line 625
    iget p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    if-lez p1, :cond_2

    .line 628
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->postDispatchSwipe(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V

    .line 632
    :cond_2
    :goto_0
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 633
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    :cond_3
    return-void
.end method
