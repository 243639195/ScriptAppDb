.class public Lkiller/elfin/util/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toast(Ljava/lang/String;III)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "ms"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 11
    const/4 v1, 0x1

    .line 12
    .local v1, "isPermission":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 14
    :try_start_0
    invoke-static {}, Lkiller/elfin/Free;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 19
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 20
    invoke-static {p0, p1, p2, p3}, Lcom/cyjh/event/Injector;->ShowMessage(Ljava/lang/String;III)V

    .line 22
    :cond_1
    return-void

    .line 15
    :catch_0
    move-exception v0

    .line 16
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method
