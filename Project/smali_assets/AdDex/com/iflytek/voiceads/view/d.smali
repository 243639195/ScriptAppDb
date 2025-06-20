.class Lcom/iflytek/voiceads/view/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/voiceads/f/d;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/view/AdView;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/view/AdView;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/view/d;->a:Lcom/iflytek/voiceads/view/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "onPageStarted"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/view/d;->a:Lcom/iflytek/voiceads/view/AdView;

    iget-object v0, v0, Lcom/iflytek/voiceads/view/AdView;->l:Lcom/iflytek/voiceads/view/b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/view/b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/voiceads/view/d;->a:Lcom/iflytek/voiceads/view/AdView;

    iget-object v1, v1, Lcom/iflytek/voiceads/view/AdView;->l:Lcom/iflytek/voiceads/view/b;

    const/16 v2, 0x3a98

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/voiceads/view/b;->a(Landroid/os/Message;I)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "WebViewClientCallback onLoadError"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/view/d;->a:Lcom/iflytek/voiceads/view/AdView;

    iget-object v0, v0, Lcom/iflytek/voiceads/view/AdView;->l:Lcom/iflytek/voiceads/view/b;

    const/4 v1, 0x5

    const v2, 0x1155e

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/voiceads/view/b;->a(II)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const-string v0, "IFLY_AD_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading\uff1a height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/voiceads/view/d;->a:Lcom/iflytek/voiceads/view/AdView;

    invoke-virtual {v2}, Lcom/iflytek/voiceads/view/AdView;->getContentHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/voiceads/view/d;->a:Lcom/iflytek/voiceads/view/AdView;

    iget-object v2, v2, Lcom/iflytek/voiceads/view/AdView;->d:Lcom/iflytek/voiceads/f/a;

    invoke-virtual {v2}, Lcom/iflytek/voiceads/f/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/view/d;->a:Lcom/iflytek/voiceads/view/AdView;

    invoke-virtual {v0, p2}, Lcom/iflytek/voiceads/view/AdView;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 3

    const-string v0, "IFLY_AD_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished\uff1a height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/voiceads/view/d;->a:Lcom/iflytek/voiceads/view/AdView;

    invoke-virtual {v2}, Lcom/iflytek/voiceads/view/AdView;->getContentHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/voiceads/view/d;->a:Lcom/iflytek/voiceads/view/AdView;

    iget-object v2, v2, Lcom/iflytek/voiceads/view/AdView;->d:Lcom/iflytek/voiceads/f/a;

    invoke-virtual {v2}, Lcom/iflytek/voiceads/f/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/view/d;->a:Lcom/iflytek/voiceads/view/AdView;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/view/AdView;->m()V

    return-void
.end method
