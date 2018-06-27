.class public Lcom/hackerone/mobile/challenge4/Dot;
.super Ljava/lang/Object;
.source "Dot.java"

# interfaces
.implements Lcom/hackerone/mobile/challenge4/Drawable;


# instance fields
.field protected paint:Landroid/graphics/Paint;

.field protected point:Landroid/graphics/Point;

.field private size:I


# direct methods
.method public constructor <init>(ILandroid/graphics/Point;Landroid/graphics/Paint;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/hackerone/mobile/challenge4/Dot;->size:I

    .line 19
    iput-object p2, p0, Lcom/hackerone/mobile/challenge4/Dot;->point:Landroid/graphics/Point;

    .line 20
    iput-object p3, p0, Lcom/hackerone/mobile/challenge4/Dot;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9

    .line 28
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/hackerone/mobile/challenge4/Dot;->size:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 29
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/hackerone/mobile/challenge4/Dot;->point:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float v4, v1, v2

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/hackerone/mobile/challenge4/Dot;->point:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float v5, v1, v2

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/hackerone/mobile/challenge4/Dot;->point:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    add-float v6, v1, v0

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    iget-object v1, p0, Lcom/hackerone/mobile/challenge4/Dot;->point:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr p2, v1

    add-float v7, p2, v0

    iget-object v8, p0, Lcom/hackerone/mobile/challenge4/Dot;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getPoint()Landroid/graphics/Point;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/Dot;->point:Landroid/graphics/Point;

    return-object p0
.end method
