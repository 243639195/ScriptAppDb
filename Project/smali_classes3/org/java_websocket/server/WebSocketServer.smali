.class public abstract Lorg/java_websocket/server/WebSocketServer;
.super Lorg/java_websocket/AbstractWebSocket;
.source "WebSocketServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;
    }
.end annotation


# static fields
.field private static final AVAILABLE_PROCESSORS:I


# instance fields
.field private final address:Ljava/net/InetSocketAddress;

.field private buffers:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final connections:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/java_websocket/WebSocket;",
            ">;"
        }
    .end annotation
.end field

.field protected decoders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;",
            ">;"
        }
    .end annotation
.end field

.field private drafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/drafts/Draft;",
            ">;"
        }
    .end annotation
.end field

.field private iqueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/WebSocketImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final log:Lorg/slf4j/Logger;

.field private maxPendingConnections:I

.field private queueinvokes:I

.field private final queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private selector:Ljava/nio/channels/Selector;

.field private selectorthread:Ljava/lang/Thread;

.field private server:Ljava/nio/channels/ServerSocketChannel;

.field private wsf:Lorg/java_websocket/WebSocketServerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lorg/java_websocket/server/WebSocketServer;->AVAILABLE_PROCESSORS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 139
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    sget v1, Lorg/java_websocket/server/WebSocketServer;->AVAILABLE_PROCESSORS:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 149
    sget v0, Lorg/java_websocket/server/WebSocketServer;->AVAILABLE_PROCESSORS:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;I)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .param p2, "decodercount"    # I

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .param p2, "decodercount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "I",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/drafts/Draft;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p3, "drafts":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/drafts/Draft;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;Ljava/util/Collection;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;ILjava/util/List;Ljava/util/Collection;)V
    .locals 4
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .param p2, "decodercount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "I",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/drafts/Draft;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/java_websocket/WebSocket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "drafts":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/drafts/Draft;>;"
    .local p4, "connectionscontainer":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/java_websocket/WebSocket;>;"
    const/4 v3, 0x0

    .line 208
    invoke-direct {p0}, Lorg/java_websocket/AbstractWebSocket;-><init>()V

    .line 87
    const-class v2, Lorg/java_websocket/server/WebSocketServer;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    iput-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->log:Lorg/slf4j/Logger;

    .line 114
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 120
    iput v3, p0, Lorg/java_websocket/server/WebSocketServer;->queueinvokes:I

    .line 121
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 123
    new-instance v2, Lorg/java_websocket/server/DefaultWebSocketServerFactory;

    invoke-direct {v2}, Lorg/java_websocket/server/DefaultWebSocketServerFactory;-><init>()V

    iput-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->wsf:Lorg/java_websocket/WebSocketServerFactory;

    .line 131
    const/4 v2, -0x1

    iput v2, p0, Lorg/java_websocket/server/WebSocketServer;->maxPendingConnections:I

    .line 209
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-lt p2, v2, :cond_0

    if-nez p4, :cond_1

    .line 210
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "address and connectionscontainer must not be null and you need at least 1 decoder"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    :cond_1
    if-nez p3, :cond_2

    .line 215
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->drafts:Ljava/util/List;

    .line 220
    :goto_0
    iput-object p1, p0, Lorg/java_websocket/server/WebSocketServer;->address:Ljava/net/InetSocketAddress;

    .line 221
    iput-object p4, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    .line 222
    invoke-virtual {p0, v3}, Lorg/java_websocket/server/WebSocketServer;->setTcpNoDelay(Z)V

    .line 223
    invoke-virtual {p0, v3}, Lorg/java_websocket/server/WebSocketServer;->setReuseAddr(Z)V

    .line 224
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    .line 226
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    .line 227
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    .line 228
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p2, :cond_3

    .line 229
    new-instance v0, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    invoke-direct {v0, p0}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;-><init>(Lorg/java_websocket/server/WebSocketServer;)V

    .line 230
    .local v0, "ex":Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 217
    .end local v0    # "ex":Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;
    .end local v1    # "i":I
    :cond_2
    iput-object p3, p0, Lorg/java_websocket/server/WebSocketServer;->drafts:Ljava/util/List;

    goto :goto_0

    .line 232
    .restart local v1    # "i":I
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/util/List;)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/drafts/Draft;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p2, "drafts":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/drafts/Draft;>;"
    sget v0, Lorg/java_websocket/server/WebSocketServer;->AVAILABLE_PROCESSORS:I

    invoke-direct {p0, p1, v0, p2}, Lorg/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    .line 170
    return-void
.end method

