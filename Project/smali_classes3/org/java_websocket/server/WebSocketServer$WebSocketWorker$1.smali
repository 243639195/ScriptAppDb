.class Lorg/java_websocket/server/WebSocketServer$WebSocketWorker$1;
.super Ljava/lang/Object;
.source "WebSocketServer.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;-><init>(Lorg/java_websocket/server/WebSocketServer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

.field final synthetic val$this$0:Lorg/java_websocket/server/WebSocketServer;


# direct methods
.method constructor <init>(Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;Lorg/java_websocket/server/WebSocketServer;)V
    .locals 0
    .param p1, "this$1"    # Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    .prologue
    .line 1056
    iput-object p1, p0, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker$1;->this$1:Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    iput-object p2, p0, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker$1;->val$this$0:Lorg/java_websocket/server/WebSocketServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1059
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker$1;->this$1:Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    iget-object v0, v0, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->this$0:Lorg/java_websocket/server/WebSocketServer;

    invoke-static {v0}, Lorg/java_websocket/server/WebSocketServer;->access$000(Lorg/java_websocket/server/WebSocketServer;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Uncaught exception in thread {}: {}"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1060
    return-void
.end method
