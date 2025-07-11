.class public Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;
.super Ljava/lang/Thread;
.source "WebSocketServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/java_websocket/server/WebSocketServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebSocketWorker"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private iqueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/java_websocket/WebSocketImpl;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/java_websocket/server/WebSocketServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1049
    const-class v0, Lorg/java_websocket/server/WebSocketServer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/java_websocket/server/WebSocketServer;)V
    .locals 4
    .param p1, "this$0"    # Lorg/java_websocket/server/WebSocketServer;

    .prologue
    .line 1053
    iput-object p1, p0, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->this$0:Lorg/java_websocket/server/WebSocketServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1054
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->iqueue:Ljava/util/concurrent/BlockingQueue;

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebSocketWorker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->setName(Ljava/lang/String;)V

    .line 1056
    new-instance v0, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker$1;

    invoke-direct {v0, p0, p1}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker$1;-><init>(Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;Lorg/java_websocket/server/WebSocketServer;)V

    invoke-virtual {p0, v0}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1062
    return-void
.end method

.method private doDecode(Lorg/java_websocket/WebSocketImpl;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "ws"    # Lorg/java_websocket/WebSocketImpl;
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1096
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/java_websocket/WebSocketImpl;->decode(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->this$0:Lorg/java_websocket/server/WebSocketServer;

    invoke-static {v1, p2}, Lorg/java_websocket/server/WebSocketServer;->access$200(Lorg/java_websocket/server/WebSocketServer;Ljava/nio/ByteBuffer;)V

    .line 1102
    :goto_0
    return-void

    .line 1097
    :catch_0
    move-exception v0

    .line 1098
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->this$0:Lorg/java_websocket/server/WebSocketServer;

    invoke-static {v1}, Lorg/java_websocket/server/WebSocketServer;->access$000(Lorg/java_websocket/server/WebSocketServer;)Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Error while reading from remote connection"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1100
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->this$0:Lorg/java_websocket/server/WebSocketServer;

    invoke-static {v1, p2}, Lorg/java_websocket/server/WebSocketServer;->access$200(Lorg/java_websocket/server/WebSocketServer;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->this$0:Lorg/java_websocket/server/WebSocketServer;

    invoke-static {v2, p2}, Lorg/java_websocket/server/WebSocketServer;->access$200(Lorg/java_websocket/server/WebSocketServer;Ljava/nio/ByteBuffer;)V

    .line 1101
    throw v1
.end method


# virtual methods
.method public put(Lorg/java_websocket/WebSocketImpl;)V
    .locals 1
    .param p1, "ws"    # Lorg/java_websocket/WebSocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1065
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->iqueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 1066
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 1070
    const/4 v3, 0x0

    .line 1074
    .local v3, "ws":Lorg/java_websocket/WebSocketImpl;
    :goto_0
    :try_start_0
    iget-object v4, p0, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->iqueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/java_websocket/WebSocketImpl;

    move-object v3, v0

    .line 1075
    iget-object v4, v3, Lorg/java_websocket/WebSocketImpl;->inQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 1076
    .local v1, "buf":Ljava/nio/ByteBuffer;
    sget-boolean v4, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez v1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1080
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    .line 1081
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 1085
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 1077
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    :cond_0
    :try_start_1
    invoke-direct {p0, v3, v1}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->doDecode(Lorg/java_websocket/WebSocketImpl;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1078
    const/4 v3, 0x0

    .line 1079
    goto :goto_0

    .line 1082
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v2

    .line 1083
    .local v2, "e":Ljava/lang/RuntimeException;
    iget-object v4, p0, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->this$0:Lorg/java_websocket/server/WebSocketServer;

    invoke-static {v4, v3, v2}, Lorg/java_websocket/server/WebSocketServer;->access$100(Lorg/java_websocket/server/WebSocketServer;Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto :goto_1
.end method
