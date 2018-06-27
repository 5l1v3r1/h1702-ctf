.class Landroid/support/v4/hardware/display/DisplayManagerCompat$JellybeanMr1Impl;
.super Landroid/support/v4/hardware/display/DisplayManagerCompat;
.source "DisplayManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/hardware/display/DisplayManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JellybeanMr1Impl"
.end annotation


# instance fields
.field private final mDisplayManagerObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Landroid/support/v4/hardware/display/DisplayManagerCompat;-><init>()V

    .line 136
    invoke-static {p1}, Landroid/support/v4/hardware/display/DisplayManagerJellybeanMr1;->getDisplayManager(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/hardware/display/DisplayManagerCompat$JellybeanMr1Impl;->mDisplayManagerObj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getDisplay(I)Landroid/view/Display;
    .locals 0

    .line 141
    iget-object p0, p0, Landroid/support/v4/hardware/display/DisplayManagerCompat$JellybeanMr1Impl;->mDisplayManagerObj:Ljava/lang/Object;

    invoke-static {p0, p1}, Landroid/support/v4/hardware/display/DisplayManagerJellybeanMr1;->getDisplay(Ljava/lang/Object;I)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public getDisplays()[Landroid/view/Display;
    .locals 0

    .line 146
    iget-object p0, p0, Landroid/support/v4/hardware/display/DisplayManagerCompat$JellybeanMr1Impl;->mDisplayManagerObj:Ljava/lang/Object;

    invoke-static {p0}, Landroid/support/v4/hardware/display/DisplayManagerJellybeanMr1;->getDisplays(Ljava/lang/Object;)[Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public getDisplays(Ljava/lang/String;)[Landroid/view/Display;
    .locals 0

    .line 151
    iget-object p0, p0, Landroid/support/v4/hardware/display/DisplayManagerCompat$JellybeanMr1Impl;->mDisplayManagerObj:Ljava/lang/Object;

    invoke-static {p0, p1}, Landroid/support/v4/hardware/display/DisplayManagerJellybeanMr1;->getDisplays(Ljava/lang/Object;Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method
