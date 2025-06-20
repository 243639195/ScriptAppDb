.class public Lorg/java_websocket/SSLSocketChannel;
.super Ljava/lang/Object;
.source "SSLSocketChannel.java"

# interfaces
.implements Lorg/java_websocket/WrappedByteChannel;
.implements Ljava/nio/channels/ByteChannel;
.implements Lorg/java_websocket/interfaces/ISSLChannel;


# instance fields
.field private final engine:Ljavax/net/ssl/SSLEngine;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private final log:Lorg/slf4j/Logger;

.field private myAppData:Ljava/nio/ByteBuffer;

.field private myNetData:Ljava/nio/ByteBuffer;

.field private peerAppData:Ljava/nio/ByteBuffer;

.field private peerNetData:Ljava/nio/ByteBuffer;

.field private final socketChannel:Ljava/nio/channels/SocketChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SocketChannel;Ljavax/net/ssl/SSLEngine;Ljava/util/concurrent/ExecutorService;Ljava/nio/channels/SelectionKey;)V
    .locals 3
    .param p1, "inputSocketChannel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "inputEngine"    # Ljavax/net/ssl/SSLEngine;
    .param p3, "inputExecutor"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-class v1, Lorg/java_websocket/SSLSocketChannel;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    iput-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->log:Lorg/slf4j/Logger;

    .line 133
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->executor:Ljava/util/concurrent/ExecutorService;

    if-ne v1, p3, :cond_1

    .line 134
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "parameter must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_1
    iput-object p1, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 138
    iput-object p2, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    .line 139
    iput-object p3, p0, Lorg/java_websocket/SSLSocketChannel;->executor:Ljava/util/concurrent/ExecutorService;

    .line 140
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    .line 141
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    .line 142
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 143
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel;->doHandshake()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 144
    if-eqz p4, :cond_2

    .line 145
    invoke-virtual {p4}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    invoke-virtual {p4, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 154
    :cond_2
    :goto_0
    return-void

    .line 149
    :cond_3
    :try_start_0
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->log:Lorg/slf4j/Logger;

    const-string v2, "Exception during the closing of the channel"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private closeConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 473
    :try_start_0
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel;->doHandshake()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_0
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 478
    return-void

    .line 474
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doHandshake()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 273
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v9}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v9

    invoke-interface {v9}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    .line 274
    .local v0, "appBufferSize":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->myAppData:Ljava/nio/ByteBuffer;

    .line 275
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    .line 276
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 277
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 279
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v9}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 280
    .local v3, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    const/4 v2, 0x0

    .line 281
    .local v2, "handshakeComplete":Z
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v2, :cond_1

    .line 282
    sget-object v9, Lorg/java_websocket/SSLSocketChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 391
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid SSL status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 284
    :pswitch_1
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v9

    if-nez v9, :cond_2

    move v2, v7

    .line 285
    :goto_1
    if-eqz v2, :cond_3

    .line 395
    :cond_1
    :goto_2
    return v7

    :cond_2
    move v2, v8

    .line 284
    goto :goto_1

    .line 288
    :cond_3
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v10, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v10}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0

    .line 291
    :pswitch_2
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v10, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v10}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v9

    if-gez v9, :cond_5

    .line 292
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v9}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v9}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v9

    if-eqz v9, :cond_4

    move v7, v8

    .line 293
    goto :goto_2

    .line 296
    :cond_4
    :try_start_0
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v9}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_3

    .line 300
    :goto_3
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v9}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 302
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v9}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 303
    goto :goto_0

    .line 305
    :cond_5
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 307
    :try_start_1
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v10, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    iget-object v11, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v10, v11}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v4

    .line 308
    .local v4, "result":Ljavax/net/ssl/SSLEngineResult;
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 309
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 315
    sget-object v9, Lorg/java_websocket/SSLSocketChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1

    .line 335
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid SSL status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 310
    .end local v4    # "result":Ljavax/net/ssl/SSLEngineResult;
    :catch_0
    move-exception v5

    .line 311
    .local v5, "sslException":Ljavax/net/ssl/SSLException;
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v9}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 312
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v9}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 313
    goto/16 :goto_0

    .line 320
    .end local v5    # "sslException":Ljavax/net/ssl/SSLException;
    .restart local v4    # "result":Ljavax/net/ssl/SSLEngineResult;
    :pswitch_3
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v9}, Lorg/java_websocket/SSLSocketChannel;->enlargeApplicationBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    .line 324
    :pswitch_4
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v9}, Lorg/java_websocket/SSLSocketChannel;->handleBufferUnderflow(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    .line 327
    :pswitch_5
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v9}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v9

    if-eqz v9, :cond_6

    move v7, v8

    .line 328
    goto/16 :goto_2

    .line 330
    :cond_6
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v9}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 331
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v9}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 332
    goto/16 :goto_0

    .line 339
    .end local v4    # "result":Ljavax/net/ssl/SSLEngineResult;
    :pswitch_6
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 341
    :try_start_2
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v10, p0, Lorg/java_websocket/SSLSocketChannel;->myAppData:Ljava/nio/ByteBuffer;

    iget-object v11, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v10, v11}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v4

    .line 342
    .restart local v4    # "result":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 348
    sget-object v9, Lorg/java_websocket/SSLSocketChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_2

    .line 377
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid SSL status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 343
    .end local v4    # "result":Ljavax/net/ssl/SSLEngineResult;
    :catch_1
    move-exception v5

    .line 344
    .restart local v5    # "sslException":Ljavax/net/ssl/SSLException;
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v9}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 345
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v9}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 346
    goto/16 :goto_0

    .line 350
    .end local v5    # "sslException":Ljavax/net/ssl/SSLException;
    .restart local v4    # "result":Ljavax/net/ssl/SSLEngineResult;
    :pswitch_7
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 351
    :goto_4
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 352
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v10, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v10}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_4

    .line 359
    :pswitch_8
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v9}, Lorg/java_websocket/SSLSocketChannel;->enlargePacketBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    .line 362
    :pswitch_9
    new-instance v7, Ljavax/net/ssl/SSLException;

    const-string v8, "Buffer underflow occurred after a wrap. I don\'t think we should ever get here."

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 366
    :pswitch_a
    :try_start_3
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 367
    :goto_5
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 368
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v10, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v10}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 372
    :catch_2
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v9}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 375
    goto/16 :goto_0

    .line 371
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_4
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 382
    .end local v4    # "result":Ljavax/net/ssl/SSLEngineResult;
    :goto_6
    :pswitch_b
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v9}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v6

    .local v6, "task":Ljava/lang/Runnable;
    if-eqz v6, :cond_8

    .line 383
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v9, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 385
    :cond_8
    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v9}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 386
    goto/16 :goto_0

    .line 297
    .end local v6    # "task":Ljava/lang/Runnable;
    :catch_3
    move-exception v9

    goto/16 :goto_3

    .line 282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_b
        :pswitch_0
    .end packed-switch

    .line 315
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 348
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method private enlargeApplicationBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 416
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/java_websocket/SSLSocketChannel;->enlargeBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private enlargeBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sessionProposedCapacity"    # I

    .prologue
    .line 430
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 431
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 435
    :goto_0
    return-object p1

    .line 433
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0
.end method

