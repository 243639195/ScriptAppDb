.class Lcom/ds/daisi/floatview/ElfinFloatView$4$1;
.super Ljava/lang/Object;
.source "ElfinFloatView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/floatview/ElfinFloatView$4;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ds/daisi/floatview/ElfinFloatView$4;


# direct methods
.method constructor <init>(Lcom/ds/daisi/floatview/ElfinFloatView$4;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4$1;->this$1:Lcom/ds/daisi/floatview/ElfinFloatView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 739
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$4$1;->this$1:Lcom/ds/daisi/floatview/ElfinFloatView$4;

    iget-object p1, p1, Lcom/ds/daisi/floatview/ElfinFloatView$4;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$2100(Lcom/ds/daisi/floatview/ElfinFloatView;)V

    return-void
.end method
