.class public Lcom/hackerone/mobile/challenge4/GameManager;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GameManager.java"


# static fields
.field private static final LEVEL_SIZE:I = 0x5

.field public static levelsCompleted:I

.field public static view:Landroid/view/View;


# instance fields
.field private broadcastAnnouncer:Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;

.field private drawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hackerone/mobile/challenge4/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private exit:Lcom/hackerone/mobile/challenge4/Exit;

.field private loader:Lcom/hackerone/mobile/challenge4/StateLoader;

.field private maze:Lcom/hackerone/mobile/challenge4/Maze;

.field private player:Lcom/hackerone/mobile/challenge4/Player;

.field private rect:Landroid/graphics/Rect;

.field private screenSize:I

.field private seed:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 46
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hackerone/mobile/challenge4/GameManager;->drawables:Ljava/util/List;

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/hackerone/mobile/challenge4/GameManager;->rect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 47
    sput v0, Lcom/hackerone/mobile/challenge4/GameManager;->levelsCompleted:I

    .line 49
    new-instance v0, Lcom/hackerone/mobile/challenge4/StateLoader;

    const-string v1, "game.state"

    invoke-direct {v0, v1}, Lcom/hackerone/mobile/challenge4/StateLoader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hackerone/mobile/challenge4/GameManager;->loader:Lcom/hackerone/mobile/challenge4/StateLoader;

    .line 50
    new-instance v0, Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;

    const-string v1, "MazeGame"

    const-string v2, "maze_game_win"

    const-string v3, "http://localhost"

    invoke-direct {v0, v1, v2, v3}, Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hackerone/mobile/challenge4/GameManager;->broadcastAnnouncer:Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;

    return-void
.end method

.method private create(J)V
    .locals 2

    .line 54
    sget v0, Lcom/hackerone/mobile/challenge4/GameManager;->levelsCompleted:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x5

    .line 56
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 58
    iget-object v1, p0, Lcom/hackerone/mobile/challenge4/GameManager;->drawables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 59
    new-instance v1, Lcom/hackerone/mobile/challenge4/Maze;

    invoke-direct {v1, v0, p1, p2}, Lcom/hackerone/mobile/challenge4/Maze;-><init>(IJ)V

    iput-object v1, p0, Lcom/hackerone/mobile/challenge4/GameManager;->maze:Lcom/hackerone/mobile/challenge4/Maze;

    .line 60
    iget-object p1, p0, Lcom/hackerone/mobile/challenge4/GameManager;->drawables:Ljava/util/List;

    iget-object p2, p0, Lcom/hackerone/mobile/challenge4/GameManager;->maze:Lcom/hackerone/mobile/challenge4/Maze;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance p1, Lcom/hackerone/mobile/challenge4/Exit;

    iget-object p2, p0, Lcom/hackerone/mobile/challenge4/GameManager;->maze:Lcom/hackerone/mobile/challenge4/Maze;

    invoke-virtual {p2}, Lcom/hackerone/mobile/challenge4/Maze;->getEnd()Landroid/graphics/Point;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/hackerone/mobile/challenge4/Exit;-><init>(ILandroid/graphics/Point;)V

    iput-object p1, p0, Lcom/hackerone/mobile/challenge4/GameManager;->exit:Lcom/hackerone/mobile/challenge4/Exit;

    .line 62
    iget-object p1, p0, Lcom/hackerone/mobile/challenge4/GameManager;->drawables:Ljava/util/List;

    iget-object p2, p0, Lcom/hackerone/mobile/challenge4/GameManager;->exit:Lcom/hackerone/mobile/challenge4/Exit;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance p1, Lcom/hackerone/mobile/challenge4/Player;

    iget-object p2, p0, Lcom/hackerone/mobile/challenge4/GameManager;->maze:Lcom/hackerone/mobile/challenge4/Maze;

    invoke-virtual {p2}, Lcom/hackerone/mobile/challenge4/Maze;->getStart()Landroid/graphics/Point;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Lcom/hackerone/mobile/challenge4/Player;-><init>(Landroid/graphics/Point;I)V

    iput-object p1, p0, Lcom/hackerone/mobile/challenge4/GameManager;->player:Lcom/hackerone/mobile/challenge4/Player;

    .line 64
    iget-object p1, p0, Lcom/hackerone/mobile/challenge4/GameManager;->drawables:Ljava/util/List;

    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/GameManager;->player:Lcom/hackerone/mobile/challenge4/Player;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/hackerone/mobile/challenge4/GameManager;->drawables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hackerone/mobile/challenge4/Drawable;

    .line 127
    iget-object v2, p0, Lcom/hackerone/mobile/challenge4/GameManager;->rect:Landroid/graphics/Rect;

    invoke-interface {v1, p1, v2}, Lcom/hackerone/mobile/challenge4/Drawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getExit()Lcom/hackerone/mobile/challenge4/Exit;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/GameManager;->exit:Lcom/hackerone/mobile/challenge4/Exit;

    return-object p0
.end method

