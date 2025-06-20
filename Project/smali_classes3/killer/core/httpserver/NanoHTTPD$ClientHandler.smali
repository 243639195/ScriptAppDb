.class public Lkiller/core/httpserver/NanoHTTPD$ClientHandler;
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
    name = "ClientHandler"
.end annotation


# instance fields
.field private final acceptSocket:Ljava/net/Socket;

.field private final inputStream:Ljava/io/InputStream;

.field final synthetic this$0:Lkiller/core/httpserver/NanoHTTPD;


# direct methods
.method public constructor <init>(Lkiller/core/httpserver/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;)V
    .locals 0
    .param p1, "this$0"    # Lkiller/core/httpserver/NanoHTTPD;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "acceptSocket"    # Ljava/net/Socket;

    .prologue
    .line 127
    iput-object p1, p0, Lkiller/core/httpserver/NanoHTTPD$ClientHandler;->this$0:Lkiller/core/httpserver/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p2, p0, Lkiller/core/httpserver/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    .line 129
    iput-object p3, p0, Lkiller/core/httpserver/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    .line 130
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-static {v0}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 139
    const/4 v4, 0x0

    .line 141
    .local v4, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 142
    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD$ClientHandler;->this$0:Lkiller/core/httpserver/NanoHTTPD;

    invoke-static {v1}, Lkiller/core/httpserver/NanoHTTPD;->access$100(Lkiller/core/httpserver/NanoHTTPD;)Lkiller/core/httpserver/NanoHTTPD$TempFileManagerFactory;

    move-result-object v1

    invoke-interface {v1}, Lkiller/core/httpserver/NanoHTTPD$TempFileManagerFactory;->create()Lkiller/core/httpserver/NanoHTTPD$TempFileManager;

    move-result-object v2

    .line 143
    .local v2, "tempFileManager":Lkiller/core/httpserver/NanoHTTPD$TempFileManager;
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;

    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD$ClientHandler;->this$0:Lkiller/core/httpserver/NanoHTTPD;

    iget-object v3, p0, Lkiller/core/httpserver/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    iget-object v5, p0, Lkiller/core/httpserver/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;-><init>(Lkiller/core/httpserver/NanoHTTPD;Lkiller/core/httpserver/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V

    .line 144
    .local v0, "session":Lkiller/core/httpserver/NanoHTTPD$HTTPSession;
    :goto_0
    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 145
    invoke-virtual {v0}, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 147
    .end local v0    # "session":Lkiller/core/httpserver/NanoHTTPD$HTTPSession;
    .end local v2    # "tempFileManager":Lkiller/core/httpserver/NanoHTTPD$TempFileManager;
    :catch_0
    move-exception v6

    .line 155
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    instance-of v1, v6, Ljava/net/SocketException;

    if-eqz v1, :cond_0

    const-string v1, "NanoHttpd Shutdown"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    instance-of v1, v6, Ljava/net/SocketTimeoutException;

    if-nez v1, :cond_1

    .line 156
    invoke-static {}, Lkiller/core/httpserver/NanoHTTPD;->access$200()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "Communication with the client broken, or an bug in the handler code"

    invoke-virtual {v1, v3, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :cond_1
    invoke-static {v4}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 160
    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 161
    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-static {v1}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 162
    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD$ClientHandler;->this$0:Lkiller/core/httpserver/NanoHTTPD;

    iget-object v1, v1, Lkiller/core/httpserver/NanoHTTPD;->asyncRunner:Lkiller/core/httpserver/NanoHTTPD$AsyncRunner;

    invoke-interface {v1, p0}, Lkiller/core/httpserver/NanoHTTPD$AsyncRunner;->closed(Lkiller/core/httpserver/NanoHTTPD$ClientHandler;)V

    .line 164
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 159
    .restart local v0    # "session":Lkiller/core/httpserver/NanoHTTPD$HTTPSession;
    .restart local v2    # "tempFileManager":Lkiller/core/httpserver/NanoHTTPD$TempFileManager;
    :cond_2
    invoke-static {v4}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 160
    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 161
    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-static {v1}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 162
    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD$ClientHandler;->this$0:Lkiller/core/httpserver/NanoHTTPD;

    iget-object v1, v1, Lkiller/core/httpserver/NanoHTTPD;->asyncRunner:Lkiller/core/httpserver/NanoHTTPD$AsyncRunner;

    invoke-interface {v1, p0}, Lkiller/core/httpserver/NanoHTTPD$AsyncRunner;->closed(Lkiller/core/httpserver/NanoHTTPD$ClientHandler;)V

    goto :goto_1

    .line 159
    .end local v0    # "session":Lkiller/core/httpserver/NanoHTTPD$HTTPSession;
    .end local v2    # "tempFileManager":Lkiller/core/httpserver/NanoHTTPD$TempFileManager;
    :catchall_0
    move-exception v1

    invoke-static {v4}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 160
    iget-object v3, p0, Lkiller/core/httpserver/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {v3}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 161
    iget-object v3, p0, Lkiller/core/httpserver/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-static {v3}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 162
    iget-object v3, p0, Lkiller/core/httpserver/NanoHTTPD$ClientHandler;->this$0:Lkiller/core/httpserver/NanoHTTPD;

    iget-object v3, v3, Lkiller/core/httpserver/NanoHTTPD;->asyncRunner:Lkiller/core/httpserver/NanoHTTPD$AsyncRunner;

    invoke-interface {v3, p0}, Lkiller/core/httpserver/NanoHTTPD$AsyncRunner;->closed(Lkiller/core/httpserver/NanoHTTPD$ClientHandler;)V

    .line 163
    throw v1
.end method
