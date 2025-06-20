.class public final Lkiller/core/httpserver/NanoHTTPD$ResponseException;
.super Ljava/lang/Exception;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkiller/core/httpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResponseException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5b2cc1565237327cL


# instance fields
.field private final status:Lkiller/core/httpserver/NanoHTTPD$Response$Status;


# direct methods
.method public constructor <init>(Lkiller/core/httpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Lkiller/core/httpserver/NanoHTTPD$Response$Status;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1682
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1683
    iput-object p1, p0, Lkiller/core/httpserver/NanoHTTPD$ResponseException;->status:Lkiller/core/httpserver/NanoHTTPD$Response$Status;

    .line 1684
    return-void
.end method

.method public constructor <init>(Lkiller/core/httpserver/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "status"    # Lkiller/core/httpserver/NanoHTTPD$Response$Status;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1687
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1688
    iput-object p1, p0, Lkiller/core/httpserver/NanoHTTPD$ResponseException;->status:Lkiller/core/httpserver/NanoHTTPD$Response$Status;

    .line 1689
    return-void
.end method


# virtual methods
.method public getStatus()Lkiller/core/httpserver/NanoHTTPD$Response$Status;
    .locals 1

    .prologue
    .line 1692
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$ResponseException;->status:Lkiller/core/httpserver/NanoHTTPD$Response$Status;

    return-object v0
.end method
