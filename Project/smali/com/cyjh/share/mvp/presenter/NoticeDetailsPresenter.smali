.class public Lcom/cyjh/share/mvp/presenter/NoticeDetailsPresenter;
.super Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;
.source "NoticeDetailsPresenter.java"


# instance fields
.field private clientTimestamp:J

.field private mView:Lcom/cyjh/share/mvp/view/NoticeDetailsView;


# direct methods
.method public constructor <init>(Lcom/cyjh/share/mvp/view/NoticeDetailsView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/cyjh/share/mvp/presenter/NoticeDetailsPresenter;->mView:Lcom/cyjh/share/mvp/view/NoticeDetailsView;

    return-void
.end method


# virtual methods
.method public loadAd(Landroid/content/Context;J)V
    .locals 3

    .line 37
    :try_start_0
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getBaseRequestParams(Landroid/content/Context;)Lcom/cyjh/share/bean/request/BaseRequestValueInfo;

    move-result-object v0

    .line 38
    sget-wide v1, Lcom/cyjh/share/manager/VariableAndConstantsManager;->sCurrentTimestamp:J

    iput-wide v1, p0, Lcom/cyjh/share/mvp/presenter/NoticeDetailsPresenter;->clientTimestamp:J

    .line 39
    new-instance v1, Lcom/cyjh/share/bean/request/NoticeDetailsRequestParams;

    invoke-direct {v1, v0}, Lcom/cyjh/share/bean/request/NoticeDetailsRequestParams;-><init>(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)V

    .line 40
    iput-wide p2, v1, Lcom/cyjh/share/bean/request/NoticeDetailsRequestParams;->NoticeId:J

    .line 41
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->toMapPrames(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "Notice"

    const-string v0, "Detail"

    .line 42
    invoke-static {p3, v0}, Lcom/cyjh/share/config/MyConfig;->getBuilderPay(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    .line 43
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    .line 44
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/NoticeDetailsPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p2}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->sendPostRequest(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "zzz"

    .line 46
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "com.cyjh.share.NoticeDetailsPresenter--loadAd:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onCancel()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/NoticeDetailsPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/NoticeDetailsPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

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

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.cyjh.share.NoticeDetailsPresenter--onErrorResponse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p1, p0, Lcom/cyjh/share/mvp/presenter/NoticeDetailsPresenter;->mView:Lcom/cyjh/share/mvp/view/NoticeDetailsView;

    invoke-interface {p1}, Lcom/cyjh/share/mvp/view/NoticeDetailsView;->onFail()V

    return-void
.end method

.method public uiDataSuccess(Ljava/lang/Object;)V
    .locals 5

    .line 53
    :try_start_0
    check-cast p1, Ljava/lang/String;

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

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 58
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/cyjh/share/bean/response/NoticeBean;

    invoke-static {p1, v0}, Lcom/cyjh/share/util/GsonExUtil;->parsData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/share/bean/response/NoticeBean;

    if-eqz p1, :cond_0

    .line 59
    iget-wide v0, p1, Lcom/cyjh/share/bean/response/NoticeBean;->ClientTimestamp:J

    iget-wide v2, p0, Lcom/cyjh/share/mvp/presenter/NoticeDetailsPresenter;->clientTimestamp:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 60
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/NoticeDetailsPresenter;->mView:Lcom/cyjh/share/mvp/view/NoticeDetailsView;

    invoke-interface {v0, p1}, Lcom/cyjh/share/mvp/view/NoticeDetailsView;->onSuc(Lcom/cyjh/share/bean/response/NoticeBean;)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/cyjh/share/mvp/presenter/NoticeDetailsPresenter;->mView:Lcom/cyjh/share/mvp/view/NoticeDetailsView;

    invoke-interface {p1}, Lcom/cyjh/share/mvp/view/NoticeDetailsView;->onFail()V

    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/cyjh/share/mvp/presenter/NoticeDetailsPresenter;->mView:Lcom/cyjh/share/mvp/view/NoticeDetailsView;

    invoke-interface {p1}, Lcom/cyjh/share/mvp/view/NoticeDetailsView;->onFail()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "zzz"

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.cyjh.share.NoticeDetailsPresenter--uiDataSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object p1, p0, Lcom/cyjh/share/mvp/presenter/NoticeDetailsPresenter;->mView:Lcom/cyjh/share/mvp/view/NoticeDetailsView;

    invoke-interface {p1}, Lcom/cyjh/share/mvp/view/NoticeDetailsView;->onFail()V

    :goto_0
    return-void
.end method
