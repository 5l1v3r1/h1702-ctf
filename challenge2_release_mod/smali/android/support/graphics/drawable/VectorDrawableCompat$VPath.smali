.class Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VPath"
.end annotation


# instance fields
.field mChangingConfigurations:I

.field protected mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

.field mPathName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1543
    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;)V
    .locals 1

    .line 1573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1543
    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .line 1574
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    .line 1575
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mChangingConfigurations:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mChangingConfigurations:I

    .line 1576
    iget-object p1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    invoke-static {p1}, Landroid/support/graphics/drawable/PathParser;->deepCopyNodes([Landroid/support/graphics/drawable/PathParser$PathDataNode;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    move-result-object p1

    iput-object p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    return-void
.end method


# virtual methods
.method public NodesToString([Landroid/support/graphics/drawable/PathParser$PathDataNode;)Ljava/lang/String;
    .locals 5

    const-string p0, " "

    const/4 v0, 0x0

    move-object v1, p0

    move p0, v0

    .line 1563
    :goto_0
    array-length v2, p1

    if-ge p0, v2, :cond_1

    .line 1564
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, p0

    iget-char v1, v1, Landroid/support/graphics/drawable/PathParser$PathDataNode;->type:C

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1565
    aget-object v2, p1, p0

    iget-object v2, v2, Landroid/support/graphics/drawable/PathParser$PathDataNode;->params:[F

    move-object v3, v1

    move v1, v0

    .line 1566
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 1567
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v2, v1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    move-object v1, v3

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    return-void
.end method

.method public canApplyTheme()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPathData()[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .locals 0

    .line 1604
    iget-object p0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    return-object p0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 0

    .line 1587
    iget-object p0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    return-object p0
.end method

.method public isClipPath()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public printVPath(I)V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 1554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "VectorDrawableCompat"

    .line 1556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "current path is :"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " pathData is "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .line 1557
    invoke-virtual {p0, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->NodesToString([Landroid/support/graphics/drawable/PathParser$PathDataNode;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1556
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPathData([Landroid/support/graphics/drawable/PathParser$PathDataNode;)V
    .locals 1

    .line 1609
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    invoke-static {v0, p1}, Landroid/support/graphics/drawable/PathParser;->canMorph([Landroid/support/graphics/drawable/PathParser$PathDataNode;[Landroid/support/graphics/drawable/PathParser$PathDataNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1611
    invoke-static {p1}, Landroid/support/graphics/drawable/PathParser;->deepCopyNodes([Landroid/support/graphics/drawable/PathParser$PathDataNode;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    move-result-object p1

    iput-object p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    goto :goto_0

    .line 1613
    :cond_0
    iget-object p0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    invoke-static {p0, p1}, Landroid/support/graphics/drawable/PathParser;->updateNodes([Landroid/support/graphics/drawable/PathParser$PathDataNode;[Landroid/support/graphics/drawable/PathParser$PathDataNode;)V

    :goto_0
    return-void
.end method

.method public toPath(Landroid/graphics/Path;)V
    .locals 1

    .line 1580
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 1581
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    if-eqz v0, :cond_0

    .line 1582
    iget-object p0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    invoke-static {p0, p1}, Landroid/support/graphics/drawable/PathParser$PathDataNode;->nodesToPath([Landroid/support/graphics/drawable/PathParser$PathDataNode;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method
