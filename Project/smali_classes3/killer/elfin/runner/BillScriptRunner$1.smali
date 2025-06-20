.class Lkiller/elfin/runner/BillScriptRunner$1;
.super Ljava/lang/Object;
.source "BillScriptRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkiller/elfin/runner/BillScriptRunner;->runScript()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkiller/elfin/runner/BillScriptRunner;

.field final synthetic val$fragment:Lcom/ds/daisi/fragment/ScriptUipSetFragment;


# direct methods
.method constructor <init>(Lkiller/elfin/runner/BillScriptRunner;Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V
    .locals 0
    .param p1, "this$0"    # Lkiller/elfin/runner/BillScriptRunner;

    .prologue
    .line 42
    iput-object p1, p0, Lkiller/elfin/runner/BillScriptRunner$1;->this$0:Lkiller/elfin/runner/BillScriptRunner;

    iput-object p2, p0, Lkiller/elfin/runner/BillScriptRunner$1;->val$fragment:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lkiller/elfin/runner/BillScriptRunner$1;->this$0:Lkiller/elfin/runner/BillScriptRunner;

    iget-object v1, p0, Lkiller/elfin/runner/BillScriptRunner$1;->val$fragment:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-static {v0, v1}, Lkiller/elfin/runner/BillScriptRunner;->access$000(Lkiller/elfin/runner/BillScriptRunner;Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V

    .line 46
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lkiller/elfin/runner/BillScriptRunner$1$1;

    invoke-direct {v1, p0}, Lkiller/elfin/runner/BillScriptRunner$1$1;-><init>(Lkiller/elfin/runner/BillScriptRunner$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 53
    return-void
.end method
