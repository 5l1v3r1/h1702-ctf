.class Landroid/support/design/chip/ChipGroup$SpacingDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ChipGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/chip/ChipGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpacingDrawable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/chip/ChipGroup;


# direct methods
.method private constructor <init>(Landroid/support/design/chip/ChipGroup;)V
    .locals 0

    .line 433
    iput-object p1, p0, Landroid/support/design/chip/ChipGroup$SpacingDrawable;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/chip/ChipGroup;Landroid/support/design/chip/ChipGroup$1;)V
    .locals 0

    .line 433
    invoke-direct {p0, p1}, Landroid/support/design/chip/ChipGroup$SpacingDrawable;-><init>(Landroid/support/design/chip/ChipGroup;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 442
    iget-object p0, p0, Landroid/support/design/chip/ChipGroup$SpacingDrawable;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {p0}, Landroid/support/design/chip/ChipGroup;->access$500(Landroid/support/design/chip/ChipGroup;)I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 437
    iget-object p0, p0, Landroid/support/design/chip/ChipGroup$SpacingDrawable;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {p0}, Landroid/support/design/chip/ChipGroup;->access$400(Landroid/support/design/chip/ChipGroup;)I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
