.class Lcom/hackerone/mobile/challenge4/MenuActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hackerone/mobile/challenge4/MenuActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hackerone/mobile/challenge4/MenuActivity;


# direct methods
.method constructor <init>(Lcom/hackerone/mobile/challenge4/MenuActivity;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/hackerone/mobile/challenge4/MenuActivity$1;->this$0:Lcom/hackerone/mobile/challenge4/MenuActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p0, "start_game"

    .line 37
    invoke-virtual {p2, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 38
    new-instance p0, Landroid/content/Intent;

    const-class p2, Lcom/hackerone/mobile/challenge4/MainActivity;

    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
