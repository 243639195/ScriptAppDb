.class public abstract Lorg/java_websocket/AbstractWebSocket;
.super Lorg/java_websocket/WebSocketAdapter;
.source "AbstractWebSocket.java"


# instance fields
.field private connectionLostCheckerFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private connectionLostCheckerService:Ljava/util/concurrent/ScheduledExecutorService;

.field private connectionLostTimeout:J

.field private final log:Lorg/slf4j/Logger;

.field private reuseAddr:Z

.field private final syncConnectionLost:Ljava/lang/Object;

.field private tcpNoDelay:Z

.field private websocketRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/java_websocket/WebSocketAdapter;-><init>()V

    .line 50
    const-class v0, Lorg/java_websocket/AbstractWebSocket;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lorg/slf4j/Logger;

    .line 84
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:J

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/java_websocket/AbstractWebSocket;->websocketRunning:Z

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->syncConnectionLost:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lorg/java_websocket/AbstractWebSocket;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/java_websocket/AbstractWebSocket;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->syncConnectionLost:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/java_websocket/AbstractWebSocket;)J
    .locals 2
    .param p0, "x0"    # Lorg/java_websocket/AbstractWebSocket;

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/java_websocket/AbstractWebSocket;Lorg/java_websocket/WebSocket;J)V
    .locals 0
    .param p0, "x0"    # Lorg/java_websocket/AbstractWebSocket;
    .param p1, "x1"    # Lorg/java_websocket/WebSocket;
    .param p2, "x2"    # J

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lorg/java_websocket/AbstractWebSocket;->executeConnectionLostDetection(Lorg/java_websocket/WebSocket;J)V

    return-void
.end method

.method private cancelConnectionLostTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 257
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 259
    iput-object v2, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 261
    :cond_0
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 263
    iput-object v2, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 265
    :cond_1
    return-void
.end method

.method private executeConnectionLostDetection(Lorg/java_websocket/WebSocket;J)V
    .locals 4
    .param p1, "webSocket"    # Lorg/java_websocket/WebSocket;
    .param p2, "minimumPongTime"    # J

    .prologue
    .line 226
    instance-of v1, p1, Lorg/java_websocket/WebSocketImpl;

    if-nez v1, :cond_0

    .line 241
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 229
    check-cast v0, Lorg/java_websocket/WebSocketImpl;

    .line 230
    .local v0, "webSocketImpl":Lorg/java_websocket/WebSocketImpl;
    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->getLastPong()J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-gez v1, :cond_1

    .line 231
    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lorg/slf4j/Logger;

    const-string v2, "Closing connection due to no pong received: {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    const/16 v1, 0x3ee

    const-string v2, "The connection was closed because the other endpoint did not respond with a pong in time. For more information check: https://github.com/TooTallNate/Java-WebSocket/wiki/Lost-connection-detection"

    invoke-virtual {v0, v1, v2}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->sendPing()V

    goto :goto_0

    .line 238
    :cond_2
    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lorg/slf4j/Logger;

    const-string v2, "Trying to ping a non open connection: {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private restartConnectionLostTimer()V
    .locals 7

    .prologue
    .line 183
    invoke-direct {p0}, Lorg/java_websocket/AbstractWebSocket;->cancelConnectionLostTimer()V

    .line 184
    new-instance v0, Lorg/java_websocket/util/NamedThreadFactory;

    const-string v2, "connectionLostChecker"

    invoke-direct {v0, v2}, Lorg/java_websocket/util/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 186
    new-instance v1, Lorg/java_websocket/AbstractWebSocket$1;

    invoke-direct {v1, p0}, Lorg/java_websocket/AbstractWebSocket$1;-><init>(Lorg/java_websocket/AbstractWebSocket;)V

    .line 212
    .local v1, "connectionLostChecker":Ljava/lang/Runnable;
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v2, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:J

    iget-wide v4, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 213
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 215
    return-void
.end method


# virtual methods
.method public getConnectionLostTimeout()I
    .locals 4

    .prologue
    .line 105
    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->syncConnectionLost:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-int v0, v2

    monitor-exit v1

    return v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract getConnections()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/java_websocket/WebSocket;",
            ">;"
        }
    .end annotation
