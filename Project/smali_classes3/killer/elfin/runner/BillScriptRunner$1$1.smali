.class Lkiller/elfin/runner/BillScriptRunner$1$1;
.super Ljava/lang/Object;
.source "BillScriptRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkiller/elfin/runner/BillScriptRunner$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lkiller/elfin/runner/BillScriptRunner$1;


# direct methods
.method constructor <init>(Lkiller/elfin/runner/BillScriptRunner$1;)V
    .locals 0
    .param p1, "this$1"    # Lkiller/elfin/runner/BillScriptRunner$1;

    .prologue
    .line 46
    iput-object p1, p0, Lkiller/elfin/runner/BillScriptRunner$1$1;->this$1:Lkiller/elfin/runner/BillScriptRunner$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 49
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 50
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/entity/ElfinFloatViewEvent;

    invoke-direct {v1}, Lcom/ds/daisi/entity/ElfinFloatViewEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 51
    return-void
.end method
