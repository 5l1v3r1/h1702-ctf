.class Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder$3;
.super Ljava/lang/Object;
.source "PinLockAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;-><init>(Lcom/andrognito/pinlockview/PinLockAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private rect:Landroid/graphics/Rect;

.field final synthetic this$1:Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;

.field final synthetic val$this$0:Lcom/andrognito/pinlockview/PinLockAdapter;


# direct methods
.method constructor <init>(Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;Lcom/andrognito/pinlockview/PinLockAdapter;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder$3;->this$1:Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;

    iput-object p2, p0, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder$3;->val$this$0:Lcom/andrognito/pinlockview/PinLockAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 232
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder$3;->this$1:Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;

    iget-object v0, v0, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;->mButtonImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder$3;->this$1:Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;

    iget-object v1, v1, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;->this$0:Lcom/andrognito/pinlockview/PinLockAdapter;

    invoke-static {v1}, Lcom/andrognito/pinlockview/PinLockAdapter;->access$100(Lcom/andrognito/pinlockview/PinLockAdapter;)Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->getDeleteButtonPressesColor()I

    move-result v1

    .line 233
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 235
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder$3;->rect:Landroid/graphics/Rect;

    .line 237
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 238
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder$3;->this$1:Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;

    iget-object v0, v0, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;->mButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 240
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 241
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder$3;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    add-int/2addr p1, p2

    .line 241
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_2

    .line 243
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder$3;->this$1:Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;

    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;->mButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
