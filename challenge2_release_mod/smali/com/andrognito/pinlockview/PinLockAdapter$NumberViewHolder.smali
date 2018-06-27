.class public Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PinLockAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrognito/pinlockview/PinLockAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NumberViewHolder"
.end annotation


# instance fields
.field mNumberButton:Landroid/widget/Button;

.field final synthetic this$0:Lcom/andrognito/pinlockview/PinLockAdapter;


# direct methods
.method public constructor <init>(Lcom/andrognito/pinlockview/PinLockAdapter;Landroid/view/View;)V
    .locals 1

    .line 184
    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;->this$0:Lcom/andrognito/pinlockview/PinLockAdapter;

    .line 185
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 186
    sget v0, Lcom/andrognito/pinlockview/R$id;->button:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;->mNumberButton:Landroid/widget/Button;

    .line 187
    iget-object p2, p0, Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;->mNumberButton:Landroid/widget/Button;

    new-instance v0, Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder$1;-><init>(Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;Lcom/andrognito/pinlockview/PinLockAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
