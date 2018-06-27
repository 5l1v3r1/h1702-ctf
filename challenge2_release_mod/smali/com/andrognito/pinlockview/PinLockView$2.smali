.class Lcom/andrognito/pinlockview/PinLockView$2;
.super Ljava/lang/Object;
.source "PinLockView.java"

# interfaces
.implements Lcom/andrognito/pinlockview/PinLockAdapter$OnDeleteClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrognito/pinlockview/PinLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrognito/pinlockview/PinLockView;


# direct methods
.method constructor <init>(Lcom/andrognito/pinlockview/PinLockView;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockView$2;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteClicked()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView$2;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v0}, Lcom/andrognito/pinlockview/PinLockView;->access$000(Lcom/andrognito/pinlockview/PinLockView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView$2;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    iget-object v1, p0, Lcom/andrognito/pinlockview/PinLockView$2;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v1}, Lcom/andrognito/pinlockview/PinLockView;->access$000(Lcom/andrognito/pinlockview/PinLockView;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/andrognito/pinlockview/PinLockView$2;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v3}, Lcom/andrognito/pinlockview/PinLockView;->access$000(Lcom/andrognito/pinlockview/PinLockView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/andrognito/pinlockview/PinLockView;->access$002(Lcom/andrognito/pinlockview/PinLockView;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView$2;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-virtual {v0}, Lcom/andrognito/pinlockview/PinLockView;->isIndicatorDotsAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView$2;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v0}, Lcom/andrognito/pinlockview/PinLockView;->access$100(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/IndicatorDots;

    move-result-object v0

    iget-object v1, p0, Lcom/andrognito/pinlockview/PinLockView$2;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v1}, Lcom/andrognito/pinlockview/PinLockView;->access$000(Lcom/andrognito/pinlockview/PinLockView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/andrognito/pinlockview/IndicatorDots;->updateDot(I)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView$2;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v0}, Lcom/andrognito/pinlockview/PinLockView;->access$000(Lcom/andrognito/pinlockview/PinLockView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView$2;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v0}, Lcom/andrognito/pinlockview/PinLockView;->access$200(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/PinLockAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/andrognito/pinlockview/PinLockView$2;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v1}, Lcom/andrognito/pinlockview/PinLockView;->access$000(Lcom/andrognito/pinlockview/PinLockView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/andrognito/pinlockview/PinLockAdapter;->setPinLength(I)V

    .line 96
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView$2;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v0}, Lcom/andrognito/pinlockview/PinLockView;->access$200(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/PinLockAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/andrognito/pinlockview/PinLockView$2;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v1}, Lcom/andrognito/pinlockview/PinLockView;->access$200(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/PinLockAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/andrognito/pinlockview/PinLockAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/andrognito/pinlockview/PinLockAdapter;->notifyItemChanged(I)V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView$2;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v0}, Lcom/andrognito/pinlockview/PinLockView;->access$300(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/PinLockListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 100
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView$2;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v0}, Lcom/andrognito/pinlockview/PinLockView;->access$000(Lcom/andrognito/pinlockview/PinLockView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView$2;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v0}, Lcom/andrognito/pinlockview/PinLockView;->access$300(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/PinLockListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/andrognito/pinlockview/PinLockListener;->onEmpty()V

    .line 102
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView$2;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {p0}, Lcom/andrognito/pinlockview/PinLockView;->access$500(Lcom/andrognito/pinlockview/PinLockView;)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView$2;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v0}, Lcom/andrognito/pinlockview/PinLockView;->access$300(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/PinLockListener;

    move-result-object v0

    iget-object v1, p0, Lcom/andrognito/pinlockview/PinLockView$2;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v1}, Lcom/andrognito/pinlockview/PinLockView;->access$000(Lcom/andrognito/pinlockview/PinLockView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView$2;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {p0}, Lcom/andrognito/pinlockview/PinLockView;->access$000(Lcom/andrognito/pinlockview/PinLockView;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/andrognito/pinlockview/PinLockListener;->onPinChange(ILjava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView$2;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v0}, Lcom/andrognito/pinlockview/PinLockView;->access$300(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/PinLockListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 109
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView$2;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {p0}, Lcom/andrognito/pinlockview/PinLockView;->access$300(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/PinLockListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/andrognito/pinlockview/PinLockListener;->onEmpty()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onDeleteLongClicked()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView$2;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-virtual {v0}, Lcom/andrognito/pinlockview/PinLockView;->resetPinLockView()V

    .line 117
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView$2;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v0}, Lcom/andrognito/pinlockview/PinLockView;->access$300(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/PinLockListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView$2;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {p0}, Lcom/andrognito/pinlockview/PinLockView;->access$300(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/PinLockListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/andrognito/pinlockview/PinLockListener;->onEmpty()V

    :cond_0
    return-void
.end method
