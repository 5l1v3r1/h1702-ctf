.class Landroid/support/v4/hardware/display/DisplayManagerCompat$LegacyImpl;
.super Landroid/support/v4/hardware/display/DisplayManagerCompat;
.source "DisplayManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/hardware/display/DisplayManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegacyImpl"
.end annotation


# instance fields
.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Landroid/support/v4/hardware/display/DisplayManagerCompat;-><init>()V

    const-string v0, "window"

    .line 109
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Landroid/support/v4/hardware/display/DisplayManagerCompat$LegacyImpl;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public getDisplay(I)Landroid/view/Display;
    .locals 1

    .line 114
    iget-object p0, p0, Landroid/support/v4/hardware/display/DisplayManagerCompat$LegacyImpl;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplays()[Landroid/view/Display;
    .locals 2

    const/4 v0, 0x1

    .line 123
    new-array v0, v0, [Landroid/view/Display;

    iget-object p0, p0, Landroid/support/v4/hardware/display/DisplayManagerCompat$LegacyImpl;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public getDisplays(Ljava/lang/String;)[Landroid/view/Display;
    .locals 0

    if-nez p1, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/support/v4/hardware/display/DisplayManagerCompat$LegacyImpl;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Landroid/view/Display;

    :goto_0
    return-object p0
.end method
