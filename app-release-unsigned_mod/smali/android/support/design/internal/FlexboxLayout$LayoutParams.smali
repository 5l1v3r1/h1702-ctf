.class public Landroid/support/design/internal/FlexboxLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "FlexboxLayout.java"

# interfaces
.implements Landroid/support/design/internal/FlexItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/FlexboxLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/design/internal/FlexboxLayout$LayoutParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private flexBasisPercent:F

.field private flexGrow:F

.field private flexShrink:F

.field private maxHeight:I

.field private maxWidth:I

.field private minHeight:I

.field private minWidth:I

.field private order:I

.field private wrapBefore:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1205
    new-instance v0, Landroid/support/design/internal/FlexboxLayout$LayoutParams$1;

    invoke-direct {v0}, Landroid/support/design/internal/FlexboxLayout$LayoutParams$1;-><init>()V

    sput-object v0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 1023
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 938
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->order:I

    const/4 p1, 0x0

    .line 941
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 944
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    const/high16 p1, -0x40800000    # -1.0f

    .line 947
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    const p1, 0xffffff

    .line 956
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 959
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 965
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 938
    iput v0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->order:I

    const/4 v1, 0x0

    .line 941
    iput v1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 944
    iput v2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    const/high16 v3, -0x40800000    # -1.0f

    .line 947
    iput v3, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    const v4, 0xffffff

    .line 956
    iput v4, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 959
    iput v4, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    .line 967
    sget-object v5, Landroid/support/design/R$styleable;->MaterialComponents_FlexboxLayout_Layout:[I

    .line 968
    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 970
    sget p2, Landroid/support/design/R$styleable;->MaterialComponents_FlexboxLayout_Layout_layout_order:I

    .line 971
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->order:I

    .line 972
    sget p2, Landroid/support/design/R$styleable;->MaterialComponents_FlexboxLayout_Layout_layout_flexGrow:I

    .line 973
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    .line 976
    sget p2, Landroid/support/design/R$styleable;->MaterialComponents_FlexboxLayout_Layout_layout_flexShrink:I

    .line 977
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    .line 980
    sget p2, Landroid/support/design/R$styleable;->MaterialComponents_FlexboxLayout_Layout_layout_flexBasisPercent:I

    .line 981
    invoke-virtual {p1, p2, v0, v0, v3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p2

    iput p2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    .line 986
    sget p2, Landroid/support/design/R$styleable;->MaterialComponents_FlexboxLayout_Layout_layout_minWidth:I

    const/4 v0, 0x0

    .line 987
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->minWidth:I

    .line 989
    sget p2, Landroid/support/design/R$styleable;->MaterialComponents_FlexboxLayout_Layout_layout_minHeight:I

    .line 990
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->minHeight:I

    .line 992
    sget p2, Landroid/support/design/R$styleable;->MaterialComponents_FlexboxLayout_Layout_layout_maxWidth:I

    .line 993
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 995
    sget p2, Landroid/support/design/R$styleable;->MaterialComponents_FlexboxLayout_Layout_layout_maxHeight:I

    .line 996
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    .line 998
    sget p2, Landroid/support/design/R$styleable;->MaterialComponents_FlexboxLayout_Layout_layout_wrapBefore:I

    .line 999
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->wrapBefore:Z

    .line 1001
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v0, 0x0

    .line 1033
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v1, 0x1

    .line 938
    iput v1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->order:I

    const/4 v2, 0x0

    .line 941
    iput v2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 944
    iput v2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    const/high16 v2, -0x40800000    # -1.0f

    .line 947
    iput v2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    const v2, 0xffffff

    .line 956
    iput v2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 959
    iput v2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    .line 1034
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->order:I

    .line 1035
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    .line 1036
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    .line 1037
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    .line 1038
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->minWidth:I

    .line 1039
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->minHeight:I

    .line 1040
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 1041
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    .line 1042
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->wrapBefore:Z

    .line 1043
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->bottomMargin:I

    .line 1044
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->leftMargin:I

    .line 1045
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->rightMargin:I

    .line 1046
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->topMargin:I

    .line 1047
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->height:I

    .line 1048
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->width:I

    return-void
.end method

.method public constructor <init>(Landroid/support/design/internal/FlexboxLayout$LayoutParams;)V
    .locals 1

    .line 1005
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x1

    .line 938
    iput v0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->order:I

    const/4 v0, 0x0

    .line 941
    iput v0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 944
    iput v0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 947
    iput v0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    const v0, 0xffffff

    .line 956
    iput v0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 959
    iput v0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    .line 1007
    iget v0, p1, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->order:I

    iput v0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->order:I

    .line 1008
    iget v0, p1, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    iput v0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    .line 1009
    iget v0, p1, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    iput v0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    .line 1010
    iget v0, p1, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    iput v0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    .line 1011
    iget v0, p1, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->minWidth:I

    iput v0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->minWidth:I

    .line 1012
    iget v0, p1, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->minHeight:I

    iput v0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->minHeight:I

    .line 1013
    iget v0, p1, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    iput v0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 1014
    iget v0, p1, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    iput v0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    .line 1015
    iget-boolean p1, p1, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->wrapBefore:Z

    iput-boolean p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->wrapBefore:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1019
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 938
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->order:I

    const/4 p1, 0x0

    .line 941
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 944
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    const/high16 p1, -0x40800000    # -1.0f

    .line 947
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    const p1, 0xffffff

    .line 956
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 959
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 1027
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x1

    .line 938
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->order:I

    const/4 p1, 0x0

    .line 941
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 944
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    const/high16 p1, -0x40800000    # -1.0f

    .line 947
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    const p1, 0xffffff

    .line 956
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 959
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFlexBasisPercent()F
    .locals 0

    .line 1153
    iget p0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    return p0
.end method

.method public getFlexGrow()F
    .locals 0

    .line 1083
    iget p0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    return p0
.end method

.method public getFlexShrink()F
    .locals 0

    .line 1093
    iget p0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 1063
    iget p0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->height:I

    return p0
.end method

.method public getMarginBottom()I
    .locals 0

    .line 1178
    iget p0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->bottomMargin:I

    return p0
.end method

.method public getMarginLeft()I
    .locals 0

    .line 1163
    iget p0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->leftMargin:I

    return p0
.end method

.method public getMarginRight()I
    .locals 0

    .line 1173
    iget p0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->rightMargin:I

    return p0
.end method

.method public getMarginTop()I
    .locals 0

    .line 1168
    iget p0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->topMargin:I

    return p0
.end method

.method public getMaxHeight()I
    .locals 0

    .line 1133
    iget p0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    return p0
.end method

.method public getMaxWidth()I
    .locals 0

    .line 1123
    iget p0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    return p0
.end method

.method public getMinHeight()I
    .locals 0

    .line 1113
    iget p0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->minHeight:I

    return p0
.end method

.method public getMinWidth()I
    .locals 0

    .line 1103
    iget p0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->minWidth:I

    return p0
.end method

.method public getOrder()I
    .locals 0

    .line 1073
    iget p0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->order:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 1053
    iget p0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->width:I

    return p0
.end method

.method public isWrapBefore()Z
    .locals 0

    .line 1143
    iget-boolean p0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->wrapBefore:Z

    return p0
.end method

.method public setFlexBasisPercent(F)V
    .locals 0

    .line 1158
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    return-void
.end method

.method public setFlexGrow(F)V
    .locals 0

    .line 1088
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    return-void
.end method

.method public setFlexShrink(F)V
    .locals 0

    .line 1098
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1068
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->height:I

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .line 1138
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 1128
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    return-void
.end method

.method public setMinHeight(I)V
    .locals 0

    .line 1118
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->minHeight:I

    return-void
.end method

.method public setMinWidth(I)V
    .locals 0

    .line 1108
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->minWidth:I

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 1078
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->order:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1058
    iput p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->width:I

    return-void
.end method

.method public setWrapBefore(Z)V
    .locals 0

    .line 1148
    iput-boolean p1, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->wrapBefore:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1188
    iget p2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->order:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1189
    iget p2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexGrow:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1190
    iget p2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexShrink:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1191
    iget p2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1192
    iget p2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->minWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1193
    iget p2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->minHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1194
    iget p2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1195
    iget p2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->maxHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1196
    iget-boolean p2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->wrapBefore:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1197
    iget p2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1198
    iget p2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1199
    iget p2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1200
    iget p2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1201
    iget p2, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1202
    iget p0, p0, Landroid/support/design/internal/FlexboxLayout$LayoutParams;->width:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
