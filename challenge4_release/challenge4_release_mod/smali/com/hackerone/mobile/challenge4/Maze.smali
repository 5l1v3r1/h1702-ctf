.class public Lcom/hackerone/mobile/challenge4/Maze;
.super Ljava/lang/Object;
.source "Maze.java"

# interfaces
.implements Lcom/hackerone/mobile/challenge4/Drawable;


# instance fields
.field private final array:[[Z

.field private bestScore:I

.field private final end:Landroid/graphics/Point;

.field private final size:I

.field private start:Landroid/graphics/Point;

.field private wallPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/hackerone/mobile/challenge4/Maze;->bestScore:I

    .line 28
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hackerone/mobile/challenge4/Maze;->end:Landroid/graphics/Point;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/hackerone/mobile/challenge4/Maze;->wallPaint:Landroid/graphics/Paint;

    .line 32
    iget-object v0, p0, Lcom/hackerone/mobile/challenge4/Maze;->wallPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    iput p1, p0, Lcom/hackerone/mobile/challenge4/Maze;->size:I

    .line 34
    filled-new-array {p1, p1}, [I

    move-result-object p1

    const-class v0, Z

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Z

    iput-object p1, p0, Lcom/hackerone/mobile/challenge4/Maze;->array:[[Z

    .line 35
    invoke-direct {p0, p2, p3}, Lcom/hackerone/mobile/challenge4/Maze;->generateMaze(J)V

    return-void
.end method

.method private generateMaze(J)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 47
    :goto_0
    iget v2, p0, Lcom/hackerone/mobile/challenge4/Maze;->size:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 48
    :goto_1
    iget v4, p0, Lcom/hackerone/mobile/challenge4/Maze;->size:I

    if-ge v2, v4, :cond_1

    .line 49
    iget-object v4, p0, Lcom/hackerone/mobile/challenge4/Maze;->array:[[Z

    aget-object v4, v4, v1

    rem-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_0

    rem-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/hackerone/mobile/challenge4/Maze;->size:I

    sub-int/2addr v5, v3

    if-ge v1, v5, :cond_0

    iget v5, p0, Lcom/hackerone/mobile/challenge4/Maze;->size:I

    sub-int/2addr v5, v3

    if-ge v2, v5, :cond_0

    move v5, v3

    goto :goto_2

    :cond_0
    move v5, v0

    :goto_2
    aput-boolean v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p1, p2}, Ljava/util/Random;-><init>(J)V

    .line 54
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    .line 55
    iget-object p2, p0, Lcom/hackerone/mobile/challenge4/Maze;->end:Landroid/graphics/Point;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :goto_3
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p2

    if-lez p2, :cond_9

    .line 57
    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Point;

    .line 58
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 60
    iget v2, p2, Landroid/graphics/Point;->x:I

    const/4 v4, 0x2

    if-le v2, v4, :cond_3

    .line 61
    iget v2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v4

    iget v5, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2, v5}, Lcom/hackerone/mobile/challenge4/Maze;->isUsedCell(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 62
    new-instance v2, Landroid/graphics/Point;

    iget v5, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v4

    iget v6, p2, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_3
    iget v2, p2, Landroid/graphics/Point;->y:I

    if-le v2, v4, :cond_4

    .line 67
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v5, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v4

    invoke-direct {p0, v2, v5}, Lcom/hackerone/mobile/challenge4/Maze;->isUsedCell(II)Z

    move-result v2

    if-nez v2, :cond_4

    .line 68
    new-instance v2, Landroid/graphics/Point;

    iget v5, p2, Landroid/graphics/Point;->x:I

    iget v6, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v4

    invoke-direct {v2, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_4
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/hackerone/mobile/challenge4/Maze;->size:I

    sub-int/2addr v5, v4

    if-ge v2, v5, :cond_5

    .line 73
    iget v2, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v4

    iget v5, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2, v5}, Lcom/hackerone/mobile/challenge4/Maze;->isUsedCell(II)Z

    move-result v2

    if-nez v2, :cond_5

    .line 74
    new-instance v2, Landroid/graphics/Point;

    iget v5, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v4

    iget v6, p2, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_5
    iget v2, p2, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/hackerone/mobile/challenge4/Maze;->size:I

    sub-int/2addr v5, v4

    if-ge v2, v5, :cond_6

    .line 79
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v5, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v4

    invoke-direct {p0, v2, v5}, Lcom/hackerone/mobile/challenge4/Maze;->isUsedCell(II)Z

    move-result v2

    if-nez v2, :cond_6

    .line 80
    new-instance v2, Landroid/graphics/Point;

    iget v5, p2, Landroid/graphics/Point;->x:I

    iget v6, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v4

    invoke-direct {v2, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 84
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 85
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 86
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v5, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v5

    div-int/2addr v2, v4

    .line 87
    iget v5, v1, Landroid/graphics/Point;->y:I

    iget v6, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    div-int/2addr v5, v4

    .line 88
    iget-object v4, p0, Lcom/hackerone/mobile/challenge4/Maze;->array:[[Z

    iget v6, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v5

    aget-object v4, v4, v6

    iget p2, p2, Landroid/graphics/Point;->x:I

    add-int/2addr p2, v2

    aput-boolean v3, v4, p2

    .line 89
    invoke-virtual {p1, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 91
    :cond_7
    iget v1, p0, Lcom/hackerone/mobile/challenge4/Maze;->bestScore:I

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 92
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v1

    iput v1, p0, Lcom/hackerone/mobile/challenge4/Maze;->bestScore:I

    .line 93
    iput-object p2, p0, Lcom/hackerone/mobile/challenge4/Maze;->start:Landroid/graphics/Point;

    .line 95
    :cond_8
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_3

    :cond_9
    return-void
.end method

.method private isUsedCell(II)Z
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    .line 109
    iget v1, p0, Lcom/hackerone/mobile/challenge4/Maze;->size:I

    sub-int/2addr v1, v0

    if-ge p1, v1, :cond_3

    iget v1, p0, Lcom/hackerone/mobile/challenge4/Maze;->size:I

    sub-int/2addr v1, v0

    if-lt p2, v1, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/hackerone/mobile/challenge4/Maze;->array:[[Z

    add-int/lit8 v2, p2, -0x1

    aget-object v1, v1, v2

    aget-boolean v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/hackerone/mobile/challenge4/Maze;->array:[[Z

    aget-object v1, v1, p2

    add-int/lit8 v2, p1, -0x1

    aget-boolean v1, v1, v2

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/hackerone/mobile/challenge4/Maze;->array:[[Z

    add-int/lit8 v2, p2, 0x1

    aget-object v1, v1, v2

    aget-boolean v1, v1, p1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/Maze;->array:[[Z

    aget-object p0, p0, p2

    add-int/2addr p1, v0

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public canPlayerGoTo(II)Z
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/Maze;->array:[[Z

    aget-object p0, p0, p2

    aget-boolean p0, p0, p1

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 12

    .line 120
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/hackerone/mobile/challenge4/Maze;->size:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const-string v1, "MAZE"

    .line 121
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v2, v1

    .line 122
    :goto_0
    iget v3, p0, Lcom/hackerone/mobile/challenge4/Maze;->size:I

    if-ge v2, v3, :cond_2

    move v3, v1

    .line 123
    :goto_1
    iget v4, p0, Lcom/hackerone/mobile/challenge4/Maze;->size:I

    if-ge v3, v4, :cond_1

    .line 124
    iget-object v4, p0, Lcom/hackerone/mobile/challenge4/Maze;->array:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-nez v4, :cond_0

    int-to-float v4, v3

    mul-float/2addr v4, v0

    .line 125
    iget v5, p2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float v7, v4, v5

    int-to-float v4, v2

    mul-float/2addr v4, v0

    .line 126
    iget v5, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float v8, v4, v5

    add-float v9, v7, v0

    add-float v10, v8, v0

    .line 127
    iget-object v11, p0, Lcom/hackerone/mobile/challenge4/Maze;->wallPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getEnd()Landroid/graphics/Point;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/Maze;->end:Landroid/graphics/Point;

    return-object p0
.end method

.method public getSize()I
    .locals 0

    .line 22
    iget p0, p0, Lcom/hackerone/mobile/challenge4/Maze;->size:I

    return p0
.end method

.method public getStart()Landroid/graphics/Point;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/Maze;->start:Landroid/graphics/Point;

    return-object p0
.end method

.method public getWalls()[[Z
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/Maze;->array:[[Z

    return-object p0
.end method
