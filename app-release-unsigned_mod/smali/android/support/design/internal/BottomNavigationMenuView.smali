.class public Landroid/support/design/internal/BottomNavigationMenuView;
.super Landroid/view/ViewGroup;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuView;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ACTIVE_ANIMATION_DURATION_MS:J = 0x73L

.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I


# instance fields
.field private final activeItemMaxWidth:I

.field private final activeItemMinWidth:I

.field private buttons:[Landroid/support/design/internal/BottomNavigationItemView;

.field private final inactiveItemMaxWidth:I

.field private final inactiveItemMinWidth:I

.field private itemBackgroundRes:I

.field private final itemHeight:I

.field private itemHorizontalTranslationEnabled:Z

.field private itemIconSize:I
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation
.end field

.field private itemIconTint:Landroid/content/res/ColorStateList;

.field private final itemPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Landroid/support/design/internal/BottomNavigationItemView;",
            ">;"
        }
    .end annotation
.end field

.field private itemTextAppearanceActive:I
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation
.end field

.field private itemTextAppearanceInactive:I
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation
.end field

.field private final itemTextColorDefault:Landroid/content/res/ColorStateList;

.field private itemTextColorFromUser:Landroid/content/res/ColorStateList;

.field private labelVisibilityMode:I

.field private menu:Landroid/support/v7/view/menu/MenuBuilder;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private presenter:Landroid/support/design/internal/BottomNavigationPresenter;

.field private selectedItemId:I

.field private selectedItemPosition:I

.field private final set:Landroid/support/transition/TransitionSet;

