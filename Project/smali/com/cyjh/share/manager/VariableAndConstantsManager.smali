.class public Lcom/cyjh/share/manager/VariableAndConstantsManager;
.super Ljava/lang/Object;
.source "VariableAndConstantsManager.java"


# static fields
.field public static sCurrentTimestamp:J

.field private static sVariableAndConstantManager:Lcom/cyjh/share/manager/VariableAndConstantsManager;


# instance fields
.field public mAliCloudServerResponse:Lcom/cyjh/share/bean/response/AliCloudServerResponse;

.field private mContext:Landroid/content/Context;

.field public mDeviceInfo:Lcom/cyjh/share/bean/request/DeviceInfo;

.field public templateType:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/cyjh/share/bean/request/DeviceInfo;

    invoke-direct {v0}, Lcom/cyjh/share/bean/request/DeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/cyjh/share/manager/VariableAndConstantsManager;->mDeviceInfo:Lcom/cyjh/share/bean/request/DeviceInfo;

    return-void
.end method

.method public static getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;
    .locals 2

    .line 52
    sget-object v0, Lcom/cyjh/share/manager/VariableAndConstantsManager;->sVariableAndConstantManager:Lcom/cyjh/share/manager/VariableAndConstantsManager;

    if-nez v0, :cond_1

    .line 53
    const-class v0, Lcom/cyjh/share/manager/VariableAndConstantsManager;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/cyjh/share/manager/VariableAndConstantsManager;->sVariableAndConstantManager:Lcom/cyjh/share/manager/VariableAndConstantsManager;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/cyjh/share/manager/VariableAndConstantsManager;

    invoke-direct {v1}, Lcom/cyjh/share/manager/VariableAndConstantsManager;-><init>()V

    sput-object v1, Lcom/cyjh/share/manager/VariableAndConstantsManager;->sVariableAndConstantManager:Lcom/cyjh/share/manager/VariableAndConstantsManager;

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 59
    :cond_1
    :goto_0
    sget-object v0, Lcom/cyjh/share/manager/VariableAndConstantsManager;->sVariableAndConstantManager:Lcom/cyjh/share/manager/VariableAndConstantsManager;

    return-object v0
.end method

.method private getRandomInt()I
    .locals 2

    .line 106
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x8

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method private toDesJson(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    invoke-static {p1}, Lcom/cyjh/share/util/GsonExUtil;->class2Data(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 123
    :cond_0
    invoke-static {p1, p2}, Lcom/cyjh/share/util/SignUtil;->des(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getBaseRequestParams(Landroid/content/Context;)Lcom/cyjh/share/bean/request/BaseRequestValueInfo;
    .locals 5

    .line 64
    new-instance v0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;

    invoke-direct {v0}, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/cyjh/share/manager/VariableAndConstantsManager;->mDeviceInfo:Lcom/cyjh/share/bean/request/DeviceInfo;

    iget-object v1, v1, Lcom/cyjh/share/bean/request/DeviceInfo;->DeviceCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cyjh/share/manager/VariableAndConstantsManager;->mDeviceInfo:Lcom/cyjh/share/bean/request/DeviceInfo;

    iget-object v1, v1, Lcom/cyjh/share/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    :cond_0
    invoke-static {p1}, Lcom/cyjh/share/util/AppUtils;->acquireDevicesId(Landroid/content/Context;)Lcom/cyjh/share/bean/request/DeviceInfo;

    move-result-object p1

    .line 67
    iget-object v1, p0, Lcom/cyjh/share/manager/VariableAndConstantsManager;->mDeviceInfo:Lcom/cyjh/share/bean/request/DeviceInfo;

    iget-object v2, p1, Lcom/cyjh/share/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    iput-object v2, v1, Lcom/cyjh/share/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/cyjh/share/manager/VariableAndConstantsManager;->mDeviceInfo:Lcom/cyjh/share/bean/request/DeviceInfo;

    iget-object p1, p1, Lcom/cyjh/share/bean/request/DeviceInfo;->DeviceCode:Ljava/lang/String;

    iput-object p1, v1, Lcom/cyjh/share/bean/request/DeviceInfo;->DeviceCode:Ljava/lang/String;

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/cyjh/share/manager/VariableAndConstantsManager;->mDeviceInfo:Lcom/cyjh/share/bean/request/DeviceInfo;

    iget-object p1, p1, Lcom/cyjh/share/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    iput-object p1, v0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->DeviceId:Ljava/lang/String;

    .line 71
    iget-object p1, p0, Lcom/cyjh/share/manager/VariableAndConstantsManager;->mDeviceInfo:Lcom/cyjh/share/bean/request/DeviceInfo;

    iget-object p1, p1, Lcom/cyjh/share/bean/request/DeviceInfo;->DeviceCode:Ljava/lang/String;

    iput-object p1, v0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->DeviceCode:Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/cyjh/share/config/MyConfig;->getTempVersionNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->TemplateVersion:Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/cyjh/share/config/MyConfig;->getAppid()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->AppId:J

    .line 80
    invoke-static {}, Lcom/cyjh/share/config/MyConfig;->getTemplateFileId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->TemplateFileId:J

    .line 81
    invoke-static {}, Lcom/cyjh/share/config/MyConfig;->getAppVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->AppVersion:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/cyjh/share/config/MyConfig;->getAppInfo()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->AppInfo:Ljava/lang/String;

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    sput-wide v1, Lcom/cyjh/share/manager/VariableAndConstantsManager;->sCurrentTimestamp:J

    .line 84
    sget-wide v1, Lcom/cyjh/share/manager/VariableAndConstantsManager;->sCurrentTimestamp:J

    iput-wide v1, v0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->ClientTimestamp:J

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/cyjh/share/manager/VariableAndConstantsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public isAppFree()Z
    .locals 2

    .line 127
    iget v0, p0, Lcom/cyjh/share/manager/VariableAndConstantsManager;->templateType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/share/manager/VariableAndConstantsManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public toMapPrames(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cyjh/share/bean/request/BaseRequestValueInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    new-instance v0, Lcom/cyjh/share/bean/SignaClass;

    invoke-direct {v0}, Lcom/cyjh/share/bean/SignaClass;-><init>()V

    .line 94
    invoke-static {p1}, Lcom/cyjh/share/util/GsonExUtil;->class2Data(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/cyjh/share/bean/SignaClass;->SignContent:Ljava/lang/String;

    .line 95
    iget-object p1, v0, Lcom/cyjh/share/bean/SignaClass;->SignContent:Ljava/lang/String;

    invoke-static {p1}, Lcom/cyjh/share/util/SignUtil;->rsaSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/cyjh/share/bean/SignaClass;->Signature:Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getRandomInt()I

    move-result p1

    .line 97
    invoke-direct {p0, v0, p1}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->toDesJson(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Data"

    .line 99
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "R"

    .line 100
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 102
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toRecognitionGuideWebViewPrams(Ljava/lang/String;Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)Ljava/lang/String;
    .locals 3

    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string p1, "?AppId="

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p2, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->AppId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string p1, "&AppVersion="

    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p2, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->AppVersion:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "&PlatformId="

    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/cyjh/share/helper/PhoneConfigHelper;->get()Lcom/cyjh/share/helper/PhoneConfigHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/share/helper/PhoneConfigHelper;->getCloudPhoneType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 140
    :try_start_2
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 142
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 143
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
