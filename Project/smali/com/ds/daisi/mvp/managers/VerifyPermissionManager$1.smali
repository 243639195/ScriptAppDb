.class Lcom/ds/daisi/mvp/managers/VerifyPermissionManager$1;
.super Lcom/ds/daisi/net/volley/VolleyStrRequestManager;
.source "VerifyPermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/mvp/managers/VerifyPermissionManager;->requestNetworkByGet(Lcom/ds/daisi/mvp/managers/Callback;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/mvp/managers/VerifyPermissionManager;

.field final synthetic val$callback:Lcom/ds/daisi/mvp/managers/Callback;

.field final synthetic val$field:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ds/daisi/mvp/managers/VerifyPermissionManager;Landroid/content/Context;Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/ds/daisi/mvp/managers/VerifyPermissionManager$1;->this$0:Lcom/ds/daisi/mvp/managers/VerifyPermissionManager;

    iput-object p3, p0, Lcom/ds/daisi/mvp/managers/VerifyPermissionManager$1;->val$field:Ljava/lang/String;

    iput-object p4, p0, Lcom/ds/daisi/mvp/managers/VerifyPermissionManager$1;->val$callback:Lcom/ds/daisi/mvp/managers/Callback;

    invoke-direct {p0, p2}, Lcom/ds/daisi/net/volley/VolleyStrRequestManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onRequestErrorRes(Ljava/lang/String;)V
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9519\u8bef\u7684\u4fe1\u606f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/ds/daisi/mvp/managers/VerifyPermissionManager$1;->val$callback:Lcom/ds/daisi/mvp/managers/Callback;

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/managers/Callback;->error(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestSuccessRes(Ljava/lang/String;)V
    .locals 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bf7\u6c42\u8fd4\u56de\u7684\u6570\u636e\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    new-instance v0, Lcom/ds/daisi/entity/AccountResult;

    invoke-direct {v0}, Lcom/ds/daisi/entity/AccountResult;-><init>()V

    .line 47
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Code"

    .line 48
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ds/daisi/entity/AccountResult;->Code:Ljava/lang/String;

    .line 49
    iget-object p1, p0, Lcom/ds/daisi/mvp/managers/VerifyPermissionManager$1;->val$field:Ljava/lang/String;

    const-string v2, "GetTryCount"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "TryCount"

    .line 50
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ds/daisi/entity/AccountResult;->TryCount:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Msg"

    .line 52
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ds/daisi/entity/AccountResult;->Msg:Ljava/lang/String;

    .line 54
    :goto_0
    iget-object p1, p0, Lcom/ds/daisi/mvp/managers/VerifyPermissionManager$1;->val$callback:Lcom/ds/daisi/mvp/managers/Callback;

    invoke-interface {p1, v0}, Lcom/ds/daisi/mvp/managers/Callback;->finish(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 56
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
