.class Lcom/andrognito/pinlockview/PinLockView$1;
.super Ljava/lang/Object;
.source "PinLockView.java"

# interfaces
.implements Lcom/andrognito/pinlockview/PinLockAdapter$OnNumberClickListener;


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

    .line 39
    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumberClicked(I)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v0}, Lcom/andrognito/pinlockview/PinLockView;->access$000(Lcom/andrognito/pinlockview/PinLockView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-virtual {v1}, Lcom/andrognito/pinlockview/PinLockView;->getPinLength()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 43
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    iget-object v1, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v1}, Lcom/andrognito/pinlockview/PinLockView;->access$000(Lcom/andrognito/pinlockview/PinLockView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/andrognito/pinlockview/PinLockView;->access$002(Lcom/andrognito/pinlockview/PinLockView;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    iget-object p1, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-virtual {p1}, Lcom/andrognito/pinlockview/PinLockView;->isIndicatorDotsAttached()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {p1}, Lcom/andrognito/pinlockview/PinLockView;->access$100(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/IndicatorDots;

    move-result-object p1

    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v0}, Lcom/andrognito/pinlockview/PinLockView;->access$000(Lcom/andrognito/pinlockview/PinLockView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/andrognito/pinlockview/IndicatorDots;->updateDot(I)V

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {p1}, Lcom/andrognito/pinlockview/PinLockView;->access$000(Lcom/andrognito/pinlockview/PinLockView;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 50
    iget-object p1, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {p1}, Lcom/andrognito/pinlockview/PinLockView;->access$200(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/PinLockAdapter;

    move-result-object p1

    iget-object v1, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v1}, Lcom/andrognito/pinlockview/PinLockView;->access$000(Lcom/andrognito/pinlockview/PinLockView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/andrognito/pinlockview/PinLockAdapter;->setPinLength(I)V

    .line 51
    iget-object p1, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {p1}, Lcom/andrognito/pinlockview/PinLockView;->access$200(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/PinLockAdapter;

    move-result-object p1

    iget-object v1, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v1}, Lcom/andrognito/pinlockview/PinLockView;->access$200(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/PinLockAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/andrognito/pinlockview/PinLockAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/andrognito/pinlockview/PinLockAdapter;->notifyItemChanged(I)V

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {p1}, Lcom/andrognito/pinlockview/PinLockView;->access$300(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/PinLockListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 55
    iget-object p1, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {p1}, Lcom/andrognito/pinlockview/PinLockView;->access$000(Lcom/andrognito/pinlockview/PinLockView;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v0}, Lcom/andrognito/pinlockview/PinLockView;->access$400(Lcom/andrognito/pinlockview/PinLockView;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 56
    iget-object p1, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {p1}, Lcom/andrognito/pinlockview/PinLockView;->access$300(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/PinLockListener;

    move-result-object p1

    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {p0}, Lcom/andrognito/pinlockview/PinLockView;->access$000(Lcom/andrognito/pinlockview/PinLockView;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/andrognito/pinlockview/PinLockListener;->onComplete(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {p1}, Lcom/andrognito/pinlockview/PinLockView;->access$300(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/PinLockListener;

    move-result-object p1

    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v0}, Lcom/andrognito/pinlockview/PinLockView;->access$000(Lcom/andrognito/pinlockview/PinLockView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {p0}, Lcom/andrognito/pinlockview/PinLockView;->access$000(Lcom/andrognito/pinlockview/PinLockView;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/andrognito/pinlockview/PinLockListener;->onPinChange(ILjava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-virtual {v0}, Lcom/andrognito/pinlockview/PinLockView;->isShowDeleteButton()Z

    move-result v0

    if-nez v0, :cond_5

    .line 63
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-virtual {v0}, Lcom/andrognito/pinlockview/PinLockView;->resetPinLockView()V

    .line 64
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    iget-object v1, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v1}, Lcom/andrognito/pinlockview/PinLockView;->access$000(Lcom/andrognito/pinlockview/PinLockView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/andrognito/pinlockview/PinLockView;->access$002(Lcom/andrognito/pinlockview/PinLockView;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    iget-object p1, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-virtual {p1}, Lcom/andrognito/pinlockview/PinLockView;->isIndicatorDotsAttached()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 67
    iget-object p1, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {p1}, Lcom/andrognito/pinlockview/PinLockView;->access$100(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/IndicatorDots;

    move-result-object p1

    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v0}, Lcom/andrognito/pinlockview/PinLockView;->access$000(Lcom/andrognito/pinlockview/PinLockView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/andrognito/pinlockview/IndicatorDots;->updateDot(I)V

    .line 70
    :cond_4
    iget-object p1, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {p1}, Lcom/andrognito/pinlockview/PinLockView;->access$300(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/PinLockListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 71
    iget-object p1, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {p1}, Lcom/andrognito/pinlockview/PinLockView;->access$300(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/PinLockListener;

    move-result-object p1

    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {v0}, Lcom/andrognito/pinlockview/PinLockView;->access$000(Lcom/andrognito/pinlockview/PinLockView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {p0}, Lcom/andrognito/pinlockview/PinLockView;->access$000(Lcom/andrognito/pinlockview/PinLockView;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/andrognito/pinlockview/PinLockListener;->onPinChange(ILjava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_5
    iget-object p1, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {p1}, Lcom/andrognito/pinlockview/PinLockView;->access$300(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/PinLockListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 76
    iget-object p1, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {p1}, Lcom/andrognito/pinlockview/PinLockView;->access$300(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/PinLockListener;

    move-result-object p1

    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView$1;->this$0:Lcom/andrognito/pinlockview/PinLockView;

    invoke-static {p0}, Lcom/andrognito/pinlockview/PinLockView;->access$000(Lcom/andrognito/pinlockview/PinLockView;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/andrognito/pinlockview/PinLockListener;->onComplete(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method
