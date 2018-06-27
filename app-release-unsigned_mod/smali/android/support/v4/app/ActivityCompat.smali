.class public Landroid/support/v4/app/ActivityCompat;
.super Landroid/support/v4/content/ContextCompat;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;,
        Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;,
        Landroid/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator;,
        Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;,
        Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
    }
.end annotation


# static fields
.field private static sDelegate:Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Landroid/support/v4/content/ContextCompat;-><init>()V

    return-void
.end method

.method public static finishAffinity(Landroid/app/Activity;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 288
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public static finishAfterTransition(Landroid/app/Activity;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 304
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 305
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public static getPermissionCompatDelegate()Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 169
    sget-object v0, Landroid/support/v4/app/ActivityCompat;->sDelegate:Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;

    return-object v0
.end method

.method public static getReferrer(Landroid/app/Activity;)Landroid/net/Uri;
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 329
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 330
    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 332
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "android.intent.extra.REFERRER"

    .line 333
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "android.intent.extra.REFERRER_NAME"

    .line 337
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 339
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static invalidateOptionsMenu(Landroid/app/Activity;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    const/4 p0, 0x1

    return p0
.end method

.method public static postponeEnterTransition(Landroid/app/Activity;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 418
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 419
    invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    :cond_0
    return-void
.end method

.method public static requestDragAndDropPermissions(Landroid/app/Activity;Landroid/view/DragEvent;)Landroid/support/v13/view/DragAndDropPermissionsCompat;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 572
    invoke-static {p0, p1}, Landroid/support/v13/view/DragAndDropPermissionsCompat;->request(Landroid/app/Activity;Landroid/view/DragEvent;)Landroid/support/v13/view/DragAndDropPermissionsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 498
    sget-object v0, Landroid/support/v4/app/ActivityCompat;->sDelegate:Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/v4/app/ActivityCompat;->sDelegate:Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;

    .line 499
    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 504
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 505
    instance-of v0, p0, Landroid/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator;

    if-eqz v0, :cond_1

    .line 506
    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator;

    .line 507
    invoke-interface {v0, p2}, Landroid/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator;->validateRequestPermissionsRequestCode(I)V

    .line 509
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 510
    :cond_2
    instance-of v0, p0, Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;

    if-eqz v0, :cond_3

    .line 511
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 512
    new-instance v1, Landroid/support/v4/app/ActivityCompat$1;

    invoke-direct {v1, p1, p0, p2}, Landroid/support/v4/app/ActivityCompat$1;-><init>([Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public static requireViewById(Landroid/app/Activity;I)Landroid/view/View;
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    .line 363
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    .line 365
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ID does not reference a View inside this Activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-object p0
.end method

.method public static setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/support/v4/app/SharedElementCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 380
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    if-eqz p1, :cond_0

    .line 381
    new-instance v1, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;

    invoke-direct {v1, p1}, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;-><init>(Landroid/support/v4/app/SharedElementCallback;)V

    .line 384
    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    goto :goto_0

    .line 385
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_3

    if-eqz p1, :cond_2

    .line 386
    new-instance v1, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;

    invoke-direct {v1, p1}, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroid/support/v4/app/SharedElementCallback;)V

    .line 389
    :cond_2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/support/v4/app/SharedElementCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 404
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    if-eqz p1, :cond_0

    .line 405
    new-instance v1, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;

    invoke-direct {v1, p1}, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;-><init>(Landroid/support/v4/app/SharedElementCallback;)V

    .line 408
    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    goto :goto_0

    .line 409
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_3

    if-eqz p1, :cond_2

    .line 410
    new-instance v1, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;

    invoke-direct {v1, p1}, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroid/support/v4/app/SharedElementCallback;)V

    .line 413
    :cond_2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static setPermissionCompatDelegate(Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;)V
    .locals 0
    .param p0    # Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 161
    sput-object p0, Landroid/support/v4/app/ActivityCompat;->sDelegate:Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;

    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 555
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 556
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 234
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public static startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/IntentSender;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 270
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 271
    invoke-virtual/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual/range {p0 .. p6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    :goto_0
    return-void
.end method

.method public static startPostponedEnterTransition(Landroid/app/Activity;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 424
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 425
    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    :cond_0
    return-void
.end method
