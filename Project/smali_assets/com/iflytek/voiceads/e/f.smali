.class public Lcom/iflytek/voiceads/e/f;
.super Landroid/os/Handler;


# instance fields
.field private a:Lcom/iflytek/voiceads/listener/IFLYVideoListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/voiceads/e/f;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/e/f;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcom/iflytek/voiceads/listener/IFLYVideoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/e/f;->a:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/iflytek/voiceads/e/f;->a:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/voiceads/conn/VideoDataRef;

    invoke-interface {v1, v0}, Lcom/iflytek/voiceads/listener/IFLYVideoListener;->onAdLoaded(Lcom/iflytek/voiceads/conn/VideoDataRef;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/iflytek/voiceads/e/f;->a:Lcom/iflytek/voiceads/listener/IFLYVideoListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/voiceads/config/AdError;

    invoke-interface {v1, v0}, Lcom/iflytek/voiceads/listener/IFLYVideoListener;->onAdFailed(Lcom/iflytek/voiceads/config/AdError;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
