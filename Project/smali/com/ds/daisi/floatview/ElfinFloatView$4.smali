.class Lcom/ds/daisi/floatview/ElfinFloatView$4;
.super Ljava/lang/Object;
.source "ElfinFloatView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/floatview/ElfinFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final MIN_MOVEMENT:I = 0x5


# instance fields
.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureListener:Lcom/ds/daisi/floatview/ElfinFloatView$ElfinGestureListener;

.field final synthetic this$0:Lcom/ds/daisi/floatview/ElfinFloatView;


# direct methods
.method constructor <init>(Lcom/ds/daisi/floatview/ElfinFloatView;)V
    .locals 2

    .line 656
    iput-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    new-instance p1, Lcom/ds/daisi/floatview/ElfinFloatView$ElfinGestureListener;

    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/ds/daisi/floatview/ElfinFloatView$ElfinGestureListener;-><init>(Lcom/ds/daisi/floatview/ElfinFloatView;Lcom/ds/daisi/floatview/ElfinFloatView$1;)V

    iput-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->gestureListener:Lcom/ds/daisi/floatview/ElfinFloatView$ElfinGestureListener;

    .line 659
    new-instance p1, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->gestureListener:Lcom/ds/daisi/floatview/ElfinFloatView$ElfinGestureListener;

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public getDistance(FFFF)F
    .locals 4

    sub-float/2addr p1, p3

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 670
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float/2addr p2, p4

    float-to-double p1, p2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 676
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 679
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 689
    :pswitch_0
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1300(Lcom/ds/daisi/floatview/ElfinFloatView;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 692
    :cond_1
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    iget-object v3, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {v3}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1000(Lcom/ds/daisi/floatview/ElfinFloatView;)F

    move-result v3

    invoke-static {p1, v3}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1402(Lcom/ds/daisi/floatview/ElfinFloatView;F)F

    .line 693
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    iget-object v3, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {v3}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1100(Lcom/ds/daisi/floatview/ElfinFloatView;)F

    move-result v3

    invoke-static {p1, v3}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1502(Lcom/ds/daisi/floatview/ElfinFloatView;F)F

    .line 695
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {p1, v3}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1002(Lcom/ds/daisi/floatview/ElfinFloatView;F)F

    .line 696
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v3, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {v3}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ds/daisi/util/AppDeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p2, v3

    invoke-static {p1, p2}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1102(Lcom/ds/daisi/floatview/ElfinFloatView;F)F

    .line 699
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1400(Lcom/ds/daisi/floatview/ElfinFloatView;)F

    move-result p1

    iget-object p2, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p2}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1500(Lcom/ds/daisi/floatview/ElfinFloatView;)F

    move-result p2

    iget-object v3, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {v3}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1000(Lcom/ds/daisi/floatview/ElfinFloatView;)F

    move-result v3

    iget-object v4, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {v4}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1100(Lcom/ds/daisi/floatview/ElfinFloatView;)F

    move-result v4

    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/ds/daisi/floatview/ElfinFloatView$4;->getDistance(FFFF)F

    move-result p1

    const/high16 p2, 0x40a00000    # 5.0f

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_2

    return v0

    .line 703
    :cond_2
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1100(Lcom/ds/daisi/floatview/ElfinFloatView;)F

    move-result p1

    iget-object p2, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p2}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1500(Lcom/ds/daisi/floatview/ElfinFloatView;)F

    move-result p2

    sub-float/2addr p1, p2

    float-to-double p1, p1

    iget-object v3, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {v3}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1000(Lcom/ds/daisi/floatview/ElfinFloatView;)F

    move-result v3

    iget-object v4, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {v4}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1400(Lcom/ds/daisi/floatview/ElfinFloatView;)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    .line 704
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    const-wide/high16 v3, -0x3fb2000000000000L    # -60.0

    cmpg-double v5, p1, v3

    const-wide/high16 v6, -0x3fa2000000000000L    # -120.0

    if-gez v5, :cond_4

    cmpl-double v5, p1, v6

    if-lez v5, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    cmpl-double v5, p1, v3

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    if-ltz v5, :cond_5

    cmpg-double v5, p1, v3

    if-gtz v5, :cond_5

    const/4 p1, 0x2

    goto :goto_0

    :cond_5
    cmpl-double v5, p1, v3

    const-wide/high16 v3, 0x405e000000000000L    # 120.0

    if-lez v5, :cond_6

    cmpg-double v5, p1, v3

    if-gez v5, :cond_6

    const/4 p1, 0x3

    goto :goto_0

    :cond_6
    cmpl-double v5, p1, v3

    if-gez v5, :cond_7

    cmpg-double v3, p1, v6

    if-gtz v3, :cond_3

    :cond_7
    const/4 p1, 0x4

    .line 715
    :goto_0
    iget-object p2, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p2, p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1600(Lcom/ds/daisi/floatview/ElfinFloatView;I)V

    .line 717
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    iget-object p2, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p2}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1000(Lcom/ds/daisi/floatview/ElfinFloatView;)F

    move-result p2

    iget-object v3, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {v3}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$400(Lcom/ds/daisi/floatview/ElfinFloatView;)F

    move-result v3

    sub-float/2addr p2, v3

    float-to-int p2, p2

    iget-object v3, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {v3}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1100(Lcom/ds/daisi/floatview/ElfinFloatView;)F

    move-result v3

    iget-object v4, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {v4}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1200(Lcom/ds/daisi/floatview/ElfinFloatView;)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p1, p2, v3}, Lcom/ds/daisi/floatview/ElfinFloatView;->updateFloatViewPosition(II)V

    .line 718
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1700(Lcom/ds/daisi/floatview/ElfinFloatView;)Lcom/ds/daisi/floatview/DeleteFloatView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ds/daisi/floatview/DeleteFloatView;->getVisibility()I

    move-result p1

    if-ne p1, v2, :cond_8

    .line 719
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1700(Lcom/ds/daisi/floatview/ElfinFloatView;)Lcom/ds/daisi/floatview/DeleteFloatView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ds/daisi/floatview/DeleteFloatView;->setVisibility(I)V

    .line 721
    :cond_8
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1800(Lcom/ds/daisi/floatview/ElfinFloatView;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 722
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1700(Lcom/ds/daisi/floatview/ElfinFloatView;)Lcom/ds/daisi/floatview/DeleteFloatView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ds/daisi/floatview/DeleteFloatView;->setHide()V

    goto :goto_1

    .line 724
    :cond_9
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1700(Lcom/ds/daisi/floatview/ElfinFloatView;)Lcom/ds/daisi/floatview/DeleteFloatView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ds/daisi/floatview/DeleteFloatView;->setNormal()V

    :goto_1
    return v0

    .line 729
    :pswitch_1
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1002(Lcom/ds/daisi/floatview/ElfinFloatView;F)F

    .line 730
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ds/daisi/util/AppDeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-static {p1, p2}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1102(Lcom/ds/daisi/floatview/ElfinFloatView;F)F

    .line 732
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1800(Lcom/ds/daisi/floatview/ElfinFloatView;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 733
    new-instance p1, Lcom/ds/daisi/dialog/HideFWDialog;

    iget-object p2, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {p2}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ds/daisi/dialog/HideFWDialog;-><init>(Landroid/content/Context;)V

    .line 734
    iget-object p2, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p2}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1900(Lcom/ds/daisi/floatview/ElfinFloatView;)Lcom/ds/daisi/dialog/HideFWDialog$OnHideOKClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ds/daisi/dialog/HideFWDialog;->setOnHideOKClickListener(Lcom/ds/daisi/dialog/HideFWDialog$OnHideOKClickListener;)V

    .line 735
    iget-object p2, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p2}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$2000(Lcom/ds/daisi/floatview/ElfinFloatView;)Lcom/ds/daisi/dialog/HideFWDialog$OnHideCancelClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ds/daisi/dialog/HideFWDialog;->setOnHideCancelClickListener(Lcom/ds/daisi/dialog/HideFWDialog$OnHideCancelClickListener;)V

    .line 736
    new-instance p2, Lcom/ds/daisi/floatview/ElfinFloatView$4$1;

    invoke-direct {p2, p0}, Lcom/ds/daisi/floatview/ElfinFloatView$4$1;-><init>(Lcom/ds/daisi/floatview/ElfinFloatView$4;)V

    invoke-virtual {p1, p2}, Lcom/ds/daisi/dialog/HideFWDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 742
    invoke-virtual {p1}, Lcom/ds/daisi/dialog/HideFWDialog;->show()V

    goto :goto_2

    .line 745
    :cond_a
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1300(Lcom/ds/daisi/floatview/ElfinFloatView;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-ne p1, v2, :cond_b

    .line 746
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$2100(Lcom/ds/daisi/floatview/ElfinFloatView;)V

    .line 748
    :cond_b
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1700(Lcom/ds/daisi/floatview/ElfinFloatView;)Lcom/ds/daisi/floatview/DeleteFloatView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ds/daisi/floatview/DeleteFloatView;->setVisibility(I)V

    .line 749
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$2200(Lcom/ds/daisi/floatview/ElfinFloatView;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_2

    .line 681
    :pswitch_2
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$900(Lcom/ds/daisi/floatview/ElfinFloatView;)V

    .line 682
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1002(Lcom/ds/daisi/floatview/ElfinFloatView;F)F

    .line 683
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v2, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {v2}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ds/daisi/util/AppDeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {p1, v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1102(Lcom/ds/daisi/floatview/ElfinFloatView;F)F

    .line 684
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$402(Lcom/ds/daisi/floatview/ElfinFloatView;F)F

    .line 685
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1202(Lcom/ds/daisi/floatview/ElfinFloatView;F)F

    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
