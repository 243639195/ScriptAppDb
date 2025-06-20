.class Lcom/iflytek/voiceads/request/c;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/request/IFLYBrowser;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/request/IFLYBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/request/c;->a:Lcom/iflytek/voiceads/request/IFLYBrowser;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 1

    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/voiceads/request/c;->a:Lcom/iflytek/voiceads/request/IFLYBrowser;

    invoke-static {v0}, Lcom/iflytek/voiceads/request/IFLYBrowser;->b(Lcom/iflytek/voiceads/request/IFLYBrowser;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/request/c;->a:Lcom/iflytek/voiceads/request/IFLYBrowser;

    invoke-static {v0}, Lcom/iflytek/voiceads/request/IFLYBrowser;->b(Lcom/iflytek/voiceads/request/IFLYBrowser;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/voiceads/request/c;->a:Lcom/iflytek/voiceads/request/IFLYBrowser;

    invoke-static {v0}, Lcom/iflytek/voiceads/request/IFLYBrowser;->b(Lcom/iflytek/voiceads/request/IFLYBrowser;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/request/c;->a:Lcom/iflytek/voiceads/request/IFLYBrowser;

    invoke-static {v0}, Lcom/iflytek/voiceads/request/IFLYBrowser;->b(Lcom/iflytek/voiceads/request/IFLYBrowser;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method
