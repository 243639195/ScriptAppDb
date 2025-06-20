.class public Lcom/iflytek/voiceads/view/a;
.super Landroid/os/Handler;


# instance fields
.field private a:Lcom/iflytek/voiceads/listener/IFLYAdListener;

.field private b:Lcom/iflytek/voiceads/listener/InternalListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/iflytek/voiceads/view/a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {p0, v0, v2, v3}, Lcom/iflytek/voiceads/view/a;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/voiceads/view/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/view/a;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcom/iflytek/voiceads/listener/IFLYAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/view/a;->a:Lcom/iflytek/voiceads/listener/IFLYAdListener;

    return-void
.end method

.method public a(Lcom/iflytek/voiceads/listener/InternalListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/view/a;->b:Lcom/iflytek/voiceads/listener/InternalListener;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/view/a;->a:Lcom/iflytek/voiceads/listener/IFLYAdListener;

    if-nez v0, :cond_0

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "htmlAd listener is null"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/voiceads/view/a;->a:Lcom/iflytek/voiceads/listener/IFLYAdListener;

    invoke-interface {v0}, Lcom/iflytek/voiceads/listener/IFLYAdListener;->onAdReceive()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/iflytek/voiceads/view/a;->a:Lcom/iflytek/voiceads/listener/IFLYAdListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/voiceads/config/AdError;

    invoke-interface {v1, v0}, Lcom/iflytek/voiceads/listener/IFLYAdListener;->onAdFailed(Lcom/iflytek/voiceads/config/AdError;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/iflytek/voiceads/view/a;->a:Lcom/iflytek/voiceads/listener/IFLYAdListener;

    invoke-interface {v0}, Lcom/iflytek/voiceads/listener/IFLYAdListener;->onAdClick()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/iflytek/voiceads/view/a;->a:Lcom/iflytek/voiceads/listener/IFLYAdListener;

    invoke-interface {v0}, Lcom/iflytek/voiceads/listener/IFLYAdListener;->onAdClose()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/iflytek/voiceads/view/a;->b:Lcom/iflytek/voiceads/listener/InternalListener;

    invoke-interface {v0}, Lcom/iflytek/voiceads/listener/InternalListener;->onAdDestroy()Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
