.class public Landroid/support/design/chip/Chip;
.super Landroid/support/v7/widget/AppCompatCheckBox;
.source "Chip.java"

# interfaces
.implements Landroid/support/design/chip/ChipDrawable$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/chip/Chip$ChipTouchHelper;
    }
.end annotation


# static fields
.field private static final CLOSE_ICON_VIRTUAL_ID:I = 0x0

.field private static final EMPTY_BOUNDS:Landroid/graphics/Rect;

.field private static final NAMESPACE_ANDROID:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final SELECTED_STATE:[I

.field private static final TAG:Ljava/lang/String; = "Chip"


# instance fields
.field private chipDrawable:Landroid/support/design/chip/ChipDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private closeIconFocused:Z

.field private closeIconHovered:Z

.field private closeIconPressed:Z

.field private deferredCheckedValue:Z

.field private focusedVirtualView:I

.field private onCheckedChangeListenerInternal:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private onCloseIconClickListener:Landroid/view/View$OnClickListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final rect:Landroid/graphics/Rect;

.field private final rectF:Landroid/graphics/RectF;

.field private ripple:Landroid/graphics/drawable/RippleDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/design/chip/Chip;->EMPTY_BOUNDS:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 116
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a1

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/chip/Chip;->SELECTED_STATE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 145
    sget v0, Landroid/support/design/R$attr;->chipStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 149
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x80000000

    .line 131
    iput v0, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/chip/Chip;->rect:Landroid/graphics/Rect;

    .line 138
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/chip/Chip;->rectF:Landroid/graphics/RectF;

    .line 150
    invoke-direct {p0, p2}, Landroid/support/design/chip/Chip;->validateAttributes(Landroid/util/AttributeSet;)V

    .line 151
    sget v0, Landroid/support/design/R$style;->Widget_MaterialComponents_Chip_Action:I

    .line 152
    invoke-static {p1, p2, p3, v0}, Landroid/support/design/chip/ChipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/design/chip/ChipDrawable;

    move-result-object p1

    .line 154
    invoke-virtual {p0, p1}, Landroid/support/design/chip/Chip;->setChipDrawable(Landroid/support/design/chip/ChipDrawable;)V

    const/4 p1, 0x0

    .line 157
    invoke-virtual {p0, p1}, Landroid/support/design/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 158
    new-instance p1, Landroid/support/design/chip/Chip$ChipTouchHelper;

    invoke-direct {p1, p0, p0}, Landroid/support/design/chip/Chip$ChipTouchHelper;-><init>(Landroid/support/design/chip/Chip;Landroid/support/design/chip/Chip;)V

    iput-object p1, p0, Landroid/support/design/chip/Chip;->touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;

    .line 159
    iget-object p1, p0, Landroid/support/design/chip/Chip;->touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    const/4 p1, 0x1

    .line 160
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 162
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->initOutlineProvider()V

    .line 163
    iget-boolean p1, p0, Landroid/support/design/chip/Chip;->deferredCheckedValue:Z

    invoke-virtual {p0, p1}, Landroid/support/design/chip/Chip;->setChecked(Z)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/design/chip/Chip;)Landroid/support/design/chip/ChipDrawable;
    .locals 0

    .line 109
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    return-object p0
.end method

.method static synthetic access$100(Landroid/support/design/chip/Chip;)Z
    .locals 0

    .line 109
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->hasCloseIcon()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/support/design/chip/Chip;)Landroid/graphics/RectF;
    .locals 0

    .line 109
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/support/design/chip/Chip;)Landroid/graphics/Rect;
    .locals 0

    .line 109
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()Landroid/graphics/Rect;
    .locals 1

    .line 109
    sget-object v0, Landroid/support/design/chip/Chip;->EMPTY_BOUNDS:Landroid/graphics/Rect;

    return-object v0
.end method

.method private applyChipDrawable(Landroid/support/design/chip/ChipDrawable;)V
    .locals 0
    .param p1    # Landroid/support/design/chip/ChipDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 247
    invoke-virtual {p1, p0}, Landroid/support/design/chip/ChipDrawable;->setDelegate(Landroid/support/design/chip/ChipDrawable$Delegate;)V

    return-void
