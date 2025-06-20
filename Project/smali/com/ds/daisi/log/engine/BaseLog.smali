.class public abstract Lcom/ds/daisi/log/engine/BaseLog;
.super Ljava/lang/Object;
.source "BaseLog.java"


# static fields
.field protected static final BASE_URL:Ljava/lang/String; = "http://api.mobileanjian.com/api"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected urlApi:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/ds/daisi/log/engine/BaseLog;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 6

    .line 32
    invoke-virtual {p0}, Lcom/ds/daisi/log/engine/BaseLog;->initUrl()V

    .line 34
    new-instance v0, Lcom/lidroid/xutils/HttpUtils;

    invoke-direct {v0}, Lcom/lidroid/xutils/HttpUtils;-><init>()V

    .line 35
    new-instance v1, Lcom/lidroid/xutils/http/RequestParams;

    invoke-direct {v1}, Lcom/lidroid/xutils/http/RequestParams;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/ds/daisi/log/engine/BaseLog;->generateLog()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zzz"

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BaseLopg--jsonLog--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Data"

    .line 38
    invoke-virtual {v1, v3, v2}, Lcom/lidroid/xutils/http/RequestParams;->addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v2, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->GET:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    iget-object v3, p0, Lcom/ds/daisi/log/engine/BaseLog;->urlApi:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/lidroid/xutils/HttpUtils;->send(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    return-void
.end method

.method protected abstract generateLog()Ljava/lang/String;
.end method

.method protected abstract initUrl()V
.end method
