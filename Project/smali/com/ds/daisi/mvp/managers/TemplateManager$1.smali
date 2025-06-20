.class Lcom/ds/daisi/mvp/managers/TemplateManager$1;
.super Lcom/ds/daisi/net/volley/VolleyStrRequestManager;
.source "TemplateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/mvp/managers/TemplateManager;->templateChecked(Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/mvp/managers/TemplateManager;

.field final synthetic val$callback:Lcom/ds/daisi/mvp/managers/Callback;


# direct methods
.method constructor <init>(Lcom/ds/daisi/mvp/managers/TemplateManager;Landroid/content/Context;Lcom/ds/daisi/mvp/managers/Callback;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/ds/daisi/mvp/managers/TemplateManager$1;->this$0:Lcom/ds/daisi/mvp/managers/TemplateManager;

    iput-object p3, p0, Lcom/ds/daisi/mvp/managers/TemplateManager$1;->val$callback:Lcom/ds/daisi/mvp/managers/Callback;

    invoke-direct {p0, p2}, Lcom/ds/daisi/net/volley/VolleyStrRequestManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onRequestErrorRes(Ljava/lang/String;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/ds/daisi/mvp/managers/TemplateManager$1;->val$callback:Lcom/ds/daisi/mvp/managers/Callback;

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/managers/Callback;->error(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestSuccessRes(Ljava/lang/String;)V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8fd4\u56de\u7684\u6570\u636e\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Data"

    .line 36
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 37
    new-instance v0, Lcom/ds/daisi/entity/TemplateStatus;

    invoke-direct {v0}, Lcom/ds/daisi/entity/TemplateStatus;-><init>()V

    const-string v1, "Code"

    .line 38
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ds/daisi/entity/TemplateStatus;->status:Ljava/lang/String;

    const-string v1, "Remark"

    .line 39
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ds/daisi/entity/TemplateStatus;->remark:Ljava/lang/String;

    .line 40
    iget-object p1, p0, Lcom/ds/daisi/mvp/managers/TemplateManager$1;->val$callback:Lcom/ds/daisi/mvp/managers/Callback;

    invoke-interface {p1, v0}, Lcom/ds/daisi/mvp/managers/Callback;->finish(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
