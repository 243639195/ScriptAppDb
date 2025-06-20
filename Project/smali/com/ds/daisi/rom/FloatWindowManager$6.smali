.class Lcom/ds/daisi/rom/FloatWindowManager$6;
.super Ljava/lang/Object;
.source "FloatWindowManager.java"

# interfaces
.implements Lcom/ds/daisi/rom/FloatWindowManager$OnConfirmResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/rom/FloatWindowManager;->commonROMPermissionApply(Landroid/content/Context;)V
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

    .line 205
    iput-object p1, p0, Lcom/ds/daisi/rom/FloatWindowManager$6;->this$0:Lcom/ds/daisi/rom/FloatWindowManager;

    iput-object p2, p0, Lcom/ds/daisi/rom/FloatWindowManager$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public confirmResult(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 210
    :try_start_0
    iget-object p1, p0, Lcom/ds/daisi/rom/FloatWindowManager$6;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ds/daisi/rom/FloatWindowManager;->commonROMPermissionApplyInternal(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "FloatWindowManager"

    .line 212
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "FloatWindowManager"

    const-string v0, "user manually refuse OVERLAY_PERMISSION"

    .line 215
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
