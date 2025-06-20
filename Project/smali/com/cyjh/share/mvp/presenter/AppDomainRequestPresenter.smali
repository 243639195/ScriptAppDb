.class public Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;
.super Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;
.source "AppDomainRequestPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter$OnResultCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppDomainRequestPresenter"

.field private static sStatisticsPresenter:Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;


# instance fields
.field private mOnResultCallback:Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter$OnResultCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;
    .locals 2

    .line 35
    sget-object v0, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->sStatisticsPresenter:Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;

    if-nez v0, :cond_1

    .line 36
    const-class v0, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->sStatisticsPresenter:Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;

    invoke-direct {v1}, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;-><init>()V

    sput-object v1, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->sStatisticsPresenter:Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;

    .line 40
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 42
    :cond_1
    :goto_0
    sget-object v0, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->sStatisticsPresenter:Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;

    return-object v0
.end method

.method private onRequestFailureOperate(ILjava/lang/String;)V
    .locals 3

    .line 104
    sget-object v0, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestFailureOperate --> code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->mOnResultCallback:Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter$OnResultCallback;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->mOnResultCallback:Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter$OnResultCallback;

    invoke-interface {v0, p1, p2}, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter$OnResultCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAllRequest()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->stopRequest(Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->stopRequest(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->stopRequest(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getDomainNameFirst(Landroid/content/Context;Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter$OnResultCallback;)V
    .locals 3

    .line 47
    :try_start_0
    iput-object p2, p0, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->mOnResultCallback:Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter$OnResultCallback;

    .line 48
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getBaseRequestParams(Landroid/content/Context;)Lcom/cyjh/share/bean/request/BaseRequestValueInfo;

    move-result-object p2

    .line 49
    invoke-static {p1}, Lcom/cyjh/share/util/CommonUtil;->getBaseParamsFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 50
    invoke-virtual {p2}, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cyjh/share/util/CommonUtil;->writeDataToFile(Ljava/io/File;Ljava/lang/String;Z)V

    .line 51
    new-instance v0, Lcom/cyjh/share/bean/request/DomainNameRequestParamsInfo;

    invoke-direct {v0, p2}, Lcom/cyjh/share/bean/request/DomainNameRequestParamsInfo;-><init>(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)V

    .line 52
    sget-object p2, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDomainNameFirst --> domainNameRequestParams="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cyjh/share/bean/request/DomainNameRequestParamsInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->toMapPrames(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p2

    const-string v0, "http://app.mobileanjian.com/AppConfig"

    .line 55
    iget-object v1, p0, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0, p2}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->sendPostRequest(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 57
    sget-object p2, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDomainNameFirst --> exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getDomainNameSecond(Landroid/content/Context;Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter$OnResultCallback;)V
    .locals 3

    .line 63
    :try_start_0
    iput-object p2, p0, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->mOnResultCallback:Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter$OnResultCallback;

    .line 64
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getBaseRequestParams(Landroid/content/Context;)Lcom/cyjh/share/bean/request/BaseRequestValueInfo;

    move-result-object p2

    .line 65
    new-instance v0, Lcom/cyjh/share/bean/request/DomainNameRequestParamsInfo;

    invoke-direct {v0, p2}, Lcom/cyjh/share/bean/request/DomainNameRequestParamsInfo;-><init>(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)V

    .line 66
    sget-object p2, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDomainNameSecond --> domainNameRequestParams="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cyjh/share/bean/request/DomainNameRequestParamsInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->toMapPrames(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p2

    const-string v0, "http://app.51moba.com/AppConfig"

    .line 69
    iget-object v1, p0, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0, p2}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->sendPostRequest(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 71
    sget-object p2, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDomainNameSecond --> exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCancel()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

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

    .line 130
    sget-object v0, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onErrorResponse --> errorMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 131
    invoke-direct {p0, v0, p1}, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->onRequestFailureOperate(ILjava/lang/String;)V

    return-void
.end method

.method public setCallback(Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter$OnResultCallback;)Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->mOnResultCallback:Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter$OnResultCallback;

    return-object p0
.end method

.method public uiDataSuccess(Ljava/lang/Object;)V
    .locals 4

    .line 78
    sget-object v0, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uiDataSuccess --> object="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    .line 81
    :try_start_0
    check-cast p1, Ljava/lang/String;

    .line 82
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Code"

    .line 83
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v2, "Message"

    .line 84
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc8

    if-ne p1, v3, :cond_0

    const-string p1, "Data"

    .line 86
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/cyjh/share/bean/response/DomainResult;

    invoke-static {p1, v1}, Lcom/cyjh/share/util/GsonExUtil;->parsData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/share/bean/response/DomainResult;

    .line 90
    iget-object v1, p0, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->mOnResultCallback:Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter$OnResultCallback;

    if-eqz v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->mOnResultCallback:Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter$OnResultCallback;

    invoke-interface {v1, p1}, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter$OnResultCallback;->onSuccess(Lcom/cyjh/share/bean/response/DomainResult;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->onRequestFailureOperate(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 95
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 96
    sget-object v1, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uiDataSuccess --> exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->onRequestFailureOperate(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "\u540e\u53f0\u8fd4\u56de\u6570\u636e\u4e3a\u7a7a\uff01"

    .line 100
    invoke-direct {p0, v0, p1}, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->onRequestFailureOperate(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
