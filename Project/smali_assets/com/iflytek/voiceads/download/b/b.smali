.class public Lcom/iflytek/voiceads/download/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/voiceads/download/b/a;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/iflytek/voiceads/download/c/a;


# direct methods
.method public constructor <init>(Lcom/iflytek/voiceads/download/c/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iflytek/voiceads/download/b/b;->b:Lcom/iflytek/voiceads/download/c/a;

    new-instance v0, Lcom/iflytek/voiceads/download/b/c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/voiceads/download/b/c;-><init>(Lcom/iflytek/voiceads/download/b/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/download/b/b;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/voiceads/download/d/a;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/b;->a:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/iflytek/voiceads/download/d/a;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p1}, Lcom/iflytek/voiceads/download/d/a;->g()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/b;->b:Lcom/iflytek/voiceads/download/c/a;

    invoke-interface {v0, p1}, Lcom/iflytek/voiceads/download/c/a;->a(Lcom/iflytek/voiceads/download/d/a;)V

    goto :goto_0
.end method