.method static synthetic access$000(Lorg/java_websocket/server/WebSocketServer;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/java_websocket/server/WebSocketServer;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/java_websocket/server/WebSocketServer;Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lorg/java_websocket/server/WebSocketServer;
    .param p1, "x1"    # Lorg/java_websocket/WebSocket;
    .param p2, "x2"    # Ljava/lang/Exception;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lorg/java_websocket/server/WebSocketServer;->handleFatal(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$200(Lorg/java_websocket/server/WebSocketServer;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p0, "x0"    # Lorg/java_websocket/server/WebSocketServer;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lorg/java_websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private doAccept(Ljava/nio/channels/SelectionKey;Ljava/util/Iterator;)V
    .locals 7
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SelectionKey;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    const/4 v6, 0x1

    .line 462
    invoke-virtual {p0, p1}, Lorg/java_websocket/server/WebSocketServer;->onConnect(Ljava/nio/channels/SelectionKey;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 463
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    iget-object v4, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v4}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 468
    .local v0, "channel":Ljava/nio/channels/SocketChannel;
    if-eqz v0, :cond_0

    .line 471
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 472
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    .line 473
    .local v2, "socket":Ljava/net/Socket;
    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->isTcpNoDelay()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 474
    invoke-virtual {v2, v6}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 475
    iget-object v4, p0, Lorg/java_websocket/server/WebSocketServer;->wsf:Lorg/java_websocket/WebSocketServerFactory;

    iget-object v5, p0, Lorg/java_websocket/server/WebSocketServer;->drafts:Ljava/util/List;

    invoke-interface {v4, p0, v5}, Lorg/java_websocket/WebSocketServerFactory;->createWebSocket(Lorg/java_websocket/WebSocketAdapter;Ljava/util/List;)Lorg/java_websocket/WebSocketImpl;

    move-result-object v3

    .line 476
    .local v3, "w":Lorg/java_websocket/WebSocketImpl;
    iget-object v4, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0, v4, v6, v3}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/java_websocket/WebSocketImpl;->setSelectionKey(Ljava/nio/channels/SelectionKey;)V

    .line 478
    :try_start_0
    iget-object v4, p0, Lorg/java_websocket/server/WebSocketServer;->wsf:Lorg/java_websocket/WebSocketServerFactory;

    invoke-virtual {v3}, Lorg/java_websocket/WebSocketImpl;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lorg/java_websocket/WebSocketServerFactory;->wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/ByteChannel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/java_websocket/WebSocketImpl;->setChannel(Ljava/nio/channels/ByteChannel;)V

    .line 479
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 480
    invoke-virtual {p0, v3}, Lorg/java_websocket/server/WebSocketServer;->allocateBuffers(Lorg/java_websocket/WebSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 481
    :catch_0
    move-exception v1

    .line 482
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Lorg/java_websocket/WebSocketImpl;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 483
    invoke-virtual {v3}, Lorg/java_websocket/WebSocketImpl;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 486
    :cond_2
    invoke-virtual {v3}, Lorg/java_websocket/WebSocketImpl;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v1}, Lorg/java_websocket/server/WebSocketServer;->handleIOException(Ljava/nio/channels/SelectionKey;Lorg/java_websocket/WebSocket;Ljava/io/IOException;)V

    goto :goto_0
.end method

