.class public Lkiller/core/httpserver/NanoHTTPD$SecureServerSocketFactory;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Lkiller/core/httpserver/NanoHTTPD$ServerSocketFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkiller/core/httpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecureServerSocketFactory"
.end annotation


# instance fields
.field private sslProtocols:[Ljava/lang/String;

.field private sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLServerSocketFactory;[Ljava/lang/String;)V
    .locals 0
    .param p1, "sslServerSocketFactory"    # Ljavax/net/ssl/SSLServerSocketFactory;
    .param p2, "sslProtocols"    # [Ljava/lang/String;

    .prologue
    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    iput-object p1, p0, Lkiller/core/httpserver/NanoHTTPD$SecureServerSocketFactory;->sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    .line 449
    iput-object p2, p0, Lkiller/core/httpserver/NanoHTTPD$SecureServerSocketFactory;->sslProtocols:[Ljava/lang/String;

    .line 450
    return-void
.end method


# virtual methods
.method public create()Ljava/net/ServerSocket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, "ss":Ljavax/net/ssl/SSLServerSocket;
    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD$SecureServerSocketFactory;->sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    .end local v0    # "ss":Ljavax/net/ssl/SSLServerSocket;
    check-cast v0, Ljavax/net/ssl/SSLServerSocket;

    .line 456
    .restart local v0    # "ss":Ljavax/net/ssl/SSLServerSocket;
    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD$SecureServerSocketFactory;->sslProtocols:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 457
    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD$SecureServerSocketFactory;->sslProtocols:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 461
    :goto_0
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLServerSocket;->setUseClientMode(Z)V

    .line 462
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    .line 463
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLServerSocket;->setNeedClientAuth(Z)V

    .line 464
    return-object v0

    .line 459
    :cond_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLServerSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_0
.end method
