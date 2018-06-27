.class Landroid/support/design/widget/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field private baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private customIconView:Landroid/widget/ImageView;

.field private customTextView:Landroid/widget/TextView;

.field private customView:Landroid/view/View;

.field private defaultMaxLines:I

.field private iconView:Landroid/widget/ImageView;

.field private tab:Landroid/support/design/widget/TabLayout$Tab;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .locals 3

    .line 1957
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    .line 1958
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 1955
    iput v0, p0, Landroid/support/design/widget/TabLayout$TabView;->defaultMaxLines:I

    .line 1959
    invoke-direct {p0, p2}, Landroid/support/design/widget/TabLayout$TabView;->updateBackgroundDrawable(Landroid/content/Context;)V

    .line 1960
    iget p2, p1, Landroid/support/design/widget/TabLayout;->tabPaddingStart:I

    iget v0, p1, Landroid/support/design/widget/TabLayout;->tabPaddingTop:I

    iget v1, p1, Landroid/support/design/widget/TabLayout;->tabPaddingEnd:I

    iget v2, p1, Landroid/support/design/widget/TabLayout;->tabPaddingBottom:I

    invoke-static {p0, p2, v0, v1, v2}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    const/16 p2, 0x11

    .line 1962
    invoke-virtual {p0, p2}, Landroid/support/design/widget/TabLayout$TabView;->setGravity(I)V

    .line 1963
    iget-boolean p1, p1, Landroid/support/design/widget/TabLayout;->inlineLabel:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$TabView;->setOrientation(I)V

    .line 1964
    invoke-virtual {p0, p2}, Landroid/support/design/widget/TabLayout$TabView;->setClickable(Z)V

    .line 1966
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroid/support/v4/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroid/support/v4/view/PointerIconCompat;

    move-result-object p1

    .line 1965
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/TabLayout$TabView;Landroid/content/Context;)V
    .locals 0

    .line 1945
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout$TabView;->updateBackgroundDrawable(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/design/widget/TabLayout$TabView;Landroid/graphics/Canvas;)V
    .locals 0

    .line 1945
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout$TabView;->drawBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/design/widget/TabLayout$TabView;)I
    .locals 0

    .line 1945
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContentWidth()I

    move-result p0

    return p0
.end method

.method private approximateLineWidth(Landroid/text/Layout;IF)F
    .locals 0

    .line 2361
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p0

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result p1

    div-float/2addr p3, p1

    mul-float/2addr p0, p3

    return p0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 5

    .line 2025
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2026
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2027
    iget-object p0, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private getContentWidth()I
    .locals 8

    const/4 v0, 0x3

    .line 2344
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object p0, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    array-length p0, v0

    move v1, v2

    move v4, v1

    move v5, v4

    :goto_0
    if-ge v2, p0, :cond_3

    aget-object v6, v0, v2

    if-eqz v6, :cond_2

    .line 2345
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    if-eqz v5, :cond_0

    .line 2346
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v4

    :goto_1
    if-eqz v5, :cond_1

    .line 2347
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v1

    :goto_2
    move v5, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    sub-int/2addr v1, v4

    return v1
.end method

