.class public Lcom/ds/daisi/dialog/ScriptRTDDialog;
.super Lcom/ds/daisi/dialog/BaseDialog;
.source "ScriptRTDDialog.java"


# instance fields
.field private mTextvViewNoRtd:Landroid/widget/TextView;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b0131

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/ds/daisi/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 32
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptRTDDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7f6

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 34
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptRTDDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 36
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptRTDDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d5

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptRTDDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 40
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptRTDDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d2

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/dialog/ScriptRTDDialog;FF)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/ds/daisi/dialog/ScriptRTDDialog;->convertScreen(FF)V

    return-void
.end method

.method private convertScreen(FF)V
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptRTDDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptRTDDialog;->dismiss()V

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ds/daisi/dialog/ScriptRTDDialog$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/ds/daisi/dialog/ScriptRTDDialog$2;-><init>(Lcom/ds/daisi/dialog/ScriptRTDDialog;FF)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private initEvent()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptRTDDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    new-instance v1, Lcom/ds/daisi/dialog/ScriptRTDDialog$1;

    invoke-direct {v1, p0}, Lcom/ds/daisi/dialog/ScriptRTDDialog$1;-><init>(Lcom/ds/daisi/dialog/ScriptRTDDialog;)V

    invoke-virtual {v0, v1}, Lcom/ds/daisi/AppContext;->setScreenConversion(Lcom/ds/daisi/AppContext$ScreenOrientationConversion;)V

    return-void
.end method

.method private initView()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/ds/daisi/dialog/ScriptRTDDialog;->initWebView()V

    return-void
.end method

.method private initWebView()V
    .locals 2

    const v0, 0x7f100137

    .line 83
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/ScriptRTDDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/dialog/ScriptRTDDialog;->mTextvViewNoRtd:Landroid/widget/TextView;

    const v0, 0x7f100138

    .line 84
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/ScriptRTDDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/ds/daisi/dialog/ScriptRTDDialog;->mWebView:Landroid/webkit/WebView;

    .line 85
    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptRTDDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptRTDDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    invoke-virtual {v0}, Lcom/ds/daisi/AppContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "script.rtd"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    const-string v0, "file:///android_asset/script.rtd"

    .line 89
    iget-object v1, p0, Lcom/ds/daisi/dialog/ScriptRTDDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptRTDDialog;->mWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptRTDDialog;->mTextvViewNoRtd:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/ds/daisi/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040057

    .line 48
    invoke-virtual {p0, p1}, Lcom/ds/daisi/dialog/ScriptRTDDialog;->setContentView(I)V

    const p1, 0x3dcccccd    # 0.1f

    .line 49
    invoke-virtual {p0, p1}, Lcom/ds/daisi/dialog/ScriptRTDDialog;->setBlurEffect(F)V

    .line 51
    iget-object p1, p0, Lcom/ds/daisi/dialog/ScriptRTDDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-boolean p1, p1, Lcom/ds/daisi/AppContext;->checkedScreenOrientation:Z

    const v0, 0x3f666666    # 0.9f

    if-eqz p1, :cond_0

    const p1, 0x3f4ccccd    # 0.8f

    .line 52
    invoke-virtual {p0, v0, p1}, Lcom/ds/daisi/dialog/ScriptRTDDialog;->setDialogSize(FF)V

    goto :goto_0

    :cond_0
    const p1, 0x3f19999a    # 0.6f

    .line 54
    invoke-virtual {p0, v0, p1}, Lcom/ds/daisi/dialog/ScriptRTDDialog;->setDialogSize(FF)V

    .line 56
    :goto_0
    invoke-direct {p0}, Lcom/ds/daisi/dialog/ScriptRTDDialog;->initView()V

    .line 57
    invoke-direct {p0}, Lcom/ds/daisi/dialog/ScriptRTDDialog;->initEvent()V

    return-void
.end method
