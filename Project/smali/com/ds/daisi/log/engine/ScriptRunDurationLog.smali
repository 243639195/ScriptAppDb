.class public Lcom/ds/daisi/log/engine/ScriptRunDurationLog;
.super Lcom/ds/daisi/log/engine/BaseLog;
.source "ScriptRunDurationLog.java"


# static fields
.field private static final API_NAME:Ljava/lang/String; = "SetOperationLog"

.field private static final LOG_TYPE:I = 0x4


# instance fields
.field private scriptStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/ds/daisi/log/engine/BaseLog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected generateLog()Ljava/lang/String;
    .locals 9

    .line 42
    invoke-static {}, Lcom/ds/daisi/log/engine/MetaData;->getInstance()Lcom/ds/daisi/log/engine/MetaData;

    move-result-object v0

    .line 43
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 46
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "PhoneModel"

    .line 47
    iget-object v4, v0, Lcom/ds/daisi/log/engine/MetaData;->model:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "MACMD5"

    .line 48
    iget-object v4, v0, Lcom/ds/daisi/log/engine/MetaData;->macMd5Sum:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "AndroidVersion"

    .line 49
    iget-object v4, v0, Lcom/ds/daisi/log/engine/MetaData;->androidVersion:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ROM"

    .line 50
    iget-object v4, v0, Lcom/ds/daisi/log/engine/MetaData;->romVersion:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "PackageName"

    .line 52
    iget-object v4, v0, Lcom/ds/daisi/log/engine/MetaData;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "IsNew"

    .line 53
    iget-boolean v4, v0, Lcom/ds/daisi/log/engine/MetaData;->isNewUser:Z

    if-eqz v4, :cond_0

    const-string v4, "1"

    goto :goto_0

    :cond_0
    const-string v4, "0"

    :goto_0
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "AppID"

    .line 54
    iget-object v4, v0, Lcom/ds/daisi/log/engine/MetaData;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "AppVersion"

    .line 55
    iget-object v4, v0, Lcom/ds/daisi/log/engine/MetaData;->elfinVersion:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "Version"

    .line 56
    iget-object v4, v0, Lcom/ds/daisi/log/engine/MetaData;->appVersion:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "IsFree"

    .line 57
    iget-boolean v0, v0, Lcom/ds/daisi/log/engine/MetaData;->isFreeElfin:Z

    if-eqz v0, :cond_1

    const-string v0, "1"

    goto :goto_1

    :cond_1
    const-string v0, "0"

    :goto_1
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "UsedTime"

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/ds/daisi/log/engine/ScriptRunDurationLog;->scriptStartTime:J

    const/4 v7, 0x0

    sub-long v7, v3, v5

    const-wide/16 v3, 0x3e8

    div-long/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "LogType"

    const/4 v3, 0x4

    .line 60
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "Data"

    .line 61
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 65
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 68
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initUrl()V
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.mobileanjian.com/api"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SetOperationLog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/log/engine/ScriptRunDurationLog;->urlApi:Ljava/lang/String;

    return-void
.end method

.method public setScriptStartTime(J)Lcom/ds/daisi/log/engine/ScriptRunDurationLog;
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/ds/daisi/log/engine/ScriptRunDurationLog;->scriptStartTime:J

    return-object p0
.end method
