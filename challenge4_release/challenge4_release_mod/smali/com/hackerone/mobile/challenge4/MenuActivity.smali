.class public Lcom/hackerone/mobile/challenge4/MenuActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f070007

    if-eq p1, v0, :cond_1

    const v0, 0x7f070045

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/hackerone/mobile/challenge4/InfoActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/hackerone/mobile/challenge4/MenuActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 49
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/hackerone/mobile/challenge4/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/hackerone/mobile/challenge4/MenuActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 20
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09001d

    .line 21
    invoke-virtual {p0, p1}, Lcom/hackerone/mobile/challenge4/MenuActivity;->setContentView(I)V

    const p1, 0x7f070007

    .line 23
    invoke-virtual {p0, p1}, Lcom/hackerone/mobile/challenge4/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 24
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f070004

    .line 25
    invoke-virtual {p0, p1}, Lcom/hackerone/mobile/challenge4/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f070045

    .line 26
    invoke-virtual {p0, v0}, Lcom/hackerone/mobile/challenge4/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 27
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f01000c

    .line 29
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v1, 0x0

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 32
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 34
    new-instance p1, Lcom/hackerone/mobile/challenge4/MenuActivity$1;

    invoke-direct {p1, p0}, Lcom/hackerone/mobile/challenge4/MenuActivity$1;-><init>(Lcom/hackerone/mobile/challenge4/MenuActivity;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.hackerone.mobile.challenge4.menu"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/hackerone/mobile/challenge4/MenuActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
