.class Landroid/support/v7/widget/DropDownListView;
.super Landroid/widget/ListView;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;,
        Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final NO_POSITION:I = -0x1


# instance fields
.field private mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mIsChildViewEnabled:Ljava/lang/reflect/Field;

.field private mListSelectionHidden:Z

.field private mMotionPosition:I

.field private mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

.field private mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

.field private mSelectionBottomPadding:I

.field private mSelectionLeftPadding:I

.field private mSelectionRightPadding:I

.field private mSelectionTopPadding:I

.field private mSelector:Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;

.field private final mSelectorRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 117
    sget v0, Landroid/support/v7/appcompat/R$attr;->dropDownListViewStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionLeftPadding:I

    .line 51
    iput p1, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionTopPadding:I

    .line 52
    iput p1, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionRightPadding:I

    .line 53
    iput p1, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionBottomPadding:I

    .line 118
    iput-boolean p2, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    .line 119
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/DropDownListView;->setCacheColorHint(I)V

    .line 122
    :try_start_0
    const-class p1, Landroid/widget/AbsListView;

    const-string p2, "mIsChildViewEnabled"

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/DropDownListView;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    .line 123
    iget-object p1, p0, Landroid/support/v7/widget/DropDownListView;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic access$102(Landroid/support/v7/widget/DropDownListView;Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;)Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;
    .locals 0

    .line 45
    iput-object p1, p0, Landroid/support/v7/widget/DropDownListView;->mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    return-object p1
.end method

.method private clearPressedItem()V
    .locals 3

    const/4 v0, 0x0

    .line 628
    iput-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 629
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/DropDownListView;->setPressed(Z)V

    .line 631
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->drawableStateChanged()V

    .line 633
    iget v1, p0, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 635
    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 638
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    const/4 v0, 0x0

    .line 640
    iput-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    :cond_1
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .locals 2

    .line 541
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 542
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/DropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    return-void
.end method

