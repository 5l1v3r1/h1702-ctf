.class public Lcom/hackerone/mobile/challenge4/InfoActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "InfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 14
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09001b

    .line 15
    invoke-virtual {p0, p1}, Lcom/hackerone/mobile/challenge4/InfoActivity;->setContentView(I)V

    return-void
.end method
