.class public abstract Lcom/hackerone/mobile/challenge4/StateController;
.super Ljava/lang/Object;
.source "StateController.java"


# instance fields
.field private location:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/hackerone/mobile/challenge4/StateController;->location:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getLocation()Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/StateController;->location:Ljava/lang/String;

    return-object p0
.end method

.method load(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method save(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