.end method

.method private createCloseIconDrawableState()[I
    .locals 4

    .line 758
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 761
    :goto_0
    iget-boolean v3, p0, Landroid/support/design/chip/Chip;->closeIconFocused:Z

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 764
    :cond_1
    iget-boolean v3, p0, Landroid/support/design/chip/Chip;->closeIconHovered:Z

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 767
    :cond_2
    iget-boolean v3, p0, Landroid/support/design/chip/Chip;->closeIconPressed:Z

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 770
    :cond_3
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 774
    :cond_4
    new-array v0, v0, [I

    .line 777
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x101009e

    .line 778
    aput v3, v0, v1

    move v1, v2

    .line 781
    :cond_5
    iget-boolean v2, p0, Landroid/support/design/chip/Chip;->closeIconFocused:Z

    if-eqz v2, :cond_6

    const v2, 0x101009c

    .line 782
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 785
    :cond_6
    iget-boolean v2, p0, Landroid/support/design/chip/Chip;->closeIconHovered:Z

    if-eqz v2, :cond_7

    const v2, 0x1010367

    .line 786
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 789
    :cond_7
    iget-boolean v2, p0, Landroid/support/design/chip/Chip;->closeIconPressed:Z

    if-eqz v2, :cond_8

    const v2, 0x10100a7

    .line 790
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 793
    :cond_8
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_9

    const p0, 0x10100a1

    .line 794
    aput p0, v0, v1

    :cond_9
    return-object v0
.end method

.method private ensureFocus()V
    .locals 2

    .line 694
    iget v0, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    .line 695
    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->setFocusedVirtualView(I)V

    :cond_0
    return-void
.end method

.method private getCloseIconTouchBounds()Landroid/graphics/RectF;
    .locals 2

    .line 805
    iget-object v0, p0, Landroid/support/design/chip/Chip;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 807
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->hasCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    iget-object v1, p0, Landroid/support/design/chip/Chip;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/support/design/chip/ChipDrawable;->getCloseIconTouchBounds(Landroid/graphics/RectF;)V

    .line 812
    :cond_0
    iget-object p0, p0, Landroid/support/design/chip/Chip;->rectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method private getCloseIconTouchBoundsInt()Landroid/graphics/Rect;
    .locals 5

    .line 816
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 817
    iget-object v1, p0, Landroid/support/design/chip/Chip;->rect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 818
    iget-object p0, p0, Landroid/support/design/chip/Chip;->rect:Landroid/graphics/Rect;

    return-object p0
.end method

.method private handleAccessibilityExit(Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 558
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 560
    :try_start_0
    const-class p1, Landroid/support/v4/widget/ExploreByTouchHelper;

    const-string v1, "mHoveredVirtualViewId"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v1, 0x1

    .line 561
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 562
    iget-object v2, p0, Landroid/support/design/chip/Chip;->touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/high16 v2, -0x80000000

    if-eq p1, v2, :cond_0

    .line 565
    const-class p1, Landroid/support/v4/widget/ExploreByTouchHelper;

    const-string v3, "updateHoveredVirtualView"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    .line 566
    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 567
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 568
    iget-object p0, p0, Landroid/support/design/chip/Chip;->touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-virtual {p1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    const-string p1, "Chip"

    const-string v1, "Unable to send Accessibility Exit event"

    .line 582
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "Chip"

    const-string v1, "Unable to send Accessibility Exit event"

    .line 579
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p0

    const-string p1, "Chip"

    const-string v1, "Unable to send Accessibility Exit event"

    .line 576
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception p0

    const-string p1, "Chip"

    const-string v1, "Unable to send Accessibility Exit event"

    .line 573
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method

.method private hasCloseIcon()Z
    .locals 1

    .line 801
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private initOutlineProvider()V
    .locals 2

    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 196
    new-instance v0, Landroid/support/design/chip/Chip$1;

    invoke-direct {v0, p0}, Landroid/support/design/chip/Chip$1;-><init>(Landroid/support/design/chip/Chip;)V

    invoke-virtual {p0, v0}, Landroid/support/design/chip/Chip;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_0
    return-void
.end method

.method private moveFocus(Z)Z
    .locals 3

    .line 677
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->ensureFocus()V

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 680
    iget p1, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    if-ne p1, v1, :cond_1

    .line 681
    invoke-direct {p0, v2}, Landroid/support/design/chip/Chip;->setFocusedVirtualView(I)V

    goto :goto_0

    .line 685
    :cond_0
    iget p1, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    if-nez p1, :cond_1

    .line 686
    invoke-direct {p0, v1}, Landroid/support/design/chip/Chip;->setFocusedVirtualView(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0
.end method

.method private setCloseIconFocused(Z)V
    .locals 1

    .line 735
    iget-boolean v0, p0, Landroid/support/design/chip/Chip;->closeIconFocused:Z

    if-eq v0, p1, :cond_0

    .line 736
    iput-boolean p1, p0, Landroid/support/design/chip/Chip;->closeIconFocused:Z

    .line 737
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method private setCloseIconHovered(Z)V
    .locals 1

    .line 728
    iget-boolean v0, p0, Landroid/support/design/chip/Chip;->closeIconHovered:Z

    if-eq v0, p1, :cond_0

    .line 729
    iput-boolean p1, p0, Landroid/support/design/chip/Chip;->closeIconHovered:Z

    .line 730
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method private setCloseIconPressed(Z)V
    .locals 1

    .line 721
    iget-boolean v0, p0, Landroid/support/design/chip/Chip;->closeIconPressed:Z

    if-eq v0, p1, :cond_0

    .line 722
    iput-boolean p1, p0, Landroid/support/design/chip/Chip;->closeIconPressed:Z

    .line 723
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method private setFocusedVirtualView(I)V
    .locals 1

    .line 709
    iget v0, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    if-eq v0, p1, :cond_1

    .line 710
    iget v0, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 711
    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->setCloseIconFocused(Z)V

    .line 713
    :cond_0
    iput p1, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 715
    invoke-direct {p0, p1}, Landroid/support/design/chip/Chip;->setCloseIconFocused(Z)V

    :cond_1
    return-void
.end method

.method private unapplyChipDrawable(Landroid/support/design/chip/ChipDrawable;)V
    .locals 0
    .param p1    # Landroid/support/design/chip/ChipDrawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 242
    invoke-virtual {p1, p0}, Landroid/support/design/chip/ChipDrawable;->setDelegate(Landroid/support/design/chip/ChipDrawable$Delegate;)V

    :cond_0
    return-void
.end method

.method private validateAttributes(Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p0, "http://schemas.android.com/apk/res/android"

    const-string v0, "background"

    .line 170
    invoke-interface {p1, p0, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 171
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Do not set the background; Chip manages its own background drawable."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "http://schemas.android.com/apk/res/android"

    const-string v0, "drawableLeft"

    .line 174
    invoke-interface {p1, p0, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 175
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string p0, "http://schemas.android.com/apk/res/android"

    const-string v0, "drawableStart"

    .line 177
    invoke-interface {p1, p0, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 178
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string p0, "http://schemas.android.com/apk/res/android"

    const-string v0, "drawableEnd"

    .line 180
    invoke-interface {p1, p0, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 181
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string p0, "http://schemas.android.com/apk/res/android"

    const-string v0, "drawableRight"

    .line 183
    invoke-interface {p1, p0, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 184
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string p0, "http://schemas.android.com/apk/res/android"

    const-string v0, "singleLine"

    const/4 v1, 0x1

    .line 186
    invoke-interface {p1, p0, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "http://schemas.android.com/apk/res/android"

    const-string v0, "lines"

    .line 187
    invoke-interface {p1, p0, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_7

    const-string p0, "http://schemas.android.com/apk/res/android"

    const-string v0, "minLines"

    .line 188
    invoke-interface {p1, p0, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_7

    const-string p0, "http://schemas.android.com/apk/res/android"

    const-string v0, "maxLines"

    .line 189
    invoke-interface {p1, p0, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v1, :cond_6

    goto :goto_0

    :cond_6
    return-void

    .line 190
    :cond_7
    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Chip does not support multi-line text"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 590
    invoke-direct {p0, p1}, Landroid/support/design/chip/Chip;->handleAccessibilityExit(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/design/chip/Chip;->touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;

    .line 591
    invoke-virtual {v0, p1}, Landroid/support/design/chip/Chip$ChipTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 592
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

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

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 597
    iget-object v0, p0, Landroid/support/design/chip/Chip;->touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/chip/Chip$ChipTouchHelper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

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

.method protected drawableStateChanged()V
    .locals 2

    .line 743
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatCheckBox;->drawableStateChanged()V

    .line 747
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->isCloseIconStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-direct {p0}, Landroid/support/design/chip/Chip;->createCloseIconDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconState([I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 752
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->invalidate()V

    :cond_1
    return-void
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1196
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getCheckedIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 905
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getChipBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getChipCornerRadius()F
    .locals 1

    .line 937
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getChipCornerRadius()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getChipDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 213
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    return-object p0
.end method

.method public getChipEndPadding()F
    .locals 1

    .line 1358
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getChipEndPadding()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1054
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getChipIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getChipIconSize()F
    .locals 1

    .line 1070
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getChipIconSize()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getChipMinHeight()F
    .locals 1

    .line 921
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getChipMinHeight()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getChipStartPadding()F
    .locals 1

    .line 1246
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getChipStartPadding()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 954
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getChipStrokeColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getChipStrokeWidth()F
    .locals 1

    .line 970
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getChipStrokeWidth()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getChipText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1004
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1103
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1159
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getCloseIconContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCloseIconEndPadding()F
    .locals 1

    .line 1342
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getCloseIconEndPadding()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCloseIconSize()F
    .locals 1

    .line 1136
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getCloseIconSize()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCloseIconStartPadding()F
    .locals 1

    .line 1326
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getCloseIconStartPadding()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1120
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getCloseIconTint()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .line 393
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 701
    iget v0, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    if-nez v0, :cond_0

    .line 702
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 704
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->getFocusedRect(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public getHideMotionSpec()Landroid/support/design/animation/MotionSpec;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1230
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getHideMotionSpec()Landroid/support/design/animation/MotionSpec;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getIconEndPadding()F
    .locals 1

    .line 1278
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getIconEndPadding()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getIconStartPadding()F
    .locals 1

    .line 1262
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getIconStartPadding()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 987
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getShowMotionSpec()Landroid/support/design/animation/MotionSpec;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1213
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getShowMotionSpec()Landroid/support/design/animation/MotionSpec;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getTextAppearance()Landroid/support/design/resources/TextAppearance;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1021
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getTextAppearance()Landroid/support/design/resources/TextAppearance;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getTextEndPadding()F
    .locals 1

    .line 1310
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getTextEndPadding()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getTextStartPadding()F
    .locals 1

    .line 1294
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getTextStartPadding()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCheckable()Z
    .locals 1

    .line 1163
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->isCheckable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCheckedIconEnabled()Z
    .locals 1

    .line 1179
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->isCheckedIconEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isChipIconEnabled()Z
    .locals 1

    .line 1037
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->isChipIconEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCloseIconEnabled()Z
    .locals 1

    .line 1086
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->isCloseIconEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onChipDrawableSizeChange()V
    .locals 2

    .line 440
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->requestLayout()V

    .line 441
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 442
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->invalidateOutline()V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 252
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 253
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 254
    sget-object p0, Landroid/support/design/chip/Chip;->SELECTED_STATE:[I

    invoke-static {p1, p0}, Landroid/support/design/chip/Chip;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 604
    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->setFocusedVirtualView(I)V

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    .line 606
    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->setFocusedVirtualView(I)V

    .line 608
    :goto_0
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->invalidate()V

    .line 610
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatCheckBox;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 611
    iget-object p0, p0, Landroid/support/design/chip/Chip;->touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/chip/Chip$ChipTouchHelper;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 538
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 544
    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->setCloseIconHovered(Z)V

    goto :goto_0

    .line 541
    :cond_1
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->setCloseIconHovered(Z)V

    .line 549
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 620
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 627
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 628
    invoke-static {p0}, Landroid/support/design/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->moveFocus(Z)Z

    move-result v2

    goto :goto_1

    .line 622
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 623
    invoke-static {p0}, Landroid/support/design/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->moveFocus(Z)Z

    move-result v2

    goto :goto_1

    .line 633
    :cond_0
    :pswitch_2
    iget v0, p0, Landroid/support/design/chip/Chip;->focusedVirtualView:I

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 638
    :pswitch_3
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->performCloseIconClick()Z

    return v3

    .line 635
    :pswitch_4
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->performClick()Z

    return v3

    .line 647
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 649
    :cond_2
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    if-eqz v0, :cond_6

    .line 653
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v4, p0

    .line 657
    :cond_4
    invoke-virtual {v4, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    if-eq v4, p0, :cond_5

    .line 658
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eq v5, v1, :cond_4

    :cond_5
    if-eqz v4, :cond_6

    .line 660
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    return v3

    :cond_6
    :goto_1
    if-eqz v2, :cond_7

    .line 669
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->invalidate()V

    return v3

    .line 672
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatCheckBox;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 824
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 825
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0x3ea

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 504
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 505
    invoke-direct {p0}, Landroid/support/design/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 514
    :pswitch_0
    iget-boolean v0, p0, Landroid/support/design/chip/Chip;->closeIconPressed:Z

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    .line 516
    invoke-direct {p0, v2}, Landroid/support/design/chip/Chip;->setCloseIconPressed(Z)V

    goto :goto_1

    .line 522
    :pswitch_1
    iget-boolean v0, p0, Landroid/support/design/chip/Chip;->closeIconPressed:Z

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->performCloseIconClick()Z

    move v0, v3

    goto :goto_0

    :cond_0
    :pswitch_2
    move v0, v2

    .line 528
    :goto_0
    invoke-direct {p0, v2}, Landroid/support/design/chip/Chip;->setCloseIconPressed(Z)V

    goto :goto_3

    :pswitch_3
    if-eqz v1, :cond_2

    .line 509
    invoke-direct {p0, v3}, Landroid/support/design/chip/Chip;->setCloseIconPressed(Z)V

    :cond_1
    :goto_1
    move v0, v3

    goto :goto_3

    :cond_2
    :goto_2
    move v0, v2

    :goto_3
    if-nez v0, :cond_3

    .line 533
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public performCloseIconClick()Z
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    .line 485
    invoke-virtual {p0, v0}, Landroid/support/design/chip/Chip;->playSoundEffect(I)V

    .line 488
    iget-object v1, p0, Landroid/support/design/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Landroid/support/design/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 495
    :goto_0
    iget-object p0, p0, Landroid/support/design/chip/Chip;->touchHelper:Landroid/support/design/chip/Chip$ChipTouchHelper;

    invoke-virtual {p0, v0, v2}, Landroid/support/design/chip/Chip$ChipTouchHelper;->sendEventForVirtualView(II)Z

    return v1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 285
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_0

    .line 286
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Do not set the background; Chip manages its own background drawable."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 289
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 273
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Do not set the background color; Chip manages its own background drawable."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 295
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_0

    .line 296
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Do not set the background drawable; Chip manages its own background drawable."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 299
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    .line 279
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Do not set the background resource; Chip manages its own background drawable."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 261
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Do not set the background tint list; Chip manages its own background drawable."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 267
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Do not set the background tint mode; Chip manages its own background drawable."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCheckable(Z)V
    .locals 1

    .line 1173
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1174
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCheckable(Z)V

    :cond_0
    return-void
.end method

.method public setCheckableResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 1167
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1168
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCheckableResource(I)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 448
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-nez v0, :cond_0

    .line 450
    iput-boolean p1, p0, Landroid/support/design/chip/Chip;->deferredCheckedValue:Z

    goto :goto_0

    .line 451
    :cond_0
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {p0}, Landroid/support/design/chip/Chip;->isChecked()Z

    move-result v0

    .line 453
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    if-eq v0, p1, :cond_1

    .line 456
    iget-object v0, p0, Landroid/support/design/chip/Chip;->onCheckedChangeListenerInternal:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Landroid/support/design/chip/Chip;->onCheckedChangeListenerInternal:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1206
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1207
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .locals 1

    .line 1189
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1190
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCheckedIconEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 1183
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1184
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCheckedIconEnabledResource(I)V

    :cond_0
    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1200
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1201
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCheckedIconResource(I)V

    :cond_0
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 915
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 916
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 909
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 910
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipBackgroundColorResource(I)V

    :cond_0
    return-void
.end method

.method public setChipCornerRadius(F)V
    .locals 1

    .line 947
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 948
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipCornerRadius(F)V

    :cond_0
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 941
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 942
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipCornerRadiusResource(I)V

    :cond_0
    return-void
.end method

.method public setChipDrawable(Landroid/support/design/chip/ChipDrawable;)V
    .locals 3
    .param p1    # Landroid/support/design/chip/ChipDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 218
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eq v0, p1, :cond_1

    .line 219
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-direct {p0, v0}, Landroid/support/design/chip/Chip;->unapplyChipDrawable(Landroid/support/design/chip/ChipDrawable;)V

    .line 220
    iput-object p1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    .line 221
    iget-object p1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-direct {p0, p1}, Landroid/support/design/chip/Chip;->applyChipDrawable(Landroid/support/design/chip/ChipDrawable;)V

    .line 223
    sget-boolean p1, Landroid/support/design/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz p1, :cond_0

    .line 225
    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    .line 227
    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroid/support/design/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    .line 230
    iget-object p1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/chip/ChipDrawable;->setUseCompatRipple(Z)V

    .line 232
    iget-object p1, p0, Landroid/support/design/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object p1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/design/chip/ChipDrawable;->setUseCompatRipple(Z)V

    .line 235
    iget-object p1, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setChipEndPadding(F)V
    .locals 1

    .line 1368
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1369
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipEndPadding(F)V

    :cond_0
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1362
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1363
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipEndPaddingResource(I)V

    :cond_0
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1064
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1065
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .locals 1

    .line 1047
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1048
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipIconEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 1041
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1042
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipIconEnabledResource(I)V

    :cond_0
    return-void
.end method

.method public setChipIconResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1058
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1059
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipIconResource(I)V

    :cond_0
    return-void
.end method

.method public setChipIconSize(F)V
    .locals 1

    .line 1080
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1081
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipIconSize(F)V

    :cond_0
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1074
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1075
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipIconSizeResource(I)V

    :cond_0
    return-void
.end method

.method public setChipMinHeight(F)V
    .locals 1

    .line 931
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 932
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipMinHeight(F)V

    :cond_0
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 925
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 926
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipMinHeightResource(I)V

    :cond_0
    return-void
.end method

.method public setChipStartPadding(F)V
    .locals 1

    .line 1256
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1257
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipStartPadding(F)V

    :cond_0
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1250
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1251
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipStartPaddingResource(I)V

    :cond_0
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 964
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 965
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 958
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 959
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipStrokeColorResource(I)V

    :cond_0
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .locals 1

    .line 980
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 981
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 974
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 975
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipStrokeWidthResource(I)V

    :cond_0
    return-void
.end method

.method public setChipText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1014
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1015
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setChipTextResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 1008
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1009
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setTextResource(I)V

    :cond_0
    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1113
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1114
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1152
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1153
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .locals 1

    .line 1096
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1097
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 1090
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1091
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconEnabledResource(I)V

    :cond_0
    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .locals 1

    .line 1352
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1353
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconEndPadding(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1346
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1347
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconEndPaddingResource(I)V

    :cond_0
    return-void
.end method

.method public setCloseIconResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1107
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1108
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconResource(I)V

    :cond_0
    return-void
.end method

.method public setCloseIconSize(F)V
    .locals 1

    .line 1146
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1147
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconSize(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1140
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1141
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconSizeResource(I)V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .locals 1

    .line 1336
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1337
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconStartPadding(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1330
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1331
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconStartPaddingResource(I)V

    :cond_0
    return-void
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1130
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1131
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 1124
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1125
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconTintResource(I)V

    :cond_0
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 310
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-eqz p3, :cond_1

    .line 313
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 316
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatCheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 354
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-eqz p3, :cond_1

    .line 357
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 360
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatCheckBox;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 0

    if-eqz p1, :cond_0

    .line 367
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-eqz p3, :cond_1

    .line 370
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 373
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatCheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 383
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-eqz p3, :cond_1

    .line 386
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 388
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatCheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 0

    if-eqz p1, :cond_0

    .line 322
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-eqz p3, :cond_1

    .line 325
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 328
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatCheckBox;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 338
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-eqz p3, :cond_1

    .line 341
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set right drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 344
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatCheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    .line 398
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_0

    .line 399
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Text within a chip are not allowed to scroll."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 401
    :cond_0
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_1

    .line 402
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_1
    return-void
.end method

.method public setHideMotionSpec(Landroid/support/design/animation/MotionSpec;)V
    .locals 1
    .param p1    # Landroid/support/design/animation/MotionSpec;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1240
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1241
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setHideMotionSpec(Landroid/support/design/animation/MotionSpec;)V

    :cond_0
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 1234
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1235
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setHideMotionSpecResource(I)V

    :cond_0
    return-void
.end method

.method public setIconEndPadding(F)V
    .locals 1

    .line 1288
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1289
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setIconEndPadding(F)V

    :cond_0
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1282
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1283
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setIconEndPaddingResource(I)V

    :cond_0
    return-void
.end method

.method public setIconStartPadding(F)V
    .locals 1

    .line 1272
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1273
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setIconStartPadding(F)V

    :cond_0
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1266
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1267
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setIconStartPaddingResource(I)V

    :cond_0
    return-void
.end method

.method public setLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 417
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Chip does not support multi-line text"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 419
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->setLines(I)V

    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 433
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Chip does not support multi-line text"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 435
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->setMaxLines(I)V

    return-void
.end method

.method public setMinLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 425
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Chip does not support multi-line text"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 427
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->setMinLines(I)V

    return-void
.end method

.method setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 468
    iput-object p1, p0, Landroid/support/design/chip/Chip;->onCheckedChangeListenerInternal:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 473
    iput-object p1, p0, Landroid/support/design/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 997
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 998
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setRippleColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 991
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 992
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setRippleColorResource(I)V

    :cond_0
    return-void
.end method

.method public setShowMotionSpec(Landroid/support/design/animation/MotionSpec;)V
    .locals 1
    .param p1    # Landroid/support/design/animation/MotionSpec;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1223
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1224
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setShowMotionSpec(Landroid/support/design/animation/MotionSpec;)V

    :cond_0
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 1217
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1218
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setShowMotionSpecResource(I)V

    :cond_0
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 409
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Chip does not support multi-line text"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 411
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->setSingleLine(Z)V

    return-void
.end method

.method public setTextAppearance(Landroid/support/design/resources/TextAppearance;)V
    .locals 1
    .param p1    # Landroid/support/design/resources/TextAppearance;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1031
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1032
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setTextAppearance(Landroid/support/design/resources/TextAppearance;)V

    :cond_0
    return-void
.end method

.method public setTextAppearanceResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 1025
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1026
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setTextAppearanceResource(I)V

    :cond_0
    return-void
.end method

.method public setTextEndPadding(F)V
    .locals 1

    .line 1320
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1321
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setTextEndPadding(F)V

    :cond_0
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1314
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1315
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setTextEndPaddingResource(I)V

    :cond_0
    return-void
.end method

.method public setTextStartPadding(F)V
    .locals 1

    .line 1304
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1305
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setTextStartPadding(F)V

    :cond_0
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1298
    iget-object v0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1299
    iget-object p0, p0, Landroid/support/design/chip/Chip;->chipDrawable:Landroid/support/design/chip/ChipDrawable;

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setTextStartPaddingResource(I)V

    :cond_0
    return-void
.end method
