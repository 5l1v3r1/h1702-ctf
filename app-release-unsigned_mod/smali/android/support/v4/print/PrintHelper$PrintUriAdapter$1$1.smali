.class Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1$1;
.super Ljava/lang/Object;
.source "PrintHelper.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;)V
    .locals 0

    .line 424
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1$1;->this$2:Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 427
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1$1;->this$2:Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;

    iget-object v0, v0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroid/support/v4/print/PrintHelper$PrintUriAdapter;

    invoke-static {v0}, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->access$100(Landroid/support/v4/print/PrintHelper$PrintUriAdapter;)V

    .line 428
    iget-object p0, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1$1;->this$2:Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->cancel(Z)Z

    return-void
.end method
