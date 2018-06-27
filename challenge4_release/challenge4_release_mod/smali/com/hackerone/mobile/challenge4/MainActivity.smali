.class public Lcom/hackerone/mobile/challenge4/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field public static context:Landroid/content/Context;

.field private static view:Lcom/hackerone/mobile/challenge4/MazeView;


# instance fields
.field private gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static getMazeView()Lcom/hackerone/mobile/challenge4/MazeView;
    .locals 1

    .line 50
    sget-object v0, Lcom/hackerone/mobile/challenge4/MainActivity;->view:Lcom/hackerone/mobile/challenge4/MazeView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 21
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const-class p1, Lcom/hackerone/mobile/challenge4/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Title"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance p1, Lcom/hackerone/mobile/challenge4/GameManager;

    invoke-direct {p1}, Lcom/hackerone/mobile/challenge4/GameManager;-><init>()V

    .line 25
    new-instance v0, Lcom/hackerone/mobile/challenge4/MazeView;

    invoke-direct {v0, p0, p1}, Lcom/hackerone/mobile/challenge4/MazeView;-><init>(Landroid/content/Context;Lcom/hackerone/mobile/challenge4/GameManager;)V

    sput-object v0, Lcom/hackerone/mobile/challenge4/MainActivity;->view:Lcom/hackerone/mobile/challenge4/MazeView;

    .line 27
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0, p1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/hackerone/mobile/challenge4/MainActivity;->gestureDetector:Landroid/view/GestureDetector;

    .line 28
    sget-object p1, Lcom/hackerone/mobile/challenge4/MainActivity;->view:Lcom/hackerone/mobile/challenge4/MazeView;

    invoke-virtual {p0, p1}, Lcom/hackerone/mobile/challenge4/MainActivity;->setContentView(Landroid/view/View;)V

    .line 30
    invoke-virtual {p0}, Lcom/hackerone/mobile/challenge4/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/hackerone/mobile/challenge4/MainActivity;->context:Landroid/content/Context;

    .line 32
    new-instance p1, Lcom/hackerone/mobile/challenge4/MainActivity$1;

    invoke-direct {p1, p0}, Lcom/hackerone/mobile/challenge4/MainActivity$1;-><init>(Lcom/hackerone/mobile/challenge4/MainActivity;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.hackerone.mobile.challenge4.broadcast.MAZE_MOVER"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/hackerone/mobile/challenge4/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    const-string p0, "Title"

    const-string p2, "Hello"

    .line 42
    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/MainActivity;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
