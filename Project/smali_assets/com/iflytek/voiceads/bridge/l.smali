.class Lcom/iflytek/voiceads/bridge/l;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/bridge/l;->a:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/l;->a:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    invoke-static {v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->f(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)Lcom/iflytek/voiceads/bridge/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/l;->a:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    invoke-static {v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->f(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)Lcom/iflytek/voiceads/bridge/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/voiceads/bridge/o;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/l;->a:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    invoke-static {v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->f(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)Lcom/iflytek/voiceads/bridge/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/l;->a:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    invoke-static {v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->f(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)Lcom/iflytek/voiceads/bridge/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/voiceads/bridge/o;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/l;->a:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    invoke-static {v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->f(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)Lcom/iflytek/voiceads/bridge/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/l;->a:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    invoke-static {v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->f(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)Lcom/iflytek/voiceads/bridge/o;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/iflytek/voiceads/bridge/o;->a(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/l;->a:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    invoke-static {v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->f(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)Lcom/iflytek/voiceads/bridge/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/l;->a:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    invoke-static {v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->f(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)Lcom/iflytek/voiceads/bridge/o;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/iflytek/voiceads/bridge/o;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
