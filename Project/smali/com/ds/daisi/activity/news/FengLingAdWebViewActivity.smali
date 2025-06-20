.class public Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;
.super Lcom/ds/daisi/activity/BaseActivity;
.source "FengLingAdWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity$RequestErrHandler;
    }
.end annotation


# static fields
.field public static final JUMP_ELFIN_FREE_PAGE:I = 0x2

.field public static final JUMP_FULLSCREEN_TWO_AD_PAGE:I = 0x1

.field public static final NO_JUMP_ACTION:I = 0x0

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final WEB_VIEW_URL:Ljava/lang/String; = "web_view_url"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mIvHeaderLeft:Landroid/widget/ImageView;

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

.field private mType:I

.field private mWvContent:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/ds/daisi/activity/BaseActivity;-><init>()V

    .line 38
    const-class v0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->mMultiFileCallback:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->mSingleFileCallback:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->finishOperate()V

    return-void
.end method

.method public static deviceCanHandleIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 202
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 203
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 204
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private finishOperate()V
    .locals 2

    .line 216
    iget v0, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 217
    invoke-static {p0}, Lcom/ds/daisi/util/IntentUtils;->toCallFullscreenTwoAdActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 218
    :cond_0
    iget v0, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 219
    invoke-static {p0}, Lcom/ds/daisi/util/IntentUtils;->toCallElfinPayActivity(Landroid/content/Context;)V

    .line 220
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->finish()V

    return-void
.end method

.method private initData()V
    .locals 6

    .line 68
    invoke-virtual {p0}, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "web_view_url"

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    const/4 v3, 0x0

    .line 70
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->mType:I

    .line 72
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->mWvContent:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    .line 73
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 74
    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 75
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 76
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 77
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 78
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 79
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 80
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    const-string v4, "/data/data/com.ds.daisi/databases/"

    .line 81
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 83
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 85
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-le v4, v5, :cond_0

    .line 87
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/ds/daisi/util/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, -0x1

    .line 90
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->mWvContent:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 95
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->mWvContent:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 97
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->mWvContent:Landroid/webkit/WebView;

    new-instance v2, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity$1;

    invoke-direct {v2, p0}, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity$1;-><init>(Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 122
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->mWvContent:Landroid/webkit/WebView;

    new-instance v2, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity$2;

    invoke-direct {v2, p0}, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity$2;-><init>(Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 157
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->mWvContent:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->mIvHeaderLeft:Landroid/widget/ImageView;

    new-instance v1, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity$3;

    invoke-direct {v1, p0}, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity$3;-><init>(Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f1000ad

    .line 62
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->mWvContent:Landroid/webkit/WebView;

    const v0, 0x7f1000ae

    .line 63
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f1000ac

    .line 64
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->mIvHeaderLeft:Landroid/widget/ImageView;

    return-void
.end method

.method public static isDeepLink(Ljava/lang/String;)Z
    .locals 0

    .line 187
    invoke-static {p0}, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->isHttpUrl(Ljava/lang/String;)Z

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

    .line 194
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
.method public onBackPressed()V
    .locals 0

    .line 212
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->finishOperate()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/ds/daisi/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f04001f

    .line 56
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->setContentView(I)V

    .line 57
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->initView()V

    .line 58
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->initData()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 175
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onPause()V

    .line 176
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 169
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onResume()V

    .line 170
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method
