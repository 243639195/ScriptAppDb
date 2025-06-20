.class public Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;
.super Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;
.source "DdyStatisticsRequestPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter$OnResultCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DdyStatisticsRequestPresenter"

.field private static sStatisticsPresenter:Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;


# instance fields
.field private mOnResultCallback:Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter$OnResultCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;
    .locals 2

    .line 31
    sget-object v0, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;->sStatisticsPresenter:Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;

    if-nez v0, :cond_1

    .line 32
    const-class v0, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;->sStatisticsPresenter:Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;

    invoke-direct {v1}, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;-><init>()V

    sput-object v1, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;->sStatisticsPresenter:Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;

    .line 36
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 38
    :cond_1
    :goto_0
    sget-object v0, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;->sStatisticsPresenter:Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;

    return-object v0
.end method

.method private onRequestFailureOperate(ILjava/lang/String;)V
    .locals 3

    .line 66
    sget-object v0, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;->TAG:Ljava/lang/String;

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

    .line 67
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;->mOnResultCallback:Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter$OnResultCallback;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;->mOnResultCallback:Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter$OnResultCallback;

    invoke-interface {v0, p1, p2}, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter$OnResultCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAllRequest()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->stopRequest(Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->stopRequest(Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->stopRequest(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

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

    .line 91
    sget-object v0, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onErrorResponse --> errorMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 92
    invoke-direct {p0, v0, p1}, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;->onRequestFailureOperate(ILjava/lang/String;)V

    return-void
.end method

.method public report(Landroid/content/Context;)V
    .locals 5

    .line 43
    :try_start_0
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getBaseRequestParams(Landroid/content/Context;)Lcom/cyjh/share/bean/request/BaseRequestValueInfo;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/cyjh/share/bean/request/DdyStatisticsRequestParamsInfo;

    invoke-direct {v1, v0}, Lcom/cyjh/share/bean/request/DdyStatisticsRequestParamsInfo;-><init>(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)V

    const/4 v0, 0x1

    .line 45
    iput v0, v1, Lcom/cyjh/share/bean/request/DdyStatisticsRequestParamsInfo;->IsDDYun:I

    .line 46
    iput v0, v1, Lcom/cyjh/share/bean/request/DdyStatisticsRequestParamsInfo;->IsChargeStatistics:I

    .line 47
    new-instance v0, Lcom/cyjh/share/bean/request/DdyStatisticsData;

    const-string v2, "Statistics/Daily"

    invoke-direct {v0, v2, v1}, Lcom/cyjh/share/bean/request/DdyStatisticsData;-><init>(Ljava/lang/String;Lcom/cyjh/share/bean/request/DdyStatisticsRequestParamsInfo;)V

    .line 48
    invoke-static {v0}, Lcom/cyjh/share/util/GsonExUtil;->class2Data(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://localhost:10080/sendData?data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    sget-object v2, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "report --> jsonResultStr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "url="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2, v1}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->sendGetRequest(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    sget-object v0, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report --> ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setCallback(Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter$OnResultCallback;)Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;->mOnResultCallback:Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter$OnResultCallback;

    return-object p0
.end method

.method public uiDataSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 60
    sget-object v0, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uiDataSuccess --> object="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;->mOnResultCallback:Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter$OnResultCallback;

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter;->mOnResultCallback:Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter$OnResultCallback;

    invoke-interface {p1}, Lcom/cyjh/share/mvp/presenter/DdyStatisticsRequestPresenter$OnResultCallback;->onSuccess()V

    :cond_0
    return-void
.end method
