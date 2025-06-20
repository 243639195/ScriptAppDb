.class public Lorg/java_websocket/WebSocketImpl;
.super Ljava/lang/Object;
.source "WebSocketImpl.java"

# interfaces
.implements Lorg/java_websocket/WebSocket;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DEFAULT_PORT:I = 0x50

.field public static final DEFAULT_WSS_PORT:I = 0x1bb

.field public static final RCVBUF:I = 0x4000


# instance fields
.field private attachment:Ljava/lang/Object;

.field private channel:Ljava/nio/channels/ByteChannel;

.field private closecode:Ljava/lang/Integer;

.field private closedremotely:Ljava/lang/Boolean;

.field private closemessage:Ljava/lang/String;

.field private draft:Lorg/java_websocket/drafts/Draft;

.field private flushandclosestate:Z

.field private handshakerequest:Lorg/java_websocket/handshake/ClientHandshake;

.field public final inQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private key:Ljava/nio/channels/SelectionKey;

.field private knownDrafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/drafts/Draft;",
            ">;"
        }
    .end annotation
.end field

.field private lastPong:J

.field private final log:Lorg/slf4j/Logger;

.field public final outQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile readyState:Lorg/java_websocket/enums/ReadyState;

.field private resourceDescriptor:Ljava/lang/String;

.field private role:Lorg/java_websocket/enums/Role;

.field private final synchronizeWriteObject:Ljava/lang/Object;

.field private tmpHandshakeBytes:Ljava/nio/ByteBuffer;

.field private workerThread:Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

.field private final wsl:Lorg/java_websocket/WebSocketListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/java_websocket/WebSocketImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/java_websocket/WebSocketListener;Ljava/util/List;)V
    .locals 2
    .param p1, "listener"    # Lorg/java_websocket/WebSocketListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/java_websocket/WebSocketListener;",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/drafts/Draft;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p2, "drafts":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/drafts/Draft;>;"
    const/4 v0, 0x0

    check-cast v0, Lorg/java_websocket/drafts/Draft;

    invoke-direct {p0, p1, v0}, Lorg/java_websocket/WebSocketImpl;-><init>(Lorg/java_websocket/WebSocketListener;Lorg/java_websocket/drafts/Draft;)V

    .line 190
    sget-object v0, Lorg/java_websocket/enums/Role;->SERVER:Lorg/java_websocket/enums/Role;

    iput-object v0, p0, Lorg/java_websocket/WebSocketImpl;->role:Lorg/java_websocket/enums/Role;

    .line 192
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/java_websocket/WebSocketImpl;->knownDrafts:Ljava/util/List;

    .line 194
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->knownDrafts:Ljava/util/List;

    new-instance v1, Lorg/java_websocket/drafts/Draft_6455;

    invoke-direct {v1}, Lorg/java_websocket/drafts/Draft_6455;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_1
    iput-object p2, p0, Lorg/java_websocket/WebSocketImpl;->knownDrafts:Ljava/util/List;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/java_websocket/WebSocketListener;Lorg/java_websocket/drafts/Draft;)V
    .locals 3
    .param p1, "listener"    # Lorg/java_websocket/WebSocketListener;
    .param p2, "draft"    # Lorg/java_websocket/drafts/Draft;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const-class v0, Lorg/java_websocket/WebSocketImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/WebSocketImpl;->log:Lorg/slf4j/Logger;

    .line 127
    iput-boolean v2, p0, Lorg/java_websocket/WebSocketImpl;->flushandclosestate:Z

    .line 132
    sget-object v0, Lorg/java_websocket/enums/ReadyState;->NOT_YET_CONNECTED:Lorg/java_websocket/enums/ReadyState;

    iput-object v0, p0, Lorg/java_websocket/WebSocketImpl;->readyState:Lorg/java_websocket/enums/ReadyState;

    .line 142
    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    .line 152
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    .line 157
    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->handshakerequest:Lorg/java_websocket/handshake/ClientHandshake;

    .line 159
    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->closemessage:Ljava/lang/String;

    .line 160
    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->closecode:Ljava/lang/Integer;

    .line 161
    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->closedremotely:Ljava/lang/Boolean;

    .line 163
    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->resourceDescriptor:Ljava/lang/String;

    .line 168
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/java_websocket/WebSocketImpl;->lastPong:J

    .line 173
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/java_websocket/WebSocketImpl;->synchronizeWriteObject:Ljava/lang/Object;

    .line 208
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->role:Lorg/java_websocket/enums/Role;

    sget-object v1, Lorg/java_websocket/enums/Role;->SERVER:Lorg/java_websocket/enums/Role;

    if-ne v0, v1, :cond_1

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_1
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    .line 212
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/java_websocket/WebSocketImpl;->inQueue:Ljava/util/concurrent/BlockingQueue;

    .line 213
    iput-object p1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    .line 214
    sget-object v0, Lorg/java_websocket/enums/Role;->CLIENT:Lorg/java_websocket/enums/Role;

    iput-object v0, p0, Lorg/java_websocket/WebSocketImpl;->role:Lorg/java_websocket/enums/Role;

    .line 215
    if-eqz p2, :cond_2

    .line 216
    invoke-virtual {p2}, Lorg/java_websocket/drafts/Draft;->copyInstance()Lorg/java_websocket/drafts/Draft;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    .line 218
    :cond_2
    return-void
.end method

