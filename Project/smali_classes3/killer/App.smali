.class public Lkiller/App;
.super Ljava/lang/Object;
.source "App.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Ljava/lang/Object;)V
    .locals 0
    .param p0, "activity"    # Ljava/lang/Object;

    .prologue
    .line 11
    invoke-static {p0}, Lkiller/elfin/Free;->init(Ljava/lang/Object;)V

    .line 12
    invoke-static {}, Lkiller/openapi/OpenApiServer;->startServer()V

    .line 13
    invoke-static {}, Lkiller/cloud/Cloud;->connect()V

    .line 14
    return-void
.end method

.method public static onScriptStart()V
    .locals 0

    .prologue
    .line 17
    invoke-static {}, Lkiller/elfin/Free;->onScriptStart()V

    .line 18
    invoke-static {}, Lkiller/cloud/Cloud;->onScriptStart()V

    .line 19
    return-void
.end method

.method public static onScriptStop()V
    .locals 0

    .prologue
    .line 22
    invoke-static {}, Lkiller/elfin/Free;->onScriptStop()V

    .line 23
    invoke-static {}, Lkiller/cloud/Cloud;->onScriptStop()V

    .line 24
    return-void
.end method
