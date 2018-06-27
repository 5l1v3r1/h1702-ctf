.class public Lcom/hackerone/mobile/challenge4/MazeView;
.super Landroid/view/View;
.source "MazeView.java"


# instance fields
.field private gameManager:Lcom/hackerone/mobile/challenge4/GameManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hackerone/mobile/challenge4/GameManager;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object p2, p0, Lcom/hackerone/mobile/challenge4/MazeView;->gameManager:Lcom/hackerone/mobile/challenge4/GameManager;

    .line 13
    invoke-virtual {p2, p0}, Lcom/hackerone/mobile/challenge4/GameManager;->setView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getGameManager()Lcom/hackerone/mobile/challenge4/GameManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/MazeView;->gameManager:Lcom/hackerone/mobile/challenge4/GameManager;

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/MazeView;->gameManager:Lcom/hackerone/mobile/challenge4/GameManager;

    invoke-virtual {p0, p1}, Lcom/hackerone/mobile/challenge4/GameManager;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 23
    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/MazeView;->gameManager:Lcom/hackerone/mobile/challenge4/GameManager;

    invoke-virtual {p0, p1, p2}, Lcom/hackerone/mobile/challenge4/GameManager;->setScreenSize(II)V

    return-void
.end method
