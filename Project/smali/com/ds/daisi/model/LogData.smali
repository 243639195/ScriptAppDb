.class public Lcom/ds/daisi/model/LogData;
.super Ljava/lang/Object;
.source "LogData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/model/LogData$Data;
    }
.end annotation


# static fields
.field private static final DATA:Ljava/lang/String; = "data"

.field private static logData:Lcom/ds/daisi/model/LogData;


# instance fields
.field private Data:Lcom/ds/daisi/model/LogData$Data;

.field private LogType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "3"

    .line 28
    iput-object v0, p0, Lcom/ds/daisi/model/LogData;->LogType:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/ds/daisi/model/LogData$Data;

    invoke-direct {v0, p1}, Lcom/ds/daisi/model/LogData$Data;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ds/daisi/model/LogData;->Data:Lcom/ds/daisi/model/LogData$Data;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ds/daisi/model/LogData;
    .locals 1

    .line 36
    sget-object v0, Lcom/ds/daisi/model/LogData;->logData:Lcom/ds/daisi/model/LogData;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/ds/daisi/model/LogData;

    invoke-direct {v0, p0}, Lcom/ds/daisi/model/LogData;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ds/daisi/model/LogData;->logData:Lcom/ds/daisi/model/LogData;

    .line 39
    :cond_0
    sget-object p0, Lcom/ds/daisi/model/LogData;->logData:Lcom/ds/daisi/model/LogData;

    return-object p0
.end method


# virtual methods
.method public getData()Lcom/ds/daisi/model/LogData$Data;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/ds/daisi/model/LogData;->Data:Lcom/ds/daisi/model/LogData$Data;

    return-object v0
.end method

.method public getLogType()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/ds/daisi/model/LogData;->LogType:Ljava/lang/String;

    return-object v0
.end method

.method public sendLog(Landroid/content/Context;Lcom/lidroid/xutils/http/callback/RequestCallBack;)V
    .locals 4

    .line 65
    new-instance p2, Lcom/ds/daisi/log/CommonLog;

    invoke-direct {p2}, Lcom/ds/daisi/log/CommonLog;-><init>()V

    .line 66
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 67
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataString>>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 71
    invoke-static {p1}, Lcom/ds/daisi/net/xutils/XUtilsHttpClient;->getInstence(Landroid/content/Context;)Lcom/lidroid/xutils/HttpUtils;

    move-result-object p1

    .line 72
    new-instance v1, Lcom/lidroid/xutils/http/RequestParams;

    invoke-direct {v1}, Lcom/lidroid/xutils/http/RequestParams;-><init>()V

    const-string v2, "data"

    .line 73
    invoke-virtual {v1, v2, v0}, Lcom/lidroid/xutils/http/RequestParams;->addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->GET:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    sget-object v2, Lcom/ds/daisi/net/URL/URLConstant;->LOGURL:Ljava/lang/String;

    new-instance v3, Lcom/ds/daisi/model/LogData$1;

    invoke-direct {v3, p0, p2}, Lcom/ds/daisi/model/LogData$1;-><init>(Lcom/ds/daisi/model/LogData;Lcom/ds/daisi/log/CommonLog;)V

    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/lidroid/xutils/HttpUtils;->send(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    return-void
.end method

.method public setData(Lcom/ds/daisi/model/LogData$Data;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/ds/daisi/model/LogData;->Data:Lcom/ds/daisi/model/LogData$Data;

    return-void
.end method

.method public setLogType(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/ds/daisi/model/LogData;->LogType:Ljava/lang/String;

    return-void
.end method