.method private doAdditionalRead()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    :goto_0
    iget-object v4, p0, Lorg/java_websocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 432
    iget-object v4, p0, Lorg/java_websocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/java_websocket/WebSocketImpl;

    .line 433
    .local v2, "conn":Lorg/java_websocket/WebSocketImpl;
    invoke-virtual {v2}, Lorg/java_websocket/WebSocketImpl;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v1

    check-cast v1, Lorg/java_websocket/WrappedByteChannel;

    .line 434
    .local v1, "c":Lorg/java_websocket/WrappedByteChannel;
    invoke-direct {p0}, Lorg/java_websocket/server/WebSocketServer;->takeBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 436
    .local v0, "buf":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-static {v0, v2, v1}, Lorg/java_websocket/SocketChannelIOHelper;->readMore(Ljava/nio/ByteBuffer;Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/WrappedByteChannel;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 437
    iget-object v4, p0, Lorg/java_websocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 440
    iget-object v4, v2, Lorg/java_websocket/WebSocketImpl;->inQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 441
    invoke-virtual {p0, v2}, Lorg/java_websocket/server/WebSocketServer;->queue(Lorg/java_websocket/WebSocketImpl;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 445
    :catch_0
    move-exception v3

    .line 446
    .local v3, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lorg/java_websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V

    .line 447
    throw v3

    .line 443
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lorg/java_websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 450
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "c":Lorg/java_websocket/WrappedByteChannel;
    .end local v2    # "conn":Lorg/java_websocket/WebSocketImpl;
    :cond_2
    return-void
.end method

.method private doBroadcast(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Lorg/java_websocket/WebSocket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 993
    .local p2, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/java_websocket/WebSocket;>;"
    const/4 v5, 0x0

    .line 994
    .local v5, "strData":Ljava/lang/String;
    instance-of v6, p1, Ljava/lang/String;

    if-eqz v6, :cond_0

    move-object v5, p1

    .line 995
    check-cast v5, Ljava/lang/String;

    .line 997
    :cond_0
    const/4 v0, 0x0

    .line 998
    .local v0, "byteData":Ljava/nio/ByteBuffer;
    instance-of v6, p1, Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_1

    move-object v0, p1

    .line 999
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1001
    :cond_1
    if-nez v5, :cond_3

    if-nez v0, :cond_3

    .line 1020
    :cond_2
    return-void

    .line 1004
    :cond_3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1006
    .local v4, "draftFrames":Ljava/util/Map;, "Ljava/util/Map<Lorg/java_websocket/drafts/Draft;Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;>;"
    monitor-enter p2

    .line 1007
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1008
    .local v2, "clientCopy":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/WebSocket;>;"
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/java_websocket/WebSocket;

    .line 1010
    .local v1, "client":Lorg/java_websocket/WebSocket;
    if-eqz v1, :cond_4

    .line 1011
    invoke-interface {v1}, Lorg/java_websocket/WebSocket;->getDraft()Lorg/java_websocket/drafts/Draft;

    move-result-object v3

    .line 1012
    .local v3, "draft":Lorg/java_websocket/drafts/Draft;
    invoke-direct {p0, v3, v4, v5, v0}, Lorg/java_websocket/server/WebSocketServer;->fillFrames(Lorg/java_websocket/drafts/Draft;Ljava/util/Map;Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 1014
    :try_start_1
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v1, v6}, Lorg/java_websocket/WebSocket;->sendFrame(Ljava/util/Collection;)V
    :try_end_1
    .catch Lorg/java_websocket/exceptions/WebsocketNotConnectedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1015
    :catch_0
    move-exception v6

    goto :goto_0

    .line 1008
    .end local v1    # "client":Lorg/java_websocket/WebSocket;
    .end local v2    # "clientCopy":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/WebSocket;>;"
    .end local v3    # "draft":Lorg/java_websocket/drafts/Draft;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method private doEnsureSingleThread()Z
    .locals 3

    .prologue
    .line 583
    monitor-enter p0

    .line 584
    :try_start_0
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 585
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be started once."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 587
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    .line 588
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    const/4 v0, 0x0

    monitor-exit p0

    .line 592
    :goto_0
    return v0

    .line 591
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doRead(Ljava/nio/channels/SelectionKey;Ljava/util/Iterator;)Z
    .locals 4
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SelectionKey;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/java_websocket/exceptions/WrappedIOException;
        }
    .end annotation

    .prologue
    .line 501
    .local p2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/java_websocket/WebSocketImpl;

    .line 502
    .local v1, "conn":Lorg/java_websocket/WebSocketImpl;
    invoke-direct {p0}, Lorg/java_websocket/server/WebSocketServer;->takeBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 503
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Lorg/java_websocket/WebSocketImpl;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v3

    if-nez v3, :cond_0

    .line 504
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 506
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    invoke-direct {p0, p1, v1, v3}, Lorg/java_websocket/server/WebSocketServer;->handleIOException(Ljava/nio/channels/SelectionKey;Lorg/java_websocket/WebSocket;Ljava/io/IOException;)V

    .line 507
    const/4 v3, 0x0

    .line 529
    :goto_0
    return v3

    .line 510
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lorg/java_websocket/WebSocketImpl;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lorg/java_websocket/SocketChannelIOHelper;->read(Ljava/nio/ByteBuffer;Lorg/java_websocket/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 511
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 512
    iget-object v3, v1, Lorg/java_websocket/WebSocketImpl;->inQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 513
    invoke-virtual {p0, v1}, Lorg/java_websocket/server/WebSocketServer;->queue(Lorg/java_websocket/WebSocketImpl;)V

    .line 514
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 515
    invoke-virtual {v1}, Lorg/java_websocket/WebSocketImpl;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v3

    instance-of v3, v3, Lorg/java_websocket/WrappedByteChannel;

    if-eqz v3, :cond_1

    .line 516
    invoke-virtual {v1}, Lorg/java_websocket/WebSocketImpl;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v3

    check-cast v3, Lorg/java_websocket/WrappedByteChannel;

    invoke-interface {v3}, Lorg/java_websocket/WrappedByteChannel;->isNeedRead()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 517
    iget-object v3, p0, Lorg/java_websocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 520
    :cond_2
    invoke-direct {p0, v0}, Lorg/java_websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 525
    :catch_0
    move-exception v2

    .line 526
    .local v2, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lorg/java_websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V

    .line 527
    new-instance v3, Lorg/java_websocket/exceptions/WrappedIOException;

    invoke-direct {v3, v1, v2}, Lorg/java_websocket/exceptions/WrappedIOException;-><init>(Lorg/java_websocket/WebSocket;Ljava/io/IOException;)V

    throw v3

    .line 523
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_1
    invoke-direct {p0, v0}, Lorg/java_websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private doServerShutdown()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 599
    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->stopConnectionLostTimer()V

    .line 600
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 601
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    .line 602
    .local v1, "w":Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;
    invoke-virtual {v1}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->interrupt()V

    goto :goto_0

    .line 605
    .end local v1    # "w":Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;
    :cond_0
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    if-eqz v2, :cond_1

    .line 607
    :try_start_0
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v2, :cond_2

    .line 615
    :try_start_1
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 621
    :cond_2
    :goto_2
    return-void

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->log:Lorg/slf4j/Logger;

    const-string v3, "IOException during selector.close"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 610
    invoke-virtual {p0, v4, v0}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto :goto_1

    .line 616
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 617
    .restart local v0    # "e":Ljava/io/IOException;
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->log:Lorg/slf4j/Logger;

    const-string v3, "IOException during server.close"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 618
    invoke-virtual {p0, v4, v0}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method private doSetupSelectorAndServerThread()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 555
    iget-object v3, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WebSocketSelector-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 557
    :try_start_0
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v3

    iput-object v3, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    .line 558
    iget-object v3, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 559
    iget-object v3, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    .line 560
    .local v1, "socket":Ljava/net/ServerSocket;
    const/16 v3, 0x4000

    invoke-virtual {v1, v3}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    .line 561
    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->isReuseAddr()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 562
    iget-object v3, p0, Lorg/java_websocket/server/WebSocketServer;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->getMaxPendingConnections()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 563
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v3

    iput-object v3, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    .line 564
    iget-object v3, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    iget-object v4, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    iget-object v5, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v5}, Ljava/nio/channels/ServerSocketChannel;->validOps()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 565
    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->startConnectionLostTimer()V

    .line 566
    iget-object v3, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    .line 567
    .local v0, "ex":Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;
    invoke-virtual {v0}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 570
    .end local v0    # "ex":Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;
    .end local v1    # "socket":Ljava/net/ServerSocket;
    :catch_0
    move-exception v0

    .line 571
    .local v0, "ex":Ljava/io/IOException;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v0}, Lorg/java_websocket/server/WebSocketServer;->handleFatal(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 574
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_1
    return v2

    .line 569
    .restart local v1    # "socket":Ljava/net/ServerSocket;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->onStart()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 574
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private doWrite(Ljava/nio/channels/SelectionKey;)V
    .locals 3
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/WrappedIOException;
        }
    .end annotation

    .prologue
    .line 539
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/java_websocket/WebSocketImpl;

    .line 541
    .local v0, "conn":Lorg/java_websocket/WebSocketImpl;
    :try_start_0
    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/java_websocket/SocketChannelIOHelper;->batch(Lorg/java_websocket/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 542
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :cond_0
    return-void

    .line 544
    :catch_0
    move-exception v1

    .line 545
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/java_websocket/exceptions/WrappedIOException;

    invoke-direct {v2, v0, v1}, Lorg/java_websocket/exceptions/WrappedIOException;-><init>(Lorg/java_websocket/WebSocket;Ljava/io/IOException;)V

    throw v2
.end method

.method private fillFrames(Lorg/java_websocket/drafts/Draft;Ljava/util/Map;Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "draft"    # Lorg/java_websocket/drafts/Draft;
    .param p3, "strData"    # Ljava/lang/String;
    .param p4, "byteData"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/java_websocket/drafts/Draft;",
            "Ljava/util/Map",
            "<",
            "Lorg/java_websocket/drafts/Draft;",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "draftFrames":Ljava/util/Map;, "Ljava/util/Map<Lorg/java_websocket/drafts/Draft;Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;>;"
    const/4 v2, 0x0

    .line 1032
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1033
    const/4 v0, 0x0

    .line 1034
    .local v0, "frames":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;"
    if-eqz p3, :cond_0

    .line 1035
    invoke-virtual {p1, p3, v2}, Lorg/java_websocket/drafts/Draft;->createFrames(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 1037
    :cond_0
    if-eqz p4, :cond_1

    .line 1038
    invoke-virtual {p1, p4, v2}, Lorg/java_websocket/drafts/Draft;->createFrames(Ljava/nio/ByteBuffer;Z)Ljava/util/List;

    move-result-object v0

    .line 1040
    :cond_1
    if-eqz v0, :cond_2

    .line 1041
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    .end local v0    # "frames":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;"
    :cond_2
    return-void
.end method

.method private getSocket(Lorg/java_websocket/WebSocket;)Ljava/net/Socket;
    .locals 2
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;

    .prologue
    .line 848
    move-object v0, p1

    check-cast v0, Lorg/java_websocket/WebSocketImpl;

    .line 849
    .local v0, "impl":Lorg/java_websocket/WebSocketImpl;
    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    return-object v1
.end method

.method private handleFatal(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 681
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->log:Lorg/slf4j/Logger;

    const-string v3, "Shutdown due to fatal error"

    invoke-interface {v2, v3, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 682
    invoke-virtual {p0, p1, p2}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 684
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 685
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    .line 686
    .local v1, "w":Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;
    invoke-virtual {v1}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->interrupt()V

    goto :goto_0

    .line 689
    .end local v1    # "w":Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;
    :cond_0
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    if-eqz v2, :cond_1

    .line 690
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 693
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->stop()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :goto_1
    return-void

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e1":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 696
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->log:Lorg/slf4j/Logger;

    const-string v3, "Interrupt during stop"

    invoke-interface {v2, v3, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 697
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private handleIOException(Ljava/nio/channels/SelectionKey;Lorg/java_websocket/WebSocket;Ljava/io/IOException;)V
    .locals 3
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .param p2, "conn"    # Lorg/java_websocket/WebSocket;
    .param p3, "ex"    # Ljava/io/IOException;

    .prologue
    .line 661
    if-eqz p1, :cond_0

    .line 662
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 664
    :cond_0
    if-eqz p2, :cond_2

    .line 665
    const/16 v1, 0x3ee

    invoke-virtual {p3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lorg/java_websocket/WebSocket;->closeConnection(ILjava/lang/String;)V

    .line 678
    :cond_1
    :goto_0
    return-void

    .line 666
    :cond_2
    if-eqz p1, :cond_1

    .line 667
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    .line 668
    .local v0, "channel":Ljava/nio/channels/SelectableChannel;
    if-eqz v0, :cond_1

    .line 669
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 671
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    :goto_1
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->log:Lorg/slf4j/Logger;

    const-string v2, "Connection closed because of exception"

    invoke-interface {v1, v2, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 672
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private pushBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 653
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 657
    :goto_0
    return-void

    .line 656
    :cond_0
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private takeBuffer()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 649
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method protected addConnection(Lorg/java_websocket/WebSocket;)Z
    .locals 2
    .param p1, "ws"    # Lorg/java_websocket/WebSocket;

    .prologue
    .line 771
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 772
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    monitor-enter v1

    .line 773
    :try_start_0
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    .line 778
    :goto_0
    return v0

    .line 774
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 777
    :cond_0
    const/16 v0, 0x3e9

    invoke-interface {p1, v0}, Lorg/java_websocket/WebSocket;->close(I)V

    .line 778
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected allocateBuffers(Lorg/java_websocket/WebSocket;)V
    .locals 2
    .param p1, "c"    # Lorg/java_websocket/WebSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 624
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_0

    .line 629
    :goto_0
    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 628
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->createBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public broadcast(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 926
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-virtual {p0, p1, v0}, Lorg/java_websocket/server/WebSocketServer;->broadcast(Ljava/lang/String;Ljava/util/Collection;)V

    .line 927
    return-void
.end method

.method public broadcast(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/java_websocket/WebSocket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 980
    .local p2, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/java_websocket/WebSocket;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 981
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 983
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/java_websocket/server/WebSocketServer;->doBroadcast(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 984
    return-void
.end method

.method public broadcast(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 944
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-virtual {p0, p1, v0}, Lorg/java_websocket/server/WebSocketServer;->broadcast(Ljava/nio/ByteBuffer;Ljava/util/Collection;)V

    .line 945
    return-void
.end method

.method public broadcast(Ljava/nio/ByteBuffer;Ljava/util/Collection;)V
    .locals 1
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Collection",
            "<",
            "Lorg/java_websocket/WebSocket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 967
    .local p2, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/java_websocket/WebSocket;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 968
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 970
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/java_websocket/server/WebSocketServer;->doBroadcast(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 971
    return-void
.end method

.method public broadcast([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 935
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-virtual {p0, p1, v0}, Lorg/java_websocket/server/WebSocketServer;->broadcast([BLjava/util/Collection;)V

    .line 936
    return-void
.end method

.method public broadcast([BLjava/util/Collection;)V
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection",
            "<",
            "Lorg/java_websocket/WebSocket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 954
    .local p2, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/java_websocket/WebSocket;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 955
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 957
    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/java_websocket/server/WebSocketServer;->broadcast(Ljava/nio/ByteBuffer;Ljava/util/Collection;)V

    .line 958
    return-void
.end method

.method public createBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 637
    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->address:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getConnections()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/java_websocket/WebSocket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    monitor-enter v1

    .line 303
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDraft()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/drafts/Draft;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->drafts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSocketAddress(Lorg/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;
    .locals 1
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;

    .prologue
    .line 854
    invoke-direct {p0, p1}, Lorg/java_websocket/server/WebSocketServer;->getSocket(Lorg/java_websocket/WebSocket;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getMaxPendingConnections()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lorg/java_websocket/server/WebSocketServer;->maxPendingConnections:I

    return v0
.end method

.method public getPort()I
    .locals 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lorg/java_websocket/server/WebSocketServer;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    .line 318
    .local v0, "port":I
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    .line 321
    :cond_0
    return v0
.end method

.method public getRemoteSocketAddress(Lorg/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;
    .locals 1
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;

    .prologue
    .line 859
    invoke-direct {p0, p1}, Lorg/java_websocket/server/WebSocketServer;->getSocket(Lorg/java_websocket/WebSocket;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public final getWebSocketFactory()Lorg/java_websocket/WebSocketFactory;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->wsf:Lorg/java_websocket/WebSocketServerFactory;

    return-object v0
.end method

.method public abstract onClose(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
.end method

.method public onCloseInitiated(Lorg/java_websocket/WebSocket;ILjava/lang/String;)V
    .locals 0
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 811
    return-void
.end method

.method public onClosing(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "remote"    # Z

    .prologue
    .line 815
    return-void
.end method

.method protected onConnect(Ljava/nio/channels/SelectionKey;)Z
    .locals 1
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;

    .prologue
    .line 838
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
.end method

.method public abstract onMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
.end method

.method public onMessage(Lorg/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "message"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 918
    return-void
.end method

.method public abstract onOpen(Lorg/java_websocket/WebSocket;Lorg/java_websocket/handshake/ClientHandshake;)V
.end method

.method public abstract onStart()V
.end method

.method public final onWebsocketClose(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 3
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "remote"    # Z

    .prologue
    .line 721
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 723
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/java_websocket/server/WebSocketServer;->removeConnection(Lorg/java_websocket/WebSocket;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/java_websocket/server/WebSocketServer;->onClose(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/java_websocket/server/WebSocketServer;->releaseBuffers(Lorg/java_websocket/WebSocket;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 734
    :goto_0
    return-void

    .line 729
    :catch_0
    move-exception v0

    .line 730
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 727
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    .line 728
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/java_websocket/server/WebSocketServer;->releaseBuffers(Lorg/java_websocket/WebSocket;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 732
    :goto_1
    throw v1

    .line 729
    :catch_1
    move-exception v0

    .line 730
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method

.method public onWebsocketCloseInitiated(Lorg/java_websocket/WebSocket;ILjava/lang/String;)V
    .locals 0
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 801
    invoke-virtual {p0, p1, p2, p3}, Lorg/java_websocket/server/WebSocketServer;->onCloseInitiated(Lorg/java_websocket/WebSocket;ILjava/lang/String;)V

    .line 802
    return-void
.end method

.method public onWebsocketClosing(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "remote"    # Z

    .prologue
    .line 806
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/java_websocket/server/WebSocketServer;->onClosing(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V

    .line 808
    return-void
.end method

.method public final onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 784
    invoke-virtual {p0, p1, p2}, Lorg/java_websocket/server/WebSocketServer;->onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 785
    return-void
.end method

.method public final onWebsocketMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 0
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 703
    invoke-virtual {p0, p1, p2}, Lorg/java_websocket/server/WebSocketServer;->onMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method public final onWebsocketMessage(Lorg/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "blob"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 709
    invoke-virtual {p0, p1, p2}, Lorg/java_websocket/server/WebSocketServer;->onMessage(Lorg/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V

    .line 710
    return-void
.end method

.method public final onWebsocketOpen(Lorg/java_websocket/WebSocket;Lorg/java_websocket/handshake/Handshakedata;)V
    .locals 1
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "handshake"    # Lorg/java_websocket/handshake/Handshakedata;

    .prologue
    .line 714
    invoke-virtual {p0, p1}, Lorg/java_websocket/server/WebSocketServer;->addConnection(Lorg/java_websocket/WebSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    check-cast p2, Lorg/java_websocket/handshake/ClientHandshake;

    .end local p2    # "handshake":Lorg/java_websocket/handshake/Handshakedata;
    invoke-virtual {p0, p1, p2}, Lorg/java_websocket/server/WebSocketServer;->onOpen(Lorg/java_websocket/WebSocket;Lorg/java_websocket/handshake/ClientHandshake;)V

    .line 717
    :cond_0
    return-void
.end method

.method public final onWriteDemand(Lorg/java_websocket/WebSocket;)V
    .locals 4
    .param p1, "w"    # Lorg/java_websocket/WebSocket;

    .prologue
    .line 789
    move-object v0, p1

    check-cast v0, Lorg/java_websocket/WebSocketImpl;

    .line 791
    .local v0, "conn":Lorg/java_websocket/WebSocketImpl;
    :try_start_0
    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    :goto_0
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 797
    return-void

    .line 792
    :catch_0
    move-exception v1

    .line 794
    .local v1, "e":Ljava/nio/channels/CancelledKeyException;
    iget-object v2, v0, Lorg/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->clear()V

    goto :goto_0
.end method

.method protected queue(Lorg/java_websocket/WebSocketImpl;)V
    .locals 3
    .param p1, "ws"    # Lorg/java_websocket/WebSocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 641
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->getWorkerThread()Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    move-result-object v0

    if-nez v0, :cond_0

    .line 642
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    iget v1, p0, Lorg/java_websocket/server/WebSocketServer;->queueinvokes:I

    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    invoke-virtual {p1, v0}, Lorg/java_websocket/WebSocketImpl;->setWorkerThread(Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;)V

    .line 643
    iget v0, p0, Lorg/java_websocket/server/WebSocketServer;->queueinvokes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/java_websocket/server/WebSocketServer;->queueinvokes:I

    .line 645
    :cond_0
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->getWorkerThread()Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->put(Lorg/java_websocket/WebSocketImpl;)V

    .line 646
    return-void
.end method

.method protected releaseBuffers(Lorg/java_websocket/WebSocket;)V
    .locals 0
    .param p1, "c"    # Lorg/java_websocket/WebSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 634
    return-void
.end method

.method protected removeConnection(Lorg/java_websocket/WebSocket;)Z
    .locals 4
    .param p1, "ws"    # Lorg/java_websocket/WebSocket;

    .prologue
    .line 748
    const/4 v0, 0x0

    .line 749
    .local v0, "removed":Z
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    monitor-enter v2

    .line 750
    :try_start_0
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 751
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 758
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 762
    :cond_0
    return v0

    .line 754
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/java_websocket/server/WebSocketServer;->log:Lorg/slf4j/Logger;

    const-string v3, "Removing connection which is not in the connections collection! Possible no handshake received! {}"

    invoke-interface {v1, v3, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 758
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 14

    .prologue
    .line 359
    invoke-direct {p0}, Lorg/java_websocket/server/WebSocketServer;->doEnsureSingleThread()Z

    move-result v10

    if-nez v10, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-direct {p0}, Lorg/java_websocket/server/WebSocketServer;->doSetupSelectorAndServerThread()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 366
    const/4 v9, 0x5

    .line 367
    .local v9, "shutdownCount":I
    const/4 v8, 0x0

    .line 368
    .local v8, "selectTimeout":I
    :goto_1
    :try_start_0
    iget-object v10, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v10}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_8

    if-eqz v9, :cond_8

    .line 369
    const/4 v5, 0x0

    .line 371
    .local v5, "key":Ljava/nio/channels/SelectionKey;
    :try_start_1
    iget-object v10, p0, Lorg/java_websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 372
    const/4 v8, 0x5

    .line 374
    :cond_2
    iget-object v10, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    int-to-long v12, v8

    invoke-virtual {v10, v12, v13}, Ljava/nio/channels/Selector;->select(J)I

    move-result v6

    .line 375
    .local v6, "keyCount":I
    if-nez v6, :cond_3

    iget-object v10, p0, Lorg/java_websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 376
    add-int/lit8 v9, v9, -0x1

    .line 378
    :cond_3
    iget-object v10, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v10}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v7

    .line 379
    .local v7, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 381
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 382
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/nio/channels/SelectionKey;

    move-object v5, v0

    .line 384
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 388
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 389
    invoke-direct {p0, v5, v4}, Lorg/java_websocket/server/WebSocketServer;->doAccept(Ljava/nio/channels/SelectionKey;Ljava/util/Iterator;)V

    goto :goto_2

    .line 402
    .end local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v6    # "keyCount":I
    .end local v7    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :catch_0
    move-exception v10

    goto :goto_1

    .line 393
    .restart local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .restart local v6    # "keyCount":I
    .restart local v7    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :cond_5
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-direct {p0, v5, v4}, Lorg/java_websocket/server/WebSocketServer;->doRead(Ljava/nio/channels/SelectionKey;Ljava/util/Iterator;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 397
    :cond_6
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 398
    invoke-direct {p0, v5}, Lorg/java_websocket/server/WebSocketServer;->doWrite(Ljava/nio/channels/SelectionKey;)V
    :try_end_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/java_websocket/exceptions/WrappedIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 404
    .end local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v6    # "keyCount":I
    .end local v7    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :catch_1
    move-exception v2

    .line 419
    .local v2, "e":Ljava/nio/channels/ClosedByInterruptException;
    invoke-direct {p0}, Lorg/java_websocket/server/WebSocketServer;->doServerShutdown()V

    goto :goto_0

    .line 401
    .end local v2    # "e":Ljava/nio/channels/ClosedByInterruptException;
    .restart local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .restart local v6    # "keyCount":I
    .restart local v7    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :cond_7
    :try_start_2
    invoke-direct {p0}, Lorg/java_websocket/server/WebSocketServer;->doAdditionalRead()V
    :try_end_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/java_websocket/exceptions/WrappedIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 406
    .end local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v6    # "keyCount":I
    .end local v7    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :catch_2
    move-exception v3

    .line 407
    .local v3, "ex":Lorg/java_websocket/exceptions/WrappedIOException;
    :try_start_3
    invoke-virtual {v3}, Lorg/java_websocket/exceptions/WrappedIOException;->getConnection()Lorg/java_websocket/WebSocket;

    move-result-object v10

    invoke-virtual {v3}, Lorg/java_websocket/exceptions/WrappedIOException;->getIOException()Ljava/io/IOException;

    move-result-object v11

    invoke-direct {p0, v5, v10, v11}, Lorg/java_websocket/server/WebSocketServer;->handleIOException(Ljava/nio/channels/SelectionKey;Lorg/java_websocket/WebSocket;Ljava/io/IOException;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 415
    .end local v3    # "ex":Lorg/java_websocket/exceptions/WrappedIOException;
    .end local v5    # "key":Ljava/nio/channels/SelectionKey;
    :catch_3
    move-exception v2

    .line 417
    .local v2, "e":Ljava/lang/RuntimeException;
    const/4 v10, 0x0

    :try_start_4
    invoke-direct {p0, v10, v2}, Lorg/java_websocket/server/WebSocketServer;->handleFatal(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 419
    invoke-direct {p0}, Lorg/java_websocket/server/WebSocketServer;->doServerShutdown()V

    goto/16 :goto_0

    .line 408
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "key":Ljava/nio/channels/SelectionKey;
    :catch_4
    move-exception v3

    .line 409
    .local v3, "ex":Ljava/io/IOException;
    const/4 v10, 0x0

    :try_start_5
    invoke-direct {p0, v5, v10, v3}, Lorg/java_websocket/server/WebSocketServer;->handleIOException(Ljava/nio/channels/SelectionKey;Lorg/java_websocket/WebSocket;Ljava/io/IOException;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 419
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v5    # "key":Ljava/nio/channels/SelectionKey;
    :catchall_0
    move-exception v10

    invoke-direct {p0}, Lorg/java_websocket/server/WebSocketServer;->doServerShutdown()V

    .line 420
    throw v10

    .line 410
    .restart local v5    # "key":Ljava/nio/channels/SelectionKey;
    :catch_5
    move-exception v2

    .line 412
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 419
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "key":Ljava/nio/channels/SelectionKey;
    :cond_8
    invoke-direct {p0}, Lorg/java_websocket/server/WebSocketServer;->doServerShutdown()V

    goto/16 :goto_0
.end method

.method public setMaxPendingConnections(I)V
    .locals 0
    .param p1, "numberOfConnections"    # I

    .prologue
    .line 343
    iput p1, p0, Lorg/java_websocket/server/WebSocketServer;->maxPendingConnections:I

    .line 344
    return-void
.end method

.method public final setWebSocketFactory(Lorg/java_websocket/WebSocketServerFactory;)V
    .locals 1
    .param p1, "wsf"    # Lorg/java_websocket/WebSocketServerFactory;

    .prologue
    .line 818
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->wsf:Lorg/java_websocket/WebSocketServerFactory;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->wsf:Lorg/java_websocket/WebSocketServerFactory;

    invoke-interface {v0}, Lorg/java_websocket/WebSocketServerFactory;->close()V

    .line 821
    :cond_0
    iput-object p1, p0, Lorg/java_websocket/server/WebSocketServer;->wsf:Lorg/java_websocket/WebSocketServerFactory;

    .line 822
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be started once."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 249
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/java_websocket/server/WebSocketServer;->stop(I)V

    .line 292
    return-void
.end method

.method public stop(I)V
    .locals 6
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v3, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    monitor-enter v3

    .line 273
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 274
    .local v0, "socketsToClose":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/WebSocket;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/java_websocket/WebSocket;

    .line 277
    .local v1, "ws":Lorg/java_websocket/WebSocket;
    const/16 v3, 0x3e9

    invoke-interface {v1, v3}, Lorg/java_websocket/WebSocket;->close(I)V

    goto :goto_1

    .line 274
    .end local v0    # "socketsToClose":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/WebSocket;>;"
    .end local v1    # "ws":Lorg/java_websocket/WebSocket;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 280
    .restart local v0    # "socketsToClose":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/WebSocket;>;"
    :cond_1
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->wsf:Lorg/java_websocket/WebSocketServerFactory;

    invoke-interface {v2}, Lorg/java_websocket/WebSocketServerFactory;->close()V

    .line 282
    monitor-enter p0

    .line 283
    :try_start_2
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    if-eqz v2, :cond_2

    .line 284
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 285
    iget-object v2, p0, Lorg/java_websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    int-to-long v4, p1

    invoke-virtual {v2, v4, v5}, Ljava/lang/Thread;->join(J)V

    .line 287
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method
