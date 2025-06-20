.class Lcom/ds/daisi/floatview/ElfinFloatView$ElfinGestureListener;
.super Ljava/lang/Object;
.source "ElfinFloatView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/floatview/ElfinFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ElfinGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/floatview/ElfinFloatView;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/floatview/ElfinFloatView;)V
    .locals 0

    .line 778
    iput-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$ElfinGestureListener;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/floatview/ElfinFloatView;Lcom/ds/daisi/floatview/ElfinFloatView$1;)V
    .locals 0

    .line 778
    invoke-direct {p0, p1}, Lcom/ds/daisi/floatview/ElfinFloatView$ElfinGestureListener;-><init>(Lcom/ds/daisi/floatview/ElfinFloatView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 792
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$ElfinGestureListener;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1700(Lcom/ds/daisi/floatview/ElfinFloatView;)Lcom/ds/daisi/floatview/DeleteFloatView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ds/daisi/floatview/DeleteFloatView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 793
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$ElfinGestureListener;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1700(Lcom/ds/daisi/floatview/ElfinFloatView;)Lcom/ds/daisi/floatview/DeleteFloatView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/ds/daisi/floatview/DeleteFloatView;->setVisibility(I)V

    .line 795
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$ElfinGestureListener;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$1300(Lcom/ds/daisi/floatview/ElfinFloatView;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 796
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$ElfinGestureListener;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/ds/daisi/floatview/ElfinFloatView;->changeToolBarState(Z)V

    goto :goto_0

    .line 798
    :cond_1
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$ElfinGestureListener;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {p1, v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->changeToolBarState(Z)V

    .line 800
    :goto_0
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$ElfinGestureListener;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$2200(Lcom/ds/daisi/floatview/ElfinFloatView;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return v0
.end method
