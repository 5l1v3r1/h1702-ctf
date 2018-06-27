.class public Lcom/hackerone/mobile/challenge4/Exit;
.super Lcom/hackerone/mobile/challenge4/Dot;
.source "Exit.java"


# direct methods
.method public constructor <init>(ILandroid/graphics/Point;)V
    .locals 1

    .line 13
    invoke-static {}, Lcom/hackerone/mobile/challenge4/Exit;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/hackerone/mobile/challenge4/Dot;-><init>(ILandroid/graphics/Point;Landroid/graphics/Paint;)V

    return-void
.end method

.method private static getPaint()Landroid/graphics/Paint;
    .locals 2

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const v1, -0xff0100

    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method


# virtual methods
.method public getX()I
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/Exit;->point:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    return p0
.end method

.method public getY()I
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/Exit;->point:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    return p0
.end method
