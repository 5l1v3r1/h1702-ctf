.class public Landroid/support/design/widget/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TextInputLayout$AccessibilityDelegate;,
        Landroid/support/design/widget/TextInputLayout$SavedState;,
        Landroid/support/design/widget/TextInputLayout$BoxBackgroundMode;
    }
.end annotation


# static fields
.field public static final BOX_BACKGROUND_FILLED:I = 0x1

.field public static final BOX_BACKGROUND_NONE:I = 0x0

.field public static final BOX_BACKGROUND_OUTLINE:I = 0x2

.field private static final INVALID_MAX_LENGTH:I = -0x1

.field private static final LABEL_SCALE_ANIMATION_DURATION:I = 0xa7

.field private static final LOG_TAG:Ljava/lang/String; = "TextInputLayout"


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private boxBackground:Landroid/graphics/drawable/GradientDrawable;

.field private boxBackgroundColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private boxBackgroundMode:I

.field private final boxBottomOffsetPx:I

.field private final boxCollapsedPaddingTopPx:I

.field private boxCornerRadiusBottomEnd:F

.field private boxCornerRadiusBottomStart:F

.field private boxCornerRadiusTopEnd:F

.field private boxCornerRadiusTopStart:F

.field private final boxLabelCutoutPaddingPx:I

.field private boxStrokeColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final boxStrokeWidthDefaultPx:I

.field private final boxStrokeWidthFocusedPx:I

.field private boxStrokeWidthPx:I

.field final collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

.field counterEnabled:Z

.field private counterMaxLength:I

.field private final counterOverflowTextAppearance:I

.field private counterOverflowed:Z

.field private final counterTextAppearance:I

.field private counterView:Landroid/widget/TextView;

.field private defaultHintTextColor:Landroid/content/res/ColorStateList;

.field private final defaultStrokeColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final disabledColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field editText:Landroid/widget/EditText;

.field private editTextOriginalDrawable:Landroid/graphics/drawable/Drawable;

.field private focusedStrokeColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private focusedTextColor:Landroid/content/res/ColorStateList;

.field private hasPasswordToggleTintList:Z

.field private hasPasswordToggleTintMode:Z

.field private hasReconstructedEditTextBackground:Z

.field private hint:Ljava/lang/CharSequence;

.field private hintAnimationEnabled:Z

.field private hintEnabled:Z

.field private hintExpanded:Z

.field private final hoveredStrokeColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private inDrawableStateChanged:Z

.field private final indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

.field private final inputFrame:Landroid/widget/FrameLayout;

.field private isProvidingHint:Z

.field private originalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

.field private originalHint:Ljava/lang/CharSequence;

.field private passwordToggleContentDesc:Ljava/lang/CharSequence;

.field private passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

.field private passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

.field private passwordToggleEnabled:Z

.field private passwordToggleTintList:Landroid/content/res/ColorStateList;

.field private passwordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

.field private passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

.field private passwordToggledVisible:Z

