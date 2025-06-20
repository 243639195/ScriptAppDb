.class Lcom/iflytek/voiceads/bridge/b$a;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/voiceads/bridge/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/bridge/b;


# virtual methods
.method public onFinish()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/b$a;->a:Lcom/iflytek/voiceads/bridge/b;

    invoke-static {v0}, Lcom/iflytek/voiceads/bridge/b;->a(Lcom/iflytek/voiceads/bridge/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/b$a;->a:Lcom/iflytek/voiceads/bridge/b;

    invoke-static {v0}, Lcom/iflytek/voiceads/bridge/b;->b(Lcom/iflytek/voiceads/bridge/b;)Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/b$a;->a:Lcom/iflytek/voiceads/bridge/b;

    invoke-static {v0}, Lcom/iflytek/voiceads/bridge/b;->b(Lcom/iflytek/voiceads/bridge/b;)Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    move-result-object v0

    const-string v1, "voiceRecordEnd"

    invoke-virtual {v0, v1, v2, v2}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->a(Ljava/lang/String;[Ljava/lang/Object;Lcom/iflytek/voiceads/bridge/n;)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
