.class Lcom/ds/daisi/rom/FloatWindowManager$4;
.super Ljava/lang/Object;
.source "FloatWindowManager.java"

# interfaces
.implements Lcom/ds/daisi/rom/FloatWindowManager$OnConfirmResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/rom/FloatWindowManager;->miuiROMPermissionApply(Landroid/content/Context;)V
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

    .line 171
    iput-object p1, p0, Lcom/ds/daisi/rom/FloatWindowManager$4;->this$0:Lcom/ds/daisi/rom/FloatWindowManager;

    iput-object p2, p0, Lcom/ds/daisi/rom/FloatWindowManager$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public confirmResult(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/ds/daisi/rom/FloatWindowManager$4;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ds/daisi/rom/MiuiUtils;->applyMiuiPermission(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p1, "FloatWindowManager"

    const-string v0, "ROM:miui, user manually refuse OVERLAY_PERMISSION"

    .line 177
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
