.class public Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;
.super Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;
.source "AppStatisticsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnClickScriptRunCallback;,
        Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnCallback;
    }
.end annotation


# static fields
.field private static sStatisticsPresenter:Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;


# instance fields
.field private mCallbackSucc:Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnCallback;

.field private mClickScriptRunCallback:Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnClickScriptRunCallback;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;-><init>()V

    return-void
.end method

.method private callbackScriptRunFail()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->mClickScriptRunCallback:Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnClickScriptRunCallback;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->mClickScriptRunCallback:Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnClickScriptRunCallback;

    invoke-interface {v0}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnClickScriptRunCallback;->onCallbackFail()V

    :cond_0
    return-void
.end method

.method public static getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;
    .locals 2

    .line 39
    sget-object v0, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->sStatisticsPresenter:Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->sStatisticsPresenter:Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    invoke-direct {v1}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;-><init>()V

    sput-object v1, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->sStatisticsPresenter:Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    .line 44
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 46
    :cond_1
    :goto_0
    sget-object v0, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->sStatisticsPresenter:Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    return-object v0
.end method


# virtual methods
.method public cancelAllStatistics()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->stopRequest(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->stopRequest(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->stopRequest(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public cleanCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->mCallbackSucc:Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnCallback;

    .line 145
    iput-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->mClickScriptRunCallback:Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnClickScriptRunCallback;

    return-void
.end method

.method public loadAd(Landroid/content/Context;IIJ)V
    .locals 2

    .line 51
    :try_start_0
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getBaseRequestParams(Landroid/content/Context;)Lcom/cyjh/share/bean/request/BaseRequestValueInfo;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/cyjh/share/bean/request/StatisticsRequestParamsInfo;

    invoke-direct {v1, v0}, Lcom/cyjh/share/bean/request/StatisticsRequestParamsInfo;-><init>(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)V

    .line 53
    iput p3, v1, Lcom/cyjh/share/bean/request/StatisticsRequestParamsInfo;->Action:I

    .line 54
    iput p2, v1, Lcom/cyjh/share/bean/request/StatisticsRequestParamsInfo;->BussinessId:I

    .line 55
    iput-wide p4, v1, Lcom/cyjh/share/bean/request/StatisticsRequestParamsInfo;->RelationId:J

    .line 56
    invoke-static {}, Lcom/cyjh/share/helper/PhoneConfigHelper;->get()Lcom/cyjh/share/helper/PhoneConfigHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cyjh/share/helper/PhoneConfigHelper;->getCloudPhoneType()I

    move-result p2

    iput p2, v1, Lcom/cyjh/share/bean/request/StatisticsRequestParamsInfo;->CloudPhoneType:I

    const-string p2, "zzz"

    const-string p3, "com.cyjh.share.AppStatisticsPresenter--loadAd:"

    .line 57
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->toMapPrames(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "zzz"

    .line 59
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "com.cyjh.share.AppStatisticsPresenter--parasMap:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "Statistics"

    .line 60
    invoke-static {p3}, Lcom/cyjh/share/config/MyConfig;->getBuilderPay(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    .line 61
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "zzz"

    .line 62
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "com.cyjh.share.AppStatisticsPresenter--loadAd:"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p4, p0, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p1, p5, p3, p2}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->sendPostRequest(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "zzz"

    .line 65
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "com.cyjh.share.AppStatisticsPresenter--loadAd:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public loadScriptStartRunStatistics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 156
    :try_start_0
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getBaseRequestParams(Landroid/content/Context;)Lcom/cyjh/share/bean/request/BaseRequestValueInfo;

    move-result-object v0

    .line 157
    new-instance v1, Lcom/cyjh/share/bean/request/ScriptStartRunParams;

    invoke-direct {v1, v0}, Lcom/cyjh/share/bean/request/ScriptStartRunParams;-><init>(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)V

    .line 158
    iput-object p2, v1, Lcom/cyjh/share/bean/request/ScriptStartRunParams;->RegCode:Ljava/lang/String;

    .line 159
    iget-wide v2, v1, Lcom/cyjh/share/bean/request/ScriptStartRunParams;->ClientTimestamp:J

    sput-wide v2, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->sClientTime:J

    const-string p2, "zzz"

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.cyjh.share.AppStatisticsPresenter--loadScriptStartRunStatistics:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/cyjh/share/bean/request/ScriptStartRunParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->toMapPrames(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p2

    .line 163
    sget-boolean v0, Lcom/cyjh/share/util/ErrorUtil;->debugMode:Z

    if-eqz v0, :cond_0

    const-string v0, "Data"

    .line 164
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "R"

    .line 165
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 166
    invoke-static {p1}, Lcom/cyjh/share/util/ErrorUtil;->getErrorFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadScriptStartRunStatistics --> data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",r="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Lcom/cyjh/share/util/ErrorUtil;->writeProcessedStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_0
    const-string v0, "Script"

    .line 168
    invoke-static {v0, p3}, Lcom/cyjh/share/config/MyConfig;->getBuilderPay(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "zzz"

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.cyjh.share.AppStatisticsPresenter--loadScriptStartRunStatistics:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p2}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->sendPostRequest(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "zzz"

    .line 172
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "com.cyjh.share.AppStatisticsPresenter--loadScriptStartRunStatistics:"

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

.method public loadScriptStopRunStatistics(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 184
    :try_start_0
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getBaseRequestParams(Landroid/content/Context;)Lcom/cyjh/share/bean/request/BaseRequestValueInfo;

    move-result-object v0

    .line 185
    new-instance v1, Lcom/cyjh/share/bean/request/ScriptStopRunParams;

    invoke-direct {v1, v0}, Lcom/cyjh/share/bean/request/ScriptStopRunParams;-><init>(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)V

    .line 186
    iput-object p2, v1, Lcom/cyjh/share/bean/request/ScriptStopRunParams;->RunGuid:Ljava/lang/String;

    .line 187
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->toMapPrames(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p2

    const-string v0, "Script"

    const-string v1, "Stop"

    .line 188
    invoke-static {v0, v1}, Lcom/cyjh/share/config/MyConfig;->getBuilderPay(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0, p2}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->sendPostRequest(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "zzz"

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppStatisticsPresenter--loadScriptStopRunStatistics:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct {p0}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->callbackScriptRunFail()V

    :goto_0
    return-void
.end method

.method public onCancel()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->stopRequest(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onErrorResponse(Ljava/lang/String;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->callbackScriptRunFail()V

    return-void
.end method

.method public setCallback(Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnCallback;)Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->mCallbackSucc:Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnCallback;

    return-object p0
.end method

.method public setClickScriptRunCallback(Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnClickScriptRunCallback;)Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->mClickScriptRunCallback:Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnClickScriptRunCallback;

    return-object p0
.end method

.method public uiDataSuccess(Ljava/lang/Object;)V
    .locals 8

    const-string v0, "zzz"

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.cyjh.share.AppStatisticsPresenter--uiDataSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->mCallbackSucc:Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnCallback;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->mCallbackSucc:Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnCallback;

    invoke-interface {v0, p1}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnCallback;->onCallbackSuc(Ljava/lang/Object;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->mClickScriptRunCallback:Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnClickScriptRunCallback;

    if-eqz v0, :cond_2

    .line 77
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 78
    const-class v1, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;

    .line 79
    invoke-static {v0, v1}, Lcom/cyjh/share/util/GsonExUtil;->parsData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;

    .line 80
    sget-wide v1, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->sClientTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    sget-wide v1, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->sClientTime:J

    iget-object v5, v0, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/share/bean/response/ScriptStartRunInfo;

    iget-wide v5, v5, Lcom/cyjh/share/bean/response/ScriptStartRunInfo;->ClientTimestamp:J

    cmp-long v7, v1, v5

    if-eqz v7, :cond_1

    const/16 p1, 0x25a

    .line 82
    iput p1, v0, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->Code:I

    .line 83
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/cyjh/share/R$string;->check_sign_fail:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->Message:Ljava/lang/String;

    .line 85
    invoke-static {v0}, Lcom/cyjh/share/util/GsonExUtil;->class2Data(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 86
    sput-wide v3, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->sClientTime:J

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->mClickScriptRunCallback:Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnClickScriptRunCallback;

    invoke-interface {v0, p1}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnClickScriptRunCallback;->onCallbackSuc(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 91
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const-string v0, "zzz"

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.cyjh.share.AppStatisticsPresenter--uiDataSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->callbackScriptRunFail()V

    :cond_2
    :goto_0
    return-void
.end method
