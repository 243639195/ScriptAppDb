.class Lcom/iflytek/voiceads/download/b/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/download/b/b;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/download/b/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/download/b/c;->a:Lcom/iflytek/voiceads/download/b/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/voiceads/download/d/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/voiceads/download/d/a;->f()Lcom/iflytek/voiceads/download/a/a;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/iflytek/voiceads/download/d/a;->f()Lcom/iflytek/voiceads/download/a/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/voiceads/download/d/a;->g()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/iflytek/voiceads/download/d/a;->h()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/iflytek/voiceads/download/a/a;->a(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/iflytek/voiceads/download/d/a;->e()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/iflytek/voiceads/download/d/a;->d()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/iflytek/voiceads/download/d/a;->h()I

    move-result v6

    invoke-interface/range {v1 .. v6}, Lcom/iflytek/voiceads/download/a/a;->a(JJI)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lcom/iflytek/voiceads/download/d/a;->h()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/iflytek/voiceads/download/a/a;->b(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0}, Lcom/iflytek/voiceads/download/d/a;->a()Lcom/iflytek/voiceads/download/e/a;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/voiceads/download/d/a;->h()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/iflytek/voiceads/download/a/a;->a(Lcom/iflytek/voiceads/download/e/a;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
