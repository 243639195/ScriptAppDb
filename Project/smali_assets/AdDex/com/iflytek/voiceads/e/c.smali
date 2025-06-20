.class Lcom/iflytek/voiceads/e/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/voiceads/download/p$a;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/e/a;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/e/c;->a:Lcom/iflytek/voiceads/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "not main thread"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/e/c;->a:Lcom/iflytek/voiceads/e/a;

    invoke-static {v0}, Lcom/iflytek/voiceads/e/a;->f(Lcom/iflytek/voiceads/e/a;)Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    move-result-object v0

    new-instance v1, Lcom/iflytek/voiceads/config/AdError;

    const v2, 0x11560

    invoke-direct {v1, v2}, Lcom/iflytek/voiceads/config/AdError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/voiceads/listener/IFLYVideoListener;->onAdFailed(Lcom/iflytek/voiceads/config/AdError;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "not main thread"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/e/c;->a:Lcom/iflytek/voiceads/e/a;

    invoke-static {v0, p1}, Lcom/iflytek/voiceads/e/a;->a(Lcom/iflytek/voiceads/e/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/voiceads/e/c;->a:Lcom/iflytek/voiceads/e/a;

    invoke-static {v0}, Lcom/iflytek/voiceads/e/a;->f(Lcom/iflytek/voiceads/e/a;)Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/voiceads/listener/IFLYVideoListener;->onVideoCached()V

    return-void
.end method
