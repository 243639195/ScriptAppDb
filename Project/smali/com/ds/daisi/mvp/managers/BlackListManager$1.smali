.class Lcom/ds/daisi/mvp/managers/BlackListManager$1;
.super Lcom/ds/daisi/net/volley/VolleyStrRequestManager;
.source "BlackListManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/mvp/managers/BlackListManager;->isSetBlackList(Landroid/content/Context;Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/mvp/managers/BlackListManager;

.field final synthetic val$callback:Lcom/ds/daisi/mvp/managers/Callback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/ds/daisi/mvp/managers/BlackListManager;Landroid/content/Context;Lcom/ds/daisi/mvp/managers/Callback;Landroid/content/Context;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/ds/daisi/mvp/managers/BlackListManager$1;->this$0:Lcom/ds/daisi/mvp/managers/BlackListManager;

    iput-object p3, p0, Lcom/ds/daisi/mvp/managers/BlackListManager$1;->val$callback:Lcom/ds/daisi/mvp/managers/Callback;

    iput-object p4, p0, Lcom/ds/daisi/mvp/managers/BlackListManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/ds/daisi/net/volley/VolleyStrRequestManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onRequestErrorRes(Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/ds/daisi/mvp/managers/BlackListManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/ds/daisi/mvp/managers/BlackListManager$1;->val$callback:Lcom/ds/daisi/mvp/managers/Callback;

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/managers/Callback;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRequestSuccessRes(Ljava/lang/String;)V
    .locals 4

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlackListResult\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 31
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Code"

    .line 32
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    sget-object v1, Lcom/ds/daisi/net/URL/URLConstant;->PAY_OR_Free:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 38
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 40
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ds/daisi/mvp/managers/BlackListManager$1;->val$callback:Lcom/ds/daisi/mvp/managers/Callback;

    invoke-interface {p1, v0}, Lcom/ds/daisi/mvp/managers/Callback;->finish(Ljava/lang/Object;)V

    return-void
.end method
