.class public Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;
.super Ljava/lang/Object;
.source "UpdateVersionPresenter.java"

# interfaces
.implements Lcom/ds/daisi/mvp/presenters/BasePresenter;


# instance fields
.field private commonLog:Lcom/ds/daisi/log/CommonLog;

.field private mContext:Landroid/content/Context;

.field private updateVersionView:Lcom/ds/daisi/mvp/views/UpdateVersionView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ds/daisi/mvp/views/UpdateVersionView;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;->mContext:Landroid/content/Context;

    .line 33
    new-instance p1, Lcom/ds/daisi/log/CommonLog;

    invoke-direct {p1}, Lcom/ds/daisi/log/CommonLog;-><init>()V

    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;->commonLog:Lcom/ds/daisi/log/CommonLog;

    .line 34
    iput-object p2, p0, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;->updateVersionView:Lcom/ds/daisi/mvp/views/UpdateVersionView;

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;)Lcom/ds/daisi/log/CommonLog;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;->commonLog:Lcom/ds/daisi/log/CommonLog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;)Lcom/ds/daisi/mvp/views/UpdateVersionView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;->updateVersionView:Lcom/ds/daisi/mvp/views/UpdateVersionView;

    return-object p0
.end method


# virtual methods
.method public updateVersion(ZLandroid/content/Context;)V
    .locals 6

    .line 38
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f090122

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f09012d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 41
    iget-object v3, p0, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appid>>>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 42
    iget-object v3, p0, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName>>>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 43
    iget-object v3, p0, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version>>>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 44
    new-instance v3, Lcom/lidroid/xutils/http/RequestParams;

    invoke-direct {v3}, Lcom/lidroid/xutils/http/RequestParams;-><init>()V

    const-string v4, "AppId"

    .line 45
    invoke-virtual {v3, v4, v0}, Lcom/lidroid/xutils/http/RequestParams;->addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PackageName"

    .line 46
    invoke-virtual {v3, v0, v1}, Lcom/lidroid/xutils/http/RequestParams;->addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Version"

    .line 47
    invoke-virtual {v3, v0, v2}, Lcom/lidroid/xutils/http/RequestParams;->addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ds/daisi/net/xutils/XUtilsHttpClient;->getInstence(Landroid/content/Context;)Lcom/lidroid/xutils/HttpUtils;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->GET:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    sget-object v2, Lcom/ds/daisi/net/URL/URLConstant;->UPDATE_URL:Ljava/lang/String;

    new-instance v4, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter$1;-><init>(Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;ZLandroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lidroid/xutils/HttpUtils;->send(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    return-void
.end method
