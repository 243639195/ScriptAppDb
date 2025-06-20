.class public Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;
.super Lcom/ds/daisi/activity/BaseActivity;
.source "NoTitleBarWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$RequestErrHandler;
    }
.end annotation


# static fields
.field public static final WEB_VIEW_URL:Ljava/lang/String; = "web_view_url"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mMultiFileCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSingleFileCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mWvContent:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/ds/daisi/activity/BaseActivity;-><init>()V

    .line 36
    const-class v0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->mMultiFileCallback:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->mSingleFileCallback:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method public static deviceCanHandleIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 184
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 185
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 186
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private initData()V
    .locals 6

    .line 58
    invoke-virtual {p0}, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "web_view_url"

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->mWvContent:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    .line 62
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 63
    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 64
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 65
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 66
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 67
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 68
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 69
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    const-string v3, "/data/data/com.ds.daisi/databases/"

    .line 70
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 72
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 74
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x0

    const/16 v5, 0x15

    if-le v3, v5, :cond_0

    .line 76
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 78
    :cond_0
    invoke-static {p0}, Lcom/ds/daisi/util/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, -0x1

    .line 79
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 83
    :goto_0
    iget-object v1, p0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->mWvContent:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 84
    iget-object v1, p0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->mWvContent:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 86
    iget-object v1, p0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->mWvContent:Landroid/webkit/WebView;

    new-instance v2, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$1;

    invoke-direct {v2, p0}, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$1;-><init>(Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 111
    iget-object v1, p0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->mWvContent:Landroid/webkit/WebView;

    new-instance v2, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$2;

    invoke-direct {v2, p0}, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$2;-><init>(Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 146
    iget-object v1, p0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->mWvContent:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f1000ad

    .line 53
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->mWvContent:Landroid/webkit/WebView;

    const v0, 0x7f1000ae

    .line 54
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public static isDeepLink(Ljava/lang/String;)Z
    .locals 0

    .line 169
    invoke-static {p0}, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->isHttpUrl(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isHttpUrl(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "http:"

    .line 176
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/ds/daisi/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040029

    .line 47
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->setContentView(I)V

    .line 48
    invoke-direct {p0}, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->initView()V

    .line 49
    invoke-direct {p0}, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->initData()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 157
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onPause()V

    .line 158
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 151
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onResume()V

    .line 152
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method
