.class public abstract Lorg/java_websocket/client/WebSocketClient;
.super Lorg/java_websocket/AbstractWebSocket;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/java_websocket/WebSocket;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;
    }
.end annotation


# instance fields
.field private closeLatch:Ljava/util/concurrent/CountDownLatch;

.field private connectLatch:Ljava/util/concurrent/CountDownLatch;

.field private connectReadThread:Ljava/lang/Thread;

.field private connectTimeout:I

.field private dnsResolver:Lorg/java_websocket/client/DnsResolver;

.field private draft:Lorg/java_websocket/drafts/Draft;

.field private engine:Lorg/java_websocket/WebSocketImpl;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ostream:Ljava/io/OutputStream;

.field private proxy:Ljava/net/Proxy;

.field private socket:Ljava/net/Socket;

.field private socketFactory:Ljavax/net/SocketFactory;

.field protected uri:Ljava/net/URI;

.field private writeThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 1
    .param p1, "serverUri"    # Ljava/net/URI;

    .prologue
    .line 160
    new-instance v0, Lorg/java_websocket/drafts/Draft_6455;

    invoke-direct {v0}, Lorg/java_websocket/drafts/Draft_6455;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/util/Map;)V
    .locals 1
    .param p1, "serverUri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p2, "httpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/java_websocket/drafts/Draft_6455;

    invoke-direct {v0}, Lorg/java_websocket/drafts/Draft_6455;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;Ljava/util/Map;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;)V
    .locals 2
    .param p1, "serverUri"    # Ljava/net/URI;
    .param p2, "protocolDraft"    # Lorg/java_websocket/drafts/Draft;

    .prologue
    .line 172
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;Ljava/util/Map;I)V

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;Ljava/util/Map;)V
    .locals 1
    .param p1, "serverUri"    # Ljava/net/URI;
    .param p2, "protocolDraft"    # Lorg/java_websocket/drafts/Draft;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lorg/java_websocket/drafts/Draft;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p3, "httpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;Ljava/util/Map;I)V

    .line 200
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;Ljava/util/Map;I)V
    .locals 4
    .param p1, "serverUri"    # Ljava/net/URI;
    .param p2, "protocolDraft"    # Lorg/java_websocket/drafts/Draft;
    .param p4, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lorg/java_websocket/drafts/Draft;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, "httpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 213
    invoke-direct {p0}, Lorg/java_websocket/AbstractWebSocket;-><init>()V

    .line 80
    iput-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    .line 85
    iput-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    .line 90
    iput-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    .line 97
    iput-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 107
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->proxy:Ljava/net/Proxy;

    .line 132
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    .line 137
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    .line 142
    iput v2, p0, Lorg/java_websocket/client/WebSocketClient;->connectTimeout:I

    .line 150
    iput-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->dnsResolver:Lorg/java_websocket/client/DnsResolver;

    .line 214
    if-nez p1, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 216
    :cond_0
    if-nez p2, :cond_1

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null as draft is permitted for `WebSocketServer` only!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_1
    iput-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    .line 220
    iput-object p2, p0, Lorg/java_websocket/client/WebSocketClient;->draft:Lorg/java_websocket/drafts/Draft;

    .line 221
    new-instance v0, Lorg/java_websocket/client/WebSocketClient$1;

    invoke-direct {v0, p0}, Lorg/java_websocket/client/WebSocketClient$1;-><init>(Lorg/java_websocket/client/WebSocketClient;)V

    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->dnsResolver:Lorg/java_websocket/client/DnsResolver;

    .line 227
    if-eqz p3, :cond_2

    .line 228
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    .line 229
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 231
    :cond_2
    iput p4, p0, Lorg/java_websocket/client/WebSocketClient;->connectTimeout:I

    .line 232
    invoke-virtual {p0, v2}, Lorg/java_websocket/client/WebSocketClient;->setTcpNoDelay(Z)V

    .line 233
    invoke-virtual {p0, v2}, Lorg/java_websocket/client/WebSocketClient;->setReuseAddr(Z)V

    .line 234
    new-instance v0, Lorg/java_websocket/WebSocketImpl;

    invoke-direct {v0, p0, p2}, Lorg/java_websocket/WebSocketImpl;-><init>(Lorg/java_websocket/WebSocketListener;Lorg/java_websocket/drafts/Draft;)V

    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    .line 235
    return-void
