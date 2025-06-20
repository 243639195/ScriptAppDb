.class public Lcom/ds/daisi/fragment/ScriptUipSetFragment$SVCGestureListener;
.super Ljava/lang/Object;
.source "ScriptUipSetFragment.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/fragment/ScriptUipSetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SVCGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;


# direct methods
.method public constructor <init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V
    .locals 0

    .line 1044
    iput-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SVCGestureListener;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

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

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1080
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SVCGestureListener;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$2202(Lcom/ds/daisi/fragment/ScriptUipSetFragment;F)F

    .line 1081
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SVCGestureListener;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$2302(Lcom/ds/daisi/fragment/ScriptUipSetFragment;F)F

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1058
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SVCGestureListener;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$2002(Lcom/ds/daisi/fragment/ScriptUipSetFragment;F)F

    .line 1059
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SVCGestureListener;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$2102(Lcom/ds/daisi/fragment/ScriptUipSetFragment;F)F

    const/4 p1, 0x0

    return p1
.end method
