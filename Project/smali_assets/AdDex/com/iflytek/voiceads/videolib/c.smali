.class public Lcom/iflytek/voiceads/videolib/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/voiceads/videolib/c$a;
    }
.end annotation


# static fields
.field public static a:Lcom/iflytek/voiceads/videolib/JZTextureView;

.field public static b:Lcom/iflytek/voiceads/videolib/c;

.field public static c:Landroid/graphics/SurfaceTexture;

.field public static d:Landroid/view/Surface;


# instance fields
.field public e:Lcom/iflytek/voiceads/videolib/b;

.field public f:I

.field public g:I

.field public h:I

.field public i:Landroid/os/HandlerThread;

.field public j:Lcom/iflytek/voiceads/videolib/c$a;

.field public k:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/voiceads/videolib/c;->f:I

    iput v1, p0, Lcom/iflytek/voiceads/videolib/c;->g:I

    iput v1, p0, Lcom/iflytek/voiceads/videolib/c;->h:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "JZVideoPlayer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/c;->i:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/c;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/iflytek/voiceads/videolib/c$a;

    iget-object v1, p0, Lcom/iflytek/voiceads/videolib/c;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/voiceads/videolib/c$a;-><init>(Lcom/iflytek/voiceads/videolib/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/c;->j:Lcom/iflytek/voiceads/videolib/c$a;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/c;->k:Landroid/os/Handler;

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/c;->e:Lcom/iflytek/voiceads/videolib/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/voiceads/videolib/d;

    invoke-direct {v0}, Lcom/iflytek/voiceads/videolib/d;-><init>()V

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/c;->e:Lcom/iflytek/voiceads/videolib/b;

    :cond_0
    return-void
.end method

.method public static a()Lcom/iflytek/voiceads/videolib/c;
    .locals 1

    sget-object v0, Lcom/iflytek/voiceads/videolib/c;->b:Lcom/iflytek/voiceads/videolib/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/voiceads/videolib/c;

    invoke-direct {v0}, Lcom/iflytek/voiceads/videolib/c;-><init>()V

    sput-object v0, Lcom/iflytek/voiceads/videolib/c;->b:Lcom/iflytek/voiceads/videolib/c;

    :cond_0
    sget-object v0, Lcom/iflytek/voiceads/videolib/c;->b:Lcom/iflytek/voiceads/videolib/c;

    return-object v0
.end method

.method public static a(J)V
    .locals 2

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->a()Lcom/iflytek/voiceads/videolib/c;

    move-result-object v0

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/c;->e:Lcom/iflytek/voiceads/videolib/b;

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/voiceads/videolib/b;->a(J)V

    return-void
.end method

.method public static a(Lcom/iflytek/voiceads/videolib/a;)V
    .locals 1

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->a()Lcom/iflytek/voiceads/videolib/c;

    move-result-object v0

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/c;->e:Lcom/iflytek/voiceads/videolib/b;

    iput-object p0, v0, Lcom/iflytek/voiceads/videolib/b;->a:Lcom/iflytek/voiceads/videolib/a;

    return-void
.end method

.method public static a(Z)V
    .locals 1

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->a()Lcom/iflytek/voiceads/videolib/c;

    move-result-object v0

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/c;->e:Lcom/iflytek/voiceads/videolib/b;

    invoke-virtual {v0, p0}, Lcom/iflytek/voiceads/videolib/b;->a(Z)V

    return-void
.end method

.method public static b()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->a()Lcom/iflytek/voiceads/videolib/c;

    move-result-object v0

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/c;->e:Lcom/iflytek/voiceads/videolib/b;

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/b;->a:Lcom/iflytek/voiceads/videolib/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->a()Lcom/iflytek/voiceads/videolib/c;

    move-result-object v0

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/c;->e:Lcom/iflytek/voiceads/videolib/b;

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/b;->a:Lcom/iflytek/voiceads/videolib/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/a;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static c()J
    .locals 2

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->a()Lcom/iflytek/voiceads/videolib/c;

    move-result-object v0

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/c;->e:Lcom/iflytek/voiceads/videolib/b;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/b;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public static d()J
    .locals 2

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->a()Lcom/iflytek/voiceads/videolib/c;

    move-result-object v0

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/c;->e:Lcom/iflytek/voiceads/videolib/b;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/b;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public static e()V
    .locals 1

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->a()Lcom/iflytek/voiceads/videolib/c;

    move-result-object v0

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/c;->e:Lcom/iflytek/voiceads/videolib/b;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/b;->c()V

    return-void
.end method

.method public static f()V
    .locals 1

    invoke-static {}, Lcom/iflytek/voiceads/videolib/c;->a()Lcom/iflytek/voiceads/videolib/c;

    move-result-object v0

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/c;->e:Lcom/iflytek/voiceads/videolib/b;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/b;->a()V

    return-void
.end method


# virtual methods
.method public g()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/iflytek/voiceads/videolib/c;->j:Lcom/iflytek/voiceads/videolib/c$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/voiceads/videolib/c$a;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public h()V
    .locals 2

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/c;->g()V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/iflytek/voiceads/videolib/c;->j:Lcom/iflytek/voiceads/videolib/c$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/voiceads/videolib/c$a;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->c()Lcom/iflytek/voiceads/videolib/JZPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "JZVideoPlayer"

    const-string v1, "onSurfaceTextureAvailable"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/iflytek/voiceads/videolib/c;->c:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    sput-object p1, Lcom/iflytek/voiceads/videolib/c;->c:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Lcom/iflytek/voiceads/videolib/c;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JZVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceTextureAvailable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/iflytek/voiceads/videolib/c;->a:Lcom/iflytek/voiceads/videolib/JZTextureView;

    sget-object v1, Lcom/iflytek/voiceads/videolib/c;->c:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/videolib/JZTextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    sget-object v0, Lcom/iflytek/voiceads/videolib/c;->c:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
