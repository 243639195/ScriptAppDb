.class Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/java_websocket/client/WebSocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebsocketWriteThread"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/java_websocket/client/WebSocketClient;

.field private final webSocketClient:Lorg/java_websocket/client/WebSocketClient;


# direct methods
.method constructor <init>(Lorg/java_websocket/client/WebSocketClient;Lorg/java_websocket/client/WebSocketClient;)V
    .locals 0
    .param p2, "webSocketClient"    # Lorg/java_websocket/client/WebSocketClient;

    .prologue
    .line 791
    iput-object p1, p0, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lorg/java_websocket/client/WebSocketClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 792
    iput-object p2, p0, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;->webSocketClient:Lorg/java_websocket/client/WebSocketClient;

    .line 793
    return-void
.end method

.method private closeSocket()V
    .locals 3

    .prologue
    .line 834
    :try_start_0
    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lorg/java_websocket/client/WebSocketClient;

    invoke-static {v1}, Lorg/java_websocket/client/WebSocketClient;->access$400(Lorg/java_websocket/client/WebSocketClient;)Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 835
    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lorg/java_websocket/client/WebSocketClient;

    invoke-static {v1}, Lorg/java_websocket/client/WebSocketClient;->access$400(Lorg/java_websocket/client/WebSocketClient;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 837
    :catch_0
    move-exception v0

    .line 838
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lorg/java_websocket/client/WebSocketClient;

    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;->webSocketClient:Lorg/java_websocket/client/WebSocketClient;

    invoke-virtual {v1, v2, v0}, Lorg/java_websocket/client/WebSocketClient;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private runWriteData()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 815
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 816
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lorg/java_websocket/client/WebSocketClient;

    invoke-static {v2}, Lorg/java_websocket/client/WebSocketClient;->access$200(Lorg/java_websocket/client/WebSocketClient;)Lorg/java_websocket/WebSocketImpl;

    move-result-object v2

    iget-object v2, v2, Lorg/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 817
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lorg/java_websocket/client/WebSocketClient;

    invoke-static {v2}, Lorg/java_websocket/client/WebSocketClient;->access$300(Lorg/java_websocket/client/WebSocketClient;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 818
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lorg/java_websocket/client/WebSocketClient;

    invoke-static {v2}, Lorg/java_websocket/client/WebSocketClient;->access$300(Lorg/java_websocket/client/WebSocketClient;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 820
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 821
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lorg/java_websocket/client/WebSocketClient;

    invoke-static {v2}, Lorg/java_websocket/client/WebSocketClient;->access$200(Lorg/java_websocket/client/WebSocketClient;)Lorg/java_websocket/WebSocketImpl;

    move-result-object v2

    iget-object v2, v2, Lorg/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 822
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lorg/java_websocket/client/WebSocketClient;

    invoke-static {v3}, Lorg/java_websocket/client/WebSocketClient;->access$300(Lorg/java_websocket/client/WebSocketClient;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 823
    iget-object v3, p0, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lorg/java_websocket/client/WebSocketClient;

    invoke-static {v3}, Lorg/java_websocket/client/WebSocketClient;->access$300(Lorg/java_websocket/client/WebSocketClient;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    goto :goto_1

    .line 825
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 827
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 797
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebSocketWriteThread-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 799
    :try_start_0
    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;->runWriteData()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;->closeSocket()V

    .line 804
    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lorg/java_websocket/client/WebSocketClient;

    invoke-static {v1, v6}, Lorg/java_websocket/client/WebSocketClient;->access$102(Lorg/java_websocket/client/WebSocketClient;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 806
    :goto_0
    return-void

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lorg/java_websocket/client/WebSocketClient;

    invoke-static {v1, v0}, Lorg/java_websocket/client/WebSocketClient;->access$000(Lorg/java_websocket/client/WebSocketClient;Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 803
    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;->closeSocket()V

    .line 804
    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lorg/java_websocket/client/WebSocketClient;

    invoke-static {v1, v6}, Lorg/java_websocket/client/WebSocketClient;->access$102(Lorg/java_websocket/client/WebSocketClient;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_0

    .line 803
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;->closeSocket()V

    .line 804
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lorg/java_websocket/client/WebSocketClient;

    invoke-static {v2, v6}, Lorg/java_websocket/client/WebSocketClient;->access$102(Lorg/java_websocket/client/WebSocketClient;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 805
    throw v1
.end method
