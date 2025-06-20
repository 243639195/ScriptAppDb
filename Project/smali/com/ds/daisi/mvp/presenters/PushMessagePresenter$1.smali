.class Lcom/ds/daisi/mvp/presenters/PushMessagePresenter$1;
.super Lcom/ds/daisi/net/volley/VolleyStrRequestManager;
.source "PushMessagePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/mvp/presenters/PushMessagePresenter;->acquireMessagePush(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/mvp/presenters/PushMessagePresenter;


# direct methods
.method constructor <init>(Lcom/ds/daisi/mvp/presenters/PushMessagePresenter;Landroid/content/Context;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/PushMessagePresenter$1;->this$0:Lcom/ds/daisi/mvp/presenters/PushMessagePresenter;

    invoke-direct {p0, p2}, Lcom/ds/daisi/net/volley/VolleyStrRequestManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onRequestErrorRes(Ljava/lang/String;)V
    .locals 1

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u8bf7\u6c42\u5931\u8d25"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onRequestSuccessRes(Ljava/lang/String;)V
    .locals 2

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Data"

    .line 57
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Data"

    .line 58
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "rdata"

    .line 59
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "rdata"

    .line 60
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 63
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, [Lcom/cyjh/share/bean/NotifyMsgBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/cyjh/share/bean/NotifyMsgBean;

    .line 64
    array-length v0, p1

    if-lez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/PushMessagePresenter$1;->this$0:Lcom/ds/daisi/mvp/presenters/PushMessagePresenter;

    invoke-static {v0}, Lcom/ds/daisi/mvp/presenters/PushMessagePresenter;->access$000(Lcom/ds/daisi/mvp/presenters/PushMessagePresenter;)Lcom/cyjh/share/mvp/view/PushMessageView;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/cyjh/share/mvp/view/PushMessageView;->onSuccessfulAcquireNews(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 71
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
