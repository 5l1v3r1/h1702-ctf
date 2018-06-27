.class public Landroid/support/transition/TransitionSet;
.super Landroid/support/transition/Transition;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/TransitionSet$TransitionSetListener;
    }
.end annotation


# static fields
.field private static final FLAG_CHANGE_EPICENTER:I = 0x8

.field private static final FLAG_CHANGE_INTERPOLATOR:I = 0x1

.field private static final FLAG_CHANGE_PATH_MOTION:I = 0x4

.field private static final FLAG_CHANGE_PROPAGATION:I = 0x2

.field public static final ORDERING_SEQUENTIAL:I = 0x1

.field public static final ORDERING_TOGETHER:I


# instance fields
.field private mChangeFlags:I

.field private mCurrentListeners:I

.field private mPlayTogether:Z

.field private mStarted:Z

.field private mTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Landroid/support/transition/TransitionSet;->mPlayTogether:Z

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Landroid/support/transition/TransitionSet;->mStarted:Z

    .line 85
    iput v0, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Landroid/support/transition/TransitionSet;->mPlayTogether:Z

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Landroid/support/transition/TransitionSet;->mStarted:Z

    .line 85
    iput v0, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    .line 112
    sget-object v1, Landroid/support/transition/Styleable;->TRANSITION_SET:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 113
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v1, "transitionOrdering"

    invoke-static {p1, p2, v1, v0, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    .line 116
    invoke-virtual {p0, p2}, Landroid/support/transition/TransitionSet;->setOrdering(I)Landroid/support/transition/TransitionSet;

    .line 117
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/transition/TransitionSet;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Landroid/support/transition/TransitionSet;->mStarted:Z

    return p0
.end method

.method static synthetic access$002(Landroid/support/transition/TransitionSet;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Landroid/support/transition/TransitionSet;->mStarted:Z

    return p1
.end method

.method static synthetic access$100(Landroid/support/transition/TransitionSet;)I
    .locals 0

    .line 61
    iget p0, p0, Landroid/support/transition/TransitionSet;->mCurrentListeners:I

    return p0
.end method

.method static synthetic access$106(Landroid/support/transition/TransitionSet;)I
    .locals 1

    .line 61
    iget v0, p0, Landroid/support/transition/TransitionSet;->mCurrentListeners:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/transition/TransitionSet;->mCurrentListeners:I

    return v0
.end method

.method private setupStartEndListeners()V
    .locals 3

    .line 406
    new-instance v0, Landroid/support/transition/TransitionSet$TransitionSetListener;

    invoke-direct {v0, p0}, Landroid/support/transition/TransitionSet$TransitionSetListener;-><init>(Landroid/support/transition/TransitionSet;)V

    .line 407
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    .line 408
    invoke-virtual {v2, v0}, Landroid/support/transition/Transition;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    goto :goto_0

    .line 410
    :cond_0
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Landroid/support/transition/TransitionSet;->mCurrentListeners:I

    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;
    .locals 0
    .param p1    # Landroid/support/transition/Transition$TransitionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/TransitionSet;

    move-result-object p0

    return-object p0
.end method

.method public addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/TransitionSet;
    .locals 0
    .param p1    # Landroid/support/transition/Transition$TransitionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 297
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    move-result-object p0

    check-cast p0, Landroid/support/transition/TransitionSet;

    return-object p0
.end method

.method public bridge synthetic addTarget(I)Landroid/support/transition/Transition;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->addTarget(I)Landroid/support/transition/TransitionSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addTarget(Landroid/view/View;)Landroid/support/transition/Transition;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->addTarget(Landroid/view/View;)Landroid/support/transition/TransitionSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->addTarget(Ljava/lang/Class;)Landroid/support/transition/TransitionSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addTarget(Ljava/lang/String;)Landroid/support/transition/Transition;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->addTarget(Ljava/lang/String;)Landroid/support/transition/TransitionSet;

    move-result-object p0

    return-object p0
.end method

.method public addTarget(I)Landroid/support/transition/TransitionSet;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 270
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 271
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/support/transition/Transition;->addTarget(I)Landroid/support/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_0
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->addTarget(I)Landroid/support/transition/Transition;

    move-result-object p0

    check-cast p0, Landroid/support/transition/TransitionSet;

    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroid/support/transition/TransitionSet;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 261
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 262
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/support/transition/Transition;->addTarget(Landroid/view/View;)Landroid/support/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_0
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->addTarget(Landroid/view/View;)Landroid/support/transition/Transition;

    move-result-object p0

    check-cast p0, Landroid/support/transition/TransitionSet;

    return-object p0
.end method

.method public addTarget(Ljava/lang/Class;)Landroid/support/transition/TransitionSet;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 288
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 289
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/support/transition/Transition;->addTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_0
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->addTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;

    move-result-object p0

    check-cast p0, Landroid/support/transition/TransitionSet;

    return-object p0
.end method

.method public addTarget(Ljava/lang/String;)Landroid/support/transition/TransitionSet;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 279
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 280
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/support/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/support/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_0
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/support/transition/Transition;

    move-result-object p0

    check-cast p0, Landroid/support/transition/TransitionSet;

    return-object p0
.end method

.method public addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;
    .locals 4
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 174
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iput-object p0, p1, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    .line 176
    iget-wide v0, p0, Landroid/support/transition/TransitionSet;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 177
    iget-wide v0, p0, Landroid/support/transition/TransitionSet;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/support/transition/Transition;->setDuration(J)Landroid/support/transition/Transition;

    .line 179
    :cond_0
    iget v0, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p0}, Landroid/support/transition/TransitionSet;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;

    .line 182
    :cond_1
    iget v0, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 183
    invoke-virtual {p0}, Landroid/support/transition/TransitionSet;->getPropagation()Landroid/support/transition/TransitionPropagation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/transition/Transition;->setPropagation(Landroid/support/transition/TransitionPropagation;)V

    .line 185
    :cond_2
    iget v0, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 186
    invoke-virtual {p0}, Landroid/support/transition/TransitionSet;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/transition/Transition;->setPathMotion(Landroid/support/transition/PathMotion;)V

    .line 188
    :cond_3
    iget v0, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 189
    invoke-virtual {p0}, Landroid/support/transition/TransitionSet;->getEpicenterCallback()Landroid/support/transition/Transition$EpicenterCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/transition/Transition;->setEpicenterCallback(Landroid/support/transition/Transition$EpicenterCallback;)V

    :cond_4
    return-object p0
.end method

.method protected cancel()V
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 569
    invoke-super {p0}, Landroid/support/transition/Transition;->cancel()V

    .line 570
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 572
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2}, Landroid/support/transition/Transition;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 2
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 524
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/transition/TransitionSet;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    iget-object p0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/Transition;

    .line 526
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    invoke-virtual {v0, p1}, Landroid/support/transition/Transition;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 528
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method capturePropagationValues(Landroid/support/transition/TransitionValues;)V
    .locals 3

    .line 536
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->capturePropagationValues(Landroid/support/transition/TransitionValues;)V

    .line 537
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 539
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/support/transition/Transition;->capturePropagationValues(Landroid/support/transition/TransitionValues;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 2
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 512
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/transition/TransitionSet;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    iget-object p0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/Transition;

    .line 514
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    invoke-virtual {v0, p1}, Landroid/support/transition/Transition;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 516
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clone()Landroid/support/transition/Transition;
    .locals 4

    .line 637
    invoke-super {p0}, Landroid/support/transition/Transition;->clone()Landroid/support/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionSet;

    .line 638
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 639
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 641
    iget-object v3, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/Transition;

    invoke-virtual {v3}, Landroid/support/transition/Transition;->clone()Landroid/support/transition/Transition;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Landroid/support/transition/TransitionSet;->clone()Landroid/support/transition/Transition;

    move-result-object p0

    return-object p0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/support/transition/TransitionValuesMaps;",
            "Landroid/support/transition/TransitionValuesMaps;",
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 454
    invoke-virtual {v0}, Landroid/support/transition/TransitionSet;->getStartDelay()J

    move-result-wide v1

    .line 455
    iget-object v3, v0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 457
    iget-object v5, v0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/support/transition/Transition;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    .line 460
    iget-boolean v5, v0, Landroid/support/transition/TransitionSet;->mPlayTogether:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    .line 461
    :cond_0
    invoke-virtual {v6}, Landroid/support/transition/Transition;->getStartDelay()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    .line 463
    invoke-virtual {v6, v9, v10}, Landroid/support/transition/Transition;->setStartDelay(J)Landroid/support/transition/Transition;

    goto :goto_1

    .line 465
    :cond_1
    invoke-virtual {v6, v1, v2}, Landroid/support/transition/Transition;->setStartDelay(J)Landroid/support/transition/Transition;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 468
    invoke-virtual/range {v6 .. v11}, Landroid/support/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public excludeTarget(IZ)Landroid/support/transition/Transition;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 357
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 358
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1, p2}, Landroid/support/transition/Transition;->excludeTarget(IZ)Landroid/support/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/transition/Transition;->excludeTarget(IZ)Landroid/support/transition/Transition;

    move-result-object p0

    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroid/support/transition/Transition;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 339
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 340
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1, p2}, Landroid/support/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/support/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/support/transition/Transition;

    move-result-object p0

    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroid/support/transition/Transition;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 366
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 367
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1, p2}, Landroid/support/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/support/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/support/transition/Transition;

    move-result-object p0

    return-object p0
