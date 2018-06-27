.class public Lcom/andrognito/pinlockview/PinLockAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PinLockAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrognito/pinlockview/PinLockAdapter$OnDeleteClickListener;,
        Lcom/andrognito/pinlockview/PinLockAdapter$OnNumberClickListener;,
        Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;,
        Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_DELETE:I = 0x1

.field private static final VIEW_TYPE_NUMBER:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

.field private mKeyValues:[I

.field private mOnDeleteClickListener:Lcom/andrognito/pinlockview/PinLockAdapter$OnDeleteClickListener;

.field private mOnNumberClickListener:Lcom/andrognito/pinlockview/PinLockAdapter$OnNumberClickListener;

.field private mPinLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mContext:Landroid/content/Context;

    const/16 p1, 0xa

    .line 35
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    invoke-direct {p0, p1}, Lcom/andrognito/pinlockview/PinLockAdapter;->getAdjustKeyValues([I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mKeyValues:[I

    return-void

    nop

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

.method static synthetic access$000(Lcom/andrognito/pinlockview/PinLockAdapter;)Lcom/andrognito/pinlockview/PinLockAdapter$OnNumberClickListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mOnNumberClickListener:Lcom/andrognito/pinlockview/PinLockAdapter$OnNumberClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/andrognito/pinlockview/PinLockAdapter;)Lcom/andrognito/pinlockview/CustomizationOptionsBundle;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    return-object p0
.end method

.method static synthetic access$200(Lcom/andrognito/pinlockview/PinLockAdapter;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mPinLength:I

    return p0
.end method

.method static synthetic access$300(Lcom/andrognito/pinlockview/PinLockAdapter;)Lcom/andrognito/pinlockview/PinLockAdapter$OnDeleteClickListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mOnDeleteClickListener:Lcom/andrognito/pinlockview/PinLockAdapter$OnDeleteClickListener;

    return-object p0
.end method

.method private configureDeleteButtonHolder(Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 97
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    invoke-virtual {v0}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->isShowDeleteButton()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mPinLength:I

    if-lez v0, :cond_1

    .line 98
    iget-object v0, p1, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;->mButtonImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    invoke-virtual {v0}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->getDeleteButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p1, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;->mButtonImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    invoke-virtual {v1}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->getDeleteButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :cond_0
    iget-object v0, p1, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;->mButtonImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    invoke-virtual {v1}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->getTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 104
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    .line 105
    invoke-virtual {v1}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->getDeleteButtonSize()I

    move-result v1

    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    .line 106
    invoke-virtual {p0}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->getDeleteButtonSize()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 107
    iget-object p0, p1, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;->mButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object p0, p1, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;->mButtonImage:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private configureNumberButtonHolder(Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;I)V
    .locals 3

    if-eqz p1, :cond_3

    const/16 v0, 0x9

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 67
    iget-object p2, p1, Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;->mNumberButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p1, Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;->mNumberButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mKeyValues:[I

    aget v2, v2, p2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p1, Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;->mNumberButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 71
    iget-object v0, p1, Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;->mNumberButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mKeyValues:[I

    aget p2, v2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 74
    :goto_0
    iget-object p2, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    if-eqz p2, :cond_3

    .line 75
    iget-object p2, p1, Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;->mNumberButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    invoke-virtual {v0}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->getTextColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 76
    iget-object p2, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    invoke-virtual {p2}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->getButtonBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 77
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ge p2, v0, :cond_1

    .line 78
    iget-object p2, p1, Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;->mNumberButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    .line 79
    invoke-virtual {v0}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->getButtonBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 78
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 81
    :cond_1
    iget-object p2, p1, Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;->mNumberButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    .line 82
    invoke-virtual {v0}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->getButtonBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 85
    :cond_2
    :goto_1
    iget-object p2, p1, Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;->mNumberButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    .line 86
    invoke-virtual {v0}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->getTextSize()I

    move-result v0

    int-to-float v0, v0

    .line 85
    invoke-virtual {p2, v1, v0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 87
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    .line 88
    invoke-virtual {v0}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->getButtonSize()I

    move-result v0

    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    .line 89
    invoke-virtual {p0}, Lcom/andrognito/pinlockview/CustomizationOptionsBundle;->getButtonSize()I

    move-result p0

    invoke-direct {p2, v0, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 90
    iget-object p0, p1, Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;->mNumberButton:Landroid/widget/Button;

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private getAdjustKeyValues([I)[I
    .locals 3

    .line 145
    array-length p0, p1

    add-int/lit8 p0, p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    .line 146
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 148
    aget v1, p1, v0

    aput v1, p0, v0

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    .line 150
    aput v1, p0, v0

    add-int/lit8 v1, v0, 0x1

    .line 151
    aget v2, p1, v0

    aput v2, p0, v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public getCustomizationOptions()Lcom/andrognito/pinlockview/CustomizationOptionsBundle;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/andrognito/pinlockview/PinLockAdapter;->getItemCount()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getKeyValues()[I
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mKeyValues:[I

    return-object p0
.end method

.method public getOnDeleteClickListener()Lcom/andrognito/pinlockview/PinLockAdapter$OnDeleteClickListener;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mOnDeleteClickListener:Lcom/andrognito/pinlockview/PinLockAdapter$OnDeleteClickListener;

    return-object p0
.end method

.method public getOnItemClickListener()Lcom/andrognito/pinlockview/PinLockAdapter$OnNumberClickListener;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mOnNumberClickListener:Lcom/andrognito/pinlockview/PinLockAdapter$OnNumberClickListener;

    return-object p0
.end method

.method public getPinLength()I
    .locals 0

    .line 128
    iget p0, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mPinLength:I

    return p0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 55
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_0

    .line 56
    check-cast p1, Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/andrognito/pinlockview/PinLockAdapter;->configureNumberButtonHolder(Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;I)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 59
    check-cast p1, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;

    .line 60
    invoke-direct {p0, p1}, Lcom/andrognito/pinlockview/PinLockAdapter;->configureDeleteButtonHolder(Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 44
    sget p2, Lcom/andrognito/pinlockview/R$layout;->layout_number_item:I

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 45
    new-instance p2, Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/andrognito/pinlockview/PinLockAdapter$NumberViewHolder;-><init>(Lcom/andrognito/pinlockview/PinLockAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 47
    :cond_0
    sget p2, Lcom/andrognito/pinlockview/R$layout;->layout_delete_item:I

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 48
    new-instance p2, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/andrognito/pinlockview/PinLockAdapter$DeleteViewHolder;-><init>(Lcom/andrognito/pinlockview/PinLockAdapter;Landroid/view/View;)V

    :goto_0
    return-object p2
.end method

.method public setCustomizationOptions(Lcom/andrognito/pinlockview/CustomizationOptionsBundle;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mCustomizationOptionsBundle:Lcom/andrognito/pinlockview/CustomizationOptionsBundle;

    return-void
.end method

.method public setKeyValues([I)V
    .locals 0

    .line 140
    invoke-direct {p0, p1}, Lcom/andrognito/pinlockview/PinLockAdapter;->getAdjustKeyValues([I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mKeyValues:[I

    .line 141
    invoke-virtual {p0}, Lcom/andrognito/pinlockview/PinLockAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnDeleteClickListener(Lcom/andrognito/pinlockview/PinLockAdapter$OnDeleteClickListener;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mOnDeleteClickListener:Lcom/andrognito/pinlockview/PinLockAdapter$OnDeleteClickListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/andrognito/pinlockview/PinLockAdapter$OnNumberClickListener;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mOnNumberClickListener:Lcom/andrognito/pinlockview/PinLockAdapter$OnNumberClickListener;

    return-void
.end method

.method public setPinLength(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/andrognito/pinlockview/PinLockAdapter;->mPinLength:I

    return-void
.end method