.end method

.method static synthetic access$000(Lorg/java_websocket/client/WebSocketClient;Ljava/io/IOException;)V
    .locals 0
    .param p0, "x0"    # Lorg/java_websocket/client/WebSocketClient;
    .param p1, "x1"    # Ljava/io/IOException;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/java_websocket/client/WebSocketClient;->handleIOException(Ljava/io/IOException;)V

    return-void
.end method

.method static synthetic access$102(Lorg/java_websocket/client/WebSocketClient;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lorg/java_websocket/client/WebSocketClient;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$200(Lorg/java_websocket/client/WebSocketClient;)Lorg/java_websocket/WebSocketImpl;
    .locals 1
    .param p0, "x0"    # Lorg/java_websocket/client/WebSocketClient;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    return-object v0
.end method

.method static synthetic access$300(Lorg/java_websocket/client/WebSocketClient;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "x0"    # Lorg/java_websocket/client/WebSocketClient;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->ostream:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$400(Lorg/java_websocket/client/WebSocketClient;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lorg/java_websocket/client/WebSocketClient;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method private getPort()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 579
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v0

    .line 580
    .local v0, "port":I
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, "scheme":Ljava/lang/String;
    const-string v2, "wss"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 582
    if-ne v0, v3, :cond_0

    const/16 v0, 0x1bb

    .line 584
    .end local v0    # "port":I
    :cond_0
    :goto_0
    return v0

    .line 583
    .restart local v0    # "port":I
    :cond_1
    const-string v2, "ws"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 584
    if-ne v0, v3, :cond_0

    const/16 v0, 0x50

    goto :goto_0

    .line 586
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown scheme: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private handleIOException(Ljava/io/IOException;)V
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 977
    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {p0, p1}, Lorg/java_websocket/client/WebSocketClient;->onError(Ljava/lang/Exception;)V

    .line 980
    :cond_0
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->eot()V

    .line 981
    return-void
.end method

.method private prepareSocket()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    const/4 v0, 0x0

    .line 547
    .local v0, "upgradeSocketToSSLSocket":Z
    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->proxy:Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-eq v1, v2, :cond_1

    .line 548
    new-instance v1, Ljava/net/Socket;

    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->proxy:Ljava/net/Proxy;

    invoke-direct {v1, v2}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    .line 549
    const/4 v0, 0x1

    .line 558
    :cond_0
    :goto_0
    return v0

    .line 550
    :cond_1
    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->socketFactory:Ljavax/net/SocketFactory;

    if-eqz v1, :cond_2

    .line 551
    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->socketFactory:Ljavax/net/SocketFactory;

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    goto :goto_0

    .line 552
    :cond_2
    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-nez v1, :cond_3

    .line 553
    new-instance v1, Ljava/net/Socket;

    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->proxy:Ljava/net/Proxy;

    invoke-direct {v1, v2}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    .line 554
    const/4 v0, 0x1

    goto :goto_0

    .line 555
    :cond_3
    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
.end method

.method private reset()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 337
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 338
    .local v0, "current":Ljava/lang/Thread;
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    if-ne v0, v2, :cond_1

    .line 339
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "You cannot initialize a reconnect out of the websocket thread. Use reconnect in another thread to ensure a successful cleanup."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 343
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->closeBlocking()V

    .line 344
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    if-eqz v2, :cond_2

    .line 345
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 346
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    .line 348
    :cond_2
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    if-eqz v2, :cond_3

    .line 349
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 350
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    .line 352
    :cond_3
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v2}, Lorg/java_websocket/drafts/Draft;->reset()V

    .line 353
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-eqz v2, :cond_4

    .line 354
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 355
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :cond_4
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    .line 363
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    .line 364
    new-instance v2, Lorg/java_websocket/WebSocketImpl;

    iget-object v3, p0, Lorg/java_websocket/client/WebSocketClient;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-direct {v2, p0, v3}, Lorg/java_websocket/WebSocketImpl;-><init>(Lorg/java_websocket/WebSocketListener;Lorg/java_websocket/drafts/Draft;)V

    iput-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    .line 365
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v1

    .line 358
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/java_websocket/client/WebSocketClient;->onError(Ljava/lang/Exception;)V

    .line 359
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    const/16 v3, 0x3ee

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private sendHandshake()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .prologue
    .line 597
    iget-object v7, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v7}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v3

    .line 598
    .local v3, "part1":Ljava/lang/String;
    iget-object v7, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v7}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v4

    .line 599
    .local v4, "part2":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 600
    :cond_0
    const-string v5, "/"

    .line 604
    .local v5, "path":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_1

    .line 605
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 607
    :cond_1
    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient;->getPort()I

    move-result v6

    .line 608
    .local v6, "port":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v8}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v7, 0x50

    if-eq v6, v7, :cond_3

    const/16 v7, 0x1bb

    if-eq v6, v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, "host":Ljava/lang/String;
    new-instance v0, Lorg/java_websocket/handshake/HandshakeImpl1Client;

    invoke-direct {v0}, Lorg/java_websocket/handshake/HandshakeImpl1Client;-><init>()V

    .line 614
    .local v0, "handshake":Lorg/java_websocket/handshake/HandshakeImpl1Client;
    invoke-virtual {v0, v5}, Lorg/java_websocket/handshake/HandshakeImpl1Client;->setResourceDescriptor(Ljava/lang/String;)V

    .line 615
    const-string v7, "Host"

    invoke-virtual {v0, v7, v1}, Lorg/java_websocket/handshake/HandshakeImpl1Client;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v7, p0, Lorg/java_websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    if-eqz v7, :cond_4

    .line 617
    iget-object v7, p0, Lorg/java_websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 618
    .local v2, "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lorg/java_websocket/handshake/HandshakeImpl1Client;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 602
    .end local v0    # "handshake":Lorg/java_websocket/handshake/HandshakeImpl1Client;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "port":I
    :cond_2
    move-object v5, v3

    .restart local v5    # "path":Ljava/lang/String;
    goto/16 :goto_0

    .line 608
    .restart local v6    # "port":I
    :cond_3
    const-string v7, ""

    goto :goto_1

    .line 621
    .restart local v0    # "handshake":Lorg/java_websocket/handshake/HandshakeImpl1Client;
    .restart local v1    # "host":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v7, v0}, Lorg/java_websocket/WebSocketImpl;->startHandshake(Lorg/java_websocket/handshake/ClientHandshakeBuilder;)V

    .line 622
    return-void
