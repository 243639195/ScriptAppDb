.class Lcom/iflytek/voiceads/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/voiceads/b/e$b;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/b/a;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/b/b;->a:Lcom/iflytek/voiceads/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/b/b;->a:Lcom/iflytek/voiceads/b/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/b/a;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/voiceads/b/b;->a:Lcom/iflytek/voiceads/b/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/b/a;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/iflytek/voiceads/b/b;->a:Lcom/iflytek/voiceads/b/a;

    invoke-static {v0}, Lcom/iflytek/voiceads/b/a;->a(Lcom/iflytek/voiceads/b/a;)Lcom/iflytek/voiceads/b/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/b/d;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/iflytek/voiceads/b/b;->a:Lcom/iflytek/voiceads/b/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/b/a;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/voiceads/b/b;->a:Lcom/iflytek/voiceads/b/a;

    iget-object v1, v1, Lcom/iflytek/voiceads/b/a;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "get image from network failed!"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
