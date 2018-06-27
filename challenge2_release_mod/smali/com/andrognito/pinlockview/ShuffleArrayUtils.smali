.class public Lcom/andrognito/pinlockview/ShuffleArrayUtils;
.super Ljava/lang/Object;
.source "ShuffleArrayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static shuffle([I)[I
    .locals 4

    .line 17
    array-length v0, p0

    .line 18
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 19
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sub-int v3, v0, v2

    .line 22
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 23
    invoke-static {p0, v2, v3}, Lcom/andrognito/pinlockview/ShuffleArrayUtils;->swap([III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static swap([III)V
    .locals 2

    .line 29
    aget v0, p0, p1

    .line 30
    aget v1, p0, p2

    aput v1, p0, p1

    .line 31
    aput v0, p0, p2

    return-void
.end method