.field private restoringSavedState:Z

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF:Landroid/graphics/RectF;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 239
    sget v0, Landroid/support/design/R$attr;->textInputStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 243
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    new-instance v0, Landroid/support/design/widget/IndicatorViewController;

    invoke-direct {v0, p0}, Landroid/support/design/widget/IndicatorViewController;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    .line 195
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->tmpRect:Landroid/graphics/Rect;

    .line 196
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    .line 224
    new-instance v0, Landroid/support/design/widget/CollapsingTextHelper;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    const/4 v0, 0x1

    .line 245
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setOrientation(I)V

    const/4 v1, 0x0

    .line 246
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setWillNotDraw(Z)V

    .line 247
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setAddStatesFromChildren(Z)V

    .line 249
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    .line 250
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setAddStatesFromChildren(Z)V

    .line 251
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TextInputLayout;->addView(Landroid/view/View;)V

    .line 253
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget-object v3, Landroid/support/design/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 254
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget-object v3, Landroid/support/design/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setPositionInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 255
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    const v3, 0x800033

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 257
    sget-object v2, Landroid/support/design/R$styleable;->TextInputLayout:[I

    sget v3, Landroid/support/design/R$style;->Widget_Design_TextInputLayout:I

    .line 258
    invoke-static {p1, p2, v2, p3, v3}, Landroid/support/design/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object p2

    .line 265
    sget p3, Landroid/support/design/R$styleable;->TextInputLayout_hintEnabled:I

    invoke-virtual {p2, p3, v0}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    .line 266
    sget p3, Landroid/support/design/R$styleable;->TextInputLayout_android_hint:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 267
    sget p3, Landroid/support/design/R$styleable;->TextInputLayout_hintAnimationEnabled:I

    invoke-virtual {p2, p3, v0}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/support/design/widget/TextInputLayout;->hintAnimationEnabled:Z

    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Landroid/support/design/R$dimen;->mtrl_textinput_box_bottom_offset:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TextInputLayout;->boxBottomOffsetPx:I

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Landroid/support/design/R$dimen;->mtrl_textinput_box_label_cutout_padding:I

    .line 274
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TextInputLayout;->boxLabelCutoutPaddingPx:I

    .line 276
    sget p3, Landroid/support/design/R$styleable;->TextInputLayout_boxCollapsedPaddingTop:I

    .line 277
    invoke-virtual {p2, p3, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TextInputLayout;->boxCollapsedPaddingTopPx:I

    .line 278
    sget p3, Landroid/support/design/R$styleable;->TextInputLayout_boxCornerRadiusTopStart:I

    const/4 v2, 0x0

    .line 279
    invoke-virtual {p2, p3, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopStart:F

    .line 280
    sget p3, Landroid/support/design/R$styleable;->TextInputLayout_boxCornerRadiusTopEnd:I

    invoke-virtual {p2, p3, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopEnd:F

    .line 281
    sget p3, Landroid/support/design/R$styleable;->TextInputLayout_boxCornerRadiusBottomEnd:I

    .line 282
    invoke-virtual {p2, p3, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomEnd:F

    .line 283
    sget p3, Landroid/support/design/R$styleable;->TextInputLayout_boxCornerRadiusBottomStart:I

    .line 284
    invoke-virtual {p2, p3, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomStart:F

    .line 286
    sget p3, Landroid/support/design/R$styleable;->TextInputLayout_boxBackgroundColor:I

    .line 287
    invoke-virtual {p2, p3, v1}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundColor:I

    .line 289
    sget p3, Landroid/support/design/R$styleable;->TextInputLayout_boxStrokeColor:I

    invoke-virtual {p2, p3, v1}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TextInputLayout;->focusedStrokeColor:I

    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Landroid/support/design/R$dimen;->mtrl_textinput_box_stroke_width_default:I

    .line 293
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthDefaultPx:I

    .line 296
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Landroid/support/design/R$dimen;->mtrl_textinput_box_stroke_width_focused:I

    .line 297
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthFocusedPx:I

    .line 298
    iget p3, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthDefaultPx:I

    iput p3, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthPx:I

    .line 301
    sget p3, Landroid/support/design/R$styleable;->TextInputLayout_boxBackgroundMode:I

    .line 302
    invoke-virtual {p2, p3, v1}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result p3

    .line 303
    invoke-virtual {p0, p3}, Landroid/support/design/widget/TextInputLayout;->setBoxBackgroundMode(I)V

    .line 304
    sget p3, Landroid/support/design/R$styleable;->TextInputLayout_android_textColorHint:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 305
    sget p3, Landroid/support/design/R$styleable;->TextInputLayout_android_textColorHint:I

    .line 306
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Landroid/support/design/widget/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 308
    :cond_0
    sget p3, Landroid/support/design/R$color;->mtrl_textinput_default_box_stroke_color:I

    .line 309
    invoke-static {p1, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TextInputLayout;->defaultStrokeColor:I

    .line 310
    sget p3, Landroid/support/design/R$color;->mtrl_textinput_disabled_color:I

    invoke-static {p1, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/TextInputLayout;->disabledColor:I

    .line 311
    sget p3, Landroid/support/design/R$color;->mtrl_textinput_hovered_box_stroke_color:I

    .line 312
    invoke-static {p1, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->hoveredStrokeColor:I

    .line 314
    sget p1, Landroid/support/design/R$styleable;->TextInputLayout_hintTextAppearance:I

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    if-eq p1, p3, :cond_1

    .line 316
    sget p1, Landroid/support/design/R$styleable;->TextInputLayout_hintTextAppearance:I

    invoke-virtual {p2, p1, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setHintTextAppearance(I)V

    .line 319
    :cond_1
    sget p1, Landroid/support/design/R$styleable;->TextInputLayout_errorTextAppearance:I

    .line 320
    invoke-virtual {p2, p1, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    .line 321
    sget v2, Landroid/support/design/R$styleable;->TextInputLayout_errorEnabled:I

    invoke-virtual {p2, v2, v1}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 323
    sget v3, Landroid/support/design/R$styleable;->TextInputLayout_helperTextTextAppearance:I

    .line 324
    invoke-virtual {p2, v3, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    .line 325
    sget v4, Landroid/support/design/R$styleable;->TextInputLayout_helperTextEnabled:I

    .line 326
    invoke-virtual {p2, v4, v1}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 327
    sget v5, Landroid/support/design/R$styleable;->TextInputLayout_helperText:I

    invoke-virtual {p2, v5}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 329
    sget v6, Landroid/support/design/R$styleable;->TextInputLayout_counterEnabled:I

    invoke-virtual {p2, v6, v1}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 330
    sget v7, Landroid/support/design/R$styleable;->TextInputLayout_counterMaxLength:I

    invoke-virtual {p2, v7, p3}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/support/design/widget/TextInputLayout;->setCounterMaxLength(I)V

    .line 331
    sget v7, Landroid/support/design/R$styleable;->TextInputLayout_counterTextAppearance:I

    invoke-virtual {p2, v7, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Landroid/support/design/widget/TextInputLayout;->counterTextAppearance:I

    .line 332
    sget v7, Landroid/support/design/R$styleable;->TextInputLayout_counterOverflowTextAppearance:I

    .line 333
    invoke-virtual {p2, v7, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowTextAppearance:I

    .line 335
    sget v7, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleEnabled:I

    invoke-virtual {p2, v7, v1}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleEnabled:Z

    .line 336
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleDrawable:I

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 337
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleContentDescription:I

    .line 338
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleContentDesc:Ljava/lang/CharSequence;

    .line 339
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleTint:I

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintList:Z

    .line 341
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleTint:I

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleTintList:Landroid/content/res/ColorStateList;

    .line 343
    :cond_2
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleTintMode:I

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 344
    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintMode:Z

    .line 345
    sget v0, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleTintMode:I

    .line 347
    invoke-virtual {p2, v0, p3}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result p3

    const/4 v0, 0x0

    .line 346
    invoke-static {p3, v0}, Landroid/support/design/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    iput-object p3, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 350
    :cond_3
    invoke-virtual {p2}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 352
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 353
    invoke-virtual {p0, v5}, Landroid/support/design/widget/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 354
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TextInputLayout;->setHelperTextTextAppearance(I)V

    .line 355
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 356
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setErrorTextAppearance(I)V

    .line 357
    invoke-virtual {p0, v6}, Landroid/support/design/widget/TextInputLayout;->setCounterEnabled(Z)V

    .line 359
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyPasswordToggleTint()V

    const/4 p1, 0x2

    .line 363
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/TextInputLayout;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Landroid/support/design/widget/TextInputLayout;->restoringSavedState:Z

    return p0
.end method

.method private applyBoxAttributes()V
    .locals 3

    .line 1333
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    return-void

    .line 1337
    :cond_0
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->setBoxAttributes()V

    .line 1339
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1341
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1342
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editTextOriginalDrawable:Landroid/graphics/drawable/Drawable;

    .line 1344
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1347
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editTextOriginalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 1351
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editTextOriginalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1354
    :cond_3
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthPx:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_4

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    if-eqz v0, :cond_4

    .line 1355
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthPx:I

    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1358
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->getCornerRadiiAsArray()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 1359
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1360
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->invalidate()V

    return-void
.end method

.method private applyCutoutPadding(Landroid/graphics/RectF;)V
    .locals 2

    .line 1945
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 1946
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 1947
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 1948
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget p0, p0, Landroid/support/design/widget/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private applyPasswordToggleTint()V
    .locals 2

    .line 1856
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintMode:Z

    if-eqz v0, :cond_3

    .line 1858
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 1860
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintList:Z

    if-eqz v0, :cond_1

    .line 1861
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1863
    :cond_1
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintMode:Z

    if-eqz v0, :cond_2

    .line 1864
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 1867
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    .line 1868
    invoke-virtual {v0}, Landroid/support/design/widget/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_3

    .line 1869
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method private assignBoxBackgroundByMode()V
    .locals 2

    .line 417
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 418
    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    .line 419
    :cond_0
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Landroid/support/design/widget/CutoutDrawable;

    if-nez v0, :cond_1

    .line 424
    new-instance v0, Landroid/support/design/widget/CutoutDrawable;

    invoke-direct {v0}, Landroid/support/design/widget/CutoutDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    .line 425
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    .line 427
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    :cond_2
    :goto_0
    return-void
.end method

.method private calculateBoxBackgroundTop()I
    .locals 2

    .line 1245
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1249
    :cond_0
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    packed-switch v0, :pswitch_data_0

    return v1

    .line 1253
    :pswitch_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTop()I

    move-result v0

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->calculateLabelMarginTop()I

    move-result p0

    add-int/2addr v0, p0

    return v0

    .line 1251
    :pswitch_1
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getTop()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateCollapsedTextTopBounds()I
    .locals 1

    .line 1276
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    packed-switch v0, :pswitch_data_0

    .line 1282
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getPaddingTop()I

    move-result p0

    return p0

    .line 1278
    :pswitch_0
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->calculateLabelMarginTop()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    .line 1280
    :pswitch_1
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/support/design/widget/TextInputLayout;->boxCollapsedPaddingTopPx:I

    add-int/2addr v0, p0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateLabelMarginTop()I
    .locals 2

    .line 1260
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1264
    :cond_0
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    packed-switch v0, :pswitch_data_0

    return v1

    .line 1266
    :pswitch_0
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    .line 1269
    :pswitch_1
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result p0

    float-to-int p0, p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private closeCutout()V
    .locals 1

    .line 1939
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1940
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast p0, Landroid/support/design/widget/CutoutDrawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CutoutDrawable;->removeCutout()V

    :cond_0
    return-void
.end method

.method private collapseHint(Z)V
    .locals 1

    .line 1910
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1911
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 1913
    iget-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->hintAnimationEnabled:Z

    if-eqz p1, :cond_1

    .line 1914
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->animateToExpansionFraction(F)V

    goto :goto_0

    .line 1916
    :cond_1
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    :goto_0
    const/4 p1, 0x0

    .line 1918
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    .line 1919
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cutoutEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1920
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->openCutout()V

    :cond_2
    return-void
.end method

.method private cutoutEnabled()Z
    .locals 1

    .line 1925
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of p0, p0, Landroid/support/design/widget/CutoutDrawable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private ensureBackgroundDrawableStateWorkaround()V
    .locals 3

    .line 1398
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    return-void

    .line 1403
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1408
    :cond_1
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->hasReconstructedEditTextBackground:Z

    if-nez v1, :cond_3

    .line 1413
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1415
    instance-of v2, v0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v2, :cond_2

    .line 1418
    check-cast v0, Landroid/graphics/drawable/DrawableContainer;

    .line 1420
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    .line 1419
    invoke-static {v0, v2}, Landroid/support/design/widget/DrawableUtils;->setContainerConstantState(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hasReconstructedEditTextBackground:Z

    .line 1423
    :cond_2
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hasReconstructedEditTextBackground:Z

    if-nez v0, :cond_3

    .line 1428
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 1429
    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hasReconstructedEditTextBackground:Z

    .line 1431
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->onApplyBoxBackgroundMode()V

    :cond_3
    return-void
.end method

.method private expandHint(Z)V
    .locals 1

    .line 2022
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2023
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2025
    iget-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->hintAnimationEnabled:Z

    if-eqz p1, :cond_1

    .line 2026
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->animateToExpansionFraction(F)V

    goto :goto_0

    .line 2028
    :cond_1
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 2030
    :goto_0
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cutoutEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast p1, Landroid/support/design/widget/CutoutDrawable;

    invoke-virtual {p1}, Landroid/support/design/widget/CutoutDrawable;->hasCutout()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2031
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->closeCutout()V

    :cond_2
    const/4 p1, 0x1

    .line 2033
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    return-void
.end method

.method private getBoxBackground()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 389
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 390
    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method private getCornerRadiiAsArray()[F
    .locals 10

    .line 579
    invoke-static {p0}, Landroid/support/design/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x8

    if-nez v0, :cond_0

    .line 580
    new-array v0, v9, [F

    iget v9, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopStart:F

    aput v9, v0, v8

    iget v8, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopStart:F

    aput v8, v0, v7

    iget v7, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopEnd:F

    aput v7, v0, v6

    iget v6, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopEnd:F

    aput v6, v0, v5

    iget v5, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomEnd:F

    aput v5, v0, v4

    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomEnd:F

    aput v4, v0, v3

    iget v3, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomStart:F

    aput v3, v0, v2

    iget p0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomStart:F

    aput p0, v0, v1

    return-object v0

    .line 591
    :cond_0
    new-array v0, v9, [F

    iget v9, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopEnd:F

    aput v9, v0, v8

    iget v8, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopEnd:F

    aput v8, v0, v7

    iget v7, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopStart:F

    aput v7, v0, v6

    iget v6, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopStart:F

    aput v6, v0, v5

    iget v5, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomStart:F

    aput v5, v0, v4

    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomStart:F

    aput v4, v0, v3

    iget v3, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomEnd:F

    aput v3, v0, v2

    iget p0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomEnd:F

    aput p0, v0, v1

    return-object v0
.end method

.method private hasPasswordTransformation()Z
    .locals 1

    .line 1847
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1848
    invoke-virtual {p0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p0

    instance-of p0, p0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onApplyBoxBackgroundMode()V
    .locals 1

    .line 409
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->assignBoxBackgroundByMode()V

    .line 410
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    if-eqz v0, :cond_0

    .line 411
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateInputLayoutMargins()V

    .line 413
    :cond_0
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateTextInputBoxBounds()V

    return-void
.end method

.method private openCutout()V
    .locals 2

    .line 1929
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1932
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    .line 1933
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextActualBounds(Landroid/graphics/RectF;)V

    .line 1934
    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->applyCutoutPadding(Landroid/graphics/RectF;)V

    .line 1935
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast p0, Landroid/support/design/widget/CutoutDrawable;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CutoutDrawable;->setCutout(Landroid/graphics/RectF;)V

    return-void
.end method

.method private static recursiveSetEnabled(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 1125
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1126
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1127
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1128
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 1129
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Landroid/support/design/widget/TextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setBoxAttributes()V
    .locals 3

    .line 1315
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1321
    :pswitch_0
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->focusedStrokeColor:I

    if-nez v0, :cond_0

    .line 1322
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    .line 1324
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 1323
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->focusedStrokeColor:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    .line 1317
    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthPx:I

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 2

    .line 655
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 656
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "We already have an EditText, can only have one"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 659
    :cond_0
    instance-of v0, p1, Landroid/support/design/widget/TextInputEditText;

    if-nez v0, :cond_1

    const-string v0, "TextInputLayout"

    const-string v1, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    .line 660
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_1
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 667
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->onApplyBoxBackgroundMode()V

    .line 668
    new-instance p1, Landroid/support/design/widget/TextInputLayout$AccessibilityDelegate;

    invoke-direct {p1, p0}, Landroid/support/design/widget/TextInputLayout$AccessibilityDelegate;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setTextInputAccessibilityDelegate(Landroid/support/design/widget/TextInputLayout$AccessibilityDelegate;)V

    .line 670
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->hasPasswordTransformation()Z

    move-result p1

    if-nez p1, :cond_2

    .line 675
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 677
    :cond_2
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextSize(F)V

    .line 679
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getGravity()I

    move-result p1

    .line 680
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    and-int/lit8 v1, p1, -0x71

    or-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 682
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 685
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    new-instance v0, Landroid/support/design/widget/TextInputLayout$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TextInputLayout$1;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 703
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_3

    .line 704
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 708
    :cond_3
    iget-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 709
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 711
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    .line 712
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 714
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 716
    :cond_4
    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->isProvidingHint:Z

    .line 719
    :cond_5
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 720
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    .line 723
    :cond_6
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {p1}, Landroid/support/design/widget/IndicatorViewController;->adjustIndicatorPadding()V

    .line 725
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updatePasswordToggleView()V

    const/4 p1, 0x0

    .line 728
    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(ZZ)V

    return-void
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 1

    .line 804
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 805
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    .line 806
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 808
    iget-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    if-nez p1, :cond_0

    .line 809
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->openCutout()V

    :cond_0
    return-void
.end method

.method private shouldShowPasswordIcon()Z
    .locals 1

    .line 1852
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->hasPasswordTransformation()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateEditTextBackgroundBounds()V
    .locals 5

    .line 1287
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 1290
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1295
    :cond_1
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1296
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1299
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1300
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {p0, v2, v1}, Landroid/support/design/widget/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1302
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1303
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_3

    .line 1305
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1306
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1308
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    .line 1309
    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v4, v2

    .line 1310
    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getBottom()I

    move-result p0

    invoke-virtual {v0, v3, v1, v4, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    return-void
.end method

.method private updateInputLayoutMargins()V
    .locals 3

    .line 734
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 735
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->calculateLabelMarginTop()I

    move-result v1

    .line 737
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v1, v2, :cond_0

    .line 738
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 739
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method private updateLabelState(ZZ)V
    .locals 6

    .line 748
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v0

    .line 749
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 750
    :goto_0
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 751
    :cond_1
    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v3}, Landroid/support/design/widget/IndicatorViewController;->errorShouldBeShown()Z

    move-result v3

    .line 754
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_2

    .line 755
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 756
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    if-nez v0, :cond_3

    .line 761
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->disabledColor:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 762
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->disabledColor:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 764
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v4}, Landroid/support/design/widget/IndicatorViewController;->getErrorViewTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 765
    :cond_4
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 766
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    .line 767
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_6

    .line 768
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    :cond_6
    :goto_1
    if-nez v1, :cond_9

    .line 771
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v2, :cond_9

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    if-nez p2, :cond_8

    .line 778
    iget-boolean p2, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    if-nez p2, :cond_b

    .line 779
    :cond_8
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->expandHint(Z)V

    goto :goto_3

    :cond_9
    :goto_2
    if-nez p2, :cond_a

    .line 773
    iget-boolean p2, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    if-eqz p2, :cond_b

    .line 774
    :cond_a
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->collapseHint(Z)V

    :cond_b
    :goto_3
    return-void
.end method

.method private updatePasswordToggleView()V
    .locals 7

    .line 1581
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 1586
    :cond_0
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->shouldShowPasswordIcon()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    .line 1587
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-nez v0, :cond_1

    .line 1590
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v5, Landroid/support/design/R$layout;->design_text_input_password_icon:I

    iget-object v6, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    .line 1591
    invoke-virtual {v0, v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CheckableImageButton;

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    .line 1592
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/support/design/widget/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1593
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleContentDesc:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/support/design/widget/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1594
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1596
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    new-instance v5, Landroid/support/design/widget/TextInputLayout$2;

    invoke-direct {v5, p0}, Landroid/support/design/widget/TextInputLayout$2;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v5}, Landroid/support/design/widget/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1605
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 1609
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setMinimumHeight(I)V

    .line 1612
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/CheckableImageButton;->setVisibility(I)V

    .line 1613
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-boolean v5, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    invoke-virtual {v0, v5}, Landroid/support/design/widget/CheckableImageButton;->setChecked(Z)V

    .line 1617
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 1618
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    .line 1620
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v5}, Landroid/support/design/widget/CheckableImageButton;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v0, v4, v4, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1622
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1624
    aget-object v5, v0, v2

    iget-object v6, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v5, v6, :cond_4

    .line 1625
    aget-object v2, v0, v2

    iput-object v2, p0, Landroid/support/design/widget/TextInputLayout;->originalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    .line 1627
    :cond_4
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    aget-object v4, v0, v4

    aget-object v3, v0, v3

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    invoke-static {v2, v4, v3, v5, v0}, Landroid/support/v4/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1631
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1632
    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1633
    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1634
    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1635
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result p0

    .line 1631
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/support/design/widget/CheckableImageButton;->setPadding(IIII)V

    goto :goto_0

    .line 1637
    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/CheckableImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 1638
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/support/design/widget/CheckableImageButton;->setVisibility(I)V

    .line 1641
    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 1644
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1645
    aget-object v2, v0, v2

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v2, v5, :cond_7

    .line 1646
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    aget-object v4, v0, v4

    aget-object v3, v0, v3

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->originalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    invoke-static {v2, v4, v3, v5, v0}, Landroid/support/v4/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 1648
    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    :cond_7
    :goto_0
    return-void
.end method

.method private updateTextInputBoxBounds()V
    .locals 6

    .line 1218
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 1221
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getRight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1225
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLeft()I

    move-result v0

    .line 1226
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->calculateBoxBackgroundTop()I

    move-result v1

    .line 1227
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getRight()I

    move-result v2

    .line 1228
    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->boxBottomOffsetPx:I

    add-int/2addr v3, v4

    .line 1232
    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1233
    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthFocusedPx:I

    div-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 1234
    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthFocusedPx:I

    div-int/2addr v4, v5

    sub-int/2addr v1, v4

    .line 1235
    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthFocusedPx:I

    div-int/2addr v4, v5

    sub-int/2addr v2, v4

    .line 1236
    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthFocusedPx:I

    div-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 1239
    :cond_1
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 1240
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyBoxAttributes()V

    .line 1241
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackgroundBounds()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 368
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 371
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, -0x71

    or-int/lit8 v0, v0, 0x10

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 373
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    iget-object p2, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateInputLayoutMargins()V

    .line 380
    check-cast p1, Landroid/widget/EditText;

    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    goto :goto_0

    .line 383
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method animateToExpansionFraction(F)V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 2038
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 2041
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 2042
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    .line 2043
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    sget-object v1, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2044
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xa7

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2045
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/design/widget/TextInputLayout$3;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TextInputLayout$3;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2053
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v3}, Landroid/support/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2054
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method cutoutIsOpen()Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 1953
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast p0, Landroid/support/design/widget/CutoutDrawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CutoutDrawable;->hasCutout()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 4

    .line 633
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    goto :goto_0

    .line 640
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->isProvidingHint:Z

    const/4 v1, 0x0

    .line 642
    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->isProvidingHint:Z

    .line 643
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    .line 644
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 646
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 649
    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->isProvidingHint:Z

    return-void

    :catchall_0
    move-exception p1

    .line 648
    iget-object p2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 649
    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->isProvidingHint:Z

    throw p1

    .line 634
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1513
    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->restoringSavedState:Z

    .line 1514
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    const/4 p1, 0x0

    .line 1515
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->restoringSavedState:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1565
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 1566
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1568
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1569
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_1

    .line 1570
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 1958
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->inDrawableStateChanged:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1965
    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->inDrawableStateChanged:Z

    .line 1967
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 1969
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getDrawableState()[I

    move-result-object v1

    .line 1973
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 1975
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    .line 1976
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateTextInputBoxBounds()V

    .line 1977
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->updateTextInputBoxState()V

    .line 1979
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    if-eqz v0, :cond_2

    .line 1980
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setState([I)Z

    move-result v0

    or-int/2addr v0, v3

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    .line 1984
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->invalidate()V

    .line 1987
    :cond_3
    iput-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->inDrawableStateChanged:Z

    return-void
.end method

.method public getBoxBackgroundColor()I
    .locals 0

    .line 485
    iget p0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundColor:I

    return p0
.end method

.method public getBoxCornerRadiusBottomEnd()F
    .locals 0

    .line 565
    iget p0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomEnd:F

    return p0
.end method

.method public getBoxCornerRadiusBottomStart()F
    .locals 0

    .line 575
    iget p0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomStart:F

    return p0
.end method

.method public getBoxCornerRadiusTopEnd()F
    .locals 0

    .line 555
    iget p0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopEnd:F

    return p0
.end method

.method public getBoxCornerRadiusTopStart()F
    .locals 0

    .line 545
    iget p0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopStart:F

    return p0
.end method

.method public getBoxStrokeColor()I
    .locals 0

    .line 453
    iget p0, p0, Landroid/support/design/widget/TextInputLayout;->focusedStrokeColor:I

    return p0
.end method

.method public getCounterMaxLength()I
    .locals 0

    .line 1140
    iget p0, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    return p0
.end method

.method getCounterOverflowDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1149
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->counterEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1150
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultHintTextColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 919
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 787
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    return-object p0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1526
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {p0}, Landroid/support/design/widget/IndicatorViewController;->getErrorText()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getErrorCurrentTextColors()I
    .locals 0
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 950
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {p0}, Landroid/support/design/widget/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result p0

    return p0
.end method

.method final getErrorTextCurrentColor()I
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 2079
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {p0}, Landroid/support/design/widget/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result p0

    return p0
.end method

.method public getHelperText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1538
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->isHelperTextEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    .line 1539
    invoke-virtual {p0}, Landroid/support/design/widget/IndicatorViewController;->getHelperText()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getHelperTextCurrentTextColor()I
    .locals 0
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 1027
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {p0}, Landroid/support/design/widget/IndicatorViewController;->getHelperTextViewCurrentTextColor()I

    move-result p0

    return p0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 822
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method final getHintCollapsedTextHeight()F
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 2074
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result p0

    return p0
.end method

.method final getHintCurrentCollapsedTextColor()I
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 2069
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result p0

    return p0
.end method

.method public getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1733
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleContentDesc:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1722
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 628
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public isCounterEnabled()Z
    .locals 0

    .line 1093
    iget-boolean p0, p0, Landroid/support/design/widget/TextInputLayout;->counterEnabled:Z

    return p0
.end method

.method public isErrorEnabled()Z
    .locals 0

    .line 969
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {p0}, Landroid/support/design/widget/IndicatorViewController;->isErrorEnabled()Z

    move-result p0

    return p0
.end method

.method final isHelperTextDisplayed()Z
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 2064
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {p0}, Landroid/support/design/widget/IndicatorViewController;->helperTextIsDisplayed()Z

    move-result p0

    return p0
.end method

.method public isHelperTextEnabled()Z
    .locals 0

    .line 1016
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {p0}, Landroid/support/design/widget/IndicatorViewController;->isHelperTextEnabled()Z

    move-result p0

    return p0
.end method

.method public isHintAnimationEnabled()Z
    .locals 0

    .line 1550
    iget-boolean p0, p0, Landroid/support/design/widget/TextInputLayout;->hintAnimationEnabled:Z

    return p0
.end method

.method public isHintEnabled()Z
    .locals 0

    .line 875
    iget-boolean p0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    return p0
.end method

.method final isHintExpanded()Z
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 2059
    iget-boolean p0, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    return p0
.end method

.method public isPasswordVisibilityToggleEnabled()Z
    .locals 0

    .line 1742
    iget-boolean p0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleEnabled:Z

    return p0
.end method

.method isProvidingHint()Z
    .locals 0

    .line 884
    iget-boolean p0, p0, Landroid/support/design/widget/TextInputLayout;->isProvidingHint:Z

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 1876
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1878
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_0

    .line 1879
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateTextInputBoxBounds()V

    .line 1882
    :cond_0
    iget-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    .line 1883
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->tmpRect:Landroid/graphics/Rect;

    .line 1884
    iget-object p2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {p0, p2, p1}, Landroid/support/design/widget/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1886
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object p4, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result p4

    add-int/2addr p2, p4

    .line 1887
    iget p4, p1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    .line 1888
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->calculateCollapsedTextTopBounds()I

    move-result v0

    .line 1890
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1892
    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1894
    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v3

    sub-int/2addr p1, v3

    .line 1890
    invoke-virtual {v1, p2, v2, p4, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 1898
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p1, p2, v0, p4, p5}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 1899
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {p1}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 1903
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cutoutEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    if-nez p1, :cond_1

    .line 1904
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->openCutout()V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1576
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updatePasswordToggleView()V

    .line 1577
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1498
    instance-of v0, p1, Landroid/support/design/widget/TextInputLayout$SavedState;

    if-nez v0, :cond_0

    .line 1499
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1502
    :cond_0
    check-cast p1, Landroid/support/design/widget/TextInputLayout$SavedState;

    .line 1503
    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1504
    iget-object v0, p1, Landroid/support/design/widget/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 1505
    iget-boolean p1, p1, Landroid/support/design/widget/TextInputLayout$SavedState;->isPasswordToggledVisible:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 1506
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout;->passwordVisibilityToggleRequested(Z)V

    .line 1508
    :cond_1
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1487
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1488
    new-instance v1, Landroid/support/design/widget/TextInputLayout$SavedState;

    invoke-direct {v1, v0}, Landroid/support/design/widget/TextInputLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1489
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->errorShouldBeShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1490
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Landroid/support/design/widget/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    .line 1492
    :cond_0
    iget-boolean p0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    iput-boolean p0, v1, Landroid/support/design/widget/TextInputLayout$SavedState;->isPasswordToggledVisible:Z

    return-object v1
.end method

.method public passwordVisibilityToggleRequested(Z)V
    .locals 3

    .line 1811
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleEnabled:Z

    if-eqz v0, :cond_2

    .line 1813
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 1815
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->hasPasswordTransformation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1816
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v1, 0x1

    .line 1817
    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    goto :goto_0

    .line 1819
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v1, 0x0

    .line 1820
    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    .line 1823
    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CheckableImageButton;->setChecked(Z)V

    if-eqz p1, :cond_1

    .line 1825
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {p1}, Landroid/support/design/widget/CheckableImageButton;->jumpDrawablesToCurrentState()V

    .line 1829
    :cond_1
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    return-void
.end method

.method public setBoxBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 472
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundColor:I

    if-eq v0, p1, :cond_0

    .line 473
    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundColor:I

    .line 474
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyBoxAttributes()V

    :cond_0
    return-void
.end method

.method public setBoxBackgroundColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 462
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setBoxBackgroundColor(I)V

    return-void
.end method

.method public setBoxBackgroundMode(I)V
    .locals 1

    .line 401
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    if-ne p1, v0, :cond_0

    return-void

    .line 404
    :cond_0
    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    .line 405
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->onApplyBoxBackgroundMode()V

    return-void
.end method

.method public setBoxCornerRadii(FFFF)V
    .locals 1

    .line 526
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopStart:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopEnd:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomEnd:F

    cmpl-float v0, v0, p4

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomStart:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    .line 530
    :cond_0
    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopStart:F

    .line 531
    iput p2, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopEnd:F

    .line 532
    iput p4, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomEnd:F

    .line 533
    iput p3, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomStart:F

    .line 534
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyBoxAttributes()V

    :cond_1
    return-void
.end method

.method public setBoxCornerRadiiResources(IIII)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 503
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 504
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    .line 505
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    .line 506
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    .line 502
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/design/widget/TextInputLayout;->setBoxCornerRadii(FFFF)V

    return-void
.end method

.method public setBoxStrokeColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 440
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->focusedStrokeColor:I

    if-eq v0, p1, :cond_0

    .line 441
    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->focusedStrokeColor:I

    .line 442
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->updateTextInputBoxState()V

    :cond_0
    return-void
.end method

.method public setCounterEnabled(Z)V
    .locals 3

    .line 1063
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->counterEnabled:Z

    if-eq v0, p1, :cond_3

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    .line 1065
    new-instance v1, Landroid/support/v7/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 1066
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    sget v2, Landroid/support/design/R$id;->textinput_counter:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 1067
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 1068
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1070
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1071
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->counterTextAppearance:I

    invoke-virtual {p0, v1, v2}, Landroid/support/design/widget/TextInputLayout;->setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V

    .line 1072
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/support/design/widget/IndicatorViewController;->addIndicator(Landroid/widget/TextView;I)V

    .line 1073
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1074
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    goto :goto_0

    .line 1076
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    goto :goto_0

    .line 1079
    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/support/design/widget/IndicatorViewController;->removeIndicator(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    .line 1080
    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 1082
    :goto_0
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->counterEnabled:Z

    :cond_3
    return-void
.end method

.method public setCounterMaxLength(I)V
    .locals 1

    .line 1103
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    if-eq v0, p1, :cond_2

    if-lez p1, :cond_0

    .line 1105
    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 1107
    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    .line 1109
    :goto_0
    iget-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->counterEnabled:Z

    if-eqz p1, :cond_2

    .line 1110
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    :cond_2
    return-void
.end method

.method public setDefaultHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 905
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 906
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    .line 908
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 909
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1120
    invoke-static {p0, p1}, Landroid/support/design/widget/TextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    .line 1121
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1041
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->isErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1042
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1047
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 1050
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1051
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/IndicatorViewController;->showError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1053
    :cond_2
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {p0}, Landroid/support/design/widget/IndicatorViewController;->hideError()V

    :goto_0
    return-void
.end method

.method public setErrorEnabled(Z)V
    .locals 0

    .line 930
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/IndicatorViewController;->setErrorEnabled(Z)V

    return-void
.end method

.method public setErrorTextAppearance(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 939
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/IndicatorViewController;->setErrorTextAppearance(I)V

    return-void
.end method

.method public setErrorTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 944
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/IndicatorViewController;->setErrorViewTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 997
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isHelperTextEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 999
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setHelperTextEnabled(Z)V

    goto :goto_0

    .line 1002
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isHelperTextEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1003
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 1005
    :cond_1
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/IndicatorViewController;->showHelper(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setHelperTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1021
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/IndicatorViewController;->setHelperTextViewTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setHelperTextEnabled(Z)V
    .locals 0

    .line 980
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/IndicatorViewController;->setHelperTextEnabled(Z)V

    return-void
.end method

.method public setHelperTextTextAppearance(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 959
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/IndicatorViewController;->setHelperTextAppearance(I)V

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 797
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_0

    .line 798
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    const/16 p1, 0x800

    .line 799
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 0

    .line 1560
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->hintAnimationEnabled:Z

    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 2

    .line 837
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eq p1, v0, :cond_4

    .line 838
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    .line 839
    iget-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 841
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->isProvidingHint:Z

    .line 842
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 844
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 847
    :cond_0
    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 849
    :cond_1
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    .line 850
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 853
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 854
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 856
    :cond_2
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 p1, 0x1

    .line 858
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->isProvidingHint:Z

    .line 862
    :goto_0
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    .line 863
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateInputLayoutMargins()V

    :cond_4
    return-void
.end method

.method public setHintTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 893
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 894
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {p1}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    .line 896
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 897
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 899
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateInputLayoutMargins()V

    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1695
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1694
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1708
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleContentDesc:Ljava/lang/CharSequence;

    .line 1709
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v0, :cond_0

    .line 1710
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1665
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1664
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1678
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 1679
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v0, :cond_0

    .line 1680
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleEnabled(Z)V
    .locals 1

    .line 1755
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleEnabled:Z

    if-eq v0, p1, :cond_1

    .line 1756
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleEnabled:Z

    if-nez p1, :cond_0

    .line 1758
    iget-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 1761
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_0
    const/4 p1, 0x0

    .line 1765
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    .line 1767
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updatePasswordToggleView()V

    :cond_1
    return-void
.end method

.method public setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1783
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 1784
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintList:Z

    .line 1785
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyPasswordToggleTint()V

    return-void
.end method

.method public setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1797
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 1798
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintMode:Z

    .line 1799
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyPasswordToggleTint()V

    return-void
.end method

.method setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1195
    :try_start_0
    invoke-static {p1, p2}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 1197
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p2, v1, :cond_0

    .line 1198
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v1, -0xff01

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :catch_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1212
    sget p2, Landroid/support/design/R$style;->TextAppearance_AppCompat_Caption:I

    invoke-static {p1, p2}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 1213
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Landroid/support/design/R$color;->design_error:I

    invoke-static {p0, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public setTextInputAccessibilityDelegate(Landroid/support/design/widget/TextInputLayout$AccessibilityDelegate;)V
    .locals 1

    .line 1841
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1842
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 611
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_0

    .line 612
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    .line 614
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 615
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/IndicatorViewController;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 617
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 618
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method updateCounter(I)V
    .locals 9

    .line 1156
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    .line 1157
    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 1158
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1159
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1160
    iput-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    goto/16 :goto_2

    .line 1164
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getAccessibilityLiveRegion(Landroid/view/View;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1166
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 1169
    :cond_1
    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    if-le p1, v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    .line 1170
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eq v0, v1, :cond_4

    .line 1171
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    iget-boolean v4, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowTextAppearance:I

    goto :goto_1

    :cond_3
    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->counterTextAppearance:I

    :goto_1
    invoke-virtual {p0, v1, v4}, Landroid/support/design/widget/TextInputLayout;->setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V

    .line 1175
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eqz v1, :cond_4

    .line 1176
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 1180
    :cond_4
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 1181
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/design/R$string;->character_counter_pattern:I

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    iget v8, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1180
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1182
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 1183
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/design/R$string;->character_counter_content_description:I

    new-array v6, v6, [Ljava/lang/Object;

    .line 1184
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    iget p1, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1182
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1186
    :goto_2
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eq v0, p1, :cond_5

    .line 1187
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 1188
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    :cond_5
    return-void
.end method

.method updateEditTextBackground()V
    .locals 2

    .line 1364
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 1368
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1373
    :cond_1
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->ensureBackgroundDrawableStateWorkaround()V

    .line 1375
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1376
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1379
    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v1}, Landroid/support/design/widget/IndicatorViewController;->errorShouldBeShown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1381
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    .line 1383
    invoke-virtual {p0}, Landroid/support/design/widget/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result p0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1382
    invoke-static {p0, v1}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    .line 1381
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 1384
    :cond_3
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 1386
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 1388
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1387
    invoke-static {p0, v1}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    .line 1386
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 1392
    :cond_4
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    .line 1393
    iget-object p0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->refreshDrawableState()V

    :goto_0
    return-void
.end method

.method updateLabelState(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 744
    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(ZZ)V

    return-void
.end method

.method updateTextInputBoxState()V
    .locals 4

    .line 1991
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1995
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1996
    :goto_0
    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->isHovered()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 1999
    :cond_2
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 2000
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2001
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->disabledColor:I

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    goto :goto_1

    .line 2002
    :cond_3
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v2}, Landroid/support/design/widget/IndicatorViewController;->errorShouldBeShown()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2003
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v2}, Landroid/support/design/widget/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 2005
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->focusedStrokeColor:I

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    .line 2007
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->hoveredStrokeColor:I

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    goto :goto_1

    .line 2009
    :cond_6
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->defaultStrokeColor:I

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    :goto_1
    if-nez v1, :cond_7

    if-eqz v0, :cond_8

    .line 2012
    :cond_7
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2013
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthFocusedPx:I

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthPx:I

    goto :goto_2

    .line 2015
    :cond_8
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthDefaultPx:I

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthPx:I

    .line 2017
    :goto_2
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyBoxAttributes()V

    :cond_9
    return-void

    :cond_a
    :goto_3
    return-void
.end method
