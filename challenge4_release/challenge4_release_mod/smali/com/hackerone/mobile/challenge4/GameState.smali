.class public Lcom/hackerone/mobile/challenge4/GameState;
.super Ljava/lang/Object;
.source "GameState.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public cleanupTag:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field public levelsCompleted:I

.field public playerX:I

.field public playerY:I

.field public seed:J

.field public stateController:Lcom/hackerone/mobile/challenge4/StateController;


# direct methods
.method public constructor <init>(IIJI)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/hackerone/mobile/challenge4/GameState;->playerX:I

    .line 23
    iput p2, p0, Lcom/hackerone/mobile/challenge4/GameState;->playerY:I

    .line 24
    iput-wide p3, p0, Lcom/hackerone/mobile/challenge4/GameState;->seed:J

    .line 25
    iput p5, p0, Lcom/hackerone/mobile/challenge4/GameState;->levelsCompleted:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/hackerone/mobile/challenge4/StateController;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/hackerone/mobile/challenge4/GameState;->cleanupTag:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/hackerone/mobile/challenge4/GameState;->stateController:Lcom/hackerone/mobile/challenge4/StateController;

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 2

    const-string v0, "GameState"

    const-string v1, "Called finalize on GameState"

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget v0, Lcom/hackerone/mobile/challenge4/GameManager;->levelsCompleted:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/hackerone/mobile/challenge4/GameState;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/hackerone/mobile/challenge4/GameState;->stateController:Lcom/hackerone/mobile/challenge4/StateController;

    iget-object v1, p0, Lcom/hackerone/mobile/challenge4/GameState;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/hackerone/mobile/challenge4/StateController;->save(Landroid/content/Context;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 2

    .line 34
    iput-object p1, p0, Lcom/hackerone/mobile/challenge4/GameState;->context:Landroid/content/Context;

    .line 36
    iget-object v0, p0, Lcom/hackerone/mobile/challenge4/GameState;->stateController:Lcom/hackerone/mobile/challenge4/StateController;

    invoke-virtual {v0, p1}, Lcom/hackerone/mobile/challenge4/StateController;->load(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hackerone/mobile/challenge4/GameState;

    if-nez p1, :cond_0

    return-void

    .line 41
    :cond_0
    iget v0, p1, Lcom/hackerone/mobile/challenge4/GameState;->playerX:I

    iput v0, p0, Lcom/hackerone/mobile/challenge4/GameState;->playerX:I

    .line 42
    iget v0, p1, Lcom/hackerone/mobile/challenge4/GameState;->playerY:I

    iput v0, p0, Lcom/hackerone/mobile/challenge4/GameState;->playerY:I

    .line 43
    iget-wide v0, p1, Lcom/hackerone/mobile/challenge4/GameState;->seed:J

    iput-wide v0, p0, Lcom/hackerone/mobile/challenge4/GameState;->seed:J

    .line 44
    iget p1, p1, Lcom/hackerone/mobile/challenge4/GameState;->levelsCompleted:I

    iput p1, p0, Lcom/hackerone/mobile/challenge4/GameState;->levelsCompleted:I

    return-void
.end method
