.class public Lcom/ds/daisi/fragment/DescriptionFragment;
.super Lcom/ds/daisi/fragment/BaseFragement;
.source "DescriptionFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DescriptionFragment"


# instance fields
.field private scrollView:Landroid/widget/ScrollView;

.field private tvDescription:Landroid/widget/TextView;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/ds/daisi/fragment/BaseFragement;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 73
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/DescriptionFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001a2

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/ds/daisi/fragment/DescriptionFragment;->scrollView:Landroid/widget/ScrollView;

    const v1, 0x7f1001a4

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/ds/daisi/fragment/DescriptionFragment;->webView:Landroid/webkit/WebView;

    const v1, 0x7f1001a3

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/fragment/DescriptionFragment;->tvDescription:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/ds/daisi/fragment/DescriptionFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 80
    :try_start_0
    iget-object v2, p0, Lcom/ds/daisi/fragment/DescriptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    invoke-virtual {v2}, Lcom/ds/daisi/AppContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "script.rtd"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 81
    iget-object v2, p0, Lcom/ds/daisi/fragment/DescriptionFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 82
    iget-object v2, p0, Lcom/ds/daisi/fragment/DescriptionFragment;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 83
    invoke-direct {p0}, Lcom/ds/daisi/fragment/DescriptionFragment;->webViewLoad()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    iget-object v2, p0, Lcom/ds/daisi/fragment/DescriptionFragment;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 87
    iget-object v1, p0, Lcom/ds/daisi/fragment/DescriptionFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private webViewLoad()V
    .locals 4

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/DescriptionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ds/daisi/constant/Constants;->SD_CARD_SCRIPT_ASSETS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/io/File;

    const-string v2, "script.rtd"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/ds/daisi/fragment/DescriptionFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "webViewLoad --> sdCardRtdFile path ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ds/daisi/AppContext;->isUseSdcardScript:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "file:///android_asset/script.rtd"

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/ds/daisi/fragment/DescriptionFragment;->commonLog:Lcom/ds/daisi/log/CommonLog;

    invoke-virtual {v1, v0}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 98
    iget-object v1, p0, Lcom/ds/daisi/fragment/DescriptionFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getFragmentLayoutId()I
    .locals 1

    const v0, 0x7f04006d

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/ds/daisi/fragment/BaseFragement;->onActivityCreated(Landroid/os/Bundle;)V

    .line 57
    invoke-direct {p0}, Lcom/ds/daisi/fragment/DescriptionFragment;->initView()V

    .line 58
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 115
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onDestroy()V

    .line 116
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 109
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onPause()V

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveRTDFileUIEvent(Lcom/cyjh/share/event/RTDFileUIEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/DescriptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "onReceiveRTDFileUIEvent --> \u66f4\u65b0RTDFileUI"

    invoke-static {p1, v0}, Lcom/cyjh/share/util/SlToast;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    sget-object p1, Lcom/ds/daisi/fragment/DescriptionFragment;->TAG:Ljava/lang/String;

    const-string v0, "onReceiveRTDFileUIEvent --> \u66f4\u65b0RTDFileUI"

    invoke-static {p1, v0}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/ds/daisi/fragment/DescriptionFragment;->webViewLoad()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 103
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onResume()V

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/ds/daisi/fragment/BaseFragement;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 51
    invoke-virtual {p0, p1}, Lcom/ds/daisi/fragment/DescriptionFragment;->setUserVisibleHint(Z)V

    return-void
.end method
