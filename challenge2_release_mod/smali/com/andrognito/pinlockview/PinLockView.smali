.class public Lcom/andrognito/pinlockview/PinLockView;
.super Landroid/support/v7/widget/RecyclerView;
.source "PinLockView.java"


# static fields
.field private static final DEFAULT_KEY_SET:[I

.field private static final DEFAULT_PIN_LENGTH:I = 0x4


# instance fields
.field private mAdapter:Lcom/andrognito/pinlockview/PinLockAdapter;

.field private mButtonBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonSize:I

.field private mCustomKeySet:[I

.field private mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

.field private mDeleteButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mDeleteButtonPressedColor:I

.field private mDeleteButtonSize:I

.field private mHorizontalSpacing:I

.field private mIndicatorDots:Lcom/andrognito/pinlockview/IndicatorDots;

.field private mOnDeleteClickListener:Lcom/andrognito/pinlockview/PinLockAdapter$OnDeleteClickListener;

.field private mOnNumberClickListener:Lcom/andrognito/pinlockview/PinLockAdapter$OnNumberClickListener;

.field private mPin:Ljava/lang/String;

.field private mPinLength:I

.field private mPinLockListener:Lcom/andrognito/pinlockview/PinLockListener;

.field private mShowDeleteButton:Z

.field private mTextColor:I

.field private mTextSize:I

.field private mVerticalSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    .line 21
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/andrognito/pinlockview/PinLockView;->DEFAULT_KEY_SET:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 124
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 23
    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mPin:Ljava/lang/String;

    .line 38
    new-instance p1, Lcom/andrognito/pinlockview/PinLockView$1;

    invoke-direct {p1, p0}, Lcom/andrognito/pinlockview/PinLockView$1;-><init>(Lcom/andrognito/pinlockview/PinLockView;)V

    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mOnNumberClickListener:Lcom/andrognito/pinlockview/PinLockAdapter$OnNumberClickListener;

    .line 83
    new-instance p1, Lcom/andrognito/pinlockview/PinLockView$2;

    invoke-direct {p1, p0}, Lcom/andrognito/pinlockview/PinLockView$2;-><init>(Lcom/andrognito/pinlockview/PinLockView;)V

    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mOnDeleteClickListener:Lcom/andrognito/pinlockview/PinLockAdapter$OnDeleteClickListener;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, v0}, Lcom/andrognito/pinlockview/PinLockView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 129
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, ""

    .line 23
    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mPin:Ljava/lang/String;

    .line 38
    new-instance p1, Lcom/andrognito/pinlockview/PinLockView$1;

    invoke-direct {p1, p0}, Lcom/andrognito/pinlockview/PinLockView$1;-><init>(Lcom/andrognito/pinlockview/PinLockView;)V

    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mOnNumberClickListener:Lcom/andrognito/pinlockview/PinLockAdapter$OnNumberClickListener;

    .line 83
    new-instance p1, Lcom/andrognito/pinlockview/PinLockView$2;

    invoke-direct {p1, p0}, Lcom/andrognito/pinlockview/PinLockView$2;-><init>(Lcom/andrognito/pinlockview/PinLockView;)V

    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mOnDeleteClickListener:Lcom/andrognito/pinlockview/PinLockAdapter$OnDeleteClickListener;

    const/4 p1, 0x0

    .line 130
    invoke-direct {p0, p2, p1}, Lcom/andrognito/pinlockview/PinLockView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 134
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    .line 23
    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mPin:Ljava/lang/String;

    .line 38
    new-instance p1, Lcom/andrognito/pinlockview/PinLockView$1;

    invoke-direct {p1, p0}, Lcom/andrognito/pinlockview/PinLockView$1;-><init>(Lcom/andrognito/pinlockview/PinLockView;)V

    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mOnNumberClickListener:Lcom/andrognito/pinlockview/PinLockAdapter$OnNumberClickListener;

    .line 83
    new-instance p1, Lcom/andrognito/pinlockview/PinLockView$2;

    invoke-direct {p1, p0}, Lcom/andrognito/pinlockview/PinLockView$2;-><init>(Lcom/andrognito/pinlockview/PinLockView;)V

    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mOnDeleteClickListener:Lcom/andrognito/pinlockview/PinLockAdapter$OnDeleteClickListener;

    .line 135
    invoke-direct {p0, p2, p3}, Lcom/andrognito/pinlockview/PinLockView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/andrognito/pinlockview/PinLockView;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mPin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/andrognito/pinlockview/PinLockView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mPin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/IndicatorDots;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mIndicatorDots:Lcom/andrognito/pinlockview/IndicatorDots;

    return-object p0
.end method

.method static synthetic access$200(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/PinLockAdapter;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mAdapter:Lcom/andrognito/pinlockview/PinLockAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/andrognito/pinlockview/PinLockView;)Lcom/andrognito/pinlockview/PinLockListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mPinLockListener:Lcom/andrognito/pinlockview/PinLockListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/andrognito/pinlockview/PinLockView;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mPinLength:I

    return p0
.end method

.method static synthetic access$500(Lcom/andrognito/pinlockview/PinLockView;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/andrognito/pinlockview/PinLockView;->clearInternalPin()V

    return-void
.end method

.method private clearInternalPin()V
    .locals 1

    const-string v0, ""

    .line 396
    iput-object v0, p0, Lcom/andrognito/pinlockview/PinLockView;->mPin:Ljava/lang/String;

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 2

    .line 140
    invoke-virtual {p0}, Lcom/andrognito/pinlockview/PinLockView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lcom/andrognito/pinlockview/R$styleable;->PinLockView:[I

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 143
    :try_start_0
    sget p2, Lcom/andrognito/pinlockview/R$styleable;->PinLockView_pinLength:I

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/andrognito/pinlockview/PinLockView;->mPinLength:I

    .line 144
    sget p2, Lcom/andrognito/pinlockview/R$styleable;->PinLockView_keypadHorizontalSpacing:I

    invoke-virtual {p0}, Lcom/andrognito/pinlockview/PinLockView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/andrognito/pinlockview/R$dimen;->default_horizontal_spacing:I

    invoke-static {v0, v1}, Lcom/andrognito/pinlockview/ResourceUtils;->getDimensionInPx(Landroid/content/Context;I)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/andrognito/pinlockview/PinLockView;->mHorizontalSpacing:I

    .line 145
    sget p2, Lcom/andrognito/pinlockview/R$styleable;->PinLockView_keypadVerticalSpacing:I

    invoke-virtual {p0}, Lcom/andrognito/pinlockview/PinLockView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/andrognito/pinlockview/R$dimen;->default_vertical_spacing:I

    invoke-static {v0, v1}, Lcom/andrognito/pinlockview/ResourceUtils;->getDimensionInPx(Landroid/content/Context;I)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/andrognito/pinlockview/PinLockView;->mVerticalSpacing:I

    .line 146
    sget p2, Lcom/andrognito/pinlockview/R$styleable;->PinLockView_keypadTextColor:I

    invoke-virtual {p0}, Lcom/andrognito/pinlockview/PinLockView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/andrognito/pinlockview/R$color;->white:I

    invoke-static {v0, v1}, Lcom/andrognito/pinlockview/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/andrognito/pinlockview/PinLockView;->mTextColor:I

    .line 147
    sget p2, Lcom/andrognito/pinlockview/R$styleable;->PinLockView_keypadTextSize:I

    invoke-virtual {p0}, Lcom/andrognito/pinlockview/PinLockView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/andrognito/pinlockview/R$dimen;->default_text_size:I

    invoke-static {v0, v1}, Lcom/andrognito/pinlockview/ResourceUtils;->getDimensionInPx(Landroid/content/Context;I)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/andrognito/pinlockview/PinLockView;->mTextSize:I

    .line 148
    sget p2, Lcom/andrognito/pinlockview/R$styleable;->PinLockView_keypadButtonSize:I

    invoke-virtual {p0}, Lcom/andrognito/pinlockview/PinLockView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/andrognito/pinlockview/R$dimen;->default_button_size:I

    invoke-static {v0, v1}, Lcom/andrognito/pinlockview/ResourceUtils;->getDimensionInPx(Landroid/content/Context;I)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/andrognito/pinlockview/PinLockView;->mButtonSize:I

    .line 149
    sget p2, Lcom/andrognito/pinlockview/R$styleable;->PinLockView_keypadDeleteButtonSize:I

    invoke-virtual {p0}, Lcom/andrognito/pinlockview/PinLockView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/andrognito/pinlockview/R$dimen;->default_delete_button_size:I

    invoke-static {v0, v1}, Lcom/andrognito/pinlockview/ResourceUtils;->getDimensionInPx(Landroid/content/Context;I)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/andrognito/pinlockview/PinLockView;->mDeleteButtonSize:I

    .line 150
    sget p2, Lcom/andrognito/pinlockview/R$styleable;->PinLockView_keypadButtonBackgroundDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/andrognito/pinlockview/PinLockView;->mButtonBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 151
    sget p2, Lcom/andrognito/pinlockview/R$styleable;->PinLockView_keypadDeleteButtonDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/andrognito/pinlockview/PinLockView;->mDeleteButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 152
    sget p2, Lcom/andrognito/pinlockview/R$styleable;->PinLockView_keypadShowDeleteButton:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/andrognito/pinlockview/PinLockView;->mShowDeleteButton:Z

    .line 153
    sget p2, Lcom/andrognito/pinlockview/R$styleable;->PinLockView_keypadDeleteButtonPressedColor:I

    invoke-virtual {p0}, Lcom/andrognito/pinlockview/PinLockView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/andrognito/pinlockview/R$color;->greyish:I

    invoke-static {v0, v1}, Lcom/andrognito/pinlockview/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/andrognito/pinlockview/PinLockView;->mDeleteButtonPressedColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    new-instance p1, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    invoke-direct {p1}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;-><init>()V

    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    .line 159
    iget-object p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    iget p2, p0, Lcom/andrognito/pinlockview/PinLockView;->mTextColor:I

    invoke-virtual {p1, p2}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->setTextColor(I)V

    .line 160
    iget-object p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    iget p2, p0, Lcom/andrognito/pinlockview/PinLockView;->mTextSize:I

    invoke-virtual {p1, p2}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->setTextSize(I)V

    .line 161
    iget-object p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    iget p2, p0, Lcom/andrognito/pinlockview/PinLockView;->mButtonSize:I

    invoke-virtual {p1, p2}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->setButtonSize(I)V

    .line 162
    iget-object p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    iget-object p2, p0, Lcom/andrognito/pinlockview/PinLockView;->mButtonBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->setButtonBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    iget-object p2, p0, Lcom/andrognito/pinlockview/PinLockView;->mDeleteButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->setDeleteButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    iget p2, p0, Lcom/andrognito/pinlockview/PinLockView;->mDeleteButtonSize:I

    invoke-virtual {p1, p2}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->setDeleteButtonSize(I)V

    .line 165
    iget-object p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    iget-boolean p2, p0, Lcom/andrognito/pinlockview/PinLockView;->mShowDeleteButton:Z

    invoke-virtual {p1, p2}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->setShowDeleteButton(Z)V

    .line 166
    iget-object p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    iget p2, p0, Lcom/andrognito/pinlockview/PinLockView;->mDeleteButtonPressedColor:I

    invoke-virtual {p1, p2}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->setDeleteButtonPressesColor(I)V

    .line 168
    invoke-direct {p0}, Lcom/andrognito/pinlockview/PinLockView;->initView()V

    return-void

    :catchall_0
    move-exception p0

    .line 155
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private initView()V
    .locals 5

    .line 172
    new-instance v0, Lcom/andrognito/pinlockview/LTRGridLayoutManager;

    invoke-virtual {p0}, Lcom/andrognito/pinlockview/PinLockView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/andrognito/pinlockview/LTRGridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/andrognito/pinlockview/PinLockView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 174
    new-instance v0, Lcom/andrognito/pinlockview/PinLockAdapter;

    invoke-virtual {p0}, Lcom/andrognito/pinlockview/PinLockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/andrognito/pinlockview/PinLockAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/andrognito/pinlockview/PinLockView;->mAdapter:Lcom/andrognito/pinlockview/PinLockAdapter;

    .line 175
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView;->mAdapter:Lcom/andrognito/pinlockview/PinLockAdapter;

    iget-object v1, p0, Lcom/andrognito/pinlockview/PinLockView;->mOnNumberClickListener:Lcom/andrognito/pinlockview/PinLockAdapter$OnNumberClickListener;

    invoke-virtual {v0, v1}, Lcom/andrognito/pinlockview/PinLockAdapter;->setOnItemClickListener(Lcom/andrognito/pinlockview/PinLockAdapter$OnNumberClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView;->mAdapter:Lcom/andrognito/pinlockview/PinLockAdapter;

    iget-object v1, p0, Lcom/andrognito/pinlockview/PinLockView;->mOnDeleteClickListener:Lcom/andrognito/pinlockview/PinLockAdapter$OnDeleteClickListener;

    invoke-virtual {v0, v1}, Lcom/andrognito/pinlockview/PinLockAdapter;->setOnDeleteClickListener(Lcom/andrognito/pinlockview/PinLockAdapter$OnDeleteClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView;->mAdapter:Lcom/andrognito/pinlockview/PinLockAdapter;

    iget-object v1, p0, Lcom/andrognito/pinlockview/PinLockView;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    invoke-virtual {v0, v1}, Lcom/andrognito/pinlockview/PinLockAdapter;->setCustomizationOptions(Lcom/andrognito/pinlockview/CustomizationOptionsBundle;)V

    .line 178
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView;->mAdapter:Lcom/andrognito/pinlockview/PinLockAdapter;

    invoke-virtual {p0, v0}, Lcom/andrognito/pinlockview/PinLockView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 180
    new-instance v0, Lcom/andrognito/pinlockview/ItemSpaceDecoration;

    iget v1, p0, Lcom/andrognito/pinlockview/PinLockView;->mHorizontalSpacing:I

    iget v3, p0, Lcom/andrognito/pinlockview/PinLockView;->mVerticalSpacing:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/andrognito/pinlockview/ItemSpaceDecoration;-><init>(IIIZ)V

    invoke-virtual {p0, v0}, Lcom/andrognito/pinlockview/PinLockView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    const/4 v0, 0x2

    .line 181
    invoke-virtual {p0, v0}, Lcom/andrognito/pinlockview/PinLockView;->setOverScrollMode(I)V

    return-void
.end method


# virtual methods
.method public attachIndicatorDots(Lcom/andrognito/pinlockview/IndicatorDots;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mIndicatorDots:Lcom/andrognito/pinlockview/IndicatorDots;

    return-void
.end method

.method public enableLayoutShuffling()V
    .locals 1

    .line 388
    sget-object v0, Lcom/andrognito/pinlockview/PinLockView;->DEFAULT_KEY_SET:[I

    invoke-static {v0}, Lcom/andrognito/pinlockview/ShuffleArrayUtils;->shuffle([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/andrognito/pinlockview/PinLockView;->mCustomKeySet:[I

    .line 390
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView;->mAdapter:Lcom/andrognito/pinlockview/PinLockAdapter;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView;->mAdapter:Lcom/andrognito/pinlockview/PinLockAdapter;

    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mCustomKeySet:[I

    invoke-virtual {v0, p0}, Lcom/andrognito/pinlockview/PinLockAdapter;->setKeyValues([I)V

    :cond_0
    return-void
.end method

.method public getButtonBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mButtonBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getButtonSize()I
    .locals 0

    .line 261
    iget p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mButtonSize:I

    return p0
.end method

.method public getCustomKeySet()[I
    .locals 0

    .line 376
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mCustomKeySet:[I

    return-object p0
.end method

.method public getDeleteButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mDeleteButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDeleteButtonPressedColor()I
    .locals 0

    .line 361
    iget p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mDeleteButtonPressedColor:I

    return p0
.end method

.method public getDeleteButtonSize()I
    .locals 0

    .line 321
    iget p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mDeleteButtonSize:I

    return p0
.end method

.method public getPinLength()I
    .locals 0

    .line 199
    iget p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mPinLength:I

    return p0
.end method

.method public getTextColor()I
    .locals 0

    .line 221
    iget p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mTextColor:I

    return p0
.end method

.method public getTextSize()I
    .locals 0

    .line 241
    iget p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mTextSize:I

    return p0
.end method

.method public isIndicatorDotsAttached()Z
    .locals 0

    .line 421
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mIndicatorDots:Lcom/andrognito/pinlockview/IndicatorDots;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowDeleteButton()Z
    .locals 0

    .line 341
    iget-boolean p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mShowDeleteButton:Z

    return p0
.end method

.method public resetPinLockView()V
    .locals 2

    .line 405
    invoke-direct {p0}, Lcom/andrognito/pinlockview/PinLockView;->clearInternalPin()V

    .line 407
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView;->mAdapter:Lcom/andrognito/pinlockview/PinLockAdapter;

    iget-object v1, p0, Lcom/andrognito/pinlockview/PinLockView;->mPin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/andrognito/pinlockview/PinLockAdapter;->setPinLength(I)V

    .line 408
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView;->mAdapter:Lcom/andrognito/pinlockview/PinLockAdapter;

    iget-object v1, p0, Lcom/andrognito/pinlockview/PinLockView;->mAdapter:Lcom/andrognito/pinlockview/PinLockAdapter;

    invoke-virtual {v1}, Lcom/andrognito/pinlockview/PinLockAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/andrognito/pinlockview/PinLockAdapter;->notifyItemChanged(I)V

    .line 410
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView;->mIndicatorDots:Lcom/andrognito/pinlockview/IndicatorDots;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView;->mIndicatorDots:Lcom/andrognito/pinlockview/IndicatorDots;

    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mPin:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/andrognito/pinlockview/IndicatorDots;->updateDot(I)V

    :cond_0
    return-void
.end method

.method public setButtonBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 290
    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mButtonBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 291
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    invoke-virtual {v0, p1}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->setButtonBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mAdapter:Lcom/andrognito/pinlockview/PinLockAdapter;

    invoke-virtual {p0}, Lcom/andrognito/pinlockview/PinLockAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setButtonSize(I)V
    .locals 1

    .line 270
    iput p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mButtonSize:I

    .line 271
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    invoke-virtual {v0, p1}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->setButtonSize(I)V

    .line 272
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mAdapter:Lcom/andrognito/pinlockview/PinLockAdapter;

    invoke-virtual {p0}, Lcom/andrognito/pinlockview/PinLockAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCustomKeySet([I)V
    .locals 1

    .line 380
    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mCustomKeySet:[I

    .line 382
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView;->mAdapter:Lcom/andrognito/pinlockview/PinLockAdapter;

    if-eqz v0, :cond_0

    .line 383
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mAdapter:Lcom/andrognito/pinlockview/PinLockAdapter;

    invoke-virtual {p0, p1}, Lcom/andrognito/pinlockview/PinLockAdapter;->setKeyValues([I)V

    :cond_0
    return-void
.end method

.method public setDeleteButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 310
    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mDeleteButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 311
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    invoke-virtual {v0, p1}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->setDeleteButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mAdapter:Lcom/andrognito/pinlockview/PinLockAdapter;

    invoke-virtual {p0}, Lcom/andrognito/pinlockview/PinLockAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDeleteButtonPressedColor(I)V
    .locals 1

    .line 370
    iput p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mDeleteButtonPressedColor:I

    .line 371
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    invoke-virtual {v0, p1}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->setDeleteButtonPressesColor(I)V

    .line 372
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mAdapter:Lcom/andrognito/pinlockview/PinLockAdapter;

    invoke-virtual {p0}, Lcom/andrognito/pinlockview/PinLockAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDeleteButtonSize(I)V
    .locals 1

    .line 330
    iput p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mDeleteButtonSize:I

    .line 331
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    invoke-virtual {v0, p1}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->setDeleteButtonSize(I)V

    .line 332
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mAdapter:Lcom/andrognito/pinlockview/PinLockAdapter;

    invoke-virtual {p0}, Lcom/andrognito/pinlockview/PinLockAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setPinLength(I)V
    .locals 1

    .line 208
    iput p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mPinLength:I

    .line 210
    invoke-virtual {p0}, Lcom/andrognito/pinlockview/PinLockView;->isIndicatorDotsAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mIndicatorDots:Lcom/andrognito/pinlockview/IndicatorDots;

    invoke-virtual {p0, p1}, Lcom/andrognito/pinlockview/IndicatorDots;->setPinLength(I)V

    :cond_0
    return-void
.end method

.method public setPinLockListener(Lcom/andrognito/pinlockview/PinLockListener;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mPinLockListener:Lcom/andrognito/pinlockview/PinLockListener;

    return-void
.end method

.method public setShowDeleteButton(Z)V
    .locals 1

    .line 350
    iput-boolean p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mShowDeleteButton:Z

    .line 351
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    invoke-virtual {v0, p1}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->setShowDeleteButton(Z)V

    .line 352
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mAdapter:Lcom/andrognito/pinlockview/PinLockAdapter;

    invoke-virtual {p0}, Lcom/andrognito/pinlockview/PinLockAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 230
    iput p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mTextColor:I

    .line 231
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    invoke-virtual {v0, p1}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->setTextColor(I)V

    .line 232
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mAdapter:Lcom/andrognito/pinlockview/PinLockAdapter;

    invoke-virtual {p0}, Lcom/andrognito/pinlockview/PinLockAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .line 250
    iput p1, p0, Lcom/andrognito/pinlockview/PinLockView;->mTextSize:I

    .line 251
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockView;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    invoke-virtual {v0, p1}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->setTextSize(I)V

    .line 252
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockView;->mAdapter:Lcom/andrognito/pinlockview/PinLockAdapter;

    invoke-virtual {p0}, Lcom/andrognito/pinlockview/PinLockAdapter;->notifyDataSetChanged()V

    return-void
.end method
