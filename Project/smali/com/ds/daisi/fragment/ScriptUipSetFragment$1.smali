.class Lcom/ds/daisi/fragment/ScriptUipSetFragment$1;
.super Ljava/lang/Object;
.source "ScriptUipSetFragment.java"

# interfaces
.implements Lcom/ds/daisi/activity/ElfinPayActivity$MyTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/fragment/ScriptUipSetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;


# direct methods
.method constructor <init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$1;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$1;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-static {v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$100(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
