.class public Landroid/support/design/widget/BottomNavigationView;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BottomNavigationView$SavedState;,
        Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;,
        Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# static fields
.field private static final MENU_PRESENTER_ID:I = 0x1


# instance fields
.field private final menu:Landroid/support/v7/view/menu/MenuBuilder;

.field private menuInflater:Landroid/view/MenuInflater;

.field private final menuView:Landroid/support/design/internal/BottomNavigationMenuView;

.field private final presenter:Landroid/support/design/internal/BottomNavigationPresenter;

.field private reselectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;

.field private selectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 113
    sget v0, Landroid/support/design/R$attr;->bottomNavigationStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    new-instance v0, Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-direct {v0}, Landroid/support/design/internal/BottomNavigationPresenter;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    .line 120
    new-instance v0, Landroid/support/design/internal/BottomNavigationMenu;

    invoke-direct {v0, p1}, Landroid/support/design/internal/BottomNavigationMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 122
    new-instance v0, Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-direct {v0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    .line 123
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 126
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 127
    iget-object v1, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v1, v0}, Landroid/support/design/internal/BottomNavigationMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v1, p0, Landroid/support/design/widget/BottomNavigationView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    iget-object v2, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v1, v2}, Landroid/support/design/internal/BottomNavigationPresenter;->setBottomNavigationMenuView(Landroid/support/design/internal/BottomNavigationMenuView;)V

    .line 130
    iget-object v1, p0, Landroid/support/design/widget/BottomNavigationView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/design/internal/BottomNavigationPresenter;->setId(I)V

    .line 131
    iget-object v1, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v1, v3}, Landroid/support/design/internal/BottomNavigationMenuView;->setPresenter(Landroid/support/design/internal/BottomNavigationPresenter;)V

    .line 132
    iget-object v1, p0, Landroid/support/design/widget/BottomNavigationView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v1, v3}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 133
    iget-object v1, p0, Landroid/support/design/widget/BottomNavigationView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {p0}, Landroid/support/design/widget/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/support/design/widget/BottomNavigationView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1, v3, v4}, Landroid/support/design/internal/BottomNavigationPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 136
    sget-object v1, Landroid/support/design/R$styleable;->BottomNavigationView:[I

    sget v3, Landroid/support/design/R$style;->Widget_Design_BottomNavigationView:I

    .line 137
    invoke-static {p1, p2, v1, p3, v3}, Landroid/support/design/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object p2

    .line 144
    sget p3, Landroid/support/design/R$styleable;->BottomNavigationView_itemIconTint:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 145
    iget-object p3, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    sget v1, Landroid/support/design/R$styleable;->BottomNavigationView_itemIconTint:I

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/support/design/internal/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object p3, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    iget-object v1, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    const v3, 0x1010038

    .line 148
    invoke-virtual {v1, v3}, Landroid/support/design/internal/BottomNavigationMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 147
    invoke-virtual {p3, v1}, Landroid/support/design/internal/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 151
    :goto_0
    sget p3, Landroid/support/design/R$styleable;->BottomNavigationView_itemIconSize:I

    .line 154
    invoke-virtual {p0}, Landroid/support/design/widget/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Landroid/support/design/R$dimen;->design_bottom_navigation_icon_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 152
    invoke-virtual {p2, p3, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 151
    invoke-virtual {p0, p3}, Landroid/support/design/widget/BottomNavigationView;->setItemIconSize(I)V

    .line 155
    sget p3, Landroid/support/design/R$styleable;->BottomNavigationView_itemTextAppearanceInactive:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 156
    sget p3, Landroid/support/design/R$styleable;->BottomNavigationView_itemTextAppearanceInactive:I

    .line 157
    invoke-virtual {p2, p3, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    .line 156
    invoke-virtual {p0, p3}, Landroid/support/design/widget/BottomNavigationView;->setItemTextAppearanceInactive(I)V

    .line 159
    :cond_1
    sget p3, Landroid/support/design/R$styleable;->BottomNavigationView_itemTextAppearanceActive:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 160
    sget p3, Landroid/support/design/R$styleable;->BottomNavigationView_itemTextAppearanceActive:I

    .line 161
    invoke-virtual {p2, p3, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    .line 160
    invoke-virtual {p0, p3}, Landroid/support/design/widget/BottomNavigationView;->setItemTextAppearanceActive(I)V

    .line 164
    :cond_2
    sget p3, Landroid/support/design/R$styleable;->BottomNavigationView_itemTextColor:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 165
    sget p3, Landroid/support/design/R$styleable;->BottomNavigationView_itemTextColor:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/support/design/widget/BottomNavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 168
    :cond_3
    sget p3, Landroid/support/design/R$styleable;->BottomNavigationView_elevation:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 169
    sget p3, Landroid/support/design/R$styleable;->BottomNavigationView_elevation:I

    .line 170
    invoke-virtual {p2, p3, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    .line 169
    invoke-static {p0, p3}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 173
    :cond_4
    sget p3, Landroid/support/design/R$styleable;->BottomNavigationView_labelVisibilityMode:I

    const/4 v3, -0x1

    .line 174
    invoke-virtual {p2, p3, v3}, Landroid/support/v7/widget/TintTypedArray;->getInteger(II)I

    move-result p3

    .line 173
    invoke-virtual {p0, p3}, Landroid/support/design/widget/BottomNavigationView;->setLabelVisibilityMode(I)V

    .line 177
    sget p3, Landroid/support/design/R$styleable;->BottomNavigationView_itemHorizontalTranslationEnabled:I

    .line 178
    invoke-virtual {p2, p3, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 177
    invoke-virtual {p0, p3}, Landroid/support/design/widget/BottomNavigationView;->setItemHorizontalTranslationEnabled(Z)V

    .line 180
    sget p3, Landroid/support/design/R$styleable;->BottomNavigationView_itemBackground:I

    invoke-virtual {p2, p3, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    .line 181
    iget-object v2, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v2, p3}, Landroid/support/design/internal/BottomNavigationMenuView;->setItemBackgroundRes(I)V

    .line 183
    sget p3, Landroid/support/design/R$styleable;->BottomNavigationView_menu:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 184
    sget p3, Landroid/support/design/R$styleable;->BottomNavigationView_menu:I

    invoke-virtual {p2, p3, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/support/design/widget/BottomNavigationView;->inflateMenu(I)V

    .line 186
    :cond_5
    invoke-virtual {p2}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 188
    iget-object p2, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p0, p2, v0}, Landroid/support/design/widget/BottomNavigationView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-ge p2, p3, :cond_6

    .line 190
    invoke-direct {p0, p1}, Landroid/support/design/widget/BottomNavigationView;->addCompatibilityTopDivider(Landroid/content/Context;)V

    .line 193
    :cond_6
    iget-object p1, p0, Landroid/support/design/widget/BottomNavigationView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    new-instance p2, Landroid/support/design/widget/BottomNavigationView$1;

    invoke-direct {p2, p0}, Landroid/support/design/widget/BottomNavigationView$1;-><init>(Landroid/support/design/widget/BottomNavigationView;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/BottomNavigationView;)Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;
    .locals 0

    .line 96
    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView;->reselectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;

    return-object p0
.end method

.method static synthetic access$100(Landroid/support/design/widget/BottomNavigationView;)Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;
    .locals 0

    .line 96
    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView;->selectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    return-object p0
.end method

.method private addCompatibilityTopDivider(Landroid/content/Context;)V
    .locals 3

    .line 506
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 507
    sget v1, Landroid/support/design/R$color;->design_bottom_navigation_shadow_color:I

    .line 508
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 507
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 509
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 512
    invoke-virtual {p0}, Landroid/support/design/widget/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/design/R$dimen;->design_bottom_navigation_shadow_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p1, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 513
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomNavigationView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 518
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->menuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 519
    new-instance v0, Landroid/support/v7/view/SupportMenuInflater;

    invoke-virtual {p0}, Landroid/support/design/widget/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->menuInflater:Landroid/view/MenuInflater;

    .line 521
    :cond_0
    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView;->menuInflater:Landroid/view/MenuInflater;

    return-object p0
.end method


# virtual methods
.method public getItemBackgroundResource()I
    .locals 0
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .line 347
    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getItemBackgroundRes()I

    move-result p0

    return p0
.end method

.method public getItemIconSize()I
    .locals 0
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .line 312
    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getItemIconSize()I

    move-result p0

    return p0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 267
    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getItemTextAppearanceActive()I
    .locals 0
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    .line 452
    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getItemTextAppearanceActive()I

    move-result p0

    return p0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 0
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    .line 433
    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getItemTextAppearanceInactive()I

    move-result p0

    return p0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 325
    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getLabelVisibilityMode()I
    .locals 0

    .line 414
    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getLabelVisibilityMode()I

    move-result p0

    return p0
.end method

.method public getMaxItemCount()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 237
    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object p0
.end method

.method public getSelectedItemId()I
    .locals 0
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation

    .line 367
    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getSelectedItemId()I

    move-result p0

    return p0
.end method

.method public inflateMenu(I)V
    .locals 3

    .line 248
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 249
    invoke-direct {p0}, Landroid/support/design/widget/BottomNavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v2, p0, Landroid/support/design/widget/BottomNavigationView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 250
    iget-object p1, p0, Landroid/support/design/widget/BottomNavigationView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 251
    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {p0, v1}, Landroid/support/design/internal/BottomNavigationPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public isItemHorizontalTranslationEnabled()Z
    .locals 0

    .line 477
    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    move-result p0

    return p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 535
    instance-of v0, p1, Landroid/support/design/widget/BottomNavigationView$SavedState;

    if-nez v0, :cond_0

    .line 536
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 539
    :cond_0
    check-cast p1, Landroid/support/design/widget/BottomNavigationView$SavedState;

    .line 540
    invoke-virtual {p1}, Landroid/support/design/widget/BottomNavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 541
    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object p1, p1, Landroid/support/design/widget/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 526
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 527
    new-instance v1, Landroid/support/design/widget/BottomNavigationView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/design/widget/BottomNavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 528
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Landroid/support/design/widget/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    .line 529
    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v0, v1, Landroid/support/design/widget/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public setItemBackgroundResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 357
    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->setItemBackgroundRes(I)V

    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 1

    .line 463
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 464
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->setItemHorizontalTranslationEnabled(Z)V

    .line 465
    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationPresenter;->updateMenuView(Z)V

    :cond_0
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .line 289
    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconSizeRes(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 301
    invoke-virtual {p0}, Landroid/support/design/widget/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/BottomNavigationView;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 277
    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 442
    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->setItemTextAppearanceActive(I)V

    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 423
    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->setItemTextAppearanceInactive(I)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 336
    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 1

    .line 400
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->getLabelVisibilityMode()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 401
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->setLabelVisibilityMode(I)V

    .line 402
    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationPresenter;->updateMenuView(Z)V

    :cond_0
    return-void
.end method

.method public setOnNavigationItemReselectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;)V
    .locals 0
    .param p1    # Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 231
    iput-object p1, p0, Landroid/support/design/widget/BottomNavigationView;->reselectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;

    return-void
.end method

.method public setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V
    .locals 0
    .param p1    # Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 219
    iput-object p1, p0, Landroid/support/design/widget/BottomNavigationView;->selectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 377
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 379
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 380
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
