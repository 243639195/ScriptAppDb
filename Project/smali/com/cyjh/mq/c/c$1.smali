.class final Lcom/cyjh/mq/c/c$1;
.super Landroid/os/HandlerThread;
.source "IpcServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mq/c/c;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mq/c/c;


# direct methods
.method constructor <init>(Lcom/cyjh/mq/c/c;Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/cyjh/mq/c/c$1;->a:Lcom/cyjh/mq/c/c;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 4

    .line 66
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 68
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/cyjh/mq/c/c$1;->a:Lcom/cyjh/mq/c/c;

    invoke-static {v0}, Lcom/cyjh/mq/c/c;->a(Lcom/cyjh/mq/c/c;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/cyjh/mq/c/c$1;->a:Lcom/cyjh/mq/c/c;

    invoke-static {v0}, Lcom/cyjh/mq/c/c;->b(Lcom/cyjh/mq/c/c;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/cyjh/mq/c/c$1;->a:Lcom/cyjh/mq/c/c;

    invoke-static {v1}, Lcom/cyjh/mq/c/c;->c(Lcom/cyjh/mq/c/c;)Lcom/cyjh/mq/c/b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cyjh/mq/c/c$1;->a:Lcom/cyjh/mq/c/c;

    invoke-static {v1}, Lcom/cyjh/mq/c/c;->c(Lcom/cyjh/mq/c/c;)Lcom/cyjh/mq/c/b;

    move-result-object v1

    .line 1120
    iget-boolean v1, v1, Lcom/cyjh/mq/c/b;->b:Z

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/cyjh/mq/c/c$1;->a:Lcom/cyjh/mq/c/c;

    new-instance v2, Lcom/cyjh/mq/c/b;

    iget-object v3, p0, Lcom/cyjh/mq/c/c$1;->a:Lcom/cyjh/mq/c/c;

    invoke-static {v3}, Lcom/cyjh/mq/c/c;->d(Lcom/cyjh/mq/c/c;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/cyjh/mq/c/b;-><init>(Landroid/content/Context;Ljava/net/Socket;)V

    invoke-static {v1, v2}, Lcom/cyjh/mq/c/c;->a(Lcom/cyjh/mq/c/c;Lcom/cyjh/mq/c/b;)Lcom/cyjh/mq/c/b;

    .line 75
    iget-object v0, p0, Lcom/cyjh/mq/c/c$1;->a:Lcom/cyjh/mq/c/c;

    invoke-static {v0}, Lcom/cyjh/mq/c/c;->c(Lcom/cyjh/mq/c/c;)Lcom/cyjh/mq/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mq/c/c$1;->a:Lcom/cyjh/mq/c/c;

    invoke-static {v1}, Lcom/cyjh/mq/c/c;->e(Lcom/cyjh/mq/c/c;)Ljava/util/List;

    move-result-object v1

    .line 1321
    iput-object v1, v0, Lcom/cyjh/mq/c/b;->g:Ljava/util/List;

    .line 77
    iget-object v0, p0, Lcom/cyjh/mq/c/c$1;->a:Lcom/cyjh/mq/c/c;

    invoke-static {v0}, Lcom/cyjh/mq/c/c;->c(Lcom/cyjh/mq/c/c;)Lcom/cyjh/mq/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mq/c/b;->b()V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/cyjh/mq/c/c$1;->a:Lcom/cyjh/mq/c/c;

    invoke-static {v0}, Lcom/cyjh/mq/c/c;->b(Lcom/cyjh/mq/c/c;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 82
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method
