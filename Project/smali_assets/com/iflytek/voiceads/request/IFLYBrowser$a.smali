.class Lcom/iflytek/voiceads/request/IFLYBrowser$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/voiceads/request/IFLYBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/request/IFLYBrowser;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/request/IFLYBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/request/IFLYBrowser$a;->a:Lcom/iflytek/voiceads/request/IFLYBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "self webView"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/request/IFLYBrowser$a;->a:Lcom/iflytek/voiceads/request/IFLYBrowser;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/request/IFLYBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/voiceads/download/d;->a(Landroid/content/Context;)Lcom/iflytek/voiceads/download/d;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/voiceads/request/IFLYBrowser$a;->a:Lcom/iflytek/voiceads/request/IFLYBrowser;

    iget-object v1, v1, Lcom/iflytek/voiceads/request/IFLYBrowser;->c:Lcom/iflytek/voiceads/listener/DialogListener;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/download/d;->a(Lcom/iflytek/voiceads/listener/DialogListener;)V

    iget-object v1, p0, Lcom/iflytek/voiceads/request/IFLYBrowser$a;->a:Lcom/iflytek/voiceads/request/IFLYBrowser;

    invoke-virtual {v1}, Lcom/iflytek/voiceads/request/IFLYBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "is_show"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/download/d;->a(Z)V

    iget-object v1, p0, Lcom/iflytek/voiceads/request/IFLYBrowser$a;->a:Lcom/iflytek/voiceads/request/IFLYBrowser;

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/voiceads/download/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
