.class Lorg/java_websocket/AbstractWebSocket$1;
.super Ljava/lang/Object;
.source "AbstractWebSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/java_websocket/AbstractWebSocket;->restartConnectionLostTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private connections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/java_websocket/WebSocket;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/java_websocket/AbstractWebSocket;


# direct methods
.method constructor <init>(Lorg/java_websocket/AbstractWebSocket;)V
    .locals 1
    .param p1, "this$0"    # Lorg/java_websocket/AbstractWebSocket;

    .prologue
    .line 186
    iput-object p1, p0, Lorg/java_websocket/AbstractWebSocket$1;->this$0:Lorg/java_websocket/AbstractWebSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/java_websocket/AbstractWebSocket$1;->connections:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 195
    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket$1;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 197
    :try_start_0
    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket$1;->connections:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/java_websocket/AbstractWebSocket$1;->this$0:Lorg/java_websocket/AbstractWebSocket;

    invoke-virtual {v4}, Lorg/java_websocket/AbstractWebSocket;->getConnections()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 199
    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket$1;->this$0:Lorg/java_websocket/AbstractWebSocket;

    invoke-static {v1}, Lorg/java_websocket/AbstractWebSocket;->access$000(Lorg/java_websocket/AbstractWebSocket;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    long-to-double v6, v6

    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket$1;->this$0:Lorg/java_websocket/AbstractWebSocket;

    invoke-static {v1}, Lorg/java_websocket/AbstractWebSocket;->access$100(Lorg/java_websocket/AbstractWebSocket;)J

    move-result-wide v8

    long-to-double v8, v8

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-long v2, v6

    .line 201
    .local v2, "minimumPongTime":J
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :try_start_2
    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket$1;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/java_websocket/WebSocket;

    .line 203
    .local v0, "conn":Lorg/java_websocket/WebSocket;
    iget-object v4, p0, Lorg/java_websocket/AbstractWebSocket$1;->this$0:Lorg/java_websocket/AbstractWebSocket;

    invoke-static {v4, v0, v2, v3}, Lorg/java_websocket/AbstractWebSocket;->access$200(Lorg/java_websocket/AbstractWebSocket;Lorg/java_websocket/WebSocket;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 205
    .end local v0    # "conn":Lorg/java_websocket/WebSocket;
    .end local v2    # "minimumPongTime":J
    :catch_0
    move-exception v1

    .line 208
    :cond_0
    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket$1;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 209
    return-void

    .line 201
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method
