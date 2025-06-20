.class Lcom/iflytek/voiceads/download/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/download/d;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/download/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/download/e;->a:Lcom/iflytek/voiceads/download/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/download/e;->a:Lcom/iflytek/voiceads/download/d;

    invoke-static {v0}, Lcom/iflytek/voiceads/download/d;->a(Lcom/iflytek/voiceads/download/d;)V

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "\u79fb\u9664\u5e7f\u64ad end"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "\u79fb\u9664\u5e7f\u64ad end"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
