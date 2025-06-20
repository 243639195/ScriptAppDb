.class Lcom/ds/daisi/rom/FloatWindowManager$5;
.super Ljava/lang/Object;
.source "FloatWindowManager.java"

# interfaces
.implements Lcom/ds/daisi/rom/FloatWindowManager$OnConfirmResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/rom/FloatWindowManager;->oppoROMPermissionApply(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/rom/FloatWindowManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/ds/daisi/rom/FloatWindowManager;Landroid/content/Context;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/ds/daisi/rom/FloatWindowManager$5;->this$0:Lcom/ds/daisi/rom/FloatWindowManager;

    iput-object p2, p0, Lcom/ds/daisi/rom/FloatWindowManager$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public confirmResult(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/ds/daisi/rom/FloatWindowManager$5;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ds/daisi/rom/OppoUtils;->applyOppoPermission(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p1, "FloatWindowManager"

    const-string v0, "ROM:miui, user manually refuse OVERLAY_PERMISSION"

    .line 190
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
