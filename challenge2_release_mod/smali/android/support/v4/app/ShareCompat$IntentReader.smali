.class public Landroid/support/v4/app/ShareCompat$IntentReader;
.super Ljava/lang/Object;
.source "ShareCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentReader"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentReader"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallingActivity:Landroid/content/ComponentName;

.field private mCallingPackage:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    iput-object p1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    .line 684
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    .line 685
    invoke-static {p1}, Landroid/support/v4/app/ShareCompat;->getCallingPackage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    .line 686
    invoke-static {p1}, Landroid/support/v4/app/ShareCompat;->getCallingActivity(Landroid/app/Activity;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    return-void
.end method

.method public static from(Landroid/app/Activity;)Landroid/support/v4/app/ShareCompat$IntentReader;
    .locals 1

    .line 679
    new-instance v0, Landroid/support/v4/app/ShareCompat$IntentReader;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ShareCompat$IntentReader;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public getCallingActivity()Landroid/content/ComponentName;
    .locals 0

    .line 894
    iget-object p0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getCallingActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 908
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 910
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 912
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "IntentReader"

    const-string v2, "Could not retrieve icon for calling activity"

    .line 914
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getCallingApplicationIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 930
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 932
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 934
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "IntentReader"

    const-string v2, "Could not retrieve icon for calling application"

    .line 936
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getCallingApplicationLabel()Ljava/lang/CharSequence;
    .locals 3

    .line 952
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 954
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 956
    :try_start_0
    iget-object p0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "IntentReader"

    const-string v2, "Could not retrieve label for calling application"

    .line 958
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 0

    .line 877
    iget-object p0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getEmailBcc()[Ljava/lang/String;
    .locals 1

    .line 850
    iget-object p0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v0, "android.intent.extra.BCC"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEmailCc()[Ljava/lang/String;
    .locals 1

    .line 840
    iget-object p0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v0, "android.intent.extra.CC"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEmailTo()[Ljava/lang/String;
    .locals 1

    .line 830
    iget-object p0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v0, "android.intent.extra.EMAIL"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHtmlText()Ljava/lang/String;
    .locals 2

    .line 756
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.HTML_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 758
    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .line 759
    instance-of v1, p0, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 760
    check-cast p0, Landroid/text/Spanned;

    invoke-static {p0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 762
    sget-object v0, Landroid/support/v4/app/ShareCompat;->IMPL:Landroid/support/v4/app/ShareCompat$ShareCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/app/ShareCompat$ShareCompatImpl;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getStream()Landroid/net/Uri;
    .locals 1

    .line 780
    iget-object p0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public getStream(I)Landroid/net/Uri;
    .locals 3

    .line 793
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->isMultipleShare()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    .line 796
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 797
    iget-object p0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0

    :cond_1
    if-nez p1, :cond_2

    .line 800
    iget-object p0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string p1, "android.intent.extra.STREAM"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0

    .line 802
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stream items available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->getStreamCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " index requested: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStreamCount()I
    .locals 2

    .line 814
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->isMultipleShare()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    .line 817
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 818
    iget-object p0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    .line 820
    :cond_1
    iget-object p0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 860
    iget-object p0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 742
    iget-object p0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 732
    iget-object p0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isMultipleShare()Z
    .locals 1

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    .line 722
    iget-object p0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isShareIntent()Z
    .locals 1

    .line 698
    iget-object p0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.intent.action.SEND"

    .line 699
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSingleShare()Z
    .locals 1

    const-string v0, "android.intent.action.SEND"

    .line 711
    iget-object p0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
