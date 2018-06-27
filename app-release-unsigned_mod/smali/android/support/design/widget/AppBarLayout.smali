.class public Landroid/support/design/widget/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "AppBarLayout.java"


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    value = Landroid/support/design/widget/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;,
        Landroid/support/design/widget/AppBarLayout$BaseBehavior;,
        Landroid/support/design/widget/AppBarLayout$Behavior;,
        Landroid/support/design/widget/AppBarLayout$LayoutParams;,
        Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;,
        Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;
    }
.end annotation


# static fields
.field private static final INVALID_SCROLL_RANGE:I = -0x1

.field static final PENDING_ACTION_ANIMATE_ENABLED:I = 0x4

.field static final PENDING_ACTION_COLLAPSED:I = 0x2

.field static final PENDING_ACTION_EXPANDED:I = 0x1

.field static final PENDING_ACTION_FORCE:I = 0x8

.field static final PENDING_ACTION_NONE:I


# instance fields
.field private downPreScrollRange:I

.field private downScrollRange:I

.field private haveChildWithInterpolator:Z

.field private lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field private liftOnScroll:Z

.field private liftable:Z

.field private lifted:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private pendingAction:I

.field private tmpStatesArray:[I

.field private totalScrollRange:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 172
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 148
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->totalScrollRange:I

    .line 149
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->downPreScrollRange:I

    .line 150
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->downScrollRange:I

    const/4 v0, 0x0

    .line 154
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->pendingAction:I

    const/4 v1, 0x1

    .line 173
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->setOrientation(I)V

    .line 175
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 178
    invoke-static {p0}, Landroid/support/design/widget/ViewUtilsLollipop;->setBoundsViewOutlineProvider(Landroid/view/View;)V

    .line 182
    sget v1, Landroid/support/design/R$style;->Widget_Design_AppBarLayout:I

    invoke-static {p0, p2, v0, v1}, Landroid/support/design/widget/ViewUtilsLollipop;->setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V

    .line 186
    :cond_0
    sget-object v1, Landroid/support/design/R$styleable;->AppBarLayout:[I

    sget v3, Landroid/support/design/R$style;->Widget_Design_AppBarLayout:I

    .line 187
    invoke-static {p1, p2, v1, v0, v3}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 189
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_android_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 190
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_expanded:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 191
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_expanded:I

    .line 192
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 191
    invoke-direct {p0, p2, v0, v0}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZZ)V

    .line 196
    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v2, :cond_2

    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_elevation:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 197
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_elevation:I

    .line 198
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    .line 197
    invoke-static {p0, p2}, Landroid/support/design/widget/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 200
    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p2, v1, :cond_4

    .line 203
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_android_keyboardNavigationCluster:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 204
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_android_keyboardNavigationCluster:I

    .line 205
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 204
    invoke-virtual {p0, p2}, Landroid/support/design/widget/AppBarLayout;->setKeyboardNavigationCluster(Z)V

    .line 207
    :cond_3
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_android_touchscreenBlocksFocus:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 208
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_android_touchscreenBlocksFocus:I

    .line 209
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 208
    invoke-virtual {p0, p2}, Landroid/support/design/widget/AppBarLayout;->setTouchscreenBlocksFocus(Z)V

    .line 212
    :cond_4
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_liftOnScroll:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/design/widget/AppBarLayout;->liftOnScroll:Z

    .line 213
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    new-instance p1, Landroid/support/design/widget/AppBarLayout$1;

    invoke-direct {p1, p0}, Landroid/support/design/widget/AppBarLayout$1;-><init>(Landroid/support/design/widget/AppBarLayout;)V

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private hasCollapsibleChild()Z
    .locals 4

    .line 288
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 289
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->isCollapsible()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private invalidateScrollRanges()V
    .locals 1

    const/4 v0, -0x1

    .line 298
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->totalScrollRange:I

    .line 299
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->downPreScrollRange:I

    .line 300
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->downScrollRange:I

    return-void
.end method

.method private setExpanded(ZZZ)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    or-int/2addr p1, p2

    if-eqz p3, :cond_2

    const/16 v0, 0x8

    :cond_2
    or-int/2addr p1, v0

    .line 343
    iput p1, p0, Landroid/support/design/widget/AppBarLayout;->pendingAction:I

    .line 347
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->requestLayout()V

    return-void
.end method

.method private setLiftableState(Z)Z
    .locals 1

    .line 559
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->liftable:Z

    if-eq v0, p1, :cond_0

    .line 560
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->liftable:Z

    .line 561
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->refreshDrawableState()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;)V
    .locals 1

    .line 232
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    .line 235
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    iget-object p0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .locals 0

    .line 241
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 352
    instance-of p0, p1, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    return p0
