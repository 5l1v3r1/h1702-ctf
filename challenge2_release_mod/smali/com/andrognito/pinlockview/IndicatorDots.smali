.class public Lcom/andrognito/pinlockview/IndicatorDots;
.super Landroid/widget/LinearLayout;
.source "IndicatorDots.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrognito/pinlockview/IndicatorDots$IndicatorType;
    }
.end annotation


# static fields
.field private static final DEFAULT_PIN_LENGTH:I = 0x4


# instance fields
.field private mDotDiameter:I

.field private mDotSpacing:I

.field private mEmptyDrawable:I

.field private mFillDrawable:I

.field private mIndicatorType:I

.field private mPinLength:I

.field private mPreviousLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/andrognito/pinlockview/IndicatorDots;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/andrognito/pinlockview/IndicatorDots;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    sget-object p3, Lcom/andrognito/pinlockview/R$styleable;->PinLockView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 57
    :try_start_0
    sget p3, Lcom/andrognito/pinlockview/R$styleable;->PinLockView_dotDiameter:I

    invoke-virtual {p0}, Lcom/andrognito/pinlockview/IndicatorDots;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/andrognito/pinlockview/R$dimen;->default_dot_diameter:I

    invoke-static {v0, v1}, Lcom/andrognito/pinlockview/ResourceUtils;->getDimensionInPx(Landroid/content/Context;I)F

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mDotDiameter:I

    .line 58
    sget p3, Lcom/andrognito/pinlockview/R$styleable;->PinLockView_dotSpacing:I

    invoke-virtual {p0}, Lcom/andrognito/pinlockview/IndicatorDots;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/andrognito/pinlockview/R$dimen;->default_dot_spacing:I

    invoke-static {v0, v1}, Lcom/andrognito/pinlockview/ResourceUtils;->getDimensionInPx(Landroid/content/Context;I)F

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mDotSpacing:I

    .line 59
    sget p3, Lcom/andrognito/pinlockview/R$styleable;->PinLockView_dotFilledBackground:I

    sget v0, Lcom/andrognito/pinlockview/R$drawable;->dot_filled:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mFillDrawable:I

    .line 61
    sget p3, Lcom/andrognito/pinlockview/R$styleable;->PinLockView_dotEmptyBackground:I

    sget v0, Lcom/andrognito/pinlockview/R$drawable;->dot_empty:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mEmptyDrawable:I

    .line 63
    sget p3, Lcom/andrognito/pinlockview/R$styleable;->PinLockView_pinLength:I

    const/4 v0, 0x4

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mPinLength:I

    .line 64
    sget p3, Lcom/andrognito/pinlockview/R$styleable;->PinLockView_indicatorType:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mIndicatorType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    invoke-direct {p0, p1}, Lcom/andrognito/pinlockview/IndicatorDots;->initView(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception p0

    .line 67
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private emptyDot(Landroid/view/View;)V
    .locals 0

    .line 144
    iget p0, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mEmptyDrawable:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private fillDot(Landroid/view/View;)V
    .locals 0

    .line 148
    iget p0, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mFillDrawable:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    .line 74
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setLayoutDirection(Landroid/view/View;I)V

    .line 75
    iget v1, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mIndicatorType:I

    if-nez v1, :cond_0

    move v1, v0

    .line 76
    :goto_0
    iget v2, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mPinLength:I

    if-ge v1, v2, :cond_1

    .line 77
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-direct {p0, v2}, Lcom/andrognito/pinlockview/IndicatorDots;->emptyDot(Landroid/view/View;)V

    .line 80
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mDotDiameter:I

    iget v5, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mDotDiameter:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 82
    iget v4, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mDotSpacing:I

    iget v5, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mDotSpacing:I

    invoke-virtual {v3, v4, v0, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 83
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-virtual {p0, v2}, Lcom/andrognito/pinlockview/IndicatorDots;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_0
    iget p1, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mIndicatorType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 88
    new-instance p1, Landroid/animation/LayoutTransition;

    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, p1}, Lcom/andrognito/pinlockview/IndicatorDots;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getIndicatorType()I
    .locals 0

    .line 164
    iget p0, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mIndicatorType:I

    return p0
.end method

.method public getPinLength()I
    .locals 0

    .line 152
    iget p0, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mPinLength:I

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 94
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 96
    iget v0, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mIndicatorType:I

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/andrognito/pinlockview/IndicatorDots;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 98
    iget v1, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mDotDiameter:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 99
    invoke-virtual {p0}, Lcom/andrognito/pinlockview/IndicatorDots;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setIndicatorType(I)V
    .locals 0

    .line 168
    iput p1, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mIndicatorType:I

    .line 169
    invoke-virtual {p0}, Lcom/andrognito/pinlockview/IndicatorDots;->removeAllViews()V

    .line 170
    invoke-virtual {p0}, Lcom/andrognito/pinlockview/IndicatorDots;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/andrognito/pinlockview/IndicatorDots;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public setPinLength(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mPinLength:I

    .line 157
    invoke-virtual {p0}, Lcom/andrognito/pinlockview/IndicatorDots;->removeAllViews()V

    .line 158
    invoke-virtual {p0}, Lcom/andrognito/pinlockview/IndicatorDots;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/andrognito/pinlockview/IndicatorDots;->initView(Landroid/content/Context;)V

    return-void
.end method

.method updateDot(I)V
    .locals 5

    .line 104
    iget v0, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mIndicatorType:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-lez p1, :cond_1

    .line 106
    iget v0, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mPreviousLength:I

    if-le p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    .line 107
    invoke-virtual {p0, v0}, Lcom/andrognito/pinlockview/IndicatorDots;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/andrognito/pinlockview/IndicatorDots;->fillDot(Landroid/view/View;)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0, p1}, Lcom/andrognito/pinlockview/IndicatorDots;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/andrognito/pinlockview/IndicatorDots;->emptyDot(Landroid/view/View;)V

    .line 111
    :goto_0
    iput p1, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mPreviousLength:I

    goto :goto_3

    :cond_1
    move p1, v1

    .line 114
    :goto_1
    invoke-virtual {p0}, Lcom/andrognito/pinlockview/IndicatorDots;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 115
    invoke-virtual {p0, p1}, Lcom/andrognito/pinlockview/IndicatorDots;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 116
    invoke-direct {p0, v0}, Lcom/andrognito/pinlockview/IndicatorDots;->emptyDot(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 118
    :cond_2
    iput v1, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mPreviousLength:I

    goto :goto_3

    :cond_3
    if-lez p1, :cond_5

    .line 122
    iget v0, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mPreviousLength:I

    if-le p1, v0, :cond_4

    .line 123
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/andrognito/pinlockview/IndicatorDots;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-direct {p0, v0}, Lcom/andrognito/pinlockview/IndicatorDots;->fillDot(Landroid/view/View;)V

    .line 126
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mDotDiameter:I

    iget v4, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mDotDiameter:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 128
    iget v3, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mDotSpacing:I

    iget v4, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mDotSpacing:I

    invoke-virtual {v2, v3, v1, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 129
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, p1, -0x1

    .line 131
    invoke-virtual {p0, v0, v1}, Lcom/andrognito/pinlockview/IndicatorDots;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 133
    :cond_4
    invoke-virtual {p0, p1}, Lcom/andrognito/pinlockview/IndicatorDots;->removeViewAt(I)V

    .line 135
    :goto_2
    iput p1, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mPreviousLength:I

    goto :goto_3

    .line 137
    :cond_5
    invoke-virtual {p0}, Lcom/andrognito/pinlockview/IndicatorDots;->removeAllViews()V

    .line 138
    iput v1, p0, Lcom/andrognito/pinlockview/IndicatorDots;->mPreviousLength:I

    :goto_3
    return-void
.end method
