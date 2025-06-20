.class public Lcom/cyjh/share/mvp/presenter/AppStartupPresenter;
.super Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;
.source "AppStartupPresenter.java"


# instance fields
.field private clientTimestamp:J

.field private mView:Lcom/cyjh/share/mvp/view/AppStartupView;


# direct methods
.method public constructor <init>(Lcom/cyjh/share/mvp/view/AppStartupView;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/cyjh/share/mvp/presenter/AppStartupPresenter;->mView:Lcom/cyjh/share/mvp/view/AppStartupView;

    return-void
.end method


# virtual methods
.method public loadAd(Landroid/content/Context;)V
    .locals 4

    .line 37
    :try_start_0
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getBaseRequestParams(Landroid/content/Context;)Lcom/cyjh/share/bean/request/BaseRequestValueInfo;

    move-result-object v0

    .line 38
    sget-wide v1, Lcom/cyjh/share/manager/VariableAndConstantsManager;->sCurrentTimestamp:J

    iput-wide v1, p0, Lcom/cyjh/share/mvp/presenter/AppStartupPresenter;->clientTimestamp:J

    .line 39
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->toMapPrames(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "StartApp"

    .line 40
    invoke-static {v1}, Lcom/cyjh/share/config/MyConfig;->getBuilderPay(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/cyjh/share/mvp/presenter/AppStartupPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1, v0}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->sendPostRequest(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "zzz"

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppStartupPresenter--loadAd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onCancel()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppStartupPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppStartupPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->stopRequest(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onErrorResponse(Ljava/lang/String;)V
    .locals 3

    const-string v0, "zzz"

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.cyjh.share.AppStartupPresenter--onErrorResponse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppStartupPresenter;->mView:Lcom/cyjh/share/mvp/view/AppStartupView;

    invoke-interface {v0, p1}, Lcom/cyjh/share/mvp/view/AppStartupView;->startupFail(Ljava/lang/String;)V

    return-void
.end method

.method public uiDataSuccess(Ljava/lang/Object;)V
    .locals 5

    .line 52
    :try_start_0
    check-cast p1, Ljava/lang/String;

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Data"

    .line 55
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "Code"

    .line 56
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Message"

    .line 57
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 59
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/cyjh/share/bean/response/AppStartupResponse;

    invoke-static {p1, v0}, Lcom/cyjh/share/util/GsonExUtil;->parsData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/share/bean/response/AppStartupResponse;

    if-eqz p1, :cond_0

    .line 61
    iget-wide v0, p0, Lcom/cyjh/share/mvp/presenter/AppStartupPresenter;->clientTimestamp:J

    iget-wide v2, p1, Lcom/cyjh/share/bean/response/AppStartupResponse;->ClientTimestamp:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 62
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppStartupPresenter;->mView:Lcom/cyjh/share/mvp/view/AppStartupView;

    invoke-interface {v0, p1}, Lcom/cyjh/share/mvp/view/AppStartupView;->startupSuc(Lcom/cyjh/share/bean/response/AppStartupResponse;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/cyjh/share/mvp/presenter/AppStartupPresenter;->mView:Lcom/cyjh/share/mvp/view/AppStartupView;

    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cyjh/share/R$string;->timestamp_diff_except:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-interface {p1, v0}, Lcom/cyjh/share/mvp/view/AppStartupView;->startupFail(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/cyjh/share/mvp/presenter/AppStartupPresenter;->mView:Lcom/cyjh/share/mvp/view/AppStartupView;

    invoke-interface {p1, v0}, Lcom/cyjh/share/mvp/view/AppStartupView;->startupFail(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_2
    iget-object p1, p0, Lcom/cyjh/share/mvp/presenter/AppStartupPresenter;->mView:Lcom/cyjh/share/mvp/view/AppStartupView;

    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cyjh/share/R$string;->json_data_null:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-interface {p1, v0}, Lcom/cyjh/share/mvp/view/AppStartupView;->startupFail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 75
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppStartupPresenter;->mView:Lcom/cyjh/share/mvp/view/AppStartupView;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/cyjh/share/mvp/view/AppStartupView;->startupFail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
