.class public Lcom/hackerone/mobile/challenge4/Player;
.super Lcom/hackerone/mobile/challenge4/Dot;
.source "Player.java"


# direct methods
.method public constructor <init>(Landroid/graphics/Point;I)V
    .locals 1

    .line 12
    invoke-static {}, Lcom/hackerone/mobile/challenge4/Player;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/hackerone/mobile/challenge4/Dot;-><init>(ILandroid/graphics/Point;Landroid/graphics/Paint;)V

    return-void
.end method

.method private static getPaint()Landroid/graphics/Paint;
    .locals 2

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v1, -0x10000

    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method


# virtual methods
.method public getX()I
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/Player;->point:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    return p0
.end method

.method public getY()I
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/Player;->point:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method public goTo(Landroid/graphics/Point;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/hackerone/mobile/challenge4/Player;->point:Landroid/graphics/Point;

    return-void
.end method
