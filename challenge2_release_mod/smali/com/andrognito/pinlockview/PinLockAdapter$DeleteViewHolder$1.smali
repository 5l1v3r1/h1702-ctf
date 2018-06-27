.class Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder$1;
.super Ljava/lang/Object;
.source "PinLockAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;-><init>(Lcom/andrognito/pinlockview/PinLockAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;

.field final synthetic val$this$0:Lcom/andrognito/pinlockview/PinLockAdapter;


# direct methods
.method constructor <init>(Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;Lcom/andrognito/pinlockview/PinLockAdapter;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder$1;->this$1:Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;

    iput-object p2, p0, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder$1;->val$this$0:Lcom/andrognito/pinlockview/PinLockAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 211
    iget-object p1, p0, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder$1;->this$1:Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;

    iget-object p1, p1, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;->this$0:Lcom/andrognito/pinlockview/PinLockAdapter;

    invoke-static {p1}, Lcom/andrognito/pinlockview/PinLockAdapter;->access$300(Lcom/andrognito/pinlockview/PinLockAdapter;)Lcom/andrognito/pinlockview/PinLockAdapter$OnDeleteClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 212
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder$1;->this$1:Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;

    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;->this$0:Lcom/andrognito/pinlockview/PinLockAdapter;

    invoke-static {p0}, Lcom/andrognito/pinlockview/PinLockAdapter;->access$300(Lcom/andrognito/pinlockview/PinLockAdapter;)Lcom/andrognito/pinlockview/PinLockAdapter$OnDeleteClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/andrognito/pinlockview/PinLockAdapter$OnDeleteClickListener;->onDeleteClicked()V

    :cond_0
    return-void
.end method
