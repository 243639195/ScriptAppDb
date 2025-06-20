.class public Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkiller/core/httpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerRunnable"
.end annotation


# instance fields
.field private bindException:Ljava/io/IOException;

.field private hasBinded:Z

.field final synthetic this$0:Lkiller/core/httpserver/NanoHTTPD;

.field private final timeout:I


# direct methods
.method public constructor <init>(Lkiller/core/httpserver/NanoHTTPD;I)V
    .locals 1
    .param p1, "this$0"    # Lkiller/core/httpserver/NanoHTTPD;
    .param p2, "timeout"    # I

    .prologue
    .line 1707
    iput-object p1, p0, Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;->this$0:Lkiller/core/httpserver/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;->hasBinded:Z

    .line 1708
    iput p2, p0, Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;->timeout:I

    .line 1709
    return-void
.end method

.method static synthetic access$1000(Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;)Z
    .locals 1
    .param p0, "x0"    # Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;

    .prologue
    .line 1699
    iget-boolean v0, p0, Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;->hasBinded:Z

    return v0
.end method

.method static synthetic access$1100(Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;
    .locals 1
    .param p0, "x0"    # Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;

    .prologue
    .line 1699
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;->bindException:Ljava/io/IOException;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1714
    :try_start_0
    iget-object v3, p0, Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;->this$0:Lkiller/core/httpserver/NanoHTTPD;

    iget-object v4, v3, Lkiller/core/httpserver/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    iget-object v3, p0, Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;->this$0:Lkiller/core/httpserver/NanoHTTPD;

    invoke-static {v3}, Lkiller/core/httpserver/NanoHTTPD;->access$700(Lkiller/core/httpserver/NanoHTTPD;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;->this$0:Lkiller/core/httpserver/NanoHTTPD;

    invoke-static {v5}, Lkiller/core/httpserver/NanoHTTPD;->access$700(Lkiller/core/httpserver/NanoHTTPD;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;->this$0:Lkiller/core/httpserver/NanoHTTPD;

    invoke-static {v6}, Lkiller/core/httpserver/NanoHTTPD;->access$800(Lkiller/core/httpserver/NanoHTTPD;)I

    move-result v6

    invoke-direct {v3, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {v4, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 1715
    const/4 v3, 0x1

    iput-boolean v3, p0, Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;->hasBinded:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1722
    :cond_0
    :try_start_1
    iget-object v3, p0, Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;->this$0:Lkiller/core/httpserver/NanoHTTPD;

    iget-object v3, v3, Lkiller/core/httpserver/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 1723
    .local v1, "finalAccept":Ljava/net/Socket;
    iget v3, p0, Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;->timeout:I

    if-lez v3, :cond_1

    .line 1724
    iget v3, p0, Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;->timeout:I

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 1726
    :cond_1
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1727
    .local v2, "inputStream":Ljava/io/InputStream;
    iget-object v3, p0, Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;->this$0:Lkiller/core/httpserver/NanoHTTPD;

    iget-object v3, v3, Lkiller/core/httpserver/NanoHTTPD;->asyncRunner:Lkiller/core/httpserver/NanoHTTPD$AsyncRunner;

    iget-object v4, p0, Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;->this$0:Lkiller/core/httpserver/NanoHTTPD;

    invoke-virtual {v4, v1, v2}, Lkiller/core/httpserver/NanoHTTPD;->createClientHandler(Ljava/net/Socket;Ljava/io/InputStream;)Lkiller/core/httpserver/NanoHTTPD$ClientHandler;

    move-result-object v4

    invoke-interface {v3, v4}, Lkiller/core/httpserver/NanoHTTPD$AsyncRunner;->exec(Lkiller/core/httpserver/NanoHTTPD$ClientHandler;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1731
    .end local v1    # "finalAccept":Ljava/net/Socket;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :goto_1
    iget-object v3, p0, Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;->this$0:Lkiller/core/httpserver/NanoHTTPD;

    iget-object v3, v3, Lkiller/core/httpserver/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1732
    :goto_2
    return-void

    .line 1714
    :cond_2
    :try_start_2
    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;->this$0:Lkiller/core/httpserver/NanoHTTPD;

    invoke-static {v5}, Lkiller/core/httpserver/NanoHTTPD;->access$800(Lkiller/core/httpserver/NanoHTTPD;)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/net/InetSocketAddress;-><init>(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1716
    :catch_0
    move-exception v0

    .line 1717
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;->bindException:Ljava/io/IOException;

    goto :goto_2

    .line 1728
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1729
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {}, Lkiller/core/httpserver/NanoHTTPD;->access$200()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Communication with the client broken"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
