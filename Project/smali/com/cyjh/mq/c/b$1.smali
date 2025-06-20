.class final Lcom/cyjh/mq/c/b$1;
.super Ljava/lang/Thread;
.source "IpcConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mq/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mq/c/b;


# direct methods
.method constructor <init>(Lcom/cyjh/mq/c/b;Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/cyjh/mq/c/b$1;->a:Lcom/cyjh/mq/c/b;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 87
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/cyjh/mq/c/b$1;->a:Lcom/cyjh/mq/c/b;

    .line 1047
    iget-boolean v0, v0, Lcom/cyjh/mq/c/b;->a:Z

    if-eqz v0, :cond_0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/cyjh/mq/c/b$1;->a:Lcom/cyjh/mq/c/b;

    .line 2047
    iget-object v0, v0, Lcom/cyjh/mq/c/b;->r:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 93
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    .line 94
    new-instance v1, Lcom/cyjh/mobileanjian/ipc/share/proto/b;

    invoke-direct {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/b;-><init>(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    .line 95
    iget-object v0, p0, Lcom/cyjh/mq/c/b$1;->a:Lcom/cyjh/mq/c/b;

    .line 3012
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/c;->a()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v3, v2, 0x4

    .line 3013
    new-array v3, v3, [B

    .line 3014
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 3015
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3016
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/c;->a()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 3017
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 95
    invoke-virtual {v0, v3}, Lcom/cyjh/mq/c/b;->a(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 98
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
