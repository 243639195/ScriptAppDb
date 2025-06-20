.class public Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;
.super Lcom/ds/daisi/activity/BaseActivity;
.source "H5LinkJumpPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity$OnLeftBackListener;
    }
.end annotation


# instance fields
.field private mRootLayout:Landroid/widget/LinearLayout;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/ds/daisi/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private initData(Ljava/lang/String;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 57
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 58
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 59
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity$1;

    invoke-direct {v1, p0}, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity$1;-><init>(Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 69
    iget-object v0, p0, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private initView(Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f1000b1

    .line 41
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ds/daisi/customview/TitleView;

    .line 42
    invoke-virtual {v0, p1}, Lcom/ds/daisi/customview/TitleView;->setTitleText(Ljava/lang/String;)V

    const p1, 0x7f0200c2

    .line 43
    invoke-virtual {v0, p1}, Lcom/ds/daisi/customview/TitleView;->setleftImage(I)V

    const/16 p1, 0x8

    .line 44
    invoke-virtual {v0, p1}, Lcom/ds/daisi/customview/TitleView;->setVisibilityRightImage(I)V

    const/4 p1, 0x0

    .line 45
    invoke-virtual {v0, p1}, Lcom/ds/daisi/customview/TitleView;->setVisibilityTvRight(I)V

    .line 46
    new-instance p1, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity$OnLeftBackListener;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity$OnLeftBackListener;-><init>(Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity$1;)V

    invoke-virtual {v0, p1}, Lcom/ds/daisi/customview/TitleView;->setOnLeftImageViewListener(Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;)V

    const p1, 0x7f1000b2

    .line 47
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;->mRootLayout:Landroid/widget/LinearLayout;

    .line 48
    new-instance p1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;->mWebView:Landroid/webkit/WebView;

    .line 49
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51
    iget-object v0, p0, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;->mRootLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 30
    invoke-super {p0, p1}, Lcom/ds/daisi/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040022

    .line 31
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 33
    const-class v0, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    const-class v1, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-direct {p0, v0}, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;->initView(Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;->initData(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 97
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onDestroy()V

    .line 98
    iget-object v0, p0, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;->mRootLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 100
    iget-object v0, p0, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 101
    iget-object v0, p0, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;->mWebView:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 91
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onPause()V

    .line 92
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 85
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onResume()V

    .line 86
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method
