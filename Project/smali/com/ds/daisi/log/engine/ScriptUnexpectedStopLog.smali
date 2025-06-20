.class public Lcom/ds/daisi/log/engine/ScriptUnexpectedStopLog;
.super Lcom/ds/daisi/log/engine/BaseLog;
.source "ScriptUnexpectedStopLog.java"


# static fields
.field private static final API_NAME:Ljava/lang/String; = "SetErrorLog"


# instance fields
.field private extraLog:Ljava/lang/String;

.field private mqmCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/ds/daisi/log/engine/BaseLog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "connectivity"

    .line 82
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 83
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 84
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "WIFI"

    return-object p0

    :pswitch_1
    const-string p0, "MOBILE"

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "No Network"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected generateLog()Ljava/lang/String;
    .locals 5

    .line 50
    invoke-static {}, Lcom/ds/daisi/log/engine/MetaData;->getInstance()Lcom/ds/daisi/log/engine/MetaData;

    move-result-object v0

    .line 51
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 54
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "PhoneModel"

    .line 55
    iget-object v4, v0, Lcom/ds/daisi/log/engine/MetaData;->model:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "MACMD5"

    .line 56
    iget-object v4, v0, Lcom/ds/daisi/log/engine/MetaData;->macMd5Sum:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "AndroidVersion"

    .line 57
    iget-object v4, v0, Lcom/ds/daisi/log/engine/MetaData;->androidVersion:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ROM"

    .line 58
    iget-object v4, v0, Lcom/ds/daisi/log/engine/MetaData;->romVersion:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "PackageName"

    .line 60
    iget-object v4, v0, Lcom/ds/daisi/log/engine/MetaData;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "AppID"

    .line 61
    iget-object v4, v0, Lcom/ds/daisi/log/engine/MetaData;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "AppVersion"

    .line 62
    iget-object v4, v0, Lcom/ds/daisi/log/engine/MetaData;->elfinVersion:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "Version"

    .line 63
    iget-object v4, v0, Lcom/ds/daisi/log/engine/MetaData;->appVersion:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "IsFree"

    .line 64
    iget-boolean v0, v0, Lcom/ds/daisi/log/engine/MetaData;->isFreeElfin:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "NetworkType"

    .line 65
    iget-object v3, p0, Lcom/ds/daisi/log/engine/ScriptUnexpectedStopLog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/ds/daisi/log/engine/ScriptUnexpectedStopLog;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "MqmCode"

    .line 66
    iget v3, p0, Lcom/ds/daisi/log/engine/ScriptUnexpectedStopLog;->mqmCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "MqmMessage"

    .line 67
    iget v3, p0, Lcom/ds/daisi/log/engine/ScriptUnexpectedStopLog;->mqmCode:I

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/stuff/MqmCode;->getMessageFromCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ExtraMessage"

    .line 68
    iget-object v3, p0, Lcom/ds/daisi/log/engine/ScriptUnexpectedStopLog;->extraLog:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "Data"

    .line 70
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 74
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 77
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initUrl()V
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.mobileanjian.com/api"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SetErrorLog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/log/engine/ScriptUnexpectedStopLog;->urlApi:Ljava/lang/String;

    return-void
.end method

.method public setExtraLog(Ljava/lang/String;)Lcom/ds/daisi/log/engine/ScriptUnexpectedStopLog;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/ds/daisi/log/engine/ScriptUnexpectedStopLog;->extraLog:Ljava/lang/String;

    return-object p0
.end method

.method public setMqmCode(I)Lcom/ds/daisi/log/engine/ScriptUnexpectedStopLog;
    .locals 0

    .line 31
    iput p1, p0, Lcom/ds/daisi/log/engine/ScriptUnexpectedStopLog;->mqmCode:I

    return-object p0
.end method