.method public getMaze()Lcom/hackerone/mobile/challenge4/Maze;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/GameManager;->maze:Lcom/hackerone/mobile/challenge4/Maze;

    return-object p0
.end method

.method public getNewPosition(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/hackerone/mobile/challenge4/GameManager;->maze:Lcom/hackerone/mobile/challenge4/Maze;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/hackerone/mobile/challenge4/Maze;->canPlayerGoTo(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 110
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 111
    iget v0, p2, Landroid/graphics/Point;->x:I

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/hackerone/mobile/challenge4/GameManager;->maze:Lcom/hackerone/mobile/challenge4/Maze;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hackerone/mobile/challenge4/Maze;->canPlayerGoTo(II)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hackerone/mobile/challenge4/GameManager;->maze:Lcom/hackerone/mobile/challenge4/Maze;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/hackerone/mobile/challenge4/Maze;->canPlayerGoTo(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    iget v0, p2, Landroid/graphics/Point;->y:I

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/hackerone/mobile/challenge4/GameManager;->maze:Lcom/hackerone/mobile/challenge4/Maze;

    iget v1, p1, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/hackerone/mobile/challenge4/Maze;->canPlayerGoTo(II)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hackerone/mobile/challenge4/GameManager;->maze:Lcom/hackerone/mobile/challenge4/Maze;

    iget v1, p1, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/hackerone/mobile/challenge4/Maze;->canPlayerGoTo(II)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public getPlayer()Lcom/hackerone/mobile/challenge4/Player;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/GameManager;->player:Lcom/hackerone/mobile/challenge4/Player;

    return-object p0
.end method

.method public movePlayer(Landroid/graphics/Point;)Z
    .locals 8

    .line 87
    iget-object v0, p0, Lcom/hackerone/mobile/challenge4/GameManager;->player:Lcom/hackerone/mobile/challenge4/Player;

    invoke-virtual {v0}, Lcom/hackerone/mobile/challenge4/Player;->getPoint()Landroid/graphics/Point;

    move-result-object v0

    .line 88
    invoke-virtual {p0, v0, p1}, Lcom/hackerone/mobile/challenge4/GameManager;->getNewPosition(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    .line 90
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->x:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 92
    :goto_1
    iget-object v1, p0, Lcom/hackerone/mobile/challenge4/GameManager;->player:Lcom/hackerone/mobile/challenge4/Player;

    invoke-virtual {v1, p1}, Lcom/hackerone/mobile/challenge4/Player;->goTo(Landroid/graphics/Point;)V

    .line 94
    iget-object p1, p0, Lcom/hackerone/mobile/challenge4/GameManager;->exit:Lcom/hackerone/mobile/challenge4/Exit;

    invoke-virtual {p1}, Lcom/hackerone/mobile/challenge4/Exit;->getPoint()Landroid/graphics/Point;

    move-result-object p1

    iget-object v1, p0, Lcom/hackerone/mobile/challenge4/GameManager;->player:Lcom/hackerone/mobile/challenge4/Player;

    invoke-virtual {v1}, Lcom/hackerone/mobile/challenge4/Player;->getPoint()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 95
    sget p1, Lcom/hackerone/mobile/challenge4/GameManager;->levelsCompleted:I

    add-int/2addr p1, v3

    sput p1, Lcom/hackerone/mobile/challenge4/GameManager;->levelsCompleted:I

    .line 96
    iget-wide v1, p0, Lcom/hackerone/mobile/challenge4/GameManager;->seed:J

    invoke-direct {p0, v1, v2}, Lcom/hackerone/mobile/challenge4/GameManager;->create(J)V

    .line 98
    iget-object p1, p0, Lcom/hackerone/mobile/challenge4/GameManager;->broadcastAnnouncer:Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;

    sget-object v1, Lcom/hackerone/mobile/challenge4/GameManager;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, p0}, Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;->save(Landroid/content/Context;Ljava/lang/Object;)V

    .line 100
    new-instance p1, Lcom/hackerone/mobile/challenge4/GameState;

    iget-object v1, p0, Lcom/hackerone/mobile/challenge4/GameManager;->player:Lcom/hackerone/mobile/challenge4/Player;

    invoke-virtual {v1}, Lcom/hackerone/mobile/challenge4/Player;->getX()I

    move-result v3

    iget-object v1, p0, Lcom/hackerone/mobile/challenge4/GameManager;->player:Lcom/hackerone/mobile/challenge4/Player;

    invoke-virtual {v1}, Lcom/hackerone/mobile/challenge4/Player;->getY()I

    move-result v4

    iget-wide v5, p0, Lcom/hackerone/mobile/challenge4/GameManager;->seed:J

    sget v7, Lcom/hackerone/mobile/challenge4/GameManager;->levelsCompleted:I

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/hackerone/mobile/challenge4/GameState;-><init>(IIJI)V

    .line 101
    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/GameManager;->loader:Lcom/hackerone/mobile/challenge4/StateLoader;

    sget-object v1, Lcom/hackerone/mobile/challenge4/GameManager;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/hackerone/mobile/challenge4/StateLoader;->save(Landroid/content/Context;Ljava/lang/Object;)V

    .line 103
    :cond_2
    sget-object p0, Lcom/hackerone/mobile/challenge4/GameManager;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .line 69
    new-instance v0, Landroid/graphics/Point;

    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 71
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 73
    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-le v1, v2, :cond_1

    .line 74
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_0

    move v4, v5

    :cond_0
    iput v4, v0, Landroid/graphics/Point;->x:I

    .line 75
    iput v3, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 77
    :cond_1
    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 78
    iget v1, v0, Landroid/graphics/Point;->y:I

    if-lez v1, :cond_2

    move v4, v5

    :cond_2
    iput v4, v0, Landroid/graphics/Point;->y:I

    .line 81
    :goto_0
    invoke-virtual {p0, v0}, Lcom/hackerone/mobile/challenge4/GameManager;->movePlayer(Landroid/graphics/Point;)Z

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public setScreenSize(II)V
    .locals 4

    .line 165
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/hackerone/mobile/challenge4/GameManager;->screenSize:I

    .line 166
    iget-object v0, p0, Lcom/hackerone/mobile/challenge4/GameManager;->rect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/hackerone/mobile/challenge4/GameManager;->screenSize:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/hackerone/mobile/challenge4/GameManager;->screenSize:I

    sub-int v2, p2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/hackerone/mobile/challenge4/GameManager;->screenSize:I

    add-int/2addr p1, v3

    div-int/lit8 p1, p1, 0x2

    iget p0, p0, Lcom/hackerone/mobile/challenge4/GameManager;->screenSize:I

    sub-int/2addr p2, p0

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 8

    .line 132
    sput-object p1, Lcom/hackerone/mobile/challenge4/GameManager;->view:Landroid/view/View;

    const-string v0, "You won a level!"

    .line 137
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hackerone/mobile/challenge4/GameManager;->broadcastAnnouncer:Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;

    invoke-virtual {v2}, Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;->getStringRef()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 138
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 139
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/hackerone/mobile/challenge4/GameManager;->broadcastAnnouncer:Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hackerone/mobile/challenge4/GameManager;->broadcastAnnouncer:Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;

    invoke-virtual {v2}, Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;->getStringRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;->setStringRef(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/hackerone/mobile/challenge4/GameManager;->broadcastAnnouncer:Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;->load(Landroid/content/Context;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/hackerone/mobile/challenge4/GameManager;->loader:Lcom/hackerone/mobile/challenge4/StateLoader;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hackerone/mobile/challenge4/StateLoader;->load(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hackerone/mobile/challenge4/GameState;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 150
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/hackerone/mobile/challenge4/GameManager;->create(J)V

    .line 152
    new-instance v0, Lcom/hackerone/mobile/challenge4/GameState;

    iget-object v1, p0, Lcom/hackerone/mobile/challenge4/GameManager;->player:Lcom/hackerone/mobile/challenge4/Player;

    invoke-virtual {v1}, Lcom/hackerone/mobile/challenge4/Player;->getX()I

    move-result v3

    iget-object v1, p0, Lcom/hackerone/mobile/challenge4/GameManager;->player:Lcom/hackerone/mobile/challenge4/Player;

    invoke-virtual {v1}, Lcom/hackerone/mobile/challenge4/Player;->getY()I

    move-result v4

    iget-wide v5, p0, Lcom/hackerone/mobile/challenge4/GameManager;->seed:J

    sget v7, Lcom/hackerone/mobile/challenge4/GameManager;->levelsCompleted:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/hackerone/mobile/challenge4/GameState;-><init>(IIJI)V

    .line 153
    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/GameManager;->loader:Lcom/hackerone/mobile/challenge4/StateLoader;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/hackerone/mobile/challenge4/StateLoader;->save(Landroid/content/Context;Ljava/lang/Object;)V

    return-void

    .line 157
    :cond_0
    iget p1, v0, Lcom/hackerone/mobile/challenge4/GameState;->levelsCompleted:I

    sput p1, Lcom/hackerone/mobile/challenge4/GameManager;->levelsCompleted:I

    .line 158
    iget-wide v1, v0, Lcom/hackerone/mobile/challenge4/GameState;->seed:J

    iput-wide v1, p0, Lcom/hackerone/mobile/challenge4/GameManager;->seed:J

    .line 159
    iget-wide v1, p0, Lcom/hackerone/mobile/challenge4/GameManager;->seed:J

    invoke-direct {p0, v1, v2}, Lcom/hackerone/mobile/challenge4/GameManager;->create(J)V

    .line 161
    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/GameManager;->player:Lcom/hackerone/mobile/challenge4/Player;

    new-instance p1, Landroid/graphics/Point;

    iget v1, v0, Lcom/hackerone/mobile/challenge4/GameState;->playerX:I

    iget v0, v0, Lcom/hackerone/mobile/challenge4/GameState;->playerY:I

    invoke-direct {p1, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/hackerone/mobile/challenge4/Player;->point:Landroid/graphics/Point;

    return-void
.end method
