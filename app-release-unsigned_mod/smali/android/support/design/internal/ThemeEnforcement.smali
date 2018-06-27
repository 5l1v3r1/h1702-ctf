.class public final Landroid/support/design/internal/ThemeEnforcement;
.super Ljava/lang/Object;
.source "ThemeEnforcement.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final APPCOMPAT_CHECK_ATTRS:[I

.field private static final APPCOMPAT_THEME_NAME:Ljava/lang/String; = "Theme.AppCompat"

.field private static final MATERIAL_CHECK_ATTRS:[I

.field private static final MATERIAL_THEME_NAME:Ljava/lang/String; = "Theme.MaterialComponents"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 40
    new-array v1, v0, [I

    sget v2, Landroid/support/design/R$attr;->colorPrimary:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Landroid/support/design/internal/ThemeEnforcement;->APPCOMPAT_CHECK_ATTRS:[I

    .line 43
    new-array v0, v0, [I

    sget v1, Landroid/support/design/R$attr;->colorSecondary:I

    aput v1, v0, v3

    sput-object v0, Landroid/support/design/internal/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAppCompatTheme(Landroid/content/Context;)V
    .locals 2

    .line 165
    sget-object v0, Landroid/support/design/internal/ThemeEnforcement;->APPCOMPAT_CHECK_ATTRS:[I

    const-string v1, "Theme.AppCompat"

    invoke-static {p0, v0, v1}, Landroid/support/design/internal/ThemeEnforcement;->checkTheme(Landroid/content/Context;[ILjava/lang/String;)V

    return-void
.end method

.method private static checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 129
    sget-object v0, Landroid/support/design/R$styleable;->ThemeEnforcement:[I

    .line 130
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 132
    sget p2, Landroid/support/design/R$styleable;->ThemeEnforcement_enforceMaterialTheme:I

    const/4 p3, 0x0

    .line 133
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 134
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_0

    .line 137
    invoke-static {p0}, Landroid/support/design/internal/ThemeEnforcement;->checkMaterialTheme(Landroid/content/Context;)V

    .line 139
    :cond_0
    invoke-static {p0}, Landroid/support/design/internal/ThemeEnforcement;->checkAppCompatTheme(Landroid/content/Context;)V

    return-void
.end method

.method public static checkMaterialTheme(Landroid/content/Context;)V
    .locals 2

    .line 169
    sget-object v0, Landroid/support/design/internal/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    const-string v1, "Theme.MaterialComponents"

    invoke-static {p0, v0, v1}, Landroid/support/design/internal/ThemeEnforcement;->checkTheme(Landroid/content/Context;[ILjava/lang/String;)V

    return-void
.end method

.method private static checkTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 144
    sget-object v0, Landroid/support/design/R$styleable;->ThemeEnforcement:[I

    .line 145
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 147
    sget p1, Landroid/support/design/R$styleable;->ThemeEnforcement_enforceTextAppearance:I

    const/4 p2, 0x0

    .line 148
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 151
    sget p1, Landroid/support/design/R$styleable;->ThemeEnforcement_android_textAppearance:I

    const/4 p2, -0x1

    .line 152
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 153
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    if-ne p1, p2, :cond_1

    .line 156
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This component requires that you specify a valid android:textAppearance attribute."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 160
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method private static checkTheme(Landroid/content/Context;[ILjava/lang/String;)V
    .locals 1

    .line 189
    invoke-static {p0, p1}, Landroid/support/design/internal/ThemeEnforcement;->isTheme(Landroid/content/Context;[I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 190
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The style on this component requires your app theme to be "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (or a descendant)."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public static isAppCompatTheme(Landroid/content/Context;)Z
    .locals 1

    .line 173
    sget-object v0, Landroid/support/design/internal/ThemeEnforcement;->APPCOMPAT_CHECK_ATTRS:[I

    invoke-static {p0, v0}, Landroid/support/design/internal/ThemeEnforcement;->isTheme(Landroid/content/Context;[I)Z

    move-result p0

    return p0
.end method

.method public static isMaterialTheme(Landroid/content/Context;)Z
    .locals 1

    .line 177
    sget-object v0, Landroid/support/design/internal/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    invoke-static {p0, v0}, Landroid/support/design/internal/ThemeEnforcement;->isTheme(Landroid/content/Context;[I)Z

    move-result p0

    return p0
.end method

.method private static isTheme(Landroid/content/Context;[I)Z
    .locals 0

    .line 181
    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 182
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    .line 183
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 6
    .param p2    # [I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 64
    invoke-static/range {v0 .. v5}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[IIIZ)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[IIIZ)Landroid/content/res/TypedArray;
    .locals 0

    .line 87
    invoke-static {p0, p1, p3, p4}, Landroid/support/design/internal/ThemeEnforcement;->checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 90
    invoke-static {p0, p1, p3, p4}, Landroid/support/design/internal/ThemeEnforcement;->checkTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 93
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method public static obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
    .locals 0
    .param p2    # [I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 118
    invoke-static {p0, p1, p3, p4}, Landroid/support/design/internal/ThemeEnforcement;->checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 121
    invoke-static {p0, p1, p3, p4}, Landroid/support/design/internal/ThemeEnforcement;->checkTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 124
    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object p0

    return-object p0
.end method
