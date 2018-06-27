.class public Landroid/support/design/button/MaterialButton;
.super Landroid/support/v7/widget/AppCompatButton;
.source "MaterialButton.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MaterialButton"


# instance fields
.field private additionalPaddingEndForIcon:I
    .annotation build Landroid/support/annotation/Px;
    .end annotation
.end field

.field private additionalPaddingStartForIcon:I
    .annotation build Landroid/support/annotation/Px;
    .end annotation
.end field

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconPadding:I
    .annotation build Landroid/support/annotation/Px;
    .end annotation
.end field

.field private iconSize:I
    .annotation build Landroid/support/annotation/Px;
    .end annotation
.end field

.field private iconTint:Landroid/content/res/ColorStateList;

.field private iconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final insetBottom:I
    .annotation build Landroid/support/annotation/Px;
    .end annotation
.end field

.field private final insetLeft:I
    .annotation build Landroid/support/annotation/Px;
    .end annotation
.end field

.field private final insetRight:I
    .annotation build Landroid/support/annotation/Px;
    .end annotation
.end field

.field private final insetTop:I
    .annotation build Landroid/support/annotation/Px;
    .end annotation
.end field

.field private final materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private paddingBottom:I
    .annotation build Landroid/support/annotation/Px;
    .end annotation
.end field

.field private paddingEnd:I
    .annotation build Landroid/support/annotation/Px;
    .end annotation
.end field

.field private paddingStart:I
    .annotation build Landroid/support/annotation/Px;
    .end annotation
.end field

.field private paddingTop:I
    .annotation build Landroid/support/annotation/Px;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, v0}, Landroid/support/design/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 120
    sget v0, Landroid/support/design/R$attr;->materialButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    sget-object v0, Landroid/support/design/R$styleable;->MaterialButton:[I

    sget v1, Landroid/support/design/R$style;->Widget_MaterialComponents_Button:I

    .line 127
    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 134
    sget p2, Landroid/support/design/R$styleable;->MaterialButton_android_padding:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 135
    sget v0, Landroid/support/design/R$styleable;->MaterialButton_android_paddingLeft:I

    .line 136
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 137
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 138
    sget v1, Landroid/support/design/R$styleable;->MaterialButton_android_paddingStart:I

    .line 139
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/button/MaterialButton;->paddingStart:I

    goto :goto_0

    .line 142
    :cond_0
    iput v0, p0, Landroid/support/design/button/MaterialButton;->paddingStart:I

    .line 145
    :goto_0
    sget v0, Landroid/support/design/R$styleable;->MaterialButton_android_paddingRight:I

    .line 146
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 148
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    .line 149
    sget v1, Landroid/support/design/R$styleable;->MaterialButton_android_paddingEnd:I

    .line 150
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/button/MaterialButton;->paddingEnd:I

    goto :goto_1

    .line 153
    :cond_1
    iput v0, p0, Landroid/support/design/button/MaterialButton;->paddingEnd:I

    .line 156
    :goto_1
    sget v0, Landroid/support/design/R$styleable;->MaterialButton_android_paddingTop:I

    .line 157
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/button/MaterialButton;->paddingTop:I

    .line 158
    sget v0, Landroid/support/design/R$styleable;->MaterialButton_android_paddingBottom:I

    .line 159
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/button/MaterialButton;->paddingBottom:I

    .line 162
    sget p2, Landroid/support/design/R$styleable;->MaterialButton_android_insetLeft:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/button/MaterialButton;->insetLeft:I

    .line 163
    sget p2, Landroid/support/design/R$styleable;->MaterialButton_android_insetRight:I

    .line 164
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/button/MaterialButton;->insetRight:I

    .line 165
    sget p2, Landroid/support/design/R$styleable;->MaterialButton_android_insetTop:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/button/MaterialButton;->insetTop:I

    .line 166
    sget p2, Landroid/support/design/R$styleable;->MaterialButton_android_insetBottom:I

    .line 167
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/button/MaterialButton;->insetBottom:I

    .line 169
    sget p2, Landroid/support/design/R$styleable;->MaterialButton_additionalPaddingStartForIcon:I

    .line 170
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/button/MaterialButton;->additionalPaddingStartForIcon:I

    .line 172
    sget p2, Landroid/support/design/R$styleable;->MaterialButton_additionalPaddingEndForIcon:I

    .line 173
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/button/MaterialButton;->additionalPaddingEndForIcon:I

    .line 176
    sget p2, Landroid/support/design/R$styleable;->MaterialButton_iconPadding:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/button/MaterialButton;->iconPadding:I

    .line 177
    sget p2, Landroid/support/design/R$styleable;->MaterialButton_iconTintMode:I

    const/4 v0, -0x1

    .line 179
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 178
    invoke-static {p2, v0}, Landroid/support/design/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, p0, Landroid/support/design/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 183
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Landroid/support/design/R$styleable;->MaterialButton_iconTint:I

    .line 182
    invoke-static {p2, p1, v0}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroid/support/design/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    .line 184
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Landroid/support/design/R$styleable;->MaterialButton_icon:I

    invoke-static {p2, p1, v0}, Landroid/support/design/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 186
    sget p2, Landroid/support/design/R$styleable;->MaterialButton_iconSize:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/button/MaterialButton;->iconSize:I

    .line 189
    new-instance p2, Landroid/support/design/button/MaterialButtonHelper;

    invoke-direct {p2, p0}, Landroid/support/design/button/MaterialButtonHelper;-><init>(Landroid/support/design/button/MaterialButton;)V

    iput-object p2, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    .line 190
    iget-object p2, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {p2, p1}, Landroid/support/design/button/MaterialButtonHelper;->loadFromAttributes(Landroid/content/res/TypedArray;)V

    .line 192
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    iget p1, p0, Landroid/support/design/button/MaterialButton;->iconPadding:I

    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setCompoundDrawablePadding(I)V

    .line 195
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->updateIcon()V

    return-void
.end method

.method private isUsingOriginalBackground()Z
    .locals 1

    .line 840
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {p0}, Landroid/support/design/button/MaterialButtonHelper;->isBackgroundOverwritten()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateIcon()V
    .locals 4

    .line 657
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 658
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 659
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 660
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 664
    :cond_0
    iget v0, p0, Landroid/support/design/button/MaterialButton;->iconSize:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/design/button/MaterialButton;->iconSize:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 665
    :goto_0
    iget v1, p0, Landroid/support/design/button/MaterialButton;->iconSize:I

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/design/button/MaterialButton;->iconSize:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 666
    :goto_1
    iget-object v2, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 669
    :cond_3
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1, v1}, Landroid/support/v4/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 670
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->updatePadding()V

    return-void
