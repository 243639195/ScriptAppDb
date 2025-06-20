.class Lcom/iflytek/voiceads/b/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/b/a;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/b/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/b/c;->a:Lcom/iflytek/voiceads/b/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/voiceads/b/c;->a:Lcom/iflytek/voiceads/b/a;

    invoke-static {v0}, Lcom/iflytek/voiceads/b/a;->b(Lcom/iflytek/voiceads/b/a;)Lcom/iflytek/voiceads/b/a$a;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v1, v0}, Lcom/iflytek/voiceads/b/a$a;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