.end method

.method private upgradeSocketToSSL()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 534
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->socketFactory:Ljavax/net/SocketFactory;

    instance-of v2, v2, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_0

    .line 535
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socketFactory:Ljavax/net/SocketFactory;

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    .line 541
    .local v0, "factory":Ljavax/net/ssl/SSLSocketFactory;
    :goto_0
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    iget-object v3, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient;->getPort()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    .line 542
    return-void

    .line 537
    .end local v0    # "factory":Ljavax/net/ssl/SSLSocketFactory;
    :cond_0
    const-string v2, "TLSv1.2"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 538
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v1, v3, v3, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 539
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .restart local v0    # "factory":Ljavax/net/ssl/SSLSocketFactory;
    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    .line 276
    :cond_0
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    return-void
.end method

.method public clearHeaders()V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    .line 296
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lorg/java_websocket/WebSocketImpl;->close(I)V

    .line 413
    :cond_0
    return-void
.end method

.method public close(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 913
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lorg/java_websocket/WebSocketImpl;->close(I)V

    .line 914
    return-void
.end method

.method public close(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 918
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1, p2}, Lorg/java_websocket/WebSocketImpl;->close(ILjava/lang/String;)V

    .line 919
    return-void
.end method

.method public closeBlocking()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->close()V

    .line 422
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 423
    return-void
.end method

.method public closeConnection(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 923
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1, p2}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    .line 924
    return-void
.end method

.method public connect()V
    .locals 4

    .prologue
    .line 371
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 372
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WebSocketClient objects are not reuseable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    .line 375
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebSocketConnectReadThread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 377
    return-void
.end method

.method public connectBlocking()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->connect()V

    .line 387
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 388
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->isOpen()Z

    move-result v0

    return v0
.end method

.method public connectBlocking(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->connect()V

    .line 402
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 445
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->getAttachment()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getConnection()Lorg/java_websocket/WebSocket;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    return-object v0
.end method

.method protected getConnections()Ljava/util/Collection;
    .locals 1
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
    .line 455
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDraft()Lorg/java_websocket/drafts/Draft;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->draft:Lorg/java_websocket/drafts/Draft;

    return-object v0
.end method

.method public getLocalSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSocketAddress(Lorg/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;
    .locals 1
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;

    .prologue
    .line 724
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 727
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProtocol()Lorg/java_websocket/protocols/IProtocol;
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->getProtocol()Lorg/java_websocket/protocols/IProtocol;

    move-result-object v0

    return-object v0
.end method

.method public getReadyState()Lorg/java_websocket/enums/ReadyState;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->getReadyState()Lorg/java_websocket/enums/ReadyState;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->getRemoteSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteSocketAddress(Lorg/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;
    .locals 1
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;

    .prologue
    .line 732
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 735
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResourceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public hasBufferedData()Z
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->hasBufferedData()Z

    move-result v0

    return v0
.end method

.method public hasSSLSupport()Z
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->hasSSLSupport()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isFlushAndClose()Z
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->isFlushAndClose()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->isOpen()Z

    move-result v0

    return v0
.end method

.method public abstract onClose(ILjava/lang/String;Z)V
.end method

.method public onCloseInitiated(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 699
    return-void
.end method

.method public onClosing(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "remote"    # Z

    .prologue
    .line 711
    return-void
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onMessage(Ljava/lang/String;)V
.end method

.method public onMessage(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 784
    return-void
.end method

.method public abstract onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V
.end method

.method protected onSetSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 1
    .param p1, "sslParameters"    # Ljavax/net/ssl/SSLParameters;

    .prologue
    .line 570
    const-string v0, "HTTPS"

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method public final onWebsocketClose(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 1
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "remote"    # Z

    .prologue
    .line 659
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->stopConnectionLostTimer()V

    .line 660
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 663
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lorg/java_websocket/client/WebSocketClient;->onClose(ILjava/lang/String;Z)V

    .line 664
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 665
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 666
    return-void
.end method

.method public onWebsocketCloseInitiated(Lorg/java_websocket/WebSocket;ILjava/lang/String;)V
    .locals 0
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 683
    invoke-virtual {p0, p2, p3}, Lorg/java_websocket/client/WebSocketClient;->onCloseInitiated(ILjava/lang/String;)V

    .line 684
    return-void
.end method

.method public onWebsocketClosing(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "remote"    # Z

    .prologue
    .line 688
    invoke-virtual {p0, p2, p3, p4}, Lorg/java_websocket/client/WebSocketClient;->onClosing(ILjava/lang/String;Z)V

    .line 689
    return-void
.end method

.method public final onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 673
    invoke-virtual {p0, p2}, Lorg/java_websocket/client/WebSocketClient;->onError(Ljava/lang/Exception;)V

    .line 674
    return-void
.end method

.method public final onWebsocketMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 0
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 636
    invoke-virtual {p0, p2}, Lorg/java_websocket/client/WebSocketClient;->onMessage(Ljava/lang/String;)V

    .line 637
    return-void
.end method

.method public final onWebsocketMessage(Lorg/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "blob"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 641
    invoke-virtual {p0, p2}, Lorg/java_websocket/client/WebSocketClient;->onMessage(Ljava/nio/ByteBuffer;)V

    .line 642
    return-void
.end method

.method public final onWebsocketOpen(Lorg/java_websocket/WebSocket;Lorg/java_websocket/handshake/Handshakedata;)V
    .locals 1
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "handshake"    # Lorg/java_websocket/handshake/Handshakedata;

    .prologue
    .line 649
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->startConnectionLostTimer()V

    .line 650
    check-cast p2, Lorg/java_websocket/handshake/ServerHandshake;

    .end local p2    # "handshake":Lorg/java_websocket/handshake/Handshakedata;
    invoke-virtual {p0, p2}, Lorg/java_websocket/client/WebSocketClient;->onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V

    .line 651
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 652
    return-void
.end method

.method public final onWriteDemand(Lorg/java_websocket/WebSocket;)V
    .locals 0
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;

    .prologue
    .line 679
    return-void
.end method

.method public reconnect()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient;->reset()V

    .line 315
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->connect()V

    .line 316
    return-void
.end method

.method public reconnectBlocking()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient;->reset()V

    .line 328
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->connectBlocking()Z

    move-result v0

    return v0
.end method

.method public removeHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 288
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    .line 466
    :try_start_0
    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient;->prepareSocket()Z

    move-result v8

    .line 468
    .local v8, "upgradeSocketToSSLSocket":Z
    iget-object v9, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->isTcpNoDelay()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 469
    iget-object v9, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->isReuseAddr()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 471
    iget-object v9, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->isConnected()Z

    move-result v9

    if-nez v9, :cond_0

    .line 472
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v9, p0, Lorg/java_websocket/client/WebSocketClient;->dnsResolver:Lorg/java_websocket/client/DnsResolver;

    iget-object v10, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-interface {v9, v10}, Lorg/java_websocket/client/DnsResolver;->resolve(Ljava/net/URI;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient;->getPort()I

    move-result v10

    invoke-direct {v0, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 473
    .local v0, "addr":Ljava/net/InetSocketAddress;
    iget-object v9, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    iget v10, p0, Lorg/java_websocket/client/WebSocketClient;->connectTimeout:I

    invoke-virtual {v9, v0, v10}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 477
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    :cond_0
    if-eqz v8, :cond_1

    const-string v9, "wss"

    iget-object v10, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v10}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 478
    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient;->upgradeSocketToSSL()V

    .line 481
    :cond_1
    iget-object v9, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    instance-of v9, v9, Ljavax/net/ssl/SSLSocket;

    if-eqz v9, :cond_2

    .line 482
    iget-object v7, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    check-cast v7, Ljavax/net/ssl/SSLSocket;

    .line 483
    .local v7, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v6

    .line 484
    .local v6, "sslParameters":Ljavax/net/ssl/SSLParameters;
    invoke-virtual {p0, v6}, Lorg/java_websocket/client/WebSocketClient;->onSetSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 485
    invoke-virtual {v7, v6}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 488
    .end local v6    # "sslParameters":Ljavax/net/ssl/SSLParameters;
    .end local v7    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_2
    iget-object v9, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 489
    .local v3, "istream":Ljava/io/InputStream;
    iget-object v9, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    iput-object v9, p0, Lorg/java_websocket/client/WebSocketClient;->ostream:Ljava/io/OutputStream;

    .line 491
    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient;->sendHandshake()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_2

    .line 508
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;

    invoke-direct {v10, p0, p0}, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;-><init>(Lorg/java_websocket/client/WebSocketClient;Lorg/java_websocket/client/WebSocketClient;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v9, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    .line 509
    iget-object v9, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 511
    const/16 v9, 0x4000

    new-array v4, v9, [B

    .line 515
    .local v4, "rawbuffer":[B
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->isClosing()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->isClosed()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "readBytes":I
    if-eq v5, v11, :cond_4

    .line 516
    iget-object v9, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    const/4 v10, 0x0

    invoke-static {v4, v10, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/java_websocket/WebSocketImpl;->decode(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 519
    .end local v5    # "readBytes":I
    :catch_0
    move-exception v2

    .line 520
    .local v2, "e":Ljava/io/IOException;
    invoke-direct {p0, v2}, Lorg/java_websocket/client/WebSocketClient;->handleIOException(Ljava/io/IOException;)V

    .line 526
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/java_websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    .line 527
    .end local v3    # "istream":Ljava/io/InputStream;
    .end local v4    # "rawbuffer":[B
    .end local v8    # "upgradeSocketToSSLSocket":Z
    :goto_2
    return-void

    .line 492
    :catch_1
    move-exception v2

    .line 493
    .local v2, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {p0, v9, v2}, Lorg/java_websocket/client/WebSocketClient;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 494
    iget-object v9, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    goto :goto_2

    .line 496
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 498
    .local v2, "e":Ljava/lang/InternalError;
    invoke-virtual {v2}, Ljava/lang/InternalError;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    instance-of v9, v9, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v9, :cond_3

    invoke-virtual {v2}, Ljava/lang/InternalError;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    .line 499
    invoke-virtual {v9}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    instance-of v9, v9, Ljava/io/IOException;

    if-eqz v9, :cond_3

    .line 500
    invoke-virtual {v2}, Ljava/lang/InternalError;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    .line 501
    .local v1, "cause":Ljava/io/IOException;
    iget-object v9, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {p0, v9, v1}, Lorg/java_websocket/client/WebSocketClient;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 502
    iget-object v9, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    goto :goto_2

    .line 505
    .end local v1    # "cause":Ljava/io/IOException;
    :cond_3
    throw v2

    .line 518
    .end local v2    # "e":Ljava/lang/InternalError;
    .restart local v3    # "istream":Ljava/io/InputStream;
    .restart local v4    # "rawbuffer":[B
    .restart local v8    # "upgradeSocketToSSLSocket":Z
    :cond_4
    :try_start_2
    iget-object v9, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v9}, Lorg/java_websocket/WebSocketImpl;->eot()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 521
    :catch_3
    move-exception v2

    .line 523
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v2}, Lorg/java_websocket/client/WebSocketClient;->onError(Ljava/lang/Exception;)V

    .line 524
    iget-object v9, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    const/16 v10, 0x3ee

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public send(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 431
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lorg/java_websocket/WebSocketImpl;->send(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public send(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 928
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lorg/java_websocket/WebSocketImpl;->send(Ljava/nio/ByteBuffer;)V

    .line 929
    return-void
.end method

.method public send([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 440
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lorg/java_websocket/WebSocketImpl;->send([B)V

    .line 441
    return-void
.end method

.method public sendFragmentedFrame(Lorg/java_websocket/enums/Opcode;Ljava/nio/ByteBuffer;Z)V
    .locals 1
    .param p1, "op"    # Lorg/java_websocket/enums/Opcode;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "fin"    # Z

    .prologue
    .line 883
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/java_websocket/WebSocketImpl;->sendFragmentedFrame(Lorg/java_websocket/enums/Opcode;Ljava/nio/ByteBuffer;Z)V

    .line 884
    return-void
.end method

.method public sendFrame(Ljava/util/Collection;)V
    .locals 1
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
    .line 938
    .local p1, "frames":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/java_websocket/framing/Framedata;>;"
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lorg/java_websocket/WebSocketImpl;->sendFrame(Ljava/util/Collection;)V

    .line 939
    return-void
.end method

.method public sendFrame(Lorg/java_websocket/framing/Framedata;)V
    .locals 1
    .param p1, "framedata"    # Lorg/java_websocket/framing/Framedata;

    .prologue
    .line 933
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lorg/java_websocket/WebSocketImpl;->sendFrame(Lorg/java_websocket/framing/Framedata;)V

    .line 934
    return-void
.end method

.method public sendPing()V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->sendPing()V

    .line 461
    return-void
.end method

.method public setAttachment(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p1, "attachment":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lorg/java_websocket/WebSocketImpl;->setAttachment(Ljava/lang/Object;)V

    .line 451
    return-void
.end method

.method public setDnsResolver(Lorg/java_websocket/client/DnsResolver;)V
    .locals 0
    .param p1, "dnsResolver"    # Lorg/java_websocket/client/DnsResolver;

    .prologue
    .line 305
    iput-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->dnsResolver:Lorg/java_websocket/client/DnsResolver;

    .line 306
    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 1
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 850
    if-nez p1, :cond_0

    .line 851
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 853
    :cond_0
    iput-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->proxy:Ljava/net/Proxy;

    .line 854
    return-void
.end method

.method public setSocket(Ljava/net/Socket;)V
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 865
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 866
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "socket has already been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_0
    iput-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    .line 869
    return-void
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)V
    .locals 0
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;

    .prologue
    .line 878
    iput-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 879
    return-void
.end method