.method private drawSelectorCompat(Landroid/graphics/Canvas;)V
    .locals 2

    .line 564
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 568
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private positionSelectorCompat(ILandroid/view/View;)V
    .locals 5

    .line 603
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 604
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 607
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionLeftPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 608
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionTopPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 609
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionRightPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 610
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionBottomPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 615
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 616
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eq p2, v0, :cond_0

    .line 617
    iget-object p2, p0, Landroid/support/v7/widget/DropDownListView;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 619
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->refreshDrawableState()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 623
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private positionSelectorLikeFocusCompat(ILandroid/view/View;)V
    .locals 4

    .line 585
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 588
    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 591
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/DropDownListView;->positionSelectorCompat(ILandroid/view/View;)V

    if-eqz v3, :cond_3

    .line 594
    iget-object p1, p0, Landroid/support/v7/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 595
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p2

    .line 596
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    .line 597
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 598
    invoke-static {v0, p2, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    :cond_3
    return-void
.end method

.method private positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V
    .locals 1

    .line 574
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/DropDownListView;->positionSelectorLikeFocusCompat(ILandroid/view/View;)V

    .line 576
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 578
    invoke-static {p2, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    return-void
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .locals 6

    const/4 v0, 0x1

    .line 645
    iput-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 648
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 649
    invoke-virtual {p0, p3, p4}, Landroid/support/v7/widget/DropDownListView;->drawableHotspotChanged(FF)V

    .line 651
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 652
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/DropDownListView;->setPressed(Z)V

    .line 656
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->layoutChildren()V

    .line 660
    iget v1, p0, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    .line 661
    iget v1, p0, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eq v1, p1, :cond_2

    .line 662
    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 663
    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 666
    :cond_2
    iput p2, p0, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    .line 669
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p3, v1

    .line 670
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p4, v3

    .line 671
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v2, :cond_3

    .line 672
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 674
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 675
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 679
    :cond_4
    invoke-direct {p0, p2, p1, p3, p4}, Landroid/support/v7/widget/DropDownListView;->positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V

    .line 684
    invoke-direct {p0, v4}, Landroid/support/v7/widget/DropDownListView;->setSelectorEnabled(Z)V

    .line 688
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->refreshDrawableState()V

    return-void
.end method

.method private setSelectorEnabled(Z)V
    .locals 1

    .line 372
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mSelector:Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mSelector:Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private touchModeDrawsInPressedStateCompat()Z
    .locals 1

    .line 692
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mDrawsInPressedState:Z

    return v0
.end method

.method private updateSelectorStateCompat()V
    .locals 2

    .line 557
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    invoke-direct {p0}, Landroid/support/v7/widget/DropDownListView;->touchModeDrawsInPressedStateCompat()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Landroid/support/v7/widget/DropDownListView;->drawSelectorCompat(Landroid/graphics/Canvas;)V

    .line 202
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .line 185
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    if-eqz v0, :cond_0

    return-void

    .line 189
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    const/4 v0, 0x1

    .line 191
    invoke-direct {p0, v0}, Landroid/support/v7/widget/DropDownListView;->setSelectorEnabled(Z)V

    .line 192
    invoke-direct {p0}, Landroid/support/v7/widget/DropDownListView;->updateSelectorStateCompat()V

    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFocused()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isInTouchMode()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lookForSelectablePosition(IZ)I
    .locals 4

    .line 228
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    .line 229
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_4

    .line 233
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 234
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 236
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    if-ge p1, v2, :cond_2

    .line 237
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p2

    if-nez p2, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, -0x1

    .line 241
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_1
    if-ltz p1, :cond_2

    .line 242
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p2

    if-nez p2, :cond_2

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    if-ltz p1, :cond_4

    if-lt p1, v2, :cond_3

    goto :goto_2

    :cond_3
    return p1

    :cond_4
    :goto_2
    return v1

    :cond_5
    if-ltz p1, :cond_7

    if-lt p1, v2, :cond_6

    goto :goto_3

    :cond_6
    return p1

    :cond_7
    :goto_3
    return v1

    :cond_8
    :goto_4
    return v1
.end method

.method public measureHeightOfChildrenCompat(IIIII)I
    .locals 10

    .line 289
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getListPaddingTop()I

    move-result p2

    .line 290
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getListPaddingBottom()I

    move-result p3

    .line 291
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getListPaddingLeft()I

    .line 292
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getListPaddingRight()I

    .line 293
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getDividerHeight()I

    move-result v0

    .line 294
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 296
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-nez v2, :cond_0

    add-int/2addr p2, p3

    return p2

    :cond_0
    add-int/2addr p2, p3

    const/4 p3, 0x0

    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 313
    :goto_0
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v3, 0x0

    move v5, p2

    move-object v6, v3

    const/4 p2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge p2, v1, :cond_9

    .line 315
    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v4, :cond_2

    move-object v6, v3

    move v4, v8

    .line 320
    :cond_2
    invoke-interface {v2, p2, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 324
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_3

    .line 327
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 328
    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    :cond_3
    iget v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v9, :cond_4

    .line 332
    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_2

    .line 335
    :cond_4
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 337
    :goto_2
    invoke-virtual {v6, p1, v8}, Landroid/view/View;->measure(II)V

    .line 341
    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    if-lez p2, :cond_5

    add-int/2addr v5, v0

    .line 348
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v5, v8

    if-lt v5, p4, :cond_7

    if-ltz p5, :cond_6

    if-le p2, p5, :cond_6

    if-lez v7, :cond_6

    if-eq v5, p4, :cond_6

    move p4, v7

    :cond_6
    return p4

    :cond_7
    if-ltz p5, :cond_8

    if-lt p2, p5, :cond_8

    move v7, v5

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_9
    return v5
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 470
    iput-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    .line 471
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    return-void
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 7

    .line 484
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 p2, 0x0

    const/4 v3, 0x1

    goto :goto_3

    :goto_1
    :pswitch_0
    const/4 p2, 0x0

    const/4 v3, 0x0

    goto :goto_3

    :pswitch_1
    const/4 v3, 0x1

    goto :goto_2

    :pswitch_2
    const/4 v3, 0x0

    .line 493
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_1

    goto :goto_1

    .line 499
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    .line 500
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    float-to-int p2, p2

    .line 501
    invoke-virtual {p0, v4, p2}, Landroid/support/v7/widget/DropDownListView;->pointToPosition(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    const/4 p2, 0x1

    goto :goto_3

    .line 507
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v5, v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    int-to-float v4, v4

    int-to-float p2, p2

    .line 508
    invoke-direct {p0, v3, v5, v4, p2}, Landroid/support/v7/widget/DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    if-ne v0, v2, :cond_0

    .line 512
    invoke-direct {p0, v3, v5}, Landroid/support/v7/widget/DropDownListView;->clickPressedItem(Landroid/view/View;I)V

    goto :goto_0

    :goto_3
    if-eqz v3, :cond_3

    if-eqz p2, :cond_4

    .line 519
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/DropDownListView;->clearPressedItem()V

    :cond_4
    if-eqz v3, :cond_6

    .line 524
    iget-object p2, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    if-nez p2, :cond_5

    .line 525
    new-instance p2, Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-direct {p2, p0}, Landroid/support/v4/widget/ListViewAutoScrollHelper;-><init>(Landroid/widget/ListView;)V

    iput-object p2, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    .line 527
    :cond_5
    iget-object p2, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-virtual {p2, v2}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    .line 528
    iget-object p2, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-virtual {p2, p0, p1}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_4

    .line 529
    :cond_6
    iget-object p1, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    if-eqz p1, :cond_7

    .line 530
    iget-object p1, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-virtual {p1, v1}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    :cond_7
    :goto_4
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 429
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 433
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 436
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 437
    iget-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    if-nez v1, :cond_1

    .line 440
    new-instance v1, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;-><init>(Landroid/support/v7/widget/DropDownListView;Landroid/support/v7/widget/DropDownListView$1;)V

    iput-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    .line 441
    iget-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    invoke-virtual {v1}, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;->post()V

    .line 445
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/16 v2, 0x9

    const/4 v3, -0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 462
    :cond_2
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/DropDownListView;->setSelection(I)V

    goto :goto_1

    .line 448
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/DropDownListView;->pointToPosition(II)I

    move-result p1

    if-eq p1, v3, :cond_5

    .line 450
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_5

    .line 451
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 455
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/DropDownListView;->setSelectionFromTop(II)V

    .line 457
    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/DropDownListView;->updateSelectorStateCompat()V

    :cond_5
    :goto_1
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/DropDownListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    .line 212
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;->cancel()V

    .line 216
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method setListSelectionHidden(Z)V
    .locals 0

    .line 553
    iput-boolean p1, p0, Landroid/support/v7/widget/DropDownListView;->mListSelectionHidden:Z

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 168
    new-instance v0, Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mSelector:Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;

    .line 169
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mSelector:Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 171
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_1

    .line 173
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 176
    :cond_1
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iput p1, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionLeftPadding:I

    .line 177
    iget p1, v0, Landroid/graphics/Rect;->top:I

    iput p1, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionTopPadding:I

    .line 178
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionRightPadding:I

    .line 179
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionBottomPadding:I

    return-void
.end method
