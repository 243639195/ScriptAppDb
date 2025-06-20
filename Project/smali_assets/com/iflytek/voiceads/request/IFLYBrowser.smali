.class public Lcom/iflytek/voiceads/request/IFLYBrowser;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/voiceads/request/IFLYBrowser$a;
    }
.end annotation


# instance fields
.field a:Lcom/iflytek/voiceads/bridge/o;

.field b:Landroid/webkit/WebChromeClient;

.field c:Lcom/iflytek/voiceads/listener/DialogListener;

.field private d:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/ProgressBar;

.field private g:Lcom/iflytek/voiceads/bridge/b;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/iflytek/voiceads/request/b;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/request/b;-><init>(Lcom/iflytek/voiceads/request/IFLYBrowser;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->a:Lcom/iflytek/voiceads/bridge/o;

    new-instance v0, Lcom/iflytek/voiceads/request/c;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/request/c;-><init>(Lcom/iflytek/voiceads/request/IFLYBrowser;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->b:Landroid/webkit/WebChromeClient;

    new-instance v0, Lcom/iflytek/voiceads/request/d;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/request/d;-><init>(Lcom/iflytek/voiceads/request/IFLYBrowser;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->c:Lcom/iflytek/voiceads/listener/DialogListener;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/voiceads/request/IFLYBrowser;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/voiceads/request/IFLYBrowser;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->f:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v4, -0x1

    invoke-virtual {p0, v2}, Lcom/iflytek/voiceads/request/IFLYBrowser;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/iflytek/voiceads/request/IFLYBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    invoke-virtual {p0}, Lcom/iflytek/voiceads/request/IFLYBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->d:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    iget-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->d:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/iflytek/voiceads/request/IFLYBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1010078

    invoke-direct {v1, v2, v5, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->f:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->f:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v1, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->f:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->e:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->f:Landroid/widget/ProgressBar;

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->e:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->d:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/request/IFLYBrowser;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/request/IFLYBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ad_session_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->d:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    iget-object v1, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->a:Lcom/iflytek/voiceads/bridge/o;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->a(Lcom/iflytek/voiceads/bridge/o;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->d:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    iget-object v1, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->d:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    new-instance v1, Lcom/iflytek/voiceads/request/IFLYBrowser$a;

    invoke-direct {v1, p0}, Lcom/iflytek/voiceads/request/IFLYBrowser$a;-><init>(Lcom/iflytek/voiceads/request/IFLYBrowser;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    new-instance v0, Lcom/iflytek/voiceads/bridge/b;

    invoke-virtual {p0}, Lcom/iflytek/voiceads/request/IFLYBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->d:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    invoke-direct {v0, v1, v2}, Lcom/iflytek/voiceads/bridge/b;-><init>(Landroid/content/Context;Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->g:Lcom/iflytek/voiceads/bridge/b;

    iget-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->d:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    iget-object v1, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->g:Lcom/iflytek/voiceads/bridge/b;

    invoke-virtual {v0, v1, v5}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->d:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    invoke-virtual {p0}, Lcom/iflytek/voiceads/request/IFLYBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url_ad"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "IFLYBrowser onDestroy"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->g:Lcom/iflytek/voiceads/bridge/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->g:Lcom/iflytek/voiceads/bridge/b;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/bridge/b;->a()V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->d:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->d:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->d:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->stopLoading()V

    iget-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->d:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->d:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->clearHistory()V

    iget-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->d:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->d:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->removeAllViews()V

    iget-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->d:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IFLYBrowser onDestroy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->g:Lcom/iflytek/voiceads/bridge/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser;->g:Lcom/iflytek/voiceads/bridge/b;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/bridge/b;->a()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
