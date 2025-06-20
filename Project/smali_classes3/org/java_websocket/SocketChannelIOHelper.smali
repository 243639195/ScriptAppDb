.class public Lorg/java_websocket/SocketChannelIOHelper;
.super Ljava/lang/Object;
.source "SocketChannelIOHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static batch(Lorg/java_websocket/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z
    .locals 5
    .param p0, "ws"    # Lorg/java_websocket/WebSocketImpl;
    .param p1, "sockchannel"    # Ljava/nio/channels/ByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 83
    if-nez p0, :cond_1

    .line 114
    .end local p1    # "sockchannel":Ljava/nio/channels/ByteChannel;
    :cond_0
    :goto_0
    return v2

    .line 86
    .restart local p1    # "sockchannel":Ljava/nio/channels/ByteChannel;
    :cond_1
    iget-object v3, p0, Lorg/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 87
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 89
    .local v1, "c":Lorg/java_websocket/WrappedByteChannel;
    if-nez v0, :cond_5

    .line 90
    instance-of v3, p1, Lorg/java_websocket/WrappedByteChannel;

    if-eqz v3, :cond_2

    move-object v1, p1

    .line 91
    check-cast v1, Lorg/java_websocket/WrappedByteChannel;

    .line 92
    invoke-interface {v1}, Lorg/java_websocket/WrappedByteChannel;->isNeedWrite()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    invoke-interface {v1}, Lorg/java_websocket/WrappedByteChannel;->writeMore()V

    .line 110
    :cond_2
    :goto_1
    iget-object v3, p0, Lorg/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/java_websocket/WebSocketImpl;->isFlushAndClose()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/java_websocket/WebSocketImpl;->getDraft()Lorg/java_websocket/drafts/Draft;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 111
    invoke-virtual {p0}, Lorg/java_websocket/WebSocketImpl;->getDraft()Lorg/java_websocket/drafts/Draft;

    move-result-object v3

    invoke-virtual {v3}, Lorg/java_websocket/drafts/Draft;->getRole()Lorg/java_websocket/enums/Role;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/java_websocket/WebSocketImpl;->getDraft()Lorg/java_websocket/drafts/Draft;

    move-result-object v3

    invoke-virtual {v3}, Lorg/java_websocket/drafts/Draft;->getRole()Lorg/java_websocket/enums/Role;

    move-result-object v3

    sget-object v4, Lorg/java_websocket/enums/Role;->SERVER:Lorg/java_websocket/enums/Role;

    if-ne v3, v4, :cond_3

    .line 112
    invoke-virtual {p0}, Lorg/java_websocket/WebSocketImpl;->closeConnection()V

    .line 114
    :cond_3
    if-eqz v1, :cond_4

    check-cast p1, Lorg/java_websocket/WrappedByteChannel;

    .end local p1    # "sockchannel":Ljava/nio/channels/ByteChannel;
    invoke-interface {p1}, Lorg/java_websocket/WrappedByteChannel;->isNeedWrite()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 100
    .restart local p1    # "sockchannel":Ljava/nio/channels/ByteChannel;
    :cond_5
    invoke-interface {p1, v0}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 101
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-gtz v3, :cond_0

    .line 104
    iget-object v3, p0, Lorg/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 105
    iget-object v3, p0, Lorg/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 107
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_5

    goto :goto_1
.end method

.method public static read(Ljava/nio/ByteBuffer;Lorg/java_websocket/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z
    .locals 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "ws"    # Lorg/java_websocket/WebSocketImpl;
    .param p2, "channel"    # Ljava/nio/channels/ByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 42
    invoke-interface {p2, p0}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 43
    .local v0, "read":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 45
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 46
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->eot()V

    .line 49
    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static readMore(Ljava/nio/ByteBuffer;Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/WrappedByteChannel;)Z
    .locals 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "ws"    # Lorg/java_websocket/WebSocketImpl;
    .param p2, "channel"    # Lorg/java_websocket/WrappedByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 64
    invoke-interface {p2, p0}, Lorg/java_websocket/WrappedByteChannel;->readMore(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 65
    .local v0, "read":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 67
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 68
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->eot()V

    .line 69
    const/4 v1, 0x0

    .line 71
    :goto_0
    return v1

    :cond_0
    invoke-interface {p2}, Lorg/java_websocket/WrappedByteChannel;->isNeedRead()Z

    move-result v1

    goto :goto_0
.end method
