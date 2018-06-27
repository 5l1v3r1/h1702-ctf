.class Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder$1;
.super Ljava/lang/Object;
.source "PinLockAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;-><init>(Lcom/andrognito/pinlockview/PinLockAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;

.field final synthetic val$this$0:Lcom/andrognito/pinlockview/PinLockAdapter;


# direct methods
.method constructor <init>(Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;Lcom/andrognito/pinlockview/PinLockAdapter;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder$1;->this$1:Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;

    iput-object p2, p0, Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder$1;->val$this$0:Lcom/andrognito/pinlockview/PinLockAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder$1;->this$1:Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;

    iget-object v0, v0, Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;->this$0:Lcom/andrognito/pinlockview/PinLockAdapter;

    invoke-static {v0}, Lcom/andrognito/pinlockview/PinLockAdapter;->access$000(Lcom/andrognito/pinlockview/PinLockAdapter;)Lcom/andrognito/pinlockview/PinLockAdapter$OnNumberClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder$1;->this$1:Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;

    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;->this$0:Lcom/andrognito/pinlockview/PinLockAdapter;

    invoke-static {p0}, Lcom/andrognito/pinlockview/PinLockAdapter;->access$000(Lcom/andrognito/pinlockview/PinLockAdapter;)Lcom/andrognito/pinlockview/PinLockAdapter$OnNumberClickListener;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/andrognito/pinlockview/PinLockAdapter$OnNumberClickListener;->onNumberClicked(I)V

    :cond_0
    return-void
.end method