.method private updateBackgroundDrawable(Landroid/content/Context;)V
    .locals 6

    .line 1970
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->tabBackgroundResId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1971
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->tabBackgroundResId:I

    invoke-static {p1, v0}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1972
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1973
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 1976
    :cond_0
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1980
    :cond_1
    :goto_0
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1981
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1983
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_5

    .line 1984
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v3, 0x3727c5ac    # 1.0E-5f

    .line 1988
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v3, -0x1

    .line 1989
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1991
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    .line 1992
    invoke-static {v3}, Landroid/support/design/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 1996
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_4

    .line 1997
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v4, v4, Landroid/support/design/widget/TabLayout;->unboundedRipple:Z

    if-eqz v4, :cond_2

    move-object p1, v1

    :cond_2
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v4, v4, Landroid/support/design/widget/TabLayout;->unboundedRipple:Z

    if-eqz v4, :cond_3

    move-object v0, v1

    :cond_3
    invoke-direct {v2, v3, p1, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object p1, v2

    goto :goto_1

    .line 2003
    :cond_4
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2004
    invoke-static {v0, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 2005
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object p1, v3, v2

    const/4 p1, 0x1

    aput-object v0, v3, p1

    invoke-direct {v1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object p1, v1

    .line 2010
    :cond_5
    :goto_1
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2011
    iget-object p0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->invalidate()V

    return-void
.end method

.method private updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 5
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2274
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    .line 2275
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    .line 2276
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2278
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p2, :cond_3

    if-eqz v0, :cond_2

    .line 2282
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2283
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2284
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    goto :goto_2

    .line 2286
    :cond_2
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2287
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2291
    :cond_3
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz p1, :cond_5

    if-eqz v0, :cond_4

    .line 2294
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2295
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2296
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    goto :goto_3

    .line 2298
    :cond_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2299
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_3
    if-eqz p2, :cond_8

    .line 2304
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_6

    .line 2306
    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    .line 2308
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v2

    goto :goto_4

    :cond_6
    move v2, v4

    .line 2310
    :goto_4
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v3, v3, Landroid/support/design/widget/TabLayout;->inlineLabel:Z

    if-eqz v3, :cond_7

    .line 2311
    invoke-static {p1}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v3

    if-eq v2, v3, :cond_8

    .line 2312
    invoke-static {p1, v2}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 2313
    iput v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2315
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2316
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_5

    .line 2319
    :cond_7
    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v2, v3, :cond_8

    .line 2320
    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2321
    invoke-static {p1, v4}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 2323
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2324
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    .line 2329
    :cond_8
    :goto_5
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-static {p1}, Landroid/support/design/widget/TabLayout$Tab;->access$100(Landroid/support/design/widget/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_6

    :cond_9
    move-object p1, v1

    :goto_6
    if-eqz v0, :cond_a

    move-object p1, v1

    .line 2330
    :cond_a
    invoke-static {p0, p1}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .line 2033
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 2035
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getDrawableState()[I

    move-result-object v0

    .line 2036
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2037
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_0
    if-eqz v2, :cond_1

    .line 2041
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->invalidate()V

    .line 2042
    iget-object p0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public getTab()Landroid/support/design/widget/TabLayout$Tab;
    .locals 0

    .line 2356
    iget-object p0, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 2087
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2089
    const-class p0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 2095
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2097
    const-class p0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    .line 2102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2103
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2104
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getTabMaxWidth()I

    move-result v2

    if-lez v2, :cond_1

    if-eqz v1, :cond_0

    if-le v0, v2, :cond_1

    .line 2112
    :cond_0
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget p1, p1, Landroid/support/design/widget/TabLayout;->tabMaxWidth:I

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2119
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2122
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 2123
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->tabTextSize:F

    .line 2124
    iget v1, p0, Landroid/support/design/widget/TabLayout$TabView;->defaultMaxLines:I

    .line 2126
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    move v1, v3

    goto :goto_0

    .line 2129
    :cond_2
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-le v2, v3, :cond_3

    .line 2131
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->tabTextMultiLineSize:F

    .line 2134
    :cond_3
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    .line 2135
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    .line 2136
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v5

    cmpl-float v2, v0, v2

    if-nez v2, :cond_4

    if-ltz v5, :cond_7

    if-eq v1, v5, :cond_7

    .line 2142
    :cond_4
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v5, v5, Landroid/support/design/widget/TabLayout;->mode:I

    const/4 v6, 0x0

    if-ne v5, v3, :cond_6

    if-lez v2, :cond_6

    if-ne v4, v3, :cond_6

    .line 2148
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2150
    invoke-direct {p0, v2, v6, v0}, Landroid/support/design/widget/TabLayout$TabView;->approximateLineWidth(Landroid/text/Layout;IF)F

    move-result v2

    .line 2151
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_6

    :cond_5
    move v3, v6

    :cond_6
    if-eqz v3, :cond_7

    .line 2157
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2158
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2159
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_7
    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 2048
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 2050
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2052
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->playSoundEffect(I)V

    .line 2054
    :cond_0
    iget-object p0, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 2173
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setTab(Landroid/support/design/widget/TabLayout$Tab;)V

    const/4 v0, 0x0

    .line 2174
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    .line 2063
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2065
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2067
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    const/4 v0, 0x4

    .line 2069
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->sendAccessibilityEvent(I)V

    .line 2074
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 2075
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2077
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 2078
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2080
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 2081
    iget-object p0, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_4
    return-void
.end method

.method setTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2166
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    if-eq p1, v0, :cond_0

    .line 2167
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    .line 2168
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->update()V

    :cond_0
    return-void
.end method

.method final update()V
    .locals 5

    .line 2178
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->tab:Landroid/support/design/widget/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2179
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_6

    .line 2181
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, p0, :cond_2

    if-eqz v3, :cond_1

    .line 2184
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2186
    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 2188
    :cond_2
    iput-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    .line 2189
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    const/16 v4, 0x8

    if-eqz v3, :cond_3

    .line 2190
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2192
    :cond_3
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    .line 2193
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2194
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const v3, 0x1020014

    .line 2197
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    .line 2198
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 2199
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/TabLayout$TabView;->defaultMaxLines:I

    :cond_5
    const v3, 0x1020006

    .line 2201
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    goto :goto_1

    .line 2204
    :cond_6
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 2205
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$TabView;->removeView(Landroid/view/View;)V

    .line 2206
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    .line 2208
    :cond_7
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    .line 2209
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    .line 2212
    :goto_1
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->customView:Landroid/view/View;

    const/4 v3, 0x0

    if-nez v2, :cond_d

    .line 2214
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-nez v2, :cond_8

    .line 2217
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Landroid/support/design/R$layout;->design_layout_tab_icon:I

    .line 2218
    invoke-virtual {v2, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2219
    invoke-virtual {p0, v2, v3}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;I)V

    .line 2220
    iput-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    :cond_8
    if-eqz v0, :cond_9

    .line 2223
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 2224
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_9
    if-eqz v1, :cond_a

    .line 2227
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 2228
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_a

    .line 2229
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 2233
    :cond_a
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-nez v1, :cond_b

    .line 2236
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroid/support/design/R$layout;->design_layout_tab_text:I

    .line 2237
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2238
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 2239
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 2240
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout$TabView;->defaultMaxLines:I

    .line 2242
    :cond_b
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v2, v2, Landroid/support/design/widget/TabLayout;->tabTextAppearance:I

    invoke-static {v1, v2}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 2243
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v1, v1, Landroid/support/design/widget/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_c

    .line 2244
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2246
    :cond_c
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 2249
    :cond_d
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-nez v1, :cond_e

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_f

    .line 2250
    :cond_e
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :cond_f
    :goto_2
    if-eqz v0, :cond_10

    .line 2254
    invoke-static {v0}, Landroid/support/design/widget/TabLayout$Tab;->access$100(Landroid/support/design/widget/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 2257
    invoke-static {v0}, Landroid/support/design/widget/TabLayout$Tab;->access$100(Landroid/support/design/widget/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_10
    if-eqz v0, :cond_11

    .line 2260
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v3, 0x1

    :cond_11
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    return-void
.end method

.method final updateOrientation()V
    .locals 2

    .line 2264
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v0, v0, Landroid/support/design/widget/TabLayout;->inlineLabel:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setOrientation(I)V

    .line 2265
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2268
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 2266
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :goto_1
    return-void
.end method
