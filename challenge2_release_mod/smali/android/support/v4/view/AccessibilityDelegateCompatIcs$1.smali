.class final Landroid/support/v4/view/AccessibilityDelegateCompatIcs$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompatIcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->newAccessibilityDelegateBridge(Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;


# direct methods
.method constructor <init>(Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;)V
    .locals 0

    .line 51
    iput-object p1, p0, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 54
    iget-object p0, p0, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 59
    iget-object p0, p0, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 64
    iget-object p0, p0, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 69
    iget-object p0, p0, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 75
    iget-object p0, p0, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 0

    .line 80
    iget-object p0, p0, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 85
    iget-object p0, p0, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
