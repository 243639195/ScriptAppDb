.class public Lcom/iflytek/voiceads/videolib/c$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/voiceads/videolib/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/videolib/c;


# direct methods
.method public constructor <init>(Lcom/iflytek/voiceads/videolib/c;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/videolib/c$a;->a:Lcom/iflytek/voiceads/videolib/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/c$a;->a:Lcom/iflytek/voiceads/videolib/c;

    iput v1, v0, Lcom/iflytek/voiceads/videolib/c;->g:I

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/c$a;->a:Lcom/iflytek/voiceads/videolib/c;

    iput v1, v0, Lcom/iflytek/voiceads/videolib/c;->h:I

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/c$a;->a:Lcom/iflytek/voiceads/videolib/c;

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/c;->e:Lcom/iflytek/voiceads/videolib/b;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/b;->b()V

    sget-object v0, Lcom/iflytek/voiceads/videolib/c;->d:Landroid/view/Surface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/voiceads/videolib/c;->d:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    new-instance v0, Landroid/view/Surface;

    sget-object v1, Lcom/iflytek/voiceads/videolib/c;->c:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    sput-object v0, Lcom/iflytek/voiceads/videolib/c;->d:Landroid/view/Surface;

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/c$a;->a:Lcom/iflytek/voiceads/videolib/c;

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/c;->e:Lcom/iflytek/voiceads/videolib/b;

    sget-object v1, Lcom/iflytek/voiceads/videolib/c;->d:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/videolib/b;->a(Landroid/view/Surface;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/c$a;->a:Lcom/iflytek/voiceads/videolib/c;

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/c;->e:Lcom/iflytek/voiceads/videolib/b;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/b;->d()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