.method private closeConnectionDueToInternalServerError(Ljava/lang/RuntimeException;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/RuntimeException;

    .prologue
    .line 432
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lorg/java_websocket/WebSocketImpl;->generateHttpResponseDueToError(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/java_websocket/WebSocketImpl;->write(Ljava/nio/ByteBuffer;)V

    .line 433
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    .line 434
    return-void
.end method

.method private closeConnectionDueToWrongHandshake(Lorg/java_websocket/exceptions/InvalidDataException;)V
    .locals 3
    .param p1, "exception"    # Lorg/java_websocket/exceptions/InvalidDataException;

    .prologue
    .line 422
    const/16 v0, 0x194

    invoke-direct {p0, v0}, Lorg/java_websocket/WebSocketImpl;->generateHttpResponseDueToError(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/java_websocket/WebSocketImpl;->write(Ljava/nio/ByteBuffer;)V

    .line 423
    invoke-virtual {p1}, Lorg/java_websocket/exceptions/InvalidDataException;->getCloseCode()I

    move-result v0

    invoke-virtual {p1}, Lorg/java_websocket/exceptions/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    .line 424
    return-void
.end method

.method private decodeFrames(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "socketBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 398
    :try_start_0
    iget-object v3, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v3, p1}, Lorg/java_websocket/drafts/Draft;->translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v2

    .line 399
    .local v2, "frames":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/java_websocket/framing/Framedata;

    .line 400
    .local v1, "f":Lorg/java_websocket/framing/Framedata;
    iget-object v4, p0, Lorg/java_websocket/WebSocketImpl;->log:Lorg/slf4j/Logger;

    const-string v5, "matched frame: {}"

    invoke-interface {v4, v5, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 401
    iget-object v4, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v4, p0, v1}, Lorg/java_websocket/drafts/Draft;->processFrame(Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/framing/Framedata;)V
    :try_end_0
    .catch Lorg/java_websocket/exceptions/LimitExceededException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 403
    .end local v1    # "f":Lorg/java_websocket/framing/Framedata;
    .end local v2    # "frames":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;"
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Lorg/java_websocket/exceptions/LimitExceededException;
    invoke-virtual {v0}, Lorg/java_websocket/exceptions/LimitExceededException;->getLimit()I

    move-result v3

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    .line 405
    iget-object v3, p0, Lorg/java_websocket/WebSocketImpl;->log:Lorg/slf4j/Logger;

    const-string v4, "Closing due to invalid size of frame"

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 406
    iget-object v3, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v3, p0, v0}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 408
    :cond_0
    invoke-virtual {p0, v0}, Lorg/java_websocket/WebSocketImpl;->close(Lorg/java_websocket/exceptions/InvalidDataException;)V

    .line 414
    .end local v0    # "e":Lorg/java_websocket/exceptions/LimitExceededException;
    :cond_1
    :goto_1
    return-void

    .line 409
    :catch_1
    move-exception v0

    .line 410
    .local v0, "e":Lorg/java_websocket/exceptions/InvalidDataException;
    iget-object v3, p0, Lorg/java_websocket/WebSocketImpl;->log:Lorg/slf4j/Logger;

    const-string v4, "Closing due to invalid data in frame"

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    iget-object v3, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v3, p0, v0}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 412
    invoke-virtual {p0, v0}, Lorg/java_websocket/WebSocketImpl;->close(Lorg/java_websocket/exceptions/InvalidDataException;)V

    goto :goto_1
.end method

.method private decodeHandshake(Ljava/nio/ByteBuffer;)Z
    .locals 14
    .param p1, "socketBufferNew"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 254
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    if-nez v10, :cond_1

    .line 255
    move-object v8, p1

    .line 269
    .local v8, "socketBuffer":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 273
    :try_start_0
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->role:Lorg/java_websocket/enums/Role;

    sget-object v11, Lorg/java_websocket/enums/Role;->SERVER:Lorg/java_websocket/enums/Role;

    if-ne v10, v11, :cond_9

    .line 274
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    if-nez v10, :cond_6

    .line 275
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->knownDrafts:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/java_websocket/drafts/Draft;

    .line 276
    .local v2, "d":Lorg/java_websocket/drafts/Draft;
    invoke-virtual {v2}, Lorg/java_websocket/drafts/Draft;->copyInstance()Lorg/java_websocket/drafts/Draft;
    :try_end_0
    .catch Lorg/java_websocket/exceptions/InvalidHandshakeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v2

    .line 278
    :try_start_1
    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->role:Lorg/java_websocket/enums/Role;

    invoke-virtual {v2, v11}, Lorg/java_websocket/drafts/Draft;->setParseMode(Lorg/java_websocket/enums/Role;)V

    .line 279
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 280
    invoke-virtual {v2, v8}, Lorg/java_websocket/drafts/Draft;->translateHandshake(Ljava/nio/ByteBuffer;)Lorg/java_websocket/handshake/Handshakedata;

    move-result-object v9

    .line 281
    .local v9, "tmphandshake":Lorg/java_websocket/handshake/Handshakedata;
    instance-of v11, v9, Lorg/java_websocket/handshake/ClientHandshake;

    if-nez v11, :cond_3

    .line 282
    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->log:Lorg/slf4j/Logger;

    const-string v12, "Closing due to wrong handshake"

    invoke-interface {v11, v12}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 283
    new-instance v11, Lorg/java_websocket/exceptions/InvalidDataException;

    const/16 v12, 0x3ea

    const-string v13, "wrong http function"

    invoke-direct {v11, v12, v13}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v11}, Lorg/java_websocket/WebSocketImpl;->closeConnectionDueToWrongHandshake(Lorg/java_websocket/exceptions/InvalidDataException;)V
    :try_end_1
    .catch Lorg/java_websocket/exceptions/InvalidHandshakeException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_1 .. :try_end_1} :catch_5

    .line 285
    const/4 v10, 0x0

    .line 392
    .end local v2    # "d":Lorg/java_websocket/drafts/Draft;
    .end local v9    # "tmphandshake":Lorg/java_websocket/handshake/Handshakedata;
    :goto_2
    return v10

    .line 257
    .end local v8    # "socketBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 258
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    .line 259
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 260
    .local v1, "buf":Ljava/nio/ByteBuffer;
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 261
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 262
    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    .line 265
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    :cond_2
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v10, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 266
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 267
    iget-object v8, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    .restart local v8    # "socketBuffer":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 287
    .restart local v2    # "d":Lorg/java_websocket/drafts/Draft;
    .restart local v9    # "tmphandshake":Lorg/java_websocket/handshake/Handshakedata;
    :cond_3
    :try_start_2
    move-object v0, v9

    check-cast v0, Lorg/java_websocket/handshake/ClientHandshake;

    move-object v4, v0

    .line 288
    .local v4, "handshake":Lorg/java_websocket/handshake/ClientHandshake;
    invoke-virtual {v2, v4}, Lorg/java_websocket/drafts/Draft;->acceptHandshakeAsServer(Lorg/java_websocket/handshake/ClientHandshake;)Lorg/java_websocket/enums/HandshakeState;

    move-result-object v5

    .line 289
    .local v5, "handshakestate":Lorg/java_websocket/enums/HandshakeState;
    sget-object v11, Lorg/java_websocket/enums/HandshakeState;->MATCHED:Lorg/java_websocket/enums/HandshakeState;

    if-ne v5, v11, :cond_0

    .line 290
    invoke-interface {v4}, Lorg/java_websocket/handshake/ClientHandshake;->getResourceDescriptor()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lorg/java_websocket/WebSocketImpl;->resourceDescriptor:Ljava/lang/String;
    :try_end_2
    .catch Lorg/java_websocket/exceptions/InvalidHandshakeException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_2 .. :try_end_2} :catch_5

    .line 293
    :try_start_3
    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v11, p0, v2, v4}, Lorg/java_websocket/WebSocketListener;->onWebsocketHandshakeReceivedAsServer(Lorg/java_websocket/WebSocket;Lorg/java_websocket/drafts/Draft;Lorg/java_websocket/handshake/ClientHandshake;)Lorg/java_websocket/handshake/ServerHandshakeBuilder;
    :try_end_3
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/java_websocket/exceptions/InvalidHandshakeException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v7

    .line 305
    .local v7, "response":Lorg/java_websocket/handshake/ServerHandshakeBuilder;
    :try_start_4
    invoke-virtual {v2, v4, v7}, Lorg/java_websocket/drafts/Draft;->postProcessHandshakeResponseAsServer(Lorg/java_websocket/handshake/ClientHandshake;Lorg/java_websocket/handshake/ServerHandshakeBuilder;)Lorg/java_websocket/handshake/HandshakeBuilder;

    move-result-object v11

    .line 304
    invoke-virtual {v2, v11}, Lorg/java_websocket/drafts/Draft;->createHandshake(Lorg/java_websocket/handshake/Handshakedata;)Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/java_websocket/WebSocketImpl;->write(Ljava/util/List;)V

    .line 306
    iput-object v2, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    .line 307
    invoke-direct {p0, v4}, Lorg/java_websocket/WebSocketImpl;->open(Lorg/java_websocket/handshake/Handshakedata;)V

    .line 308
    const/4 v10, 0x1

    goto :goto_2

    .line 294
    .end local v7    # "response":Lorg/java_websocket/handshake/ServerHandshakeBuilder;
    :catch_0
    move-exception v3

    .line 295
    .local v3, "e":Lorg/java_websocket/exceptions/InvalidDataException;
    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->log:Lorg/slf4j/Logger;

    const-string v12, "Closing due to wrong handshake. Possible handshake rejection"

    invoke-interface {v11, v12, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    invoke-direct {p0, v3}, Lorg/java_websocket/WebSocketImpl;->closeConnectionDueToWrongHandshake(Lorg/java_websocket/exceptions/InvalidDataException;)V

    .line 297
    const/4 v10, 0x0

    goto :goto_2

    .line 298
    .end local v3    # "e":Lorg/java_websocket/exceptions/InvalidDataException;
    :catch_1
    move-exception v3

    .line 299
    .local v3, "e":Ljava/lang/RuntimeException;
    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->log:Lorg/slf4j/Logger;

    const-string v12, "Closing due to internal server error"

    invoke-interface {v11, v12, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v11, p0, v3}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 301
    invoke-direct {p0, v3}, Lorg/java_websocket/WebSocketImpl;->closeConnectionDueToInternalServerError(Ljava/lang/RuntimeException;)V
    :try_end_4
    .catch Lorg/java_websocket/exceptions/InvalidHandshakeException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lorg/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_4 .. :try_end_4} :catch_5

    .line 302
    const/4 v10, 0x0

    goto :goto_2

    .line 314
    .end local v2    # "d":Lorg/java_websocket/drafts/Draft;
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "handshake":Lorg/java_websocket/handshake/ClientHandshake;
    .end local v5    # "handshakestate":Lorg/java_websocket/enums/HandshakeState;
    .end local v9    # "tmphandshake":Lorg/java_websocket/handshake/Handshakedata;
    :cond_4
    :try_start_5
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    if-nez v10, :cond_5

    .line 315
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->log:Lorg/slf4j/Logger;

    const-string v11, "Closing due to protocol error: no draft matches"

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 316
    new-instance v10, Lorg/java_websocket/exceptions/InvalidDataException;

    const/16 v11, 0x3ea

    const-string v12, "no draft matches"

    invoke-direct {v10, v11, v12}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v10}, Lorg/java_websocket/WebSocketImpl;->closeConnectionDueToWrongHandshake(Lorg/java_websocket/exceptions/InvalidDataException;)V

    .line 319
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 322
    :cond_6
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v10, v8}, Lorg/java_websocket/drafts/Draft;->translateHandshake(Ljava/nio/ByteBuffer;)Lorg/java_websocket/handshake/Handshakedata;

    move-result-object v9

    .line 323
    .restart local v9    # "tmphandshake":Lorg/java_websocket/handshake/Handshakedata;
    instance-of v10, v9, Lorg/java_websocket/handshake/ClientHandshake;

    if-nez v10, :cond_7

    .line 324
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->log:Lorg/slf4j/Logger;

    const-string v11, "Closing due to protocol error: wrong http function"

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 325
    const/16 v10, 0x3ea

    const-string v11, "wrong http function"

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    .line 326
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 328
    :cond_7
    move-object v0, v9

    check-cast v0, Lorg/java_websocket/handshake/ClientHandshake;

    move-object v4, v0

    .line 329
    .restart local v4    # "handshake":Lorg/java_websocket/handshake/ClientHandshake;
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v10, v4}, Lorg/java_websocket/drafts/Draft;->acceptHandshakeAsServer(Lorg/java_websocket/handshake/ClientHandshake;)Lorg/java_websocket/enums/HandshakeState;

    move-result-object v5

    .line 331
    .restart local v5    # "handshakestate":Lorg/java_websocket/enums/HandshakeState;
    sget-object v10, Lorg/java_websocket/enums/HandshakeState;->MATCHED:Lorg/java_websocket/enums/HandshakeState;

    if-ne v5, v10, :cond_8

    .line 332
    invoke-direct {p0, v4}, Lorg/java_websocket/WebSocketImpl;->open(Lorg/java_websocket/handshake/Handshakedata;)V

    .line 333
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 335
    :cond_8
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->log:Lorg/slf4j/Logger;

    const-string v11, "Closing due to protocol error: the handshake did finally not match"

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 336
    const/16 v10, 0x3ea

    const-string v11, "the handshake did finally not match"

    invoke-virtual {p0, v10, v11}, Lorg/java_websocket/WebSocketImpl;->close(ILjava/lang/String;)V

    .line 338
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 340
    .end local v4    # "handshake":Lorg/java_websocket/handshake/ClientHandshake;
    .end local v5    # "handshakestate":Lorg/java_websocket/enums/HandshakeState;
    .end local v9    # "tmphandshake":Lorg/java_websocket/handshake/Handshakedata;
    :cond_9
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->role:Lorg/java_websocket/enums/Role;

    sget-object v11, Lorg/java_websocket/enums/Role;->CLIENT:Lorg/java_websocket/enums/Role;

    if-ne v10, v11, :cond_c

    .line 341
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->role:Lorg/java_websocket/enums/Role;

    invoke-virtual {v10, v11}, Lorg/java_websocket/drafts/Draft;->setParseMode(Lorg/java_websocket/enums/Role;)V

    .line 342
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v10, v8}, Lorg/java_websocket/drafts/Draft;->translateHandshake(Ljava/nio/ByteBuffer;)Lorg/java_websocket/handshake/Handshakedata;

    move-result-object v9

    .line 343
    .restart local v9    # "tmphandshake":Lorg/java_websocket/handshake/Handshakedata;
    instance-of v10, v9, Lorg/java_websocket/handshake/ServerHandshake;

    if-nez v10, :cond_a

    .line 344
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->log:Lorg/slf4j/Logger;

    const-string v11, "Closing due to protocol error: wrong http function"

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 345
    const/16 v10, 0x3ea

    const-string v11, "wrong http function"

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    .line 346
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 348
    :cond_a
    move-object v0, v9

    check-cast v0, Lorg/java_websocket/handshake/ServerHandshake;

    move-object v4, v0

    .line 349
    .local v4, "handshake":Lorg/java_websocket/handshake/ServerHandshake;
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->handshakerequest:Lorg/java_websocket/handshake/ClientHandshake;

    invoke-virtual {v10, v11, v4}, Lorg/java_websocket/drafts/Draft;->acceptHandshakeAsClient(Lorg/java_websocket/handshake/ClientHandshake;Lorg/java_websocket/handshake/ServerHandshake;)Lorg/java_websocket/enums/HandshakeState;

    move-result-object v5

    .line 350
    .restart local v5    # "handshakestate":Lorg/java_websocket/enums/HandshakeState;
    sget-object v10, Lorg/java_websocket/enums/HandshakeState;->MATCHED:Lorg/java_websocket/enums/HandshakeState;
    :try_end_5
    .catch Lorg/java_websocket/exceptions/InvalidHandshakeException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_5 .. :try_end_5} :catch_5

    if-ne v5, v10, :cond_b

    .line 352
    :try_start_6
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->handshakerequest:Lorg/java_websocket/handshake/ClientHandshake;

    invoke-interface {v10, p0, v11, v4}, Lorg/java_websocket/WebSocketListener;->onWebsocketHandshakeReceivedAsClient(Lorg/java_websocket/WebSocket;Lorg/java_websocket/handshake/ClientHandshake;Lorg/java_websocket/handshake/ServerHandshake;)V
    :try_end_6
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/java_websocket/exceptions/InvalidHandshakeException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 363
    :try_start_7
    invoke-direct {p0, v4}, Lorg/java_websocket/WebSocketImpl;->open(Lorg/java_websocket/handshake/Handshakedata;)V

    .line 364
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 353
    :catch_2
    move-exception v3

    .line 354
    .local v3, "e":Lorg/java_websocket/exceptions/InvalidDataException;
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->log:Lorg/slf4j/Logger;

    const-string v11, "Closing due to invalid data exception. Possible handshake rejection"

    invoke-interface {v10, v11, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 355
    invoke-virtual {v3}, Lorg/java_websocket/exceptions/InvalidDataException;->getCloseCode()I

    move-result v10

    invoke-virtual {v3}, Lorg/java_websocket/exceptions/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    .line 356
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 357
    .end local v3    # "e":Lorg/java_websocket/exceptions/InvalidDataException;
    :catch_3
    move-exception v3

    .line 358
    .local v3, "e":Ljava/lang/RuntimeException;
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->log:Lorg/slf4j/Logger;

    const-string v11, "Closing since client was never connected"

    invoke-interface {v10, v11, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 359
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v10, p0, v3}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 360
    const/4 v10, -0x1

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    .line 361
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 366
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_b
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->log:Lorg/slf4j/Logger;

    const-string v11, "Closing due to protocol error: draft {} refuses handshake"

    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-interface {v10, v11, v12}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    const/16 v10, 0x3ea

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "draft "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " refuses handshake"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lorg/java_websocket/WebSocketImpl;->close(ILjava/lang/String;)V
    :try_end_7
    .catch Lorg/java_websocket/exceptions/InvalidHandshakeException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_7 .. :try_end_7} :catch_5

    .line 392
    .end local v4    # "handshake":Lorg/java_websocket/handshake/ServerHandshake;
    .end local v5    # "handshakestate":Lorg/java_websocket/enums/HandshakeState;
    .end local v9    # "tmphandshake":Lorg/java_websocket/handshake/Handshakedata;
    :cond_c
    :goto_3
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 370
    :catch_4
    move-exception v3

    .line 371
    .local v3, "e":Lorg/java_websocket/exceptions/InvalidHandshakeException;
    :try_start_8
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->log:Lorg/slf4j/Logger;

    const-string v11, "Closing due to invalid handshake"

    invoke-interface {v10, v11, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 372
    invoke-virtual {p0, v3}, Lorg/java_websocket/WebSocketImpl;->close(Lorg/java_websocket/exceptions/InvalidDataException;)V
    :try_end_8
    .catch Lorg/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_3

    .line 374
    .end local v3    # "e":Lorg/java_websocket/exceptions/InvalidHandshakeException;
    :catch_5
    move-exception v3

    .line 375
    .local v3, "e":Lorg/java_websocket/exceptions/IncompleteHandshakeException;
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    if-nez v10, :cond_f

    .line 376
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 377
    invoke-virtual {v3}, Lorg/java_websocket/exceptions/IncompleteHandshakeException;->getPreferredSize()I

    move-result v6

    .line 378
    .local v6, "newsize":I
    if-nez v6, :cond_e

    .line 379
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    add-int/lit8 v6, v10, 0x10

    .line 383
    :cond_d
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    iput-object v10, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    .line 385
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v10, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 381
    :cond_e
    sget-boolean v10, Lorg/java_websocket/WebSocketImpl;->$assertionsDisabled:Z

    if-nez v10, :cond_d

    invoke-virtual {v3}, Lorg/java_websocket/exceptions/IncompleteHandshakeException;->getPreferredSize()I

    move-result v10

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-ge v10, v11, :cond_d

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 388
    .end local v6    # "newsize":I
    :cond_f
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 389
    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_3

    .line 310
    .end local v3    # "e":Lorg/java_websocket/exceptions/IncompleteHandshakeException;
    .restart local v2    # "d":Lorg/java_websocket/drafts/Draft;
    :catch_6
    move-exception v11

    goto/16 :goto_1
.end method

.method private generateHttpResponseDueToError(I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 444
    packed-switch p1, :pswitch_data_0

    .line 450
    const-string v0, "500 Internal Server Error"

    .line 452
    .local v0, "errorCodeDescription":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP/1.1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\nContent-Type: text/html\r\nServer: TooTallNate Java-WebSocket\r\nContent-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 454
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n\r\n<html><head></head><body><h1>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</h1></body></html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 452
    invoke-static {v1}, Lorg/java_websocket/util/Charsetfunctions;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 446
    .end local v0    # "errorCodeDescription":Ljava/lang/String;
    :pswitch_0
    const-string v0, "404 WebSocket Upgrade Failure"

    .line 447
    .restart local v0    # "errorCodeDescription":Ljava/lang/String;
    goto :goto_0

    .line 444
    :pswitch_data_0
    .packed-switch 0x194
        :pswitch_0
    .end packed-switch
.end method

.method private open(Lorg/java_websocket/handshake/Handshakedata;)V
    .locals 4
    .param p1, "d"    # Lorg/java_websocket/handshake/Handshakedata;

    .prologue
    .line 753
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->log:Lorg/slf4j/Logger;

    const-string v2, "open using draft: {}"

    iget-object v3, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 754
    sget-object v1, Lorg/java_websocket/enums/ReadyState;->OPEN:Lorg/java_websocket/enums/ReadyState;

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->readyState:Lorg/java_websocket/enums/ReadyState;

    .line 756
    :try_start_0
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, p1}, Lorg/java_websocket/WebSocketListener;->onWebsocketOpen(Lorg/java_websocket/WebSocket;Lorg/java_websocket/handshake/Handshakedata;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    :goto_0
    return-void

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private send(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 663
    .local p1, "frames":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/java_websocket/framing/Framedata;>;"
    invoke-virtual {p0}, Lorg/java_websocket/WebSocketImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 664
    new-instance v2, Lorg/java_websocket/exceptions/WebsocketNotConnectedException;

    invoke-direct {v2}, Lorg/java_websocket/exceptions/WebsocketNotConnectedException;-><init>()V

    throw v2

    .line 666
    :cond_0
    if-nez p1, :cond_1

    .line 667
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 669
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v1, "outgoingFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/java_websocket/framing/Framedata;

    .line 671
    .local v0, "f":Lorg/java_websocket/framing/Framedata;
    iget-object v3, p0, Lorg/java_websocket/WebSocketImpl;->log:Lorg/slf4j/Logger;

    const-string v4, "send frame: {}"

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 672
    iget-object v3, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v3, v0}, Lorg/java_websocket/drafts/Draft;->createBinaryFrame(Lorg/java_websocket/framing/Framedata;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 674
    .end local v0    # "f":Lorg/java_websocket/framing/Framedata;
    :cond_2
    invoke-direct {p0, v1}, Lorg/java_websocket/WebSocketImpl;->write(Ljava/util/List;)V

    .line 675
    return-void
.end method

.method private write(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 732
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->log:Lorg/slf4j/Logger;

    const-string v2, "write({}): {}"

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 733
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v4, 0x3e8

    if-le v0, v4, :cond_0

    const-string v0, "too big to display"

    .line 732
    :goto_0
    invoke-interface {v1, v2, v3, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 735
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 736
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v0, p0}, Lorg/java_websocket/WebSocketListener;->onWriteDemand(Lorg/java_websocket/WebSocket;)V

    .line 737
    return-void

    .line 733
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private write(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 745
    .local p1, "bufs":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    iget-object v2, p0, Lorg/java_websocket/WebSocketImpl;->synchronizeWriteObject:Ljava/lang/Object;

    monitor-enter v2

    .line 746
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 747
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0}, Lorg/java_websocket/WebSocketImpl;->write(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 749
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 750
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 823
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lorg/java_websocket/WebSocketImpl;->close(I)V

    .line 824
    return-void
.end method

.method public close(I)V
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 623
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/java_websocket/WebSocketImpl;->close(ILjava/lang/String;Z)V

    .line 624
    return-void
.end method

.method public close(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 506
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/java_websocket/WebSocketImpl;->close(ILjava/lang/String;Z)V

    .line 507
    return-void
.end method

.method public declared-synchronized close(ILjava/lang/String;Z)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "remote"    # Z

    .prologue
    const/16 v5, 0x3ee

    const/4 v4, -0x3

    .line 459
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/java_websocket/WebSocketImpl;->readyState:Lorg/java_websocket/enums/ReadyState;

    sget-object v3, Lorg/java_websocket/enums/ReadyState;->CLOSING:Lorg/java_websocket/enums/ReadyState;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lorg/java_websocket/WebSocketImpl;->readyState:Lorg/java_websocket/enums/ReadyState;

    sget-object v3, Lorg/java_websocket/enums/ReadyState;->CLOSED:Lorg/java_websocket/enums/ReadyState;

    if-eq v2, v3, :cond_1

    .line 460
    iget-object v2, p0, Lorg/java_websocket/WebSocketImpl;->readyState:Lorg/java_websocket/enums/ReadyState;

    sget-object v3, Lorg/java_websocket/enums/ReadyState;->OPEN:Lorg/java_websocket/enums/ReadyState;

    if-ne v2, v3, :cond_5

    .line 461
    if-ne p1, v5, :cond_2

    .line 462
    sget-boolean v2, Lorg/java_websocket/WebSocketImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-eqz p3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 463
    :cond_0
    :try_start_1
    sget-object v2, Lorg/java_websocket/enums/ReadyState;->CLOSING:Lorg/java_websocket/enums/ReadyState;

    iput-object v2, p0, Lorg/java_websocket/WebSocketImpl;->readyState:Lorg/java_websocket/enums/ReadyState;

    .line 464
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 467
    :cond_2
    :try_start_2
    iget-object v2, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v2}, Lorg/java_websocket/drafts/Draft;->getCloseHandshakeType()Lorg/java_websocket/enums/CloseHandshakeType;

    move-result-object v2

    sget-object v3, Lorg/java_websocket/enums/CloseHandshakeType;->NONE:Lorg/java_websocket/enums/CloseHandshakeType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v2, v3, :cond_4

    .line 469
    if-nez p3, :cond_3

    .line 471
    :try_start_3
    iget-object v2, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v2, p0, p1, p2}, Lorg/java_websocket/WebSocketListener;->onWebsocketCloseInitiated(Lorg/java_websocket/WebSocket;ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 476
    :cond_3
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Lorg/java_websocket/WebSocketImpl;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 477
    new-instance v0, Lorg/java_websocket/framing/CloseFrame;

    invoke-direct {v0}, Lorg/java_websocket/framing/CloseFrame;-><init>()V

    .line 478
    .local v0, "closeFrame":Lorg/java_websocket/framing/CloseFrame;
    invoke-virtual {v0, p2}, Lorg/java_websocket/framing/CloseFrame;->setReason(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0, p1}, Lorg/java_websocket/framing/CloseFrame;->setCode(I)V

    .line 480
    invoke-virtual {v0}, Lorg/java_websocket/framing/CloseFrame;->isValid()V

    .line 481
    invoke-virtual {p0, v0}, Lorg/java_websocket/WebSocketImpl;->sendFrame(Lorg/java_websocket/framing/Framedata;)V
    :try_end_4
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 489
    .end local v0    # "closeFrame":Lorg/java_websocket/framing/CloseFrame;
    :cond_4
    :goto_2
    :try_start_5
    invoke-virtual {p0, p1, p2, p3}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    .line 498
    :goto_3
    sget-object v2, Lorg/java_websocket/enums/ReadyState;->CLOSING:Lorg/java_websocket/enums/ReadyState;

    iput-object v2, p0, Lorg/java_websocket/WebSocketImpl;->readyState:Lorg/java_websocket/enums/ReadyState;

    .line 499
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 472
    :catch_0
    move-exception v1

    .line 473
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_6
    iget-object v2, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v2, p0, v1}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    :try_end_6
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 483
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 484
    .local v1, "e":Lorg/java_websocket/exceptions/InvalidDataException;
    :try_start_7
    iget-object v2, p0, Lorg/java_websocket/WebSocketImpl;->log:Lorg/slf4j/Logger;

    const-string v3, "generated frame is invalid"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 485
    iget-object v2, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v2, p0, v1}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 486
    const/16 v2, 0x3ee

    const-string v3, "generated frame is invalid"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    goto :goto_2

    .line 490
    .end local v1    # "e":Lorg/java_websocket/exceptions/InvalidDataException;
    :cond_5
    if-ne p1, v4, :cond_7

    .line 491
    sget-boolean v2, Lorg/java_websocket/WebSocketImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_6

    if-nez p3, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 492
    :cond_6
    const/4 v2, -0x3

    const/4 v3, 0x1

    invoke-virtual {p0, v2, p2, v3}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    goto :goto_3

    .line 493
    :cond_7
    const/16 v2, 0x3ea

    if-ne p1, v2, :cond_8

    .line 494
    invoke-virtual {p0, p1, p2, p3}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    goto :goto_3

    .line 496
    :cond_8
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p2, v3}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3
.end method

.method public close(Lorg/java_websocket/exceptions/InvalidDataException;)V
    .locals 3
    .param p1, "e"    # Lorg/java_websocket/exceptions/InvalidDataException;

    .prologue
    .line 627
    invoke-virtual {p1}, Lorg/java_websocket/exceptions/InvalidDataException;->getCloseCode()I

    move-result v0

    invoke-virtual {p1}, Lorg/java_websocket/exceptions/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/java_websocket/WebSocketImpl;->close(ILjava/lang/String;Z)V

    .line 628
    return-void
.end method

.method public closeConnection()V
    .locals 3

    .prologue
    .line 569
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->closedremotely:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 570
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this method must be used in conjunction with flushAndClose"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_0
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->closecode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->closemessage:Ljava/lang/String;

    iget-object v2, p0, Lorg/java_websocket/WebSocketImpl;->closedremotely:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;Z)V

    .line 573
    return-void
.end method

.method public closeConnection(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 576
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;Z)V

    .line 577
    return-void
.end method

.method public declared-synchronized closeConnection(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "remote"    # Z

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->readyState:Lorg/java_websocket/enums/ReadyState;

    sget-object v2, Lorg/java_websocket/enums/ReadyState;->CLOSED:Lorg/java_websocket/enums/ReadyState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    .line 562
    :goto_0
    monitor-exit p0

    return-void

    .line 530
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->readyState:Lorg/java_websocket/enums/ReadyState;

    sget-object v2, Lorg/java_websocket/enums/ReadyState;->OPEN:Lorg/java_websocket/enums/ReadyState;

    if-ne v1, v2, :cond_1

    .line 531
    const/16 v1, 0x3ee

    if-ne p1, v1, :cond_1

    .line 532
    sget-object v1, Lorg/java_websocket/enums/ReadyState;->CLOSING:Lorg/java_websocket/enums/ReadyState;

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->readyState:Lorg/java_websocket/enums/ReadyState;

    .line 535
    :cond_1
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    if-eqz v1, :cond_2

    .line 537
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 539
    :cond_2
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 541
    :try_start_2
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/ByteChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 552
    :cond_3
    :goto_1
    :try_start_3
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, p1, p2, p3}, Lorg/java_websocket/WebSocketListener;->onWebsocketClose(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 557
    :goto_2
    :try_start_4
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    if-eqz v1, :cond_4

    .line 558
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v1}, Lorg/java_websocket/drafts/Draft;->reset()V

    .line 560
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->handshakerequest:Lorg/java_websocket/handshake/ClientHandshake;

    .line 561
    sget-object v1, Lorg/java_websocket/enums/ReadyState;->CLOSED:Lorg/java_websocket/enums/ReadyState;

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->readyState:Lorg/java_websocket/enums/ReadyState;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 526
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Broken pipe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 544
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->log:Lorg/slf4j/Logger;

    const-string v2, "Caught IOException: Broken pipe during closeConnection()"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 546
    :cond_5
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->log:Lorg/slf4j/Logger;

    const-string v2, "Exception during channel.close()"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 547
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto :goto_1

    .line 553
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method protected closeConnection(IZ)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "remote"    # Z

    .prologue
    .line 565
    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;Z)V

    .line 566
    return-void
