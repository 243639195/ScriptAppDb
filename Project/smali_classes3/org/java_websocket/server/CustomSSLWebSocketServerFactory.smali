.class public Lorg/java_websocket/server/CustomSSLWebSocketServerFactory;
.super Lorg/java_websocket/server/DefaultSSLWebSocketServerFactory;
.source "CustomSSLWebSocketServerFactory.java"


# instance fields
.field private final enabledCiphersuites:[Ljava/lang/String;

.field private final enabledProtocols:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLContext;Ljava/util/concurrent/ExecutorService;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p2, "executerService"    # Ljava/util/concurrent/ExecutorService;
    .param p3, "enabledProtocols"    # [Ljava/lang/String;
    .param p4, "enabledCiphersuites"    # [Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lorg/java_websocket/server/DefaultSSLWebSocketServerFactory;-><init>(Ljavax/net/ssl/SSLContext;Ljava/util/concurrent/ExecutorService;)V

    .line 83
    iput-object p3, p0, Lorg/java_websocket/server/CustomSSLWebSocketServerFactory;->enabledProtocols:[Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lorg/java_websocket/server/CustomSSLWebSocketServerFactory;->enabledCiphersuites:[Ljava/lang/String;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p2, "enabledProtocols"    # [Ljava/lang/String;
    .param p3, "enabledCiphersuites"    # [Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/java_websocket/server/CustomSSLWebSocketServerFactory;-><init>(Ljavax/net/ssl/SSLContext;Ljava/util/concurrent/ExecutorService;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 67
    return-void
.end method


# virtual methods
.method public wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/ByteChannel;
    .locals 3
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v1, p0, Lorg/java_websocket/server/CustomSSLWebSocketServerFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 90
    .local v0, "e":Ljavax/net/ssl/SSLEngine;
    iget-object v1, p0, Lorg/java_websocket/server/CustomSSLWebSocketServerFactory;->enabledProtocols:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lorg/java_websocket/server/CustomSSLWebSocketServerFactory;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    .line 93
    :cond_0
    iget-object v1, p0, Lorg/java_websocket/server/CustomSSLWebSocketServerFactory;->enabledCiphersuites:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lorg/java_websocket/server/CustomSSLWebSocketServerFactory;->enabledCiphersuites:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 96
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 97
    new-instance v1, Lorg/java_websocket/SSLSocketChannel2;

    iget-object v2, p0, Lorg/java_websocket/server/CustomSSLWebSocketServerFactory;->exec:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, p1, v0, v2, p2}, Lorg/java_websocket/SSLSocketChannel2;-><init>(Ljava/nio/channels/SocketChannel;Ljavax/net/ssl/SSLEngine;Ljava/util/concurrent/ExecutorService;Ljava/nio/channels/SelectionKey;)V

    return-object v1
.end method
