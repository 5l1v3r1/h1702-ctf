.class public Landroid/support/design/chip/ChipDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ChipDrawable.java"

# interfaces
.implements Landroid/support/v4/graphics/drawable/TintAwareDrawable;
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/chip/ChipDrawable$Delegate;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_STATE:[I


# instance fields
.field private alpha:I

.field private checkable:Z

.field private checkedIcon:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private checkedIconEnabled:Z

.field private chipBackgroundColor:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private chipCornerRadius:F

.field private chipEndPadding:F

.field private chipIcon:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private chipIconEnabled:Z

.field private chipIconSize:F

.field private chipMinHeight:F

.field private final chipPaint:Landroid/graphics/Paint;

.field private chipStartPadding:F

.field private chipStrokeColor:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private chipStrokeWidth:F

.field private closeIcon:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private closeIconContentDescription:Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private closeIconEnabled:Z

.field private closeIconEndPadding:F

.field private closeIconSize:F

.field private closeIconStartPadding:F

.field private closeIconStateSet:[I

.field private closeIconTint:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private colorFilter:Landroid/graphics/ColorFilter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private compatRippleColor:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private currentChecked:Z

.field private currentChipBackgroundColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private currentChipStrokeColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private currentCompatRippleColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private currentTextColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private currentTint:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final debugPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private delegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/design/chip/ChipDrawable$Delegate;",
            ">;"
        }
    .end annotation
.end field

.field private final fontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private hideMotionSpec:Landroid/support/design/animation/MotionSpec;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private iconEndPadding:F

.field private iconStartPadding:F

.field private final pointF:Landroid/graphics/PointF;

.field private rawText:Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final rectF:Landroid/graphics/RectF;

.field private rippleColor:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private showMotionSpec:Landroid/support/design/animation/MotionSpec;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private textAppearance:Landroid/support/design/resources/TextAppearance;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private textEndPadding:F

.field private final textPaint:Landroid/text/TextPaint;

.field private textStartPadding:F

.field private textWidth:F

.field private textWidthDirty:Z

.field private tint:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private tintFilter:Landroid/graphics/PorterDuffColorFilter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private tintMode:Landroid/graphics/PorterDuff$Mode;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private truncateAt:Landroid/text/TextUtils$TruncateAt;

.field private unicodeWrappedText:Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private useCompatRipple:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 158
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/chip/ChipDrawable;->DEFAULT_STATE:[I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 306
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 228
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    .line 229
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 231
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 232
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 233
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    const/16 v0, 0xff

    .line 242
    iput v0, p0, Landroid/support/design/chip/ChipDrawable;->alpha:I

    .line 246
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 250
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    .line 251
    iput-boolean v1, p0, Landroid/support/design/chip/ChipDrawable;->textWidthDirty:Z

    .line 307
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 309
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, v0, Landroid/text/TextPaint;->density:F

    .line 310
    iput-object v2, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 311
    iget-object p1, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    .line 312
    iget-object p1, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 315
    :cond_0
    sget-object p1, Landroid/support/design/chip/ChipDrawable;->DEFAULT_STATE:[I

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setState([I)Z

    .line 316
    sget-object p1, Landroid/support/design/chip/ChipDrawable;->DEFAULT_STATE:[I

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconState([I)Z

    return-void
.end method

.method private applyChildDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    .line 1171
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1172
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1173
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1174
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1176
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    .line 1177
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getCloseIconState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1180
    :cond_0
    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    invoke-static {p1, p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1182
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1183
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    .line 708
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 710
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 711
    :cond_0
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStartPadding:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->iconStartPadding:F

    add-float/2addr v0, v1

    .line 713
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_1

    .line 714
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 715
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->chipIconSize:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 717
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 718
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->chipIconSize:F

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 721
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipIconSize:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->top:F

    .line 722
    iget p1, p2, Landroid/graphics/RectF;->top:F

    iget p0, p0, Landroid/support/design/chip/ChipDrawable;->chipIconSize:F

    add-float/2addr p1, p0

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_2
    return-void
.end method

.method private calculateChipIconWidth()F
    .locals 2

    .line 474
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 475
    :cond_1
    :goto_0
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->iconStartPadding:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->chipIconSize:F

    add-float/2addr v0, v1

    iget p0, p0, Landroid/support/design/chip/ChipDrawable;->iconEndPadding:F

    add-float/2addr v0, p0

    return v0
.end method

.method private calculateChipTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    .line 818
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 820
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 821
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipEndPadding:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEndPadding:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStartPadding:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->textEndPadding:F

    add-float/2addr v0, v1

    .line 828
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    if-nez p0, :cond_0

    .line 829
    iget p0, p1, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    sub-float/2addr p0, v0

    iput p0, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 831
    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    add-float/2addr p0, v0

    iput p0, p2, Landroid/graphics/RectF;->left:F

    :cond_1
    :goto_0
    return-void
.end method

.method private calculateCloseIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    .line 799
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 801
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipEndPadding:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEndPadding:F

    add-float/2addr v0, v1

    .line 804
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 805
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 806
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 808
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 809
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 812
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->top:F

    .line 813
    iget p1, p2, Landroid/graphics/RectF;->top:F

    iget p0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr p1, p0

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private calculateCloseIconTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    .line 837
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 839
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 840
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipEndPadding:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEndPadding:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStartPadding:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->textEndPadding:F

    add-float/2addr v0, v1

    .line 847
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    if-nez p0, :cond_0

    .line 848
    iget p0, p1, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    iput p0, p2, Landroid/graphics/RectF;->right:F

    .line 849
    iget p0, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr p0, v0

    iput p0, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 851
    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    iput p0, p2, Landroid/graphics/RectF;->left:F

    .line 852
    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    add-float/2addr p0, v0

    iput p0, p2, Landroid/graphics/RectF;->right:F

    .line 855
    :goto_0
    iget p0, p1, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    iput p0, p2, Landroid/graphics/RectF;->top:F

    .line 856
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    iput p0, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private calculateCloseIconWidth()F
    .locals 2

    .line 504
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStartPadding:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v0, v1

    iget p0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEndPadding:F

    add-float/2addr v0, p0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private calculateTextBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3

    .line 773
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 775
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->unicodeWrappedText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 776
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStartPadding:F

    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->textStartPadding:F

    add-float/2addr v0, v1

    .line 777
    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->chipEndPadding:F

    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->textEndPadding:F

    add-float/2addr v1, v2

    .line 779
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    if-nez p0, :cond_0

    .line 780
    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    add-float/2addr p0, v0

    iput p0, p2, Landroid/graphics/RectF;->left:F

    .line 781
    iget p0, p1, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    sub-float/2addr p0, v1

    iput p0, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 783
    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    add-float/2addr p0, v1

    iput p0, p2, Landroid/graphics/RectF;->left:F

    .line 784
    iget p0, p1, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    sub-float/2addr p0, v0

    iput p0, p2, Landroid/graphics/RectF;->right:F

    .line 789
    :goto_0
    iget p0, p1, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    iput p0, p2, Landroid/graphics/RectF;->top:F

    .line 790
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    iput p0, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private calculateTextCenterFromBaseline()F
    .locals 2

    .line 764
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 765
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    return v0
.end method

.method private calculateTextOrigin(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;
    .locals 2

    const/4 v0, 0x0

    .line 731
    invoke-virtual {p2, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 732
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 734
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->unicodeWrappedText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 735
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStartPadding:F

    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->textStartPadding:F

    add-float/2addr v0, v1

    .line 737
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 738
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/PointF;->x:F

    .line 739
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_0

    .line 741
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/PointF;->x:F

    .line 742
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 745
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateTextCenterFromBaseline()F

    move-result p0

    sub-float/2addr p1, p0

    iput p1, p2, Landroid/graphics/PointF;->y:F

    :cond_1
    return-object v0
.end method

.method private calculateTextWidth(Ljava/lang/CharSequence;)F
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 496
    :cond_0
    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p0

    return p0
.end method

.method private canShowCheckedIcon()Z
    .locals 1

    .line 469
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIconEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroid/support/design/chip/ChipDrawable;->checkable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/design/chip/ChipDrawable;
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 258
    new-instance v0, Landroid/support/design/chip/ChipDrawable;

    invoke-direct {v0, p0}, Landroid/support/design/chip/ChipDrawable;-><init>(Landroid/content/Context;)V

    .line 259
    invoke-direct {v0, p1, p2, p3}, Landroid/support/design/chip/ChipDrawable;->loadFromAttributes(Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method public static createFromResource(Landroid/content/Context;I)Landroid/support/design/chip/ChipDrawable;
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/XmlRes;
        .end annotation
    .end param

    .line 277
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 281
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    :cond_1
    if-eq v1, v2, :cond_2

    .line 284
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "No start tag found"

    invoke-direct {p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 287
    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chip"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 288
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "Must have a <chip> start tag"

    invoke-direct {p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 291
    :cond_3
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 292
    invoke-interface {v0}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    if-nez v1, :cond_4

    .line 294
    sget v1, Landroid/support/design/R$style;->Widget_MaterialComponents_Chip_Entry:I

    .line 297
    :cond_4
    sget v2, Landroid/support/design/R$attr;->chipStandaloneStyle:I

    invoke-static {p0, v0, v2, v1}, Landroid/support/design/chip/ChipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/design/chip/ChipDrawable;

    move-result-object p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 299
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t load chip resource ID #0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 302
    throw v0
.end method

.method private drawCheckedIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 605
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 607
    iget-object p2, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    .line 608
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 610
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 612
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 613
    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float p0, p2

    neg-float p2, v0

    .line 615
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void
.end method

.method private drawChipBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 554
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->currentChipBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 555
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 556
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->getTintColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 557
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 558
    iget-object p2, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawChipIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 590
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 592
    iget-object p2, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    .line 593
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 595
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 597
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 598
    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float p0, p2

    neg-float p2, v0

    .line 600
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void
.end method

.method private drawChipStroke(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 566
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 567
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->currentChipStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 568
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 569
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->getTintColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 570
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v4, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v4, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    iget v5, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    div-float/2addr v5, v3

    sub-float/2addr p2, v5

    invoke-virtual {v0, v1, v2, v4, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 577
    iget p2, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    div-float/2addr v0, v3

    sub-float/2addr p2, v0

    .line 578
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawCloseIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 652
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Landroid/support/design/chip/ChipDrawable;->calculateCloseIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 654
    iget-object p2, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    .line 655
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 657
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 659
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 660
    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float p0, p2

    neg-float p2, v0

    .line 662
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void
.end method

.method private drawCompatRipple(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 583
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->currentCompatRippleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 584
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 585
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 586
    iget-object p2, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawDebug(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 667
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    .line 668
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    const/16 v2, 0x7f

    invoke-static {v1, v2}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 671
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 674
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    :cond_0
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 676
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 680
    :cond_1
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->unicodeWrappedText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 681
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    .line 682
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    iget-object v8, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    move-object v3, p1

    .line 681
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 686
    :cond_2
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 687
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Landroid/support/design/chip/ChipDrawable;->calculateCloseIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 688
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 692
    :cond_3
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-static {v1, v2}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 693
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Landroid/support/design/chip/ChipDrawable;->calculateChipTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 694
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 697
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-static {v1, v2}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 698
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Landroid/support/design/chip/ChipDrawable;->calculateCloseIconTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 699
    iget-object p2, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 621
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->unicodeWrappedText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 624
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    invoke-direct {p0, p2, v0}, Landroid/support/design/chip/ChipDrawable;->calculateTextOrigin(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;

    move-result-object v0

    .line 625
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v1}, Landroid/support/design/chip/ChipDrawable;->calculateTextBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 627
    iget-object p2, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    if-eqz p2, :cond_0

    .line 628
    iget-object p2, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v1

    iput-object v1, p2, Landroid/text/TextPaint;->drawableState:[I

    .line 629
    iget-object p2, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, v1, v2}, Landroid/support/design/resources/TextAppearance;->updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 631
    :cond_0
    iget-object p2, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 633
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->getTextWidth()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    if-le p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    if-eqz p2, :cond_2

    .line 636
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 637
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 640
    :cond_2
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->unicodeWrappedText:Ljava/lang/CharSequence;

    if-eqz p2, :cond_3

    .line 641
    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_3

    .line 642
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->unicodeWrappedText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Landroid/support/design/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_3
    move-object v3, v0

    const/4 v4, 0x0

    .line 644
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    iget v7, v0, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_4

    .line 646
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    return-void
.end method

.method private getTextWidth()F
    .locals 1

    .line 481
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->textWidthDirty:Z

    if-nez v0, :cond_0

    .line 482
    iget p0, p0, Landroid/support/design/chip/ChipDrawable;->textWidth:F

    return p0

    .line 485
    :cond_0
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->unicodeWrappedText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/support/design/chip/ChipDrawable;->calculateTextWidth(Ljava/lang/CharSequence;)F

    move-result v0

    iput v0, p0, Landroid/support/design/chip/ChipDrawable;->textWidth:F

    const/4 v0, 0x0

    .line 487
    iput-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->textWidthDirty:Z

    .line 488
    iget p0, p0, Landroid/support/design/chip/ChipDrawable;->textWidth:F

    return p0
.end method

.method private getTintColorFilter()Landroid/graphics/ColorFilter;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1195
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    :goto_0
    return-object p0
.end method

.method private static hasState([II)Z
    .locals 4
    .param p0    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1209
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static isStateful(Landroid/content/res/ColorStateList;)Z
    .locals 0
    .param p0    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 998
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isStateful(Landroid/graphics/drawable/Drawable;)Z
    .locals 0
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 1002
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isStateful(Landroid/support/design/resources/TextAppearance;)Z
    .locals 1
    .param p0    # Landroid/support/design/resources/TextAppearance;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 1006
    iget-object v0, p0, Landroid/support/design/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    .line 1008
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private loadFromAttributes(Landroid/util/AttributeSet;II)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 321
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget-object v1, Landroid/support/design/R$styleable;->ChipDrawable:[I

    .line 322
    invoke-static {v0, p1, v1, p2, p3}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 325
    iget-object p2, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget p3, Landroid/support/design/R$styleable;->ChipDrawable_chipBackgroundColor:I

    .line 326
    invoke-static {p2, p1, p3}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 325
    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 328
    sget p2, Landroid/support/design/R$styleable;->ChipDrawable_chipMinHeight:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setChipMinHeight(F)V

    .line 329
    sget p2, Landroid/support/design/R$styleable;->ChipDrawable_chipCornerRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setChipCornerRadius(F)V

    .line 330
    iget-object p2, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v0, Landroid/support/design/R$styleable;->ChipDrawable_chipStrokeColor:I

    .line 331
    invoke-static {p2, p1, v0}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 330
    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 332
    sget p2, Landroid/support/design/R$styleable;->ChipDrawable_chipStrokeWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setChipStrokeWidth(F)V

    .line 333
    iget-object p2, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v0, Landroid/support/design/R$styleable;->ChipDrawable_rippleColor:I

    .line 334
    invoke-static {p2, p1, v0}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 333
    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 336
    sget p2, Landroid/support/design/R$styleable;->ChipDrawable_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object p2, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v0, Landroid/support/design/R$styleable;->ChipDrawable_android_textAppearance:I

    .line 338
    invoke-static {p2, p1, v0}, Landroid/support/design/resources/MaterialResources;->getTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/support/design/resources/TextAppearance;

    move-result-object p2

    .line 337
    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setTextAppearance(Landroid/support/design/resources/TextAppearance;)V

    .line 341
    sget p2, Landroid/support/design/R$styleable;->ChipDrawable_android_ellipsize:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 351
    :pswitch_0
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 348
    :pswitch_1
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 345
    :pswitch_2
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 359
    :goto_0
    sget p2, Landroid/support/design/R$styleable;->ChipDrawable_chipIconEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setChipIconEnabled(Z)V

    .line 360
    iget-object p2, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v1, Landroid/support/design/R$styleable;->ChipDrawable_chipIcon:I

    invoke-static {p2, p1, v1}, Landroid/support/design/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    .line 361
    sget p2, Landroid/support/design/R$styleable;->ChipDrawable_chipIconSize:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setChipIconSize(F)V

    .line 363
    sget p2, Landroid/support/design/R$styleable;->ChipDrawable_closeIconEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setCloseIconEnabled(Z)V

    .line 364
    iget-object p2, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v1, Landroid/support/design/R$styleable;->ChipDrawable_closeIcon:I

    invoke-static {p2, p1, v1}, Landroid/support/design/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 365
    iget-object p2, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v1, Landroid/support/design/R$styleable;->ChipDrawable_closeIconTint:I

    .line 366
    invoke-static {p2, p1, v1}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 365
    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    .line 367
    sget p2, Landroid/support/design/R$styleable;->ChipDrawable_closeIconSize:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setCloseIconSize(F)V

    .line 369
    sget p2, Landroid/support/design/R$styleable;->ChipDrawable_android_checkable:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setCheckable(Z)V

    .line 370
    sget p2, Landroid/support/design/R$styleable;->ChipDrawable_checkedIconEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setCheckedIconEnabled(Z)V

    .line 371
    iget-object p2, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v0, Landroid/support/design/R$styleable;->ChipDrawable_checkedIcon:I

    invoke-static {p2, p1, v0}, Landroid/support/design/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    .line 373
    iget-object p2, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v0, Landroid/support/design/R$styleable;->ChipDrawable_showMotionSpec:I

    .line 374
    invoke-static {p2, p1, v0}, Landroid/support/design/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/support/design/animation/MotionSpec;

    move-result-object p2

    .line 373
    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setShowMotionSpec(Landroid/support/design/animation/MotionSpec;)V

    .line 375
    iget-object p2, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v0, Landroid/support/design/R$styleable;->ChipDrawable_hideMotionSpec:I

    .line 376
    invoke-static {p2, p1, v0}, Landroid/support/design/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/support/design/animation/MotionSpec;

    move-result-object p2

    .line 375
    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setHideMotionSpec(Landroid/support/design/animation/MotionSpec;)V

    .line 378
    sget p2, Landroid/support/design/R$styleable;->ChipDrawable_chipStartPadding:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setChipStartPadding(F)V

    .line 379
    sget p2, Landroid/support/design/R$styleable;->ChipDrawable_iconStartPadding:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setIconStartPadding(F)V

    .line 380
    sget p2, Landroid/support/design/R$styleable;->ChipDrawable_iconEndPadding:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setIconEndPadding(F)V

    .line 381
    sget p2, Landroid/support/design/R$styleable;->ChipDrawable_textStartPadding:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setTextStartPadding(F)V

    .line 382
    sget p2, Landroid/support/design/R$styleable;->ChipDrawable_textEndPadding:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setTextEndPadding(F)V

    .line 383
    sget p2, Landroid/support/design/R$styleable;->ChipDrawable_closeIconStartPadding:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setCloseIconStartPadding(F)V

    .line 384
    sget p2, Landroid/support/design/R$styleable;->ChipDrawable_closeIconEndPadding:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setCloseIconEndPadding(F)V

    .line 385
    sget p2, Landroid/support/design/R$styleable;->ChipDrawable_chipEndPadding:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/chip/ChipDrawable;->setChipEndPadding(F)V

    .line 387
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onStateChange([I[I)Z
    .locals 5

    .line 918
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 921
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    iget v3, p0, Landroid/support/design/chip/ChipDrawable;->currentChipBackgroundColor:I

    .line 923
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 925
    :goto_0
    iget v3, p0, Landroid/support/design/chip/ChipDrawable;->currentChipBackgroundColor:I

    const/4 v4, 0x1

    if-eq v3, v1, :cond_1

    .line 926
    iput v1, p0, Landroid/support/design/chip/ChipDrawable;->currentChipBackgroundColor:I

    move v0, v4

    .line 930
    :cond_1
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    iget v3, p0, Landroid/support/design/chip/ChipDrawable;->currentChipStrokeColor:I

    .line 932
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 934
    :goto_1
    iget v3, p0, Landroid/support/design/chip/ChipDrawable;->currentChipStrokeColor:I

    if-eq v3, v1, :cond_3

    .line 935
    iput v1, p0, Landroid/support/design/chip/ChipDrawable;->currentChipStrokeColor:I

    move v0, v4

    .line 939
    :cond_3
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    iget v3, p0, Landroid/support/design/chip/ChipDrawable;->currentCompatRippleColor:I

    .line 941
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v2

    .line 943
    :goto_2
    iget v3, p0, Landroid/support/design/chip/ChipDrawable;->currentCompatRippleColor:I

    if-eq v3, v1, :cond_5

    .line 944
    iput v1, p0, Landroid/support/design/chip/ChipDrawable;->currentCompatRippleColor:I

    .line 945
    iget-boolean v1, p0, Landroid/support/design/chip/ChipDrawable;->useCompatRipple:Z

    if-eqz v1, :cond_5

    move v0, v4

    .line 950
    :cond_5
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    iget-object v1, v1, Landroid/support/design/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    iget-object v1, v1, Landroid/support/design/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    iget v3, p0, Landroid/support/design/chip/ChipDrawable;->currentTextColor:I

    .line 952
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_3

    :cond_6
    move v1, v2

    .line 954
    :goto_3
    iget v3, p0, Landroid/support/design/chip/ChipDrawable;->currentTextColor:I

    if-eq v3, v1, :cond_7

    .line 955
    iput v1, p0, Landroid/support/design/chip/ChipDrawable;->currentTextColor:I

    move v0, v4

    .line 959
    :cond_7
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v1

    const v3, 0x10100a0

    invoke-static {v1, v3}, Landroid/support/design/chip/ChipDrawable;->hasState([II)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Landroid/support/design/chip/ChipDrawable;->checkable:Z

    if-eqz v1, :cond_8

    move v1, v4

    goto :goto_4

    :cond_8
    move v1, v2

    .line 960
    :goto_4
    iget-boolean v3, p0, Landroid/support/design/chip/ChipDrawable;->currentChecked:Z

    if-eq v3, v1, :cond_a

    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_a

    .line 961
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    .line 962
    iput-boolean v1, p0, Landroid/support/design/chip/ChipDrawable;->currentChecked:Z

    .line 963
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    move v0, v4

    move v1, v0

    goto :goto_5

    :cond_9
    move v1, v2

    move v0, v4

    goto :goto_5

    :cond_a
    move v1, v2

    .line 971
    :goto_5
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_b

    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    iget v3, p0, Landroid/support/design/chip/ChipDrawable;->currentTint:I

    invoke-virtual {v2, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 972
    :cond_b
    iget v3, p0, Landroid/support/design/chip/ChipDrawable;->currentTint:I

    if-eq v3, v2, :cond_c

    .line 973
    iput v2, p0, Landroid/support/design/chip/ChipDrawable;->currentTint:I

    .line 974
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v0, v2}, Landroid/support/design/drawable/DrawableUtils;->updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    move v0, v4

    .line 978
    :cond_c
    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 979
    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    or-int/2addr v0, v2

    .line 981
    :cond_d
    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 982
    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v0, p1

    .line 984
    :cond_e
    iget-object p1, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 985
    iget-object p1, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_f
    if-eqz v0, :cond_10

    .line 989
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    :cond_10
    if-eqz v1, :cond_11

    .line 992
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    :cond_11
    return v0
.end method

.method private showsCheckedIcon()Z
    .locals 1

    .line 459
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIconEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroid/support/design/chip/ChipDrawable;->currentChecked:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showsChipIcon()Z
    .locals 1

    .line 454
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->chipIconEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showsCloseIcon()Z
    .locals 1

    .line 464
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 1164
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method private updateCompatRippleColor()V
    .locals 1

    .line 1199
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->useCompatRipple:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    .line 1200
    invoke-static {v0}, Landroid/support/design/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 512
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getAlpha()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 518
    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->alpha:I

    const/16 v3, 0xff

    if-ge v2, v3, :cond_1

    .line 519
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v1

    iget v9, p0, Landroid/support/design/chip/ChipDrawable;->alpha:I

    move-object v4, p1

    .line 520
    invoke-static/range {v4 .. v9}, Landroid/support/design/canvas/CanvasCompat;->saveLayerAlpha(Landroid/graphics/Canvas;FFFFI)I

    move-result v1

    .line 525
    :cond_1
    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->drawChipBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 528
    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->drawChipStroke(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 531
    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->drawCompatRipple(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 534
    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->drawChipIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 537
    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->drawCheckedIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 540
    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->drawText(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 543
    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->drawCloseIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 546
    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->drawDebug(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 548
    iget p0, p0, Landroid/support/design/chip/ChipDrawable;->alpha:I

    if-ge p0, v3, :cond_2

    .line 549
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public getAlpha()I
    .locals 0

    .line 1086
    iget p0, p0, Landroid/support/design/chip/ChipDrawable;->alpha:I

    return p0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1616
    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1228
    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getChipCornerRadius()F
    .locals 0

    .line 1259
    iget p0, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    return p0
.end method

.method public getChipEndPadding()F
    .locals 0

    .line 1793
    iget p0, p0, Landroid/support/design/chip/ChipDrawable;->chipEndPadding:F

    return p0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1405
    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getChipIconSize()F
    .locals 0

    .line 1432
    iget p0, p0, Landroid/support/design/chip/ChipDrawable;->chipIconSize:F

    return p0
.end method

.method public getChipMinHeight()F
    .locals 0

    .line 1243
    iget p0, p0, Landroid/support/design/chip/ChipDrawable;->chipMinHeight:F

    return p0
.end method

.method public getChipStartPadding()F
    .locals 0

    .line 1667
    iget p0, p0, Landroid/support/design/chip/ChipDrawable;->chipStartPadding:F

    return p0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1275
    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getChipStrokeWidth()F
    .locals 0

    .line 1290
    iget p0, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    return p0
.end method

.method public getChipTouchBounds(Landroid/graphics/RectF;)V
    .locals 1

    .line 422
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/support/design/chip/ChipDrawable;->calculateChipTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    return-void
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1482
    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1558
    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getCloseIconEndPadding()F
    .locals 0

    .line 1775
    iget p0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEndPadding:F

    return p0
.end method

.method public getCloseIconSize()F
    .locals 0

    .line 1530
    iget p0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    return p0
.end method

.method public getCloseIconStartPadding()F
    .locals 0

    .line 1757
    iget p0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStartPadding:F

    return p0
.end method

.method public getCloseIconState()[I
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 904
    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStateSet:[I

    return-object p0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1510
    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getCloseIconTouchBounds(Landroid/graphics/RectF;)V
    .locals 1

    .line 430
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/support/design/chip/ChipDrawable;->calculateCloseIconTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    return-void
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1100
    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 0

    .line 1368
    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method public getHideMotionSpec()Landroid/support/design/animation/MotionSpec;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1655
    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->hideMotionSpec:Landroid/support/design/animation/MotionSpec;

    return-object p0
.end method

.method public getIconEndPadding()F
    .locals 0

    .line 1704
    iget p0, p0, Landroid/support/design/chip/ChipDrawable;->iconEndPadding:F

    return p0
.end method

.method public getIconStartPadding()F
    .locals 0

    .line 1683
    iget p0, p0, Landroid/support/design/chip/ChipDrawable;->iconStartPadding:F

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 449
    iget p0, p0, Landroid/support/design/chip/ChipDrawable;->chipMinHeight:F

    float-to-int p0, p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 436
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStartPadding:F

    .line 438
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->textStartPadding:F

    add-float/2addr v0, v1

    .line 440
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->getTextWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->textEndPadding:F

    add-float/2addr v0, v1

    .line 442
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget p0, p0, Landroid/support/design/chip/ChipDrawable;->chipEndPadding:F

    add-float/2addr v0, p0

    .line 436
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 8
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1128
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1129
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1130
    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1132
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getIntrinsicHeight()I

    move-result v6

    iget v7, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 1135
    :goto_0
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getAlpha()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1309
    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getShowMotionSpec()Landroid/support/design/animation/MotionSpec;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1642
    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->showMotionSpec:Landroid/support/design/animation/MotionSpec;

    return-object p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1326
    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->rawText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTextAppearance()Landroid/support/design/resources/TextAppearance;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1346
    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    return-object p0
.end method

.method public getTextEndPadding()F
    .locals 0

    .line 1741
    iget p0, p0, Landroid/support/design/chip/ChipDrawable;->textEndPadding:F

    return p0
.end method

.method public getTextStartPadding()F
    .locals 0

    .line 1725
    iget p0, p0, Landroid/support/design/chip/ChipDrawable;->textStartPadding:F

    return p0
.end method

.method public getUseCompatRipple()Z
    .locals 0

    .line 401
    iget-boolean p0, p0, Landroid/support/design/chip/ChipDrawable;->useCompatRipple:Z

    return p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1140
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1142
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public isCheckable()Z
    .locals 0

    .line 1562
    iget-boolean p0, p0, Landroid/support/design/chip/ChipDrawable;->checkable:Z

    return p0
.end method

.method public isCheckedIconEnabled()Z
    .locals 0

    .line 1587
    iget-boolean p0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIconEnabled:Z

    return p0
.end method

.method public isChipIconEnabled()Z
    .locals 0

    .line 1376
    iget-boolean p0, p0, Landroid/support/design/chip/ChipDrawable;->chipIconEnabled:Z

    return p0
.end method

.method public isCloseIconEnabled()Z
    .locals 0

    .line 1453
    iget-boolean p0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEnabled:Z

    return p0
.end method

.method public isCloseIconStateful()Z
    .locals 0

    .line 884
    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0
.end method

.method public isStateful()Z
    .locals 1

    .line 868
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    .line 869
    invoke-static {v0}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->useCompatRipple:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    .line 870
    invoke-static {v0}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    .line 871
    invoke-static {v0}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/support/design/resources/TextAppearance;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 872
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->canShowCheckedIcon()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 873
    invoke-static {v0}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 874
    invoke-static {v0}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    .line 875
    invoke-static {p0}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1014
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    move-result v0

    .line 1016
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1017
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1019
    :cond_0
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1020
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1022
    :cond_1
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1023
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 1027
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method protected onLevelChange(I)Z
    .locals 2

    .line 1034
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    .line 1036
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1037
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1039
    :cond_0
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1040
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1042
    :cond_1
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1043
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 1047
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method protected onSizeChange()V
    .locals 0

    .line 411
    iget-object p0, p0, Landroid/support/design/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/design/chip/ChipDrawable$Delegate;

    if-eqz p0, :cond_0

    .line 413
    invoke-interface {p0}, Landroid/support/design/chip/ChipDrawable$Delegate;->onChipDrawableSizeChange()V

    :cond_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1

    .line 909
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getCloseIconState()[I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I[I)Z

    move-result p0

    return p0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1148
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1150
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1078
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->alpha:I

    if-eq v0, p1, :cond_0

    .line 1079
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->alpha:I

    .line 1080
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    .line 1570
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->checkable:Z

    if-eq v0, p1, :cond_1

    .line 1571
    iput-boolean p1, p0, Landroid/support/design/chip/ChipDrawable;->checkable:Z

    .line 1573
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    if-nez p1, :cond_0

    .line 1574
    iget-boolean p1, p0, Landroid/support/design/chip/ChipDrawable;->currentChecked:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1575
    iput-boolean p1, p0, Landroid/support/design/chip/ChipDrawable;->currentChecked:Z

    .line 1577
    :cond_0
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result p1

    .line 1579
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    .line 1581
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    :cond_1
    return-void
.end method

.method public setCheckableResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 1566
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCheckable(Z)V

    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1624
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 1626
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    .line 1627
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 1628
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result p1

    .line 1630
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Landroid/support/design/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1631
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Landroid/support/design/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1633
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 1635
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .locals 1

    .line 1595
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIconEnabled:Z

    if-eq v0, p1, :cond_2

    .line 1596
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    .line 1597
    iput-boolean p1, p0, Landroid/support/design/chip/ChipDrawable;->checkedIconEnabled:Z

    .line 1598
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 1603
    iget-object p1, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Landroid/support/design/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1605
    :cond_1
    iget-object p1, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Landroid/support/design/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1608
    :goto_1
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1609
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    :cond_2
    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 1591
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCheckedIconEnabled(Z)V

    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1620
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1236
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1237
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    .line 1238
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 1232
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setChipCornerRadius(F)V
    .locals 1

    .line 1267
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1268
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    .line 1269
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1263
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipCornerRadius(F)V

    return-void
.end method

.method public setChipEndPadding(F)V
    .locals 1

    .line 1801
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipEndPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1802
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->chipEndPadding:F

    .line 1803
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1804
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1797
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipEndPadding(F)V

    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1413
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    .line 1415
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    .line 1416
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 1417
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result p1

    .line 1419
    invoke-direct {p0, v0}, Landroid/support/design/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1420
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/support/design/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1424
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_1

    .line 1426
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    :cond_1
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .locals 1

    .line 1384
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->chipIconEnabled:Z

    if-eq v0, p1, :cond_2

    .line 1385
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    .line 1386
    iput-boolean p1, p0, Landroid/support/design/chip/ChipDrawable;->chipIconEnabled:Z

    .line 1387
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 1392
    iget-object p1, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Landroid/support/design/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1394
    :cond_1
    iget-object p1, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Landroid/support/design/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1397
    :goto_1
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1398
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    :cond_2
    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 1380
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipIconEnabled(Z)V

    return-void
.end method

.method public setChipIconResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1409
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setChipIconSize(F)V
    .locals 1

    .line 1440
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipIconSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1441
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    .line 1442
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->chipIconSize:F

    .line 1443
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result p1

    .line 1445
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 1447
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1436
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipIconSize(F)V

    return-void
.end method

.method public setChipMinHeight(F)V
    .locals 1

    .line 1251
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipMinHeight:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1252
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->chipMinHeight:F

    .line 1253
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1254
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1247
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipMinHeight(F)V

    return-void
.end method

.method public setChipStartPadding(F)V
    .locals 1

    .line 1675
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStartPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1676
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->chipStartPadding:F

    .line 1677
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1678
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1671
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipStartPadding(F)V

    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1283
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1284
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    .line 1285
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 1279
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setChipStrokeWidth(F)V
    .locals 1

    .line 1298
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1299
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    .line 1301
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1303
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1294
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setChipStrokeWidth(F)V

    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1490
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eq v0, p1, :cond_3

    .line 1492
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result v2

    if-eqz p1, :cond_1

    .line 1493
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 1494
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result p1

    .line 1496
    invoke-direct {p0, v0}, Landroid/support/design/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1497
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1498
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/support/design/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1501
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    cmpl-float p1, v2, p1

    if-eqz p1, :cond_3

    .line 1503
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    :cond_3
    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1548
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconContentDescription:Ljava/lang/CharSequence;

    if-eq v0, p1, :cond_0

    .line 1550
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconContentDescription:Ljava/lang/CharSequence;

    .line 1552
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .locals 1

    .line 1461
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEnabled:Z

    if-eq v0, p1, :cond_2

    .line 1462
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    .line 1463
    iput-boolean p1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEnabled:Z

    .line 1464
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 1469
    iget-object p1, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Landroid/support/design/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1471
    :cond_1
    iget-object p1, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Landroid/support/design/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1474
    :goto_1
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1475
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    :cond_2
    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/BoolRes;
        .end annotation
    .end param

    .line 1457
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconEnabled(Z)V

    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .locals 1

    .line 1783
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEndPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1784
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEndPadding:F

    .line 1785
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1786
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1787
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1779
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconEndPadding(F)V

    return-void
.end method

.method public setCloseIconResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1486
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCloseIconSize(F)V
    .locals 1

    .line 1538
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1539
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    .line 1540
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1541
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1542
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1534
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconSize(F)V

    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .locals 1

    .line 1765
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStartPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1766
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStartPadding:F

    .line 1767
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1768
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1769
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1761
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconStartPadding(F)V

    return-void
.end method

.method public setCloseIconState([I)Z
    .locals 1
    .param p1    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 892
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStateSet:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 893
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStateSet:[I

    .line 894
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I[I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1518
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1519
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    .line 1521
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1522
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1525
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 1514
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1091
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 1092
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 1093
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setDelegate(Landroid/support/design/chip/ChipDrawable$Delegate;)V
    .locals 1
    .param p1    # Landroid/support/design/chip/ChipDrawable$Delegate;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 406
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0
    .param p1    # Landroid/text/TextUtils$TruncateAt;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1372
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->truncateAt:Landroid/text/TextUtils$TruncateAt;

    return-void
.end method

.method public setHideMotionSpec(Landroid/support/design/animation/MotionSpec;)V
    .locals 0
    .param p1    # Landroid/support/design/animation/MotionSpec;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1663
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->hideMotionSpec:Landroid/support/design/animation/MotionSpec;

    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 1659
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/design/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Landroid/support/design/animation/MotionSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setHideMotionSpec(Landroid/support/design/animation/MotionSpec;)V

    return-void
.end method

.method public setIconEndPadding(F)V
    .locals 1

    .line 1712
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->iconEndPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1713
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    .line 1714
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->iconEndPadding:F

    .line 1715
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result p1

    .line 1717
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 1719
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1708
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setIconEndPadding(F)V

    return-void
.end method

.method public setIconStartPadding(F)V
    .locals 1

    .line 1691
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->iconStartPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1692
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    .line 1693
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->iconStartPadding:F

    .line 1694
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result p1

    .line 1696
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 1698
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1687
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setIconStartPadding(F)V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1317
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1318
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    .line 1319
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->updateCompatRippleColor()V

    .line 1320
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 1313
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setShowMotionSpec(Landroid/support/design/animation/MotionSpec;)V
    .locals 0
    .param p1    # Landroid/support/design/animation/MotionSpec;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1650
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->showMotionSpec:Landroid/support/design/animation/MotionSpec;

    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 1646
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/design/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Landroid/support/design/animation/MotionSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setShowMotionSpec(Landroid/support/design/animation/MotionSpec;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1334
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rawText:Ljava/lang/CharSequence;

    if-eq v0, p1, :cond_0

    .line 1335
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->rawText:Ljava/lang/CharSequence;

    .line 1336
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->unicodeWrappedText:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    .line 1337
    iput-boolean p1, p0, Landroid/support/design/chip/ChipDrawable;->textWidthDirty:Z

    .line 1339
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1340
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/support/design/resources/TextAppearance;)V
    .locals 2
    .param p1    # Landroid/support/design/resources/TextAppearance;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1354
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    if-eq v0, p1, :cond_1

    .line 1355
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    if-eqz p1, :cond_0

    .line 1358
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1}, Landroid/support/design/resources/TextAppearance;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;)V

    const/4 p1, 0x1

    .line 1359
    iput-boolean p1, p0, Landroid/support/design/chip/ChipDrawable;->textWidthDirty:Z

    .line 1362
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I)Z

    .line 1363
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    :cond_1
    return-void
.end method

.method public setTextAppearanceResource(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 1350
    new-instance v0, Landroid/support/design/resources/TextAppearance;

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/support/design/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setTextAppearance(Landroid/support/design/resources/TextAppearance;)V

    return-void
.end method

.method public setTextEndPadding(F)V
    .locals 1

    .line 1749
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->textEndPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1750
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->textEndPadding:F

    .line 1751
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1752
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1745
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setTextEndPadding(F)V

    return-void
.end method

.method public setTextResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 1330
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextStartPadding(F)V
    .locals 1

    .line 1733
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->textStartPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1734
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->textStartPadding:F

    .line 1735
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1736
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    :cond_0
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 1729
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->setTextStartPadding(F)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1105
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1106
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    .line 1107
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1113
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 1114
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1115
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    invoke-static {p0, v0, p1}, Landroid/support/design/drawable/DrawableUtils;->updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 1116
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setUseCompatRipple(Z)V
    .locals 1

    .line 392
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->useCompatRipple:Z

    if-eq v0, p1, :cond_0

    .line 393
    iput-boolean p1, p0, Landroid/support/design/chip/ChipDrawable;->useCompatRipple:Z

    .line 394
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->updateCompatRippleColor()V

    .line 395
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1054
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 1056
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1057
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1059
    :cond_0
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1060
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1062
    :cond_1
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1063
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 1067
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1156
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1158
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