.end method

.method public isReuseAddr()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lorg/java_websocket/AbstractWebSocket;->reuseAddr:Z

    return v0
.end method

.method public isTcpNoDelay()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lorg/java_websocket/AbstractWebSocket;->tcpNoDelay:Z

    return v0
.end method

.method public setConnectionLostTimeout(I)V
    .locals 12
    .param p1, "connectionLostTimeout"    # I

    .prologue
    .line 118
    iget-object v7, p0, Lorg/java_websocket/AbstractWebSocket;->syncConnectionLost:Ljava/lang/Object;

    monitor-enter v7

    .line 119
    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, p1

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    iput-wide v8, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:J

    .line 120
    iget-wide v8, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-gtz v6, :cond_0

    .line 121
    iget-object v6, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lorg/slf4j/Logger;

    const-string v8, "Connection lost timer stopped"

    invoke-interface {v6, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lorg/java_websocket/AbstractWebSocket;->cancelConnectionLostTimer()V

    .line 123
    monitor-exit v7

    .line 143
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-boolean v6, p0, Lorg/java_websocket/AbstractWebSocket;->websocketRunning:Z

    if-eqz v6, :cond_3

    .line 126
    iget-object v6, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lorg/slf4j/Logger;

    const-string v8, "Connection lost timer restarted"

    invoke-interface {v6, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/java_websocket/AbstractWebSocket;->getConnections()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 131
    .local v3, "connections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/java_websocket/WebSocket;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/java_websocket/WebSocket;

    .line 132
    .local v2, "conn":Lorg/java_websocket/WebSocket;
    instance-of v8, v2, Lorg/java_websocket/WebSocketImpl;

    if-eqz v8, :cond_1

    .line 133
    move-object v0, v2

    check-cast v0, Lorg/java_websocket/WebSocketImpl;

    move-object v5, v0

    .line 134
    .local v5, "webSocketImpl":Lorg/java_websocket/WebSocketImpl;
    invoke-virtual {v5}, Lorg/java_websocket/WebSocketImpl;->updateLastPong()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 137
    .end local v2    # "conn":Lorg/java_websocket/WebSocket;
    .end local v3    # "connections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/java_websocket/WebSocket;>;"
    .end local v5    # "webSocketImpl":Lorg/java_websocket/WebSocketImpl;
    :catch_0
    move-exception v4

    .line 138
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v6, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lorg/slf4j/Logger;

    const-string v8, "Exception during connection lost restart"

    invoke-interface {v6, v8, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-direct {p0}, Lorg/java_websocket/AbstractWebSocket;->restartConnectionLostTimer()V

    .line 142
    :cond_3
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method public setReuseAddr(Z)V
    .locals 0
    .param p1, "reuseAddr"    # Z

    .prologue
    .line 308
    iput-boolean p1, p0, Lorg/java_websocket/AbstractWebSocket;->reuseAddr:Z

    .line 309
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 0
    .param p1, "tcpNoDelay"    # Z

    .prologue
    .line 286
    iput-boolean p1, p0, Lorg/java_websocket/AbstractWebSocket;->tcpNoDelay:Z

    .line 287
    return-void
.end method

.method protected startConnectionLostTimer()V
    .locals 6

    .prologue
    .line 166
    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->syncConnectionLost:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-wide v2, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 168
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lorg/slf4j/Logger;

    const-string v2, "Connection lost timer deactivated"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 169
    monitor-exit v1

    .line 175
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lorg/slf4j/Logger;

    const-string v2, "Connection lost timer started"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/java_websocket/AbstractWebSocket;->websocketRunning:Z

    .line 173
    invoke-direct {p0}, Lorg/java_websocket/AbstractWebSocket;->restartConnectionLostTimer()V

    .line 174
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected stopConnectionLostTimer()V
    .locals 3

    .prologue
    .line 151
    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->syncConnectionLost:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/java_websocket/AbstractWebSocket;->websocketRunning:Z

    .line 154
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lorg/slf4j/Logger;

    const-string v2, "Connection lost timer stopped"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lorg/java_websocket/AbstractWebSocket;->cancelConnectionLostTimer()V

    .line 157
    :cond_1
    monitor-exit v1

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