.end method

.method public decode(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "socketBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 226
    sget-boolean v0, Lorg/java_websocket/WebSocketImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 227
    :cond_0
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->log:Lorg/slf4j/Logger;

    const-string v2, "process({}): ({})"

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 228
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v4, 0x3e8

    if-le v0, v4, :cond_2

    const-string v0, "too big to display"

    .line 227
    :goto_0
    invoke-interface {v1, v2, v3, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->readyState:Lorg/java_websocket/enums/ReadyState;

    sget-object v1, Lorg/java_websocket/enums/ReadyState;->NOT_YET_CONNECTED:Lorg/java_websocket/enums/ReadyState;

    if-eq v0, v1, :cond_3

    .line 232
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->readyState:Lorg/java_websocket/enums/ReadyState;

    sget-object v1, Lorg/java_websocket/enums/ReadyState;->OPEN:Lorg/java_websocket/enums/ReadyState;

    if-ne v0, v1, :cond_1

    .line 233
    invoke-direct {p0, p1}, Lorg/java_websocket/WebSocketImpl;->decodeFrames(Ljava/nio/ByteBuffer;)V

    .line 246
    :cond_1
    :goto_1
    return-void

    .line 228
    :cond_2
    new-instance v0, Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-direct {v0, v4, v5, v6}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0

    .line 236
    :cond_3
    invoke-direct {p0, p1}, Lorg/java_websocket/WebSocketImpl;->decodeHandshake(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/java_websocket/WebSocketImpl;->isClosing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/java_websocket/WebSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    sget-boolean v0, Lorg/java_websocket/WebSocketImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-ne v0, v1, :cond_4

    .line 238
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 237
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 239
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 240
    invoke-direct {p0, p1}, Lorg/java_websocket/WebSocketImpl;->decodeFrames(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 241
    :cond_5
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lorg/java_websocket/WebSocketImpl;->decodeFrames(Ljava/nio/ByteBuffer;)V

    goto :goto_1
.end method

.method public eot()V
    .locals 5

    .prologue
    const/16 v4, 0x3ee

    const/16 v3, 0x3e8

    const/4 v2, 0x1

    .line 604
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->readyState:Lorg/java_websocket/enums/ReadyState;

    sget-object v1, Lorg/java_websocket/enums/ReadyState;->NOT_YET_CONNECTED:Lorg/java_websocket/enums/ReadyState;

    if-ne v0, v1, :cond_0

    .line 605
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lorg/java_websocket/WebSocketImpl;->closeConnection(IZ)V

    .line 619
    :goto_0
    return-void

    .line 606
    :cond_0
    iget-boolean v0, p0, Lorg/java_websocket/WebSocketImpl;->flushandclosestate:Z

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->closecode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->closemessage:Ljava/lang/String;

    iget-object v2, p0, Lorg/java_websocket/WebSocketImpl;->closedremotely:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;Z)V

    goto :goto_0

    .line 608
    :cond_1
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v0}, Lorg/java_websocket/drafts/Draft;->getCloseHandshakeType()Lorg/java_websocket/enums/CloseHandshakeType;

    move-result-object v0

    sget-object v1, Lorg/java_websocket/enums/CloseHandshakeType;->NONE:Lorg/java_websocket/enums/CloseHandshakeType;

    if-ne v0, v1, :cond_2

    .line 609
    invoke-virtual {p0, v3, v2}, Lorg/java_websocket/WebSocketImpl;->closeConnection(IZ)V

    goto :goto_0

    .line 610
    :cond_2
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v0}, Lorg/java_websocket/drafts/Draft;->getCloseHandshakeType()Lorg/java_websocket/enums/CloseHandshakeType;

    move-result-object v0

    sget-object v1, Lorg/java_websocket/enums/CloseHandshakeType;->ONEWAY:Lorg/java_websocket/enums/CloseHandshakeType;

    if-ne v0, v1, :cond_4

    .line 611
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->role:Lorg/java_websocket/enums/Role;

    sget-object v1, Lorg/java_websocket/enums/Role;->SERVER:Lorg/java_websocket/enums/Role;

    if-ne v0, v1, :cond_3

    .line 612
    invoke-virtual {p0, v4, v2}, Lorg/java_websocket/WebSocketImpl;->closeConnection(IZ)V

    goto :goto_0

    .line 614
    :cond_3
    invoke-virtual {p0, v3, v2}, Lorg/java_websocket/WebSocketImpl;->closeConnection(IZ)V

    goto :goto_0

    .line 617
    :cond_4
    invoke-virtual {p0, v4, v2}, Lorg/java_websocket/WebSocketImpl;->closeConnection(IZ)V

    goto :goto_0
.end method

.method public declared-synchronized flushAndClose(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "remote"    # Z

    .prologue
    .line 580
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/java_websocket/WebSocketImpl;->flushandclosestate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 601
    :goto_0
    monitor-exit p0

    return-void

    .line 583
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->closecode:Ljava/lang/Integer;

    .line 584
    iput-object p2, p0, Lorg/java_websocket/WebSocketImpl;->closemessage:Ljava/lang/String;

    .line 585
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->closedremotely:Ljava/lang/Boolean;

    .line 587
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/java_websocket/WebSocketImpl;->flushandclosestate:Z

    .line 589
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v1, p0}, Lorg/java_websocket/WebSocketListener;->onWriteDemand(Lorg/java_websocket/WebSocket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    :try_start_2
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, p1, p2, p3}, Lorg/java_websocket/WebSocketListener;->onWebsocketClosing(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 597
    :goto_1
    :try_start_3
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    if-eqz v1, :cond_1

    .line 598
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v1}, Lorg/java_websocket/drafts/Draft;->reset()V

    .line 600
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->handshakerequest:Lorg/java_websocket/handshake/ClientHandshake;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 580
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_4
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->log:Lorg/slf4j/Logger;

    const-string v2, "Exception in onWebsocketClosing"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 595
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getAttachment()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 859
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->attachment:Ljava/lang/Object;

    return-object v0
.end method

.method public getChannel()Ljava/nio/channels/ByteChannel;
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    return-object v0
.end method

.method public getDraft()Lorg/java_websocket/drafts/Draft;
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    return-object v0
.end method

.method getLastPong()J
    .locals 2

    .prologue
    .line 837
    iget-wide v0, p0, Lorg/java_websocket/WebSocketImpl;->lastPong:J

    return-wide v0
.end method

.method public getLocalSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v0, p0}, Lorg/java_websocket/WebSocketListener;->getLocalSocketAddress(Lorg/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Lorg/java_websocket/protocols/IProtocol;
    .locals 2

    .prologue
    .line 878
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    if-nez v0, :cond_0

    .line 879
    const/4 v0, 0x0

    .line 884
    :goto_0
    return-object v0

    .line 881
    :cond_0
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    instance-of v0, v0, Lorg/java_websocket/drafts/Draft_6455;

    if-nez v0, :cond_1

    .line 882
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This draft does not support Sec-WebSocket-Protocol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 884
    :cond_1
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    check-cast v0, Lorg/java_websocket/drafts/Draft_6455;

    invoke-virtual {v0}, Lorg/java_websocket/drafts/Draft_6455;->getProtocol()Lorg/java_websocket/protocols/IProtocol;

    move-result-object v0

    goto :goto_0
.end method

.method public getReadyState()Lorg/java_websocket/enums/ReadyState;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->readyState:Lorg/java_websocket/enums/ReadyState;

    return-object v0
.end method

.method public getRemoteSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v0, p0}, Lorg/java_websocket/WebSocketListener;->getRemoteSocketAddress(Lorg/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getResourceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->resourceDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 2

    .prologue
    .line 869
    invoke-virtual {p0}, Lorg/java_websocket/WebSocketImpl;->hasSSLSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 870
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This websocket uses ws instead of wss. No SSLSession available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :cond_0
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    check-cast v0, Lorg/java_websocket/interfaces/ISSLChannel;

    invoke-interface {v0}, Lorg/java_websocket/interfaces/ISSLChannel;->getSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionKey()Ljava/nio/channels/SelectionKey;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    return-object v0
.end method

.method public getWebSocketListener()Lorg/java_websocket/WebSocketListener;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    return-object v0
.end method

.method public getWorkerThread()Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->workerThread:Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    return-object v0
.end method

.method public hasBufferedData()Z
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSSLSupport()Z
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    instance-of v0, v0, Lorg/java_websocket/interfaces/ISSLChannel;

    return v0
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 779
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->readyState:Lorg/java_websocket/enums/ReadyState;

    sget-object v1, Lorg/java_websocket/enums/ReadyState;->CLOSED:Lorg/java_websocket/enums/ReadyState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosing()Z
    .locals 2

    .prologue
    .line 769
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->readyState:Lorg/java_websocket/enums/ReadyState;

    sget-object v1, Lorg/java_websocket/enums/ReadyState;->CLOSING:Lorg/java_websocket/enums/ReadyState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlushAndClose()Z
    .locals 1

    .prologue
    .line 774
    iget-boolean v0, p0, Lorg/java_websocket/WebSocketImpl;->flushandclosestate:Z

    return v0
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 764
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->readyState:Lorg/java_websocket/enums/ReadyState;

    sget-object v1, Lorg/java_websocket/enums/ReadyState;->OPEN:Lorg/java_websocket/enums/ReadyState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public send(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 637
    if-nez p1, :cond_0

    .line 638
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot send \'null\' data to a WebSocketImpl."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_0
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->role:Lorg/java_websocket/enums/Role;

    sget-object v2, Lorg/java_websocket/enums/Role;->CLIENT:Lorg/java_websocket/enums/Role;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lorg/java_websocket/drafts/Draft;->createFrames(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/java_websocket/WebSocketImpl;->send(Ljava/util/Collection;)V

    .line 641
    return-void

    .line 640
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public send(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 651
    if-nez p1, :cond_0

    .line 652
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot send \'null\' data to a WebSocketImpl."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_0
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->role:Lorg/java_websocket/enums/Role;

    sget-object v2, Lorg/java_websocket/enums/Role;->CLIENT:Lorg/java_websocket/enums/Role;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lorg/java_websocket/drafts/Draft;->createFrames(Ljava/nio/ByteBuffer;Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/java_websocket/WebSocketImpl;->send(Ljava/util/Collection;)V

    .line 655
    return-void

    .line 654
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public send([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 659
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/java_websocket/WebSocketImpl;->send(Ljava/nio/ByteBuffer;)V

    .line 660
    return-void
.end method

.method public sendFragmentedFrame(Lorg/java_websocket/enums/Opcode;Ljava/nio/ByteBuffer;Z)V
    .locals 1
    .param p1, "op"    # Lorg/java_websocket/enums/Opcode;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "fin"    # Z

    .prologue
    .line 679
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v0, p1, p2, p3}, Lorg/java_websocket/drafts/Draft;->continuousFrame(Lorg/java_websocket/enums/Opcode;Ljava/nio/ByteBuffer;Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/java_websocket/WebSocketImpl;->send(Ljava/util/Collection;)V

    .line 680
    return-void
.end method

.method public sendFrame(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 684
    .local p1, "frames":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/java_websocket/framing/Framedata;>;"
    invoke-direct {p0, p1}, Lorg/java_websocket/WebSocketImpl;->send(Ljava/util/Collection;)V

    .line 685
    return-void
.end method

.method public sendFrame(Lorg/java_websocket/framing/Framedata;)V
    .locals 1
    .param p1, "framedata"    # Lorg/java_websocket/framing/Framedata;

    .prologue
    .line 689
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/java_websocket/WebSocketImpl;->send(Ljava/util/Collection;)V

    .line 690
    return-void
.end method

.method public sendPing()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 694
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v1, p0}, Lorg/java_websocket/WebSocketListener;->onPreparePing(Lorg/java_websocket/WebSocket;)Lorg/java_websocket/framing/PingFrame;

    move-result-object v0

    .line 695
    .local v0, "pingFrame":Lorg/java_websocket/framing/PingFrame;
    if-nez v0, :cond_0

    .line 696
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onPreparePing(WebSocket) returned null. PingFrame to sent can\'t be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 699
    :cond_0
    invoke-virtual {p0, v0}, Lorg/java_websocket/WebSocketImpl;->sendFrame(Lorg/java_websocket/framing/Framedata;)V

    .line 700
    return-void
.end method

.method public setAttachment(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 889
    .local p1, "attachment":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lorg/java_websocket/WebSocketImpl;->attachment:Ljava/lang/Object;

    .line 890
    return-void
.end method

.method public setChannel(Ljava/nio/channels/ByteChannel;)V
    .locals 0
    .param p1, "channel"    # Ljava/nio/channels/ByteChannel;

    .prologue
    .line 897
    iput-object p1, p0, Lorg/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    .line 898
    return-void
.end method

.method public setSelectionKey(Ljava/nio/channels/SelectionKey;)V
    .locals 0
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;

    .prologue
    .line 791
    iput-object p1, p0, Lorg/java_websocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    .line 792
    return-void
.end method

.method public setWorkerThread(Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;)V
    .locals 0
    .param p1, "workerThread"    # Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    .prologue
    .line 905
    iput-object p1, p0, Lorg/java_websocket/WebSocketImpl;->workerThread:Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    .line 906
    return-void
.end method

.method public startHandshake(Lorg/java_websocket/handshake/ClientHandshakeBuilder;)V
    .locals 4
    .param p1, "handshakedata"    # Lorg/java_websocket/handshake/ClientHandshakeBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .prologue
    .line 710
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v1, p1}, Lorg/java_websocket/drafts/Draft;->postProcessHandshakeRequestAsClient(Lorg/java_websocket/handshake/ClientHandshakeBuilder;)Lorg/java_websocket/handshake/ClientHandshakeBuilder;

    move-result-object v1

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->handshakerequest:Lorg/java_websocket/handshake/ClientHandshake;

    .line 712
    invoke-interface {p1}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->getResourceDescriptor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->resourceDescriptor:Ljava/lang/String;

    .line 713
    sget-boolean v1, Lorg/java_websocket/WebSocketImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->resourceDescriptor:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 717
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    iget-object v2, p0, Lorg/java_websocket/WebSocketImpl;->handshakerequest:Lorg/java_websocket/handshake/ClientHandshake;

    invoke-interface {v1, p0, v2}, Lorg/java_websocket/WebSocketListener;->onWebsocketHandshakeSentAsClient(Lorg/java_websocket/WebSocket;Lorg/java_websocket/handshake/ClientHandshake;)V
    :try_end_0
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 728
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    iget-object v2, p0, Lorg/java_websocket/WebSocketImpl;->handshakerequest:Lorg/java_websocket/handshake/ClientHandshake;

    invoke-virtual {v1, v2}, Lorg/java_websocket/drafts/Draft;->createHandshake(Lorg/java_websocket/handshake/Handshakedata;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/java_websocket/WebSocketImpl;->write(Ljava/util/List;)V

    .line 729
    return-void

    .line 718
    :catch_0
    move-exception v0

    .line 720
    .local v0, "e":Lorg/java_websocket/exceptions/InvalidDataException;
    new-instance v1, Lorg/java_websocket/exceptions/InvalidHandshakeException;

    const-string v2, "Handshake data rejected by client."

    invoke-direct {v1, v2}, Lorg/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 721
    .end local v0    # "e":Lorg/java_websocket/exceptions/InvalidDataException;
    :catch_1
    move-exception v0

    .line 722
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->log:Lorg/slf4j/Logger;

    const-string v2, "Exception in startHandshake"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 723
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 724
    new-instance v1, Lorg/java_websocket/exceptions/InvalidHandshakeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejected because of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 803
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLastPong()V
    .locals 2

    .prologue
    .line 844
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/java_websocket/WebSocketImpl;->lastPong:J

    .line 845
    return-void
.end method
