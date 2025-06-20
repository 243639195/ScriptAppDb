.class public Lcom/iflytek/voiceads/f/b;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Lcom/iflytek/voiceads/f/d;


# direct methods
.method public constructor <init>(Lcom/iflytek/voiceads/f/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-boolean v0, p0, Lcom/iflytek/voiceads/f/b;->a:Z

    iput-boolean v0, p0, Lcom/iflytek/voiceads/f/b;->b:Z

    iput-boolean v0, p0, Lcom/iflytek/voiceads/f/b;->c:Z

    iput-object p1, p0, Lcom/iflytek/voiceads/f/b;->d:Lcom/iflytek/voiceads/f/d;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/voiceads/f/b;->c:Z

    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const-string v0, "IFLY_AD_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/voiceads/f/b;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/iflytek/voiceads/f/b;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/voiceads/f/b;->a:Z

    :cond_0
    iget-boolean v0, p0, Lcom/iflytek/voiceads/f/b;->a:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/iflytek/voiceads/f/b;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/voiceads/f/b;->d:Lcom/iflytek/voiceads/f/d;

    invoke-interface {v0}, Lcom/iflytek/voiceads/f/d;->b()V

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/voiceads/f/b;->b:Z

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/f/b;->a(Z)V

    iput-boolean v0, p0, Lcom/iflytek/voiceads/f/b;->a:Z

    iput-boolean v0, p0, Lcom/iflytek/voiceads/f/b;->b:Z

    iget-object v0, p0, Lcom/iflytek/voiceads/f/b;->d:Lcom/iflytek/voiceads/f/d;

    invoke-interface {v0}, Lcom/iflytek/voiceads/f/d;->a()V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/f/b;->d:Lcom/iflytek/voiceads/f/d;

    invoke-interface {v0, p2, p3}, Lcom/iflytek/voiceads/f/d;->a(ILjava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    iget-object v0, p0, Lcom/iflytek/voiceads/f/b;->d:Lcom/iflytek/voiceads/f/d;

    const/4 v1, -0x1

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/voiceads/f/d;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "IFLY_AD_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/voiceads/f/b;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/voiceads/f/b;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/iflytek/voiceads/f/b;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/iflytek/voiceads/f/b;->a(Z)V

    iget-object v0, p0, Lcom/iflytek/voiceads/f/b;->d:Lcom/iflytek/voiceads/f/d;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/voiceads/f/d;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_0
    iget-boolean v0, p0, Lcom/iflytek/voiceads/f/b;->a:Z

    if-nez v0, :cond_1

    iput-boolean v3, p0, Lcom/iflytek/voiceads/f/b;->b:Z

    :cond_1
    iput-boolean v4, p0, Lcom/iflytek/voiceads/f/b;->a:Z

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "shouldOverrideUrlLoading click=false"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
