.class Lcom/hackerone/mobile/challenge4/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hackerone/mobile/challenge4/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hackerone/mobile/challenge4/MainActivity;


# direct methods
.method constructor <init>(Lcom/hackerone/mobile/challenge4/MainActivity;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/hackerone/mobile/challenge4/MainActivity$1;->this$0:Lcom/hackerone/mobile/challenge4/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 35
    invoke-static {p1, p2}, Lcom/hackerone/mobile/challenge4/MazeMover;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
