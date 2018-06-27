.class public Lcom/hackerone/mobile/challenge4/MazeMover;
.super Ljava/lang/Object;
.source "MazeMover.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 19
    invoke-static {}, Lcom/hackerone/mobile/challenge4/MainActivity;->getMazeView()Lcom/hackerone/mobile/challenge4/MazeView;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "MazeMover"

    const-string p1, "Not currently trying to solve the maze"

    .line 20
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 24
    :cond_0
    invoke-static {}, Lcom/hackerone/mobile/challenge4/MainActivity;->getMazeView()Lcom/hackerone/mobile/challenge4/MazeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hackerone/mobile/challenge4/MazeView;->getGameManager()Lcom/hackerone/mobile/challenge4/GameManager;

    move-result-object v0

    .line 26
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "get_maze"

    .line 28
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "walls"

    .line 30
    invoke-virtual {v0}, Lcom/hackerone/mobile/challenge4/GameManager;->getMaze()Lcom/hackerone/mobile/challenge4/Maze;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hackerone/mobile/challenge4/Maze;->getWalls()[[Z

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-virtual {v0}, Lcom/hackerone/mobile/challenge4/GameManager;->getPlayer()Lcom/hackerone/mobile/challenge4/Player;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hackerone/mobile/challenge4/Player;->getX()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {v0}, Lcom/hackerone/mobile/challenge4/GameManager;->getPlayer()Lcom/hackerone/mobile/challenge4/Player;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hackerone/mobile/challenge4/Player;->getY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {v0}, Lcom/hackerone/mobile/challenge4/GameManager;->getExit()Lcom/hackerone/mobile/challenge4/Exit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hackerone/mobile/challenge4/Exit;->getX()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {v0}, Lcom/hackerone/mobile/challenge4/GameManager;->getExit()Lcom/hackerone/mobile/challenge4/Exit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hackerone/mobile/challenge4/Exit;->getY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "positions"

    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "com.hackerone.mobile.challenge4.broadcast.MAZE_MOVER"

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :cond_1
    const-string v2, "move"

    .line 42
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p1, "move"

    .line 43
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getChar(Ljava/lang/String;)C

    move-result p1

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v1, v3

    goto :goto_0

    :pswitch_1
    move v1, v3

    move v3, v2

    goto :goto_0

    :pswitch_2
    move v1, v2

    goto :goto_0

    :pswitch_3
    move v4, v3

    move v3, v1

    move v1, v4

    .line 60
    :goto_0
    :pswitch_4
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 62
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 63
    invoke-virtual {v0, p1}, Lcom/hackerone/mobile/challenge4/GameManager;->movePlayer(Landroid/graphics/Point;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "move_result"

    const-string v0, "good"

    .line 64
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string p1, "move_result"

    const-string v0, "bad"

    .line 66
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const-string p1, "com.hackerone.mobile.challenge4.broadcast.MAZE_MOVER"

    .line 68
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :cond_3
    const-string v0, "cereal"

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "cereal"

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/hackerone/mobile/challenge4/GameState;

    .line 73
    invoke-virtual {p1, p0}, Lcom/hackerone/mobile/challenge4/GameState;->initialize(Landroid/content/Context;)V

    :cond_4
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