.end method

.method private updatePadding()V
    .locals 5

    .line 483
    iget v0, p0, Landroid/support/design/button/MaterialButton;->paddingStart:I

    iget-object v1, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/design/button/MaterialButton;->additionalPaddingStartForIcon:I

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/design/button/MaterialButton;->insetLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/design/button/MaterialButton;->paddingTop:I

    iget v3, p0, Landroid/support/design/button/MaterialButton;->insetTop:I

    add-int/2addr v1, v3

    iget v3, p0, Landroid/support/design/button/MaterialButton;->paddingEnd:I

    iget-object v4, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    iget v2, p0, Landroid/support/design/button/MaterialButton;->additionalPaddingEndForIcon:I

    :cond_1
    add-int/2addr v3, v2

    iget v2, p0, Landroid/support/design/button/MaterialButton;->insetRight:I

    add-int/2addr v3, v2

    iget v2, p0, Landroid/support/design/button/MaterialButton;->paddingBottom:I

    iget v4, p0, Landroid/support/design/button/MaterialButton;->insetBottom:I

    add-int/2addr v2, v4

    invoke-static {p0, v0, v1, v3, v2}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 200
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->draw(Landroid/graphics/Canvas;)V

    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object p0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButtonHelper;->drawStroke(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getAdditionalPaddingEndForIcon()I
    .locals 0
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .line 474
    iget p0, p0, Landroid/support/design/button/MaterialButton;->additionalPaddingEndForIcon:I

    return p0
.end method

.method public getAdditionalPaddingStartForIcon()I
    .locals 0
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .line 445
    iget p0, p0, Landroid/support/design/button/MaterialButton;->additionalPaddingStartForIcon:I

    return p0
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 290
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 301
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public getButtonPaddingBottom()I
    .locals 0
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .line 416
    iget p0, p0, Landroid/support/design/button/MaterialButton;->paddingBottom:I

    return p0
.end method

.method public getButtonPaddingEnd()I
    .locals 0
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .line 407
    iget p0, p0, Landroid/support/design/button/MaterialButton;->paddingEnd:I

    return p0
.end method

.method public getButtonPaddingStart()I
    .locals 0
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .line 389
    iget p0, p0, Landroid/support/design/button/MaterialButton;->paddingStart:I

    return p0
.end method

.method public getButtonPaddingTop()I
    .locals 0
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .line 398
    iget p0, p0, Landroid/support/design/button/MaterialButton;->paddingTop:I

    return p0
.end method

.method public getCornerRadius()I
    .locals 1
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .line 836
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {p0}, Landroid/support/design/button/MaterialButtonHelper;->getCornerRadius()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 588
    iget-object p0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIconPadding()I
    .locals 0
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .line 514
    iget p0, p0, Landroid/support/design/button/MaterialButton;->iconPadding:I

    return p0
.end method

.method public getIconSize()I
    .locals 0
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .line 544
    iget p0, p0, Landroid/support/design/button/MaterialButton;->iconSize:I

    return p0
.end method

.method public getIconTint()Landroid/content/res/ColorStateList;
    .locals 0

    .line 627
    iget-object p0, p0, Landroid/support/design/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 652
    iget-object p0, p0, Landroid/support/design/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 710
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {p0}, Landroid/support/design/button/MaterialButtonHelper;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 752
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {p0}, Landroid/support/design/button/MaterialButtonHelper;->getStrokeColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getStrokeWidth()I
    .locals 1
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .line 795
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {p0}, Landroid/support/design/button/MaterialButtonHelper;->getStrokeWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 235
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object p0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {p0}, Landroid/support/design/button/MaterialButtonHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 241
    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 273
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object p0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {p0}, Landroid/support/design/button/MaterialButtonHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0

    .line 278
    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 349
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/AppCompatButton;->onLayout(ZIIII)V

    .line 351
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    if-eqz p1, :cond_0

    .line 352
    iget-object p0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    invoke-virtual {p0, p5, p4}, Landroid/support/design/button/MaterialButtonHelper;->updateMaskBounds(II)V

    :cond_0
    return-void
.end method

.method public setAdditionalPaddingEndForIcon(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .line 458
    iget v0, p0, Landroid/support/design/button/MaterialButton;->additionalPaddingEndForIcon:I

    if-eq v0, p1, :cond_0

    .line 459
    iput p1, p0, Landroid/support/design/button/MaterialButton;->additionalPaddingEndForIcon:I

    .line 460
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->updatePadding()V

    :cond_0
    return-void
.end method

.method public setAdditionalPaddingStartForIcon(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .line 429
    iget v0, p0, Landroid/support/design/button/MaterialButton;->additionalPaddingStartForIcon:I

    if-eq v0, p1, :cond_0

    .line 430
    iput p1, p0, Landroid/support/design/button/MaterialButton;->additionalPaddingStartForIcon:I

    .line 431
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->updatePadding()V

    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 317
    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 306
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object p0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButtonHelper;->setBackgroundColor(I)V

    goto :goto_0

    .line 311
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 331
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const-string v0, "MaterialButton"

    const-string v1, "Setting a custom background is not supported."

    .line 333
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0}, Landroid/support/design/button/MaterialButtonHelper;->setBackgroundOverwritten()V

    .line 335
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 343
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 324
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 326
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 284
    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 295
    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setButtonPadding(IIII)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .line 376
    iput p1, p0, Landroid/support/design/button/MaterialButton;->paddingStart:I

    .line 377
    iput p2, p0, Landroid/support/design/button/MaterialButton;->paddingTop:I

    .line 378
    iput p3, p0, Landroid/support/design/button/MaterialButton;->paddingEnd:I

    .line 379
    iput p4, p0, Landroid/support/design/button/MaterialButton;->paddingBottom:I

    .line 380
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->updatePadding()V

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .line 807
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    iget-object p0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButtonHelper;->setCornerRadius(I)V

    :cond_0
    return-void
.end method

.method public setCornerRadiusResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 821
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setCornerRadius(I)V

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 557
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 558
    iput-object p1, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 559
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->updateIcon()V

    :cond_0
    return-void
.end method

.method public setIconPadding(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .line 499
    iget v0, p0, Landroid/support/design/button/MaterialButton;->iconPadding:I

    if-eq v0, p1, :cond_0

    .line 500
    iput p1, p0, Landroid/support/design/button/MaterialButton;->iconPadding:I

    .line 501
    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setCompoundDrawablePadding(I)V

    :cond_0
    return-void
.end method

.method public setIconResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 574
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 576
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconSize(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    if-gez p1, :cond_0

    .line 526
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "iconSize cannot be less than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 529
    :cond_0
    iget v0, p0, Landroid/support/design/button/MaterialButton;->iconSize:I

    if-eq v0, p1, :cond_1

    .line 530
    iput p1, p0, Landroid/support/design/button/MaterialButton;->iconSize:I

    .line 531
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->updateIcon()V

    :cond_1
    return-void
.end method

.method public setIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 600
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 601
    iput-object p1, p0, Landroid/support/design/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    .line 602
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->updateIcon()V

    :cond_0
    return-void
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 638
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 639
    iput-object p1, p0, Landroid/support/design/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 640
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->updateIcon()V

    :cond_0
    return-void
.end method

.method public setIconTintResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 615
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method setInternalBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 364
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 682
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    iget-object p0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButtonHelper;->setRippleColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 696
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 723
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    iget-object p0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButtonHelper;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setStrokeColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 738
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .line 765
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    iget-object p0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButtonHelper;->setStrokeWidth(I)V

    :cond_0
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 780
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setStrokeWidth(I)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object p0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButtonHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    if-eqz v0, :cond_1

    .line 221
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object p0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButtonHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    if-eqz v0, :cond_1

    .line 259
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_0
    return-void
.end method
