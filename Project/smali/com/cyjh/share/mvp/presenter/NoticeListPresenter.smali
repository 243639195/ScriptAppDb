.class public Lcom/cyjh/share/mvp/presenter/NoticeListPresenter;
.super Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;
.source "NoticeListPresenter.java"


# instance fields
.field private clientTimestamp:J

.field private mView:Lcom/cyjh/share/mvp/view/PushMessageView;


# direct methods
.method public constructor <init>(Lcom/cyjh/share/mvp/view/PushMessageView;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/cyjh/share/mvp/presenter/NoticeListPresenter;->mView:Lcom/cyjh/share/mvp/view/PushMessageView;

    return-void
.end method


# virtual methods
.method public loadAd(Landroid/content/Context;)V
    .locals 5

    .line 44
    :try_start_0
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getBaseRequestParams(Landroid/content/Context;)Lcom/cyjh/share/bean/request/BaseRequestValueInfo;

    move-result-object v0

    const-string v1, "zzz"

    const-string v2, "com.cyjh.share.NoticeListPresenter--loadAd:"

    .line 45
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->toMapPrames(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object v0

    .line 47
    sget-wide v1, Lcom/cyjh/share/manager/VariableAndConstantsManager;->sCurrentTimestamp:J

    iput-wide v1, p0, Lcom/cyjh/share/mvp/presenter/NoticeListPresenter;->clientTimestamp:J

    const-string v1, "Notice"

    const-string v2, "List"

    .line 48
    invoke-static {v1, v2}, Lcom/cyjh/share/config/MyConfig;->getBuilderPay(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zzz"

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.cyjh.share.NoticeListPresenter--loadAd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v2, p0, Lcom/cyjh/share/mvp/presenter/NoticeListPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

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

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.cyjh.share.NoticeListPresenter--loadAd:"

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

    .line 96
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/NoticeListPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/NoticeListPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

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

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.cyjh.share.NoticeListPresenter--onErrorResponse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public uiDataSuccess(Ljava/lang/Object;)V
    .locals 6

    .line 60
    :try_start_0
    check-cast p1, Ljava/lang/String;

    const-string v0, "zzz"

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.cyjh.share.NoticeListPresenter--uiDataSuccess1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Data"

    .line 63
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "Code"

    .line 64
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 66
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/cyjh/share/bean/response/NoticeListBean;

    invoke-static {p1, v0}, Lcom/cyjh/share/util/GsonExUtil;->parsData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/share/bean/response/NoticeListBean;

    if-eqz p1, :cond_2

    .line 67
    iget-object v0, p1, Lcom/cyjh/share/bean/response/NoticeListBean;->NoticeList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/cyjh/share/bean/response/NoticeListBean;->NoticeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    iget-object p1, p1, Lcom/cyjh/share/bean/response/NoticeListBean;->NoticeList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyjh/share/bean/response/NoticeBean;

    .line 70
    new-instance v2, Lcom/cyjh/share/bean/NotifyMsgBean;

    invoke-direct {v2}, Lcom/cyjh/share/bean/NotifyMsgBean;-><init>()V

    .line 71
    iget-wide v3, v1, Lcom/cyjh/share/bean/response/NoticeBean;->NoticeId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cyjh/share/bean/NotifyMsgBean;->ID:Ljava/lang/String;

    .line 72
    iget-object v3, v1, Lcom/cyjh/share/bean/response/NoticeBean;->NoticeTitle:Ljava/lang/String;

    iput-object v3, v2, Lcom/cyjh/share/bean/NotifyMsgBean;->NoticeTitle:Ljava/lang/String;

    .line 73
    iget-object v3, v1, Lcom/cyjh/share/bean/response/NoticeBean;->NoticeContent:Ljava/lang/String;

    iput-object v3, v2, Lcom/cyjh/share/bean/NotifyMsgBean;->NoticeContent:Ljava/lang/String;

    .line 74
    iget-wide v3, v1, Lcom/cyjh/share/bean/response/NoticeBean;->NoticeTime:J

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v3, v4, v5}, Lcom/cyjh/share/util/AppUtils;->timeStamp2Date(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cyjh/share/bean/NotifyMsgBean;->NoticeTime:Ljava/lang/String;

    .line 75
    iget v3, v1, Lcom/cyjh/share/bean/response/NoticeBean;->DescriptionType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cyjh/share/bean/NotifyMsgBean;->DescriptionType:Ljava/lang/String;

    .line 76
    iget-object v3, v1, Lcom/cyjh/share/bean/response/NoticeBean;->NoticeDescription:Ljava/lang/String;

    iput-object v3, v2, Lcom/cyjh/share/bean/NotifyMsgBean;->NoticeDescription:Ljava/lang/String;

    .line 77
    iget v1, v1, Lcom/cyjh/share/bean/response/NoticeBean;->IsShowNoticeBar:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v2, Lcom/cyjh/share/bean/NotifyMsgBean;->IsSendMessage:Z

    .line 78
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/cyjh/share/mvp/presenter/NoticeListPresenter;->mView:Lcom/cyjh/share/mvp/view/PushMessageView;

    invoke-interface {p1, v0}, Lcom/cyjh/share/mvp/view/PushMessageView;->onSuccessfulAcquireNews(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 84
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const-string v0, "zzz"

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.cyjh.share.NoticeListPresenter--uiDataSuccess2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method
