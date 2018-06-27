.class Landroid/support/design/internal/FlexboxHelper$FlexLinesResult;
.super Ljava/lang/Object;
.source "FlexboxHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/FlexboxHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlexLinesResult"
.end annotation


# instance fields
.field childState:I

.field flexLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/design/internal/FlexLine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1170
    iput-object v0, p0, Landroid/support/design/internal/FlexboxHelper$FlexLinesResult;->flexLines:Ljava/util/List;

    const/4 v0, 0x0

    .line 1171
    iput v0, p0, Landroid/support/design/internal/FlexboxHelper$FlexLinesResult;->childState:I

    return-void
.end method
