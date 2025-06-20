.class public Lcom/iflytek/voiceads/bridge/DSBridgeWebView;
.super Landroid/webkit/WebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/voiceads/bridge/DSBridgeWebView$a;,
        Lcom/iflytek/voiceads/bridge/DSBridgeWebView$c;,
        Lcom/iflytek/voiceads/bridge/DSBridgeWebView$b;
    }
.end annotation


# static fields
.field private static c:Z


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/iflytek/voiceads/bridge/n;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/webkit/WebViewClient;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Landroid/webkit/WebChromeClient;

.field private h:Lcom/iflytek/voiceads/bridge/o;

.field private volatile i:Z

.field private j:Lcom/iflytek/voiceads/bridge/DSBridgeWebView$c;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/voiceads/bridge/DSBridgeWebView$a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/iflytek/voiceads/bridge/DSBridgeWebView$b;

.field private m:Landroid/os/Handler;

.field private n:Landroid/webkit/WebChromeClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->d:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->i:Z

    iput-object v1, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->j:Lcom/iflytek/voiceads/bridge/DSBridgeWebView$c;

    new-instance v0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView$b;

    invoke-direct {v0, p0, v1}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView$b;-><init>(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;Lcom/iflytek/voiceads/bridge/c;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->l:Lcom/iflytek/voiceads/bridge/DSBridgeWebView$b;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->m:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->a:Ljava/util/Map;

    new-instance v0, Lcom/iflytek/voiceads/bridge/h;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/bridge/h;-><init>(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->n:Landroid/webkit/WebChromeClient;

    new-instance v0, Lcom/iflytek/voiceads/bridge/l;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/bridge/l;-><init>(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->b:Landroid/webkit/WebViewClient;

    invoke-direct {p0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->d:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->i:Z

    iput-object v1, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->j:Lcom/iflytek/voiceads/bridge/DSBridgeWebView$c;

    new-instance v0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView$b;

    invoke-direct {v0, p0, v1}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView$b;-><init>(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;Lcom/iflytek/voiceads/bridge/c;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->l:Lcom/iflytek/voiceads/bridge/DSBridgeWebView$b;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->m:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->a:Ljava/util/Map;

    new-instance v0, Lcom/iflytek/voiceads/bridge/h;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/bridge/h;-><init>(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->n:Landroid/webkit/WebChromeClient;

    new-instance v0, Lcom/iflytek/voiceads/bridge/l;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/bridge/l;-><init>(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->b:Landroid/webkit/WebViewClient;

    invoke-direct {p0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->k:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->d:Ljava/util/Map;

    return-object v0
.end method

.method private a(Lcom/iflytek/voiceads/bridge/DSBridgeWebView$a;)V
    .locals 4

    const-string v0, "window._handleMessageFromNative(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView$a;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->m:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/webcache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, p0, v3}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " iflytek_webview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v1, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v1, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->n:Landroid/webkit/WebChromeClient;

    invoke-super {p0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->b:Landroid/webkit/WebViewClient;

    invoke-super {p0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-direct {p0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->c()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-le v1, v2, :cond_1

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->l:Lcom/iflytek/voiceads/bridge/DSBridgeWebView$b;

    const-string v1, "_dsbridge"

    invoke-super {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " _dsbridge"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const-string v0, ""

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v3

    const/4 v0, 0x1

    aput-object p1, v1, v0

    return-object v1
.end method

.method static synthetic c(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)Landroid/webkit/WebChromeClient;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->g:Landroid/webkit/WebChromeClient;

    return-object v0
.end method

.method private c()V
    .locals 2

    new-instance v0, Lcom/iflytek/voiceads/bridge/c;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/bridge/c;-><init>(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)V

    const-string v1, "_dsb"

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->a(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->i:Z

    return v0
.end method

.method static synthetic e(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)Lcom/iflytek/voiceads/bridge/DSBridgeWebView$b;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->l:Lcom/iflytek/voiceads/bridge/DSBridgeWebView$b;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)Lcom/iflytek/voiceads/bridge/o;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->h:Lcom/iflytek/voiceads/bridge/o;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/iflytek/voiceads/bridge/o;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->h:Lcom/iflytek/voiceads/bridge/o;

    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->a(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "IFLY_AD_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete file no exists "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->d:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/iflytek/voiceads/bridge/d;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/voiceads/bridge/d;-><init>(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;[Ljava/lang/Object;Lcom/iflytek/voiceads/bridge/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Lcom/iflytek/voiceads/bridge/n",
            "<TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView$a;

    iget v1, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->f:I

    invoke-direct {v0, p1, v1, p2}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView$a;-><init>(Ljava/lang/String;I[Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView$a;->a(Lcom/iflytek/voiceads/bridge/DSBridgeWebView$a;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->k:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->a(Lcom/iflytek/voiceads/bridge/DSBridgeWebView$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearCache(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    :try_start_0
    const-string v0, "webview.db"

    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const-string v0, "webviewCache.db"

    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->e:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/webviewCache"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->a(Ljava/io/File;)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->a(Ljava/io/File;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/iflytek/voiceads/bridge/e;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/voiceads/bridge/e;-><init>(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/iflytek/voiceads/bridge/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/iflytek/voiceads/bridge/f;-><init>(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reload()V
    .locals 1

    new-instance v0, Lcom/iflytek/voiceads/bridge/g;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/bridge/g;-><init>(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)V

    invoke-direct {p0, v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->g:Landroid/webkit/WebChromeClient;

    return-void
.end method