.end method

.method dispatchOffsetUpdates(I)V
    .locals 3

    .line 501
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 502
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 503
    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;

    if-eqz v2, :cond_0

    .line 505
    invoke-interface {v2, p0, p1}, Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;->onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .locals 2

    .line 357
    new-instance p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 110
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 110
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .locals 1

    .line 362
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .locals 1

    .line 367
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p0, v0, :cond_0

    instance-of p0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p0, :cond_0

    .line 368
    new-instance p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object p0

    .line 369
    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    .line 370
    new-instance p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 372
    :cond_1
    new-instance p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method getDownNestedPreScrollRange()I
    .locals 9

    .line 427
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->downPreScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 429
    iget p0, p0, Landroid/support/design/widget/AppBarLayout;->downPreScrollRange:I

    return p0

    .line 433
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz v0, :cond_5

    .line 434
    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 435
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 436
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 437
    iget v6, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    and-int/lit8 v7, v6, 0x5

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    .line 441
    iget v7, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    iget v4, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v4

    add-int/2addr v2, v7

    and-int/lit8 v4, v6, 0x8

    if-eqz v4, :cond_1

    .line 445
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v6, 0x2

    if-eqz v4, :cond_2

    .line 448
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v5, v3

    add-int/2addr v2, v5

    goto :goto_1

    .line 451
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v3

    sub-int/2addr v5, v3

    add-int/2addr v2, v5

    goto :goto_1

    :cond_3
    if-lez v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 459
    :cond_5
    :goto_2
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->downPreScrollRange:I

    return v0
.end method

.method getDownNestedScrollRange()I
    .locals 9

    .line 464
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->downScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 466
    iget p0, p0, Landroid/support/design/widget/AppBarLayout;->downScrollRange:I

    return p0

    .line 470
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 471
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 472
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 473
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 474
    iget v7, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    iget v8, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 476
    iget v5, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_2

    add-int/2addr v3, v6

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 486
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 495
    :cond_2
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->downScrollRange:I

    return v0
.end method

.method public final getMinimumHeightForVisibleOverlappingContent()I
    .locals 3

    .line 512
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    .line 513
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1

    .line 520
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    sub-int/2addr v1, v2

    .line 522
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1

    .line 529
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x3

    return p0
.end method

.method getPendingAction()I
    .locals 0

    .line 622
    iget p0, p0, Landroid/support/design/widget/AppBarLayout;->pendingAction:I

    return p0
.end method

