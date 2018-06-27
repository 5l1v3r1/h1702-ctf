.class Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;
.super Ljava/lang/Object;
.source "TextUtilsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/TextUtilsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextUtilsCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I
    .locals 1
    .param p0    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 93
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result p0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .locals 0
    .param p1    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    .line 66
    sget-object p0, Landroid/support/v4/text/TextUtilsCompat;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 67
    invoke-static {p1}, Landroid/support/v4/text/ICUCompat;->maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 68
    invoke-static {p1}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;->getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I

    move-result p0

    return p0

    .line 72
    :cond_0
    sget-object p1, Landroid/support/v4/text/TextUtilsCompat;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Landroid/support/v4/text/TextUtilsCompat;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 33
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 35
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 59
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_0
    const-string v1, "&#39;"

    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string v1, "&amp;"

    .line 45
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v1, "&gt;"

    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v1, "&lt;"

    .line 39
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, "&quot;"

    .line 56
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