.method private enlargePacketBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 406
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/java_websocket/SSLSocketChannel;->enlargeBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private handleBufferUnderflow(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 450
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 456
    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    return-object p1

    .line 453
    .restart local p1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-direct {p0, p1}, Lorg/java_websocket/SSLSocketChannel;->enlargePacketBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 454
    .local v0, "replaceBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 455
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-object p1, v0

    .line 456
    goto :goto_0
.end method

.method private handleEndOfStream()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    :try_start_0
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :goto_0
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel;->closeConnection()V

    .line 497
    return-void

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->log:Lorg/slf4j/Logger;

    const-string v2, "This engine was forced to close inbound, without having received the proper SSL/TLS close notification message from the peer, due to end of stream."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel;->closeConnection()V

    .line 533
    return-void
.end method

.method public getSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isBlocking()Z

    move-result v0

    return v0
.end method

.method public isNeedRead()Z
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedWrite()Z
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 204
    :goto_0
    monitor-exit p0

    return v0

    .line 161
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 163
    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-static {v3, p1}, Lorg/java_websocket/util/ByteBufferUtils;->transferByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0

    .line 165
    :cond_1
    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 167
    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 171
    .local v0, "bytesRead":I
    if-gtz v0, :cond_2

    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 172
    :cond_2
    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 173
    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 174
    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :try_start_2
    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v4, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v5}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 182
    .local v2, "result":Ljavax/net/ssl/SSLEngineResult;
    :try_start_3
    sget-object v3, Lorg/java_websocket/SSLSocketChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 197
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid SSL status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    .end local v0    # "bytesRead":I
    .end local v2    # "result":Ljavax/net/ssl/SSLEngineResult;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 178
    .restart local v0    # "bytesRead":I
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljavax/net/ssl/SSLException;
    :try_start_4
    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->log:Lorg/slf4j/Logger;

    const-string v4, "SSLException during unwrap"

    invoke-interface {v3, v4, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    throw v1

    .line 184
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    .restart local v2    # "result":Ljavax/net/ssl/SSLEngineResult;
    :pswitch_0
    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 185
    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-static {v3, p1}, Lorg/java_websocket/util/ByteBufferUtils;->transferByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    goto/16 :goto_0

    .line 187
    :pswitch_1
    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 188
    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-static {v3, p1}, Lorg/java_websocket/util/ByteBufferUtils;->transferByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    goto/16 :goto_0

    .line 190
    :pswitch_2
    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v3}, Lorg/java_websocket/SSLSocketChannel;->enlargeApplicationBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    .line 191
    invoke-virtual {p0, p1}, Lorg/java_websocket/SSLSocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto/16 :goto_0

    .line 193
    :pswitch_3
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel;->closeConnection()V

    .line 194
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 195
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 200
    .end local v2    # "result":Ljavax/net/ssl/SSLEngineResult;
    :cond_3
    if-gez v0, :cond_4

    .line 201
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel;->handleEndOfStream()V

    .line 203
    :cond_4
    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-static {v3, p1}, Lorg/java_websocket/util/ByteBufferUtils;->transferByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public readMore(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    invoke-virtual {p0, p1}, Lorg/java_websocket/SSLSocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized write(Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p1, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    monitor-enter p0

    const/4 v0, 0x0

    .line 210
    .local v0, "num":I
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 214
    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, v3}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    .line 215
    .local v1, "result":Ljavax/net/ssl/SSLEngineResult;
    sget-object v2, Lorg/java_websocket/SSLSocketChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 232
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid SSL status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    .end local v1    # "result":Ljavax/net/ssl/SSLEngineResult;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 217
    .restart local v1    # "result":Ljavax/net/ssl/SSLEngineResult;
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 218
    :goto_1
    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 223
    :pswitch_1
    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2}, Lorg/java_websocket/SSLSocketChannel;->enlargePacketBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 226
    :pswitch_2
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "Buffer underflow occurred after a wrap. I don\'t think we should ever get here."

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 229
    :pswitch_3
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel;->closeConnection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    const/4 v0, 0x0

    .line 235
    .end local v0    # "num":I
    .end local v1    # "result":Ljavax/net/ssl/SSLEngineResult;
    :cond_1
    monitor-exit p0

    return v0

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public writeMore()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    return-void
.end method
