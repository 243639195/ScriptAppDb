.class public abstract Lcom/cyjh/mobileanjian/ipc/log/a;
.super Ljava/lang/Object;
.source "BaseLog.java"


# static fields
.field protected static final a:Ljava/lang/String; = "http://api.mobileanjian.com/api"


# instance fields
.field protected b:Landroid/content/Context;

.field protected c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/log/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public commit()V
    .locals 5

    .line 31
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/log/a;->a()V

    .line 33
    new-instance v0, Lcom/lidroid/xutils/HttpUtils;

    invoke-direct {v0}, Lcom/lidroid/xutils/HttpUtils;-><init>()V

    .line 34
    new-instance v1, Lcom/lidroid/xutils/http/RequestParams;

    invoke-direct {v1}, Lcom/lidroid/xutils/http/RequestParams;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/log/a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Data"

    .line 36
    invoke-virtual {v1, v3, v2}, Lcom/lidroid/xutils/http/RequestParams;->addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v2, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->GET:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/log/a;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/lidroid/xutils/HttpUtils;->send(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    return-void
.end method