.end method

.method public excludeTarget(Ljava/lang/String;Z)Landroid/support/transition/Transition;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 348
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 349
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1, p2}, Landroid/support/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroid/support/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroid/support/transition/Transition;

    move-result-object p0

    return-object p0
.end method

.method forceToEnd(Landroid/view/ViewGroup;)V
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 580
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->forceToEnd(Landroid/view/ViewGroup;)V

    .line 581
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 583
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/support/transition/Transition;->forceToEnd(Landroid/view/ViewGroup;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getOrdering()I
    .locals 0

    .line 153
    iget-boolean p0, p0, Landroid/support/transition/TransitionSet;->mPlayTogether:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getTransitionAt(I)Landroid/support/transition/Transition;
    .locals 1

    if-ltz p1, :cond_1

    .line 213
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    iget-object p0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/transition/Transition;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTransitionCount()I
    .locals 0

    .line 202
    iget-object p0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public pause(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 547
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->pause(Landroid/view/View;)V

    .line 548
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 550
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/support/transition/Transition;->pause(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;
    .locals 0
    .param p1    # Landroid/support/transition/Transition$TransitionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/TransitionSet;

    move-result-object p0

    return-object p0
.end method

.method public removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/TransitionSet;
    .locals 0
    .param p1    # Landroid/support/transition/Transition$TransitionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 375
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    move-result-object p0

    check-cast p0, Landroid/support/transition/TransitionSet;

    return-object p0
.end method

.method public bridge synthetic removeTarget(I)Landroid/support/transition/Transition;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->removeTarget(I)Landroid/support/transition/TransitionSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic removeTarget(Landroid/view/View;)Landroid/support/transition/Transition;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->removeTarget(Landroid/view/View;)Landroid/support/transition/TransitionSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic removeTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->removeTarget(Ljava/lang/Class;)Landroid/support/transition/TransitionSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic removeTarget(Ljava/lang/String;)Landroid/support/transition/Transition;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->removeTarget(Ljava/lang/String;)Landroid/support/transition/TransitionSet;

    move-result-object p0

    return-object p0
.end method

.method public removeTarget(I)Landroid/support/transition/TransitionSet;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 303
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 304
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/support/transition/Transition;->removeTarget(I)Landroid/support/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_0
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->removeTarget(I)Landroid/support/transition/Transition;

    move-result-object p0

    check-cast p0, Landroid/support/transition/TransitionSet;

    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroid/support/transition/TransitionSet;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 312
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 313
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/support/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/support/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_0
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/support/transition/Transition;

    move-result-object p0

    check-cast p0, Landroid/support/transition/TransitionSet;

    return-object p0
.end method

.method public removeTarget(Ljava/lang/Class;)Landroid/support/transition/TransitionSet;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 321
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 322
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/support/transition/Transition;->removeTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_0
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->removeTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;

    move-result-object p0

    check-cast p0, Landroid/support/transition/TransitionSet;

    return-object p0
.end method

.method public removeTarget(Ljava/lang/String;)Landroid/support/transition/TransitionSet;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 330
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 331
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/support/transition/Transition;->removeTarget(Ljava/lang/String;)Landroid/support/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_0
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->removeTarget(Ljava/lang/String;)Landroid/support/transition/Transition;

    move-result-object p0

    check-cast p0, Landroid/support/transition/TransitionSet;

    return-object p0
.end method

.method public removeTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;
    .locals 1
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 395
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 396
    iput-object v0, p1, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 558
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->resume(Landroid/view/View;)V

    .line 559
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 561
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/support/transition/Transition;->resume(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected runAnimators()V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 479
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {p0}, Landroid/support/transition/TransitionSet;->start()V

    .line 481
    invoke-virtual {p0}, Landroid/support/transition/TransitionSet;->end()V

    return-void

    .line 484
    :cond_0
    invoke-direct {p0}, Landroid/support/transition/TransitionSet;->setupStartEndListeners()V

    .line 485
    iget-boolean v0, p0, Landroid/support/transition/TransitionSet;->mPlayTogether:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 488
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 489
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    .line 490
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    .line 491
    new-instance v3, Landroid/support/transition/TransitionSet$1;

    invoke-direct {v3, p0, v2}, Landroid/support/transition/TransitionSet$1;-><init>(Landroid/support/transition/TransitionSet;Landroid/support/transition/Transition;)V

    invoke-virtual {v1, v3}, Landroid/support/transition/Transition;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 499
    :cond_1
    iget-object p0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/transition/Transition;

    if-eqz p0, :cond_3

    .line 501
    invoke-virtual {p0}, Landroid/support/transition/Transition;->runAnimators()V

    goto :goto_2

    .line 504
    :cond_2
    iget-object p0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/Transition;

    .line 505
    invoke-virtual {v0}, Landroid/support/transition/Transition;->runAnimators()V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method setCanRemoveViews(Z)V
    .locals 3

    .line 599
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->setCanRemoveViews(Z)V

    .line 600
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 602
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/support/transition/Transition;->setCanRemoveViews(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/support/transition/Transition;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 61
    invoke-virtual {p0, p1, p2}, Landroid/support/transition/TransitionSet;->setDuration(J)Landroid/support/transition/TransitionSet;

    move-result-object p0

    return-object p0
.end method

.method public setDuration(J)Landroid/support/transition/TransitionSet;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 229
    invoke-super {p0, p1, p2}, Landroid/support/transition/Transition;->setDuration(J)Landroid/support/transition/Transition;

    .line 230
    iget-wide v0, p0, Landroid/support/transition/TransitionSet;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 231
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 233
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1, p2}, Landroid/support/transition/Transition;->setDuration(J)Landroid/support/transition/Transition;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setEpicenterCallback(Landroid/support/transition/Transition$EpicenterCallback;)V
    .locals 3

    .line 618
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->setEpicenterCallback(Landroid/support/transition/Transition$EpicenterCallback;)V

    .line 619
    iget v0, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    .line 620
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 622
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/support/transition/Transition;->setEpicenterCallback(Landroid/support/transition/Transition$EpicenterCallback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;
    .locals 0
    .param p1    # Landroid/animation/TimeInterpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionSet;

    move-result-object p0

    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionSet;
    .locals 3
    .param p1    # Landroid/animation/TimeInterpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 248
    iget v0, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    .line 249
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 252
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/support/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_0
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;

    move-result-object p0

    check-cast p0, Landroid/support/transition/TransitionSet;

    return-object p0
.end method

.method public setOrdering(I)Landroid/support/transition/TransitionSet;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 138
    new-instance p0, Landroid/util/AndroidRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/4 p1, 0x0

    .line 132
    iput-boolean p1, p0, Landroid/support/transition/TransitionSet;->mPlayTogether:Z

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Landroid/support/transition/TransitionSet;->mPlayTogether:Z

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPathMotion(Landroid/support/transition/PathMotion;)V
    .locals 2

    .line 380
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->setPathMotion(Landroid/support/transition/PathMotion;)V

    .line 381
    iget v0, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    const/4 v0, 0x0

    .line 382
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 383
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/support/transition/Transition;->setPathMotion(Landroid/support/transition/PathMotion;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPropagation(Landroid/support/transition/TransitionPropagation;)V
    .locals 3

    .line 608
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->setPropagation(Landroid/support/transition/TransitionPropagation;)V

    .line 609
    iget v0, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    .line 610
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 612
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/support/transition/Transition;->setPropagation(Landroid/support/transition/TransitionPropagation;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method bridge synthetic setSceneRoot(Landroid/view/ViewGroup;)Landroid/support/transition/Transition;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/support/transition/TransitionSet;

    move-result-object p0

    return-object p0
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Landroid/support/transition/TransitionSet;
    .locals 3

    .line 589
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/support/transition/Transition;

    .line 590
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 592
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/support/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/support/transition/Transition;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setStartDelay(J)Landroid/support/transition/Transition;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 61
    invoke-virtual {p0, p1, p2}, Landroid/support/transition/TransitionSet;->setStartDelay(J)Landroid/support/transition/TransitionSet;

    move-result-object p0

    return-object p0
.end method

.method public setStartDelay(J)Landroid/support/transition/TransitionSet;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 242
    invoke-super {p0, p1, p2}, Landroid/support/transition/Transition;->setStartDelay(J)Landroid/support/transition/Transition;

    move-result-object p0

    check-cast p0, Landroid/support/transition/TransitionSet;

    return-object p0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 628
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 629
    :goto_0
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/Transition;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
