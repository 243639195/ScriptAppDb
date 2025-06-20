.class public Lcom/iflytek/voiceads/c/d;
.super Landroid/os/Handler;


# instance fields
.field private a:Lcom/iflytek/voiceads/listener/IFLYNativeListener;


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

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/voiceads/c/d;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/c/d;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcom/iflytek/voiceads/listener/IFLYNativeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/c/d;->a:Lcom/iflytek/voiceads/listener/IFLYNativeListener;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/c/d;->a:Lcom/iflytek/voiceads/listener/IFLYNativeListener;

    if-nez v0, :cond_0

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "native listener is null"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/iflytek/voiceads/c/d;->a:Lcom/iflytek/voiceads/listener/IFLYNativeListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/voiceads/conn/NativeDataRef;

    invoke-interface {v1, v0}, Lcom/iflytek/voiceads/listener/IFLYNativeListener;->onAdLoaded(Lcom/iflytek/voiceads/conn/NativeDataRef;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/iflytek/voiceads/c/d;->a:Lcom/iflytek/voiceads/listener/IFLYNativeListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/voiceads/config/AdError;

    invoke-interface {v1, v0}, Lcom/iflytek/voiceads/listener/IFLYNativeListener;->onAdFailed(Lcom/iflytek/voiceads/config/AdError;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
