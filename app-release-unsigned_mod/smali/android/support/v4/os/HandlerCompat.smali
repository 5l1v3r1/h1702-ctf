.class public final Landroid/support/v4/os/HandlerCompat;
.super Ljava/lang/Object;
.source "HandlerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 1
    .param p0    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p0

    return p0

    .line 58
    :cond_0
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    .line 59
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 60
    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method