.method public getTargetElevation()F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method final getTopInset()I
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 631
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/widget/AppBarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {p0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getTotalScrollRange()I
    .locals 9

    .line 385
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->totalScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 386
    iget p0, p0, Landroid/support/design/widget/AppBarLayout;->totalScrollRange:I

    return p0

    .line 390
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 391
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 392
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 393
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 394
    iget v7, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_2

    .line 398
    iget v8, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v8

    iget v5, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v5

    add-int/2addr v3, v6

    and-int/lit8 v5, v7, 0x2

    if-eqz v5, :cond_1

    .line 404
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->totalScrollRange:I

    return v0
.end method

.method getUpNestedPreScrollRange()I
    .locals 0

    .line 422
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p0

    return p0
.end method

.method hasChildWithInterpolator()Z
    .locals 0

    .line 376
    iget-boolean p0, p0, Landroid/support/design/widget/AppBarLayout;->haveChildWithInterpolator:Z

    return p0
.end method

.method hasScrollableChildren()Z
    .locals 0

    .line 417
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLiftOnScroll()Z
    .locals 0

    .line 595
    iget-boolean p0, p0, Landroid/support/design/widget/AppBarLayout;->liftOnScroll:Z

    return p0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3

    .line 534
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->tmpStatesArray:[I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 537
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->tmpStatesArray:[I

    .line 539
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->tmpStatesArray:[I

    .line 540
    array-length v1, v0

    add-int/2addr p1, v1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    const/4 v1, 0x0

    .line 542
    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout;->liftable:Z

    if-eqz v2, :cond_1

    sget v2, Landroid/support/design/R$attr;->state_liftable:I

    goto :goto_0

    :cond_1
    sget v2, Landroid/support/design/R$attr;->state_liftable:I

    neg-int v2, v2

    :goto_0
    aput v2, v0, v1

    const/4 v1, 0x1

    .line 543
    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout;->liftable:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout;->lifted:Z

    if-eqz v2, :cond_2

    sget v2, Landroid/support/design/R$attr;->state_lifted:I

    goto :goto_1

    :cond_2
    sget v2, Landroid/support/design/R$attr;->state_lifted:I

    neg-int v2, v2

    :goto_1
    aput v2, v0, v1

    const/4 v1, 0x2

    .line 547
    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout;->liftable:Z

    if-eqz v2, :cond_3

    sget v2, Landroid/support/design/R$attr;->state_collapsible:I

    goto :goto_2

    :cond_3
    sget v2, Landroid/support/design/R$attr;->state_collapsible:I

    neg-int v2, v2

    :goto_2
    aput v2, v0, v1

    const/4 v1, 0x3

    .line 548
    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout;->liftable:Z

    if-eqz v2, :cond_4

    iget-boolean p0, p0, Landroid/support/design/widget/AppBarLayout;->lifted:Z

    if-eqz p0, :cond_4

    sget p0, Landroid/support/design/R$attr;->state_collapsed:I

    goto :goto_3

    :cond_4
    sget p0, Landroid/support/design/R$attr;->state_collapsed:I

    neg-int p0, p0

    :goto_3
    aput p0, v0, v1

    .line 550
    invoke-static {p1, v0}, Landroid/support/design/widget/AppBarLayout;->mergeDrawableStates([I[I)[I

    move-result-object p0

    return-object p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 269
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 270
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    const/4 p1, 0x0

    .line 272
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->haveChildWithInterpolator:Z

    .line 273
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result p2

    move p3, p1

    :goto_0
    const/4 p4, 0x1

    if-ge p3, p2, :cond_1

    .line 274
    invoke-virtual {p0, p3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 275
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 276
    invoke-virtual {p5}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 279
    iput-boolean p4, p0, Landroid/support/design/widget/AppBarLayout;->haveChildWithInterpolator:Z

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 284
    :cond_1
    :goto_1
    iget-boolean p2, p0, Landroid/support/design/widget/AppBarLayout;->liftOnScroll:Z

    if-nez p2, :cond_2

    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->hasCollapsibleChild()Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    move p1, p4

    :cond_3
    invoke-direct {p0, p1}, Landroid/support/design/widget/AppBarLayout;->setLiftableState(Z)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 263
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 264
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    return-void
.end method

.method onWindowInsetChanged(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2

    .line 637
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 643
    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Landroid/support/v4/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 644
    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 645
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    :cond_1
    return-object p1
.end method

.method public removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;)V
    .locals 1

    .line 252
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 253
    iget-object p0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .locals 0

    .line 258
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;)V

    return-void
.end method

.method resetPendingAction()V
    .locals 1

    const/4 v0, 0x0

    .line 626
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->pendingAction:I

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 324
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZ)V

    return-void
.end method

.method public setExpanded(ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 339
    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZZ)V

    return-void
.end method

.method public setLiftOnScroll(Z)V
    .locals 0

    .line 590
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->liftOnScroll:Z

    return-void
.end method

.method setLiftedState(Z)Z
    .locals 1

    .line 573
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->lifted:Z

    if-eq v0, p1, :cond_0

    .line 574
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->lifted:Z

    .line 575
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->refreshDrawableState()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setOrientation(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 306
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 309
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method public setTargetElevation(F)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 607
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 608
    invoke-static {p0, p1}, Landroid/support/design/widget/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    :cond_0
    return-void
.end method
