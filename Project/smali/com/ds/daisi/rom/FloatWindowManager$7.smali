.class Lcom/ds/daisi/rom/FloatWindowManager$7;
.super Ljava/lang/Object;
.source "FloatWindowManager.java"

# interfaces
.implements Lcom/ds/daisi/dialog/FloatGuideDialog$OnConfirmResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/rom/FloatWindowManager;->showConfirmDialog(Landroid/content/Context;Ljava/lang/String;Lcom/ds/daisi/rom/FloatWindowManager$OnConfirmResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/rom/FloatWindowManager;

.field final synthetic val$result:Lcom/ds/daisi/rom/FloatWindowManager$OnConfirmResult;


# direct methods
.method constructor <init>(Lcom/ds/daisi/rom/FloatWindowManager;Lcom/ds/daisi/rom/FloatWindowManager$OnConfirmResult;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/ds/daisi/rom/FloatWindowManager$7;->this$0:Lcom/ds/daisi/rom/FloatWindowManager;

    iput-object p2, p0, Lcom/ds/daisi/rom/FloatWindowManager$7;->val$result:Lcom/ds/daisi/rom/FloatWindowManager$OnConfirmResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public confirmResult(Z)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/ds/daisi/rom/FloatWindowManager$7;->val$result:Lcom/ds/daisi/rom/FloatWindowManager$OnConfirmResult;

    invoke-interface {v0, p1}, Lcom/ds/daisi/rom/FloatWindowManager$OnConfirmResult;->confirmResult(Z)V

    .line 267
    iget-object p1, p0, Lcom/ds/daisi/rom/FloatWindowManager$7;->this$0:Lcom/ds/daisi/rom/FloatWindowManager;

    invoke-static {p1}, Lcom/ds/daisi/rom/FloatWindowManager;->access$000(Lcom/ds/daisi/rom/FloatWindowManager;)Lcom/ds/daisi/dialog/FloatGuideDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ds/daisi/dialog/FloatGuideDialog;->dismiss()V

    return-void
.end method
