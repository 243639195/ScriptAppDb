.class Lkiller/core/httpserver/NanoHTTPD$DefaultTempFileManagerFactory;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Lkiller/core/httpserver/NanoHTTPD$TempFileManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkiller/core/httpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultTempFileManagerFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lkiller/core/httpserver/NanoHTTPD;


# direct methods
.method private constructor <init>(Lkiller/core/httpserver/NanoHTTPD;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lkiller/core/httpserver/NanoHTTPD$DefaultTempFileManagerFactory;->this$0:Lkiller/core/httpserver/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lkiller/core/httpserver/NanoHTTPD;Lkiller/core/httpserver/NanoHTTPD$1;)V
    .locals 0
    .param p1, "x0"    # Lkiller/core/httpserver/NanoHTTPD;
    .param p2, "x1"    # Lkiller/core/httpserver/NanoHTTPD$1;

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lkiller/core/httpserver/NanoHTTPD$DefaultTempFileManagerFactory;-><init>(Lkiller/core/httpserver/NanoHTTPD;)V

    return-void
.end method


# virtual methods
.method public create()Lkiller/core/httpserver/NanoHTTPD$TempFileManager;
    .locals 1

    .prologue
    .line 422
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$DefaultTempFileManager;

    invoke-direct {v0}, Lkiller/core/httpserver/NanoHTTPD$DefaultTempFileManager;-><init>()V

    return-object v0
.end method