.field private tempChildWidths:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 52
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Landroid/support/design/internal/BottomNavigationMenuView;->CHECKED_STATE_SET:[I

    .line 53
    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/internal/BottomNavigationMenuView;->DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/BottomNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance p1, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemPool:Landroid/support/v4/util/Pools$Pool;

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemId:I

    .line 69
    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    .line 89
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    sget v1, Landroid/support/design/R$dimen;->design_bottom_navigation_item_max_width:I

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    .line 92
    sget v1, Landroid/support/design/R$dimen;->design_bottom_navigation_item_min_width:I

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->inactiveItemMinWidth:I

    .line 94
    sget v1, Landroid/support/design/R$dimen;->design_bottom_navigation_active_item_max_width:I

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 96
    sget v1, Landroid/support/design/R$dimen;->design_bottom_navigation_active_item_min_width:I

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->activeItemMinWidth:I

    .line 98
    sget v1, Landroid/support/design/R$dimen;->design_bottom_navigation_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemHeight:I

    const v0, 0x1010038

    .line 99
    invoke-virtual {p0, v0}, Landroid/support/design/internal/BottomNavigationMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    .line 101
    new-instance v0, Landroid/support/transition/AutoTransition;

    invoke-direct {v0}, Landroid/support/transition/AutoTransition;-><init>()V

    iput-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->set:Landroid/support/transition/TransitionSet;

    .line 102
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->set:Landroid/support/transition/TransitionSet;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionSet;->setOrdering(I)Landroid/support/transition/TransitionSet;

    .line 103
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->set:Landroid/support/transition/TransitionSet;

    const-wide/16 v0, 0x73

    invoke-virtual {p1, v0, v1}, Landroid/support/transition/TransitionSet;->setDuration(J)Landroid/support/transition/TransitionSet;

    .line 104
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->set:Landroid/support/transition/TransitionSet;

    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/support/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionSet;

    .line 105
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->set:Landroid/support/transition/TransitionSet;

    new-instance v0, Landroid/support/design/internal/TextScale;

    invoke-direct {v0}, Landroid/support/design/internal/TextScale;-><init>()V

    invoke-virtual {p1, v0}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 107
    new-instance p1, Landroid/support/design/internal/BottomNavigationMenuView$1;

    invoke-direct {p1, p0}, Landroid/support/design/internal/BottomNavigationMenuView$1;-><init>(Landroid/support/design/internal/BottomNavigationMenuView;)V

    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 118
    new-array p1, p2, [I

    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->tempChildWidths:[I

    return-void
.end method

.method static synthetic access$000(Landroid/support/design/internal/BottomNavigationMenuView;)Landroid/support/design/internal/BottomNavigationPresenter;
    .locals 0

    .line 49
    iget-object p0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    return-object p0
.end method

.method static synthetic access$100(Landroid/support/design/internal/BottomNavigationMenuView;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 0

    .line 49
    iget-object p0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object p0
.end method

.method private getNewItem()Landroid/support/design/internal/BottomNavigationItemView;
    .locals 1

    .line 531
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/BottomNavigationItemView;

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Landroid/support/design/internal/BottomNavigationItemView;

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/design/internal/BottomNavigationItemView;-><init>(Landroid/content/Context;)V

    :cond_0
    return-object v0
.end method

.method private isShifting(II)Z
    .locals 2

    const/4 p0, 0x0

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x3

    if-le p2, p1, :cond_1

    :goto_0
    move p0, v0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return p0
.end method


# virtual methods
.method public buildMenuView()V
    .locals 6

    .line 453
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->removeAllViews()V

    .line 454
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 457
    iget-object v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v5, v4}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 461
    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 462
    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemId:I

    .line 463
    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    const/4 v0, 0x0

    .line 464
    iput-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    return-void

    .line 467
    :cond_2
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/design/internal/BottomNavigationItemView;

    iput-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    .line 468
    iget v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->labelVisibilityMode:I

    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/support/design/internal/BottomNavigationMenuView;->isShifting(II)Z

    move-result v0

    move v2, v1

    .line 469
    :goto_1
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    .line 470
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 471
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 472
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v3, v1}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 473
    invoke-direct {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getNewItem()Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v3

    .line 474
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    aput-object v3, v4, v2

    .line 475
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 476
    iget v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemIconSize:I

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setIconSize(I)V

    .line 478
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 479
    iget v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextAppearanceInactive:I

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setTextAppearanceInactive(I)V

    .line 480
    iget v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextAppearanceActive:I

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setTextAppearanceActive(I)V

    .line 481
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 482
    iget v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemBackgroundRes:I

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setItemBackground(I)V

    .line 483
    invoke-virtual {v3, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setShifting(Z)V

    .line 484
    iget v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->labelVisibilityMode:I

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setLabelVisibilityMode(I)V

    .line 485
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3, v4, v1}, Landroid/support/design/internal/BottomNavigationItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 486
    invoke-virtual {v3, v2}, Landroid/support/design/internal/BottomNavigationItemView;->setItemPosition(I)V

    .line 487
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    invoke-virtual {p0, v3}, Landroid/support/design/internal/BottomNavigationMenuView;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 490
    :cond_3
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v0

    sub-int/2addr v0, v4

    iget v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    .line 491
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget p0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 8

    .line 429
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 430
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 433
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 434
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 435
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v3, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    .line 436
    invoke-virtual {p0, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    .line 439
    :cond_1
    iget p0, v0, Landroid/util/TypedValue;->data:I

    .line 440
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 441
    new-instance v1, Landroid/content/res/ColorStateList;

    const/4 v3, 0x3

    new-array v4, v3, [[I

    sget-object v5, Landroid/support/design/internal/BottomNavigationMenuView;->DISABLED_STATE_SET:[I

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Landroid/support/design/internal/BottomNavigationMenuView;->CHECKED_STATE_SET:[I

    aput-object v5, v4, v2

    sget-object v5, Landroid/support/design/internal/BottomNavigationMenuView;->EMPTY_STATE_SET:[I

    const/4 v7, 0x2

    aput-object v5, v4, v7

    new-array v3, v3, [I

    sget-object v5, Landroid/support/design/internal/BottomNavigationMenuView;->DISABLED_STATE_SET:[I

    .line 444
    invoke-virtual {p1, v5, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    aput p1, v3, v6

    aput p0, v3, v2

    aput v0, v3, v7

    invoke-direct {v1, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 250
    iget-object p0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getItemBackgroundRes()I
    .locals 0

    .line 376
    iget p0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemBackgroundRes:I

    return p0
.end method

.method public getItemIconSize()I
    .locals 0
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .line 272
    iget p0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemIconSize:I

    return p0
.end method

.method public getItemTextAppearanceActive()I
    .locals 0
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    .line 353
    iget p0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextAppearanceActive:I

    return p0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 0
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    .line 324
    iget p0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextAppearanceInactive:I

    return p0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 295
    iget-object p0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getLabelVisibilityMode()I
    .locals 0

    .line 402
    iget p0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->labelVisibilityMode:I

    return p0
.end method

.method public getSelectedItemId()I
    .locals 0

    .line 539
    iget p0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemId:I

    return p0
.end method

.method public getWindowAnimations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 0

    .line 123
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    return-void
.end method

.method public isItemHorizontalTranslationEnabled()Z
    .locals 0

    .line 425
    iget-boolean p0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 206
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildCount()I

    move-result p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    move p3, p2

    move v0, p3

    :goto_0
    if-ge p3, p1, :cond_2

    .line 211
    invoke-virtual {p0, p3}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 212
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    goto :goto_2

    .line 215
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    sub-int v2, p4, v0

    .line 216
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {v1, v3, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 218
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v0, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 220
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 128
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 130
    iget-object p2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p2}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 132
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildCount()I

    move-result v0

    .line 134
    iget v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemHeight:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 136
    iget v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->labelVisibilityMode:I

    invoke-direct {p0, v3, p2}, Landroid/support/design/internal/BottomNavigationMenuView;->isShifting(II)Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    if-eqz v3, :cond_6

    .line 137
    iget v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    invoke-virtual {p0, v3}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 138
    iget v7, p0, Landroid/support/design/internal/BottomNavigationMenuView;->activeItemMinWidth:I

    .line 139
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v4, :cond_0

    .line 142
    iget v8, p0, Landroid/support/design/internal/BottomNavigationMenuView;->activeItemMaxWidth:I

    const/high16 v9, -0x80000000

    .line 143
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 142
    invoke-virtual {v3, v8, v1}, Landroid/view/View;->measure(II)V

    .line 144
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 146
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    sub-int/2addr p2, v3

    .line 147
    iget v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->inactiveItemMinWidth:I

    mul-int/2addr v3, p2

    sub-int v3, p1, v3

    .line 148
    iget v8, p0, Landroid/support/design/internal/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 149
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr p1, v3

    if-nez p2, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    move v7, p2

    .line 150
    :goto_1
    div-int v7, p1, v7

    .line 152
    iget v8, p0, Landroid/support/design/internal/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    mul-int/2addr p2, v7

    sub-int/2addr p1, p2

    move p2, p1

    move p1, v6

    :goto_2
    if-ge p1, v0, :cond_a

    .line 156
    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v4, :cond_4

    .line 157
    iget-object v8, p0, Landroid/support/design/internal/BottomNavigationMenuView;->tempChildWidths:[I

    iget v9, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    if-ne p1, v9, :cond_3

    move v9, v3

    goto :goto_3

    :cond_3
    move v9, v7

    :goto_3
    aput v9, v8, p1

    if-lez p2, :cond_5

    .line 162
    iget-object v8, p0, Landroid/support/design/internal/BottomNavigationMenuView;->tempChildWidths:[I

    aget v9, v8, p1

    add-int/2addr v9, v5

    aput v9, v8, p1

    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    .line 166
    :cond_4
    iget-object v8, p0, Landroid/support/design/internal/BottomNavigationMenuView;->tempChildWidths:[I

    aput v6, v8, p1

    :cond_5
    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    if-nez p2, :cond_7

    move v3, v5

    goto :goto_5

    :cond_7
    move v3, p2

    .line 170
    :goto_5
    div-int v3, p1, v3

    .line 171
    iget v7, p0, Landroid/support/design/internal/BottomNavigationMenuView;->activeItemMaxWidth:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int/2addr p2, v3

    sub-int/2addr p1, p2

    move p2, p1

    move p1, v6

    :goto_6
    if-ge p1, v0, :cond_a

    .line 174
    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v4, :cond_8

    .line 175
    iget-object v7, p0, Landroid/support/design/internal/BottomNavigationMenuView;->tempChildWidths:[I

    aput v3, v7, p1

    if-lez p2, :cond_9

    .line 177
    iget-object v7, p0, Landroid/support/design/internal/BottomNavigationMenuView;->tempChildWidths:[I

    aget v8, v7, p1

    add-int/2addr v8, v5

    aput v8, v7, p1

    add-int/lit8 p2, p2, -0x1

    goto :goto_7

    .line 181
    :cond_8
    iget-object v7, p0, Landroid/support/design/internal/BottomNavigationMenuView;->tempChildWidths:[I

    aput v6, v7, p1

    :cond_9
    :goto_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_a
    move p1, v6

    move p2, p1

    :goto_8
    if-ge p1, v0, :cond_c

    .line 188
    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 189
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v4, :cond_b

    goto :goto_9

    .line 192
    :cond_b
    iget-object v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->tempChildWidths:[I

    aget v5, v5, p1

    .line 193
    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 192
    invoke-virtual {v3, v5, v1}, Landroid/view/View;->measure(II)V

    .line 194
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 195
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 196
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr p2, v3

    :goto_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 200
    :cond_c
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 199
    invoke-static {p2, p1, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget p2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemHeight:I

    .line 201
    invoke-static {p2, v1, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 198
    invoke-virtual {p0, p1, p2}, Landroid/support/design/internal/BottomNavigationMenuView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 235
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    .line 236
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 237
    iget-object p0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 238
    invoke-virtual {v2, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 3

    .line 362
    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemBackgroundRes:I

    .line 363
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 364
    iget-object p0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 365
    invoke-virtual {v2, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setItemBackground(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 0

    .line 414
    iput-boolean p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .line 261
    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemIconSize:I

    .line 262
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 263
    iget-object p0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 264
    invoke-virtual {v2, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setIconSize(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 333
    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextAppearanceActive:I

    .line 334
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 336
    invoke-virtual {v3, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setTextAppearanceActive(I)V

    .line 339
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 340
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 304
    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextAppearanceInactive:I

    .line 305
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 307
    invoke-virtual {v3, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setTextAppearanceInactive(I)V

    .line 310
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 311
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 281
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 282
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 283
    iget-object p0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 284
    invoke-virtual {v2, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 0

    .line 393
    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->labelVisibilityMode:I

    return-void
.end method

.method public setPresenter(Landroid/support/design/internal/BottomNavigationPresenter;)V
    .locals 0

    .line 449
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    return-void
.end method

.method tryRestoreSelectedItemId(I)V
    .locals 4

    .line 549
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 551
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 552
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 553
    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemId:I

    .line 554
    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    const/4 p0, 0x1

    .line 555
    invoke-interface {v2, p0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public updateMenuView()V
    .locals 6

    .line 495
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 499
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 500
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 502
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->buildMenuView()V

    return-void

    .line 506
    :cond_1
    iget v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemId:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    .line 509
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4, v3}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 510
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 511
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemId:I

    .line 512
    iput v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 515
    :cond_3
    iget v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemId:I

    if-eq v1, v3, :cond_4

    .line 517
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->set:Landroid/support/transition/TransitionSet;

    invoke-static {p0, v1}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    .line 520
    :cond_4
    iget v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->labelVisibilityMode:I

    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v1, v3}, Landroid/support/design/internal/BottomNavigationMenuView;->isShifting(II)Z

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_5

    .line 522
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 523
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    aget-object v4, v4, v3

    iget v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->labelVisibilityMode:I

    invoke-virtual {v4, v5}, Landroid/support/design/internal/BottomNavigationItemView;->setLabelVisibilityMode(I)V

    .line 524
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Landroid/support/design/internal/BottomNavigationItemView;->setShifting(Z)V

    .line 525
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    aget-object v4, v4, v3

    iget-object v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v5, v3}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v4, v5, v2}, Landroid/support/design/internal/BottomNavigationItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 526
    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v4, v2}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    :goto_2
    return-void
.end method
