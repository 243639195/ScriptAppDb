.class public Lkiller/openapi/OpenApiServer;
.super Lkiller/core/httpserver/NanoHTTPD;
.source "OpenApiServer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PluginServer"

.field private static instance:Lkiller/openapi/OpenApiServer;


# instance fields
.field private final pluginRegisterManager:Lkiller/openapi/core/PluginRegisterManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    const/16 v0, 0x24da

    invoke-direct {p0, v0}, Lkiller/core/httpserver/NanoHTTPD;-><init>(I)V

    .line 20
    new-instance v0, Lkiller/openapi/core/PluginRegisterManager;

    invoke-direct {v0}, Lkiller/openapi/core/PluginRegisterManager;-><init>()V

    iput-object v0, p0, Lkiller/openapi/OpenApiServer;->pluginRegisterManager:Lkiller/openapi/core/PluginRegisterManager;

    .line 21
    iget-object v0, p0, Lkiller/openapi/OpenApiServer;->pluginRegisterManager:Lkiller/openapi/core/PluginRegisterManager;

    new-instance v1, Lkiller/openapi/api/Register;

    invoke-direct {v1}, Lkiller/openapi/api/Register;-><init>()V

    invoke-virtual {v0, v1}, Lkiller/openapi/core/PluginRegisterManager;->registerPlugin(Lkiller/openapi/core/PluginRegister;)V

    .line 22
    return-void
.end method

.method public static get()Lkiller/openapi/OpenApiServer;
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lkiller/openapi/OpenApiServer;->instance:Lkiller/openapi/OpenApiServer;

    if-nez v0, :cond_1

    .line 67
    const-class v1, Lkiller/openapi/OpenApiServer;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lkiller/openapi/OpenApiServer;->instance:Lkiller/openapi/OpenApiServer;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lkiller/openapi/OpenApiServer;

    invoke-direct {v0}, Lkiller/openapi/OpenApiServer;-><init>()V

    sput-object v0, Lkiller/openapi/OpenApiServer;->instance:Lkiller/openapi/OpenApiServer;

    .line 70
    sget-object v0, Lkiller/openapi/OpenApiServer;->instance:Lkiller/openapi/OpenApiServer;

    monitor-exit v1

    .line 74
    :goto_0
    return-object v0

    .line 72
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    sget-object v0, Lkiller/openapi/OpenApiServer;->instance:Lkiller/openapi/OpenApiServer;

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static declared-synchronized startServer()V
    .locals 3

    .prologue
    .line 38
    const-class v1, Lkiller/openapi/OpenApiServer;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lkiller/openapi/OpenApiServer$1;

    invoke-direct {v2}, Lkiller/openapi/OpenApiServer$1;-><init>()V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit v1

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getPluginRegisterManager()Lkiller/openapi/core/PluginRegisterManager;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lkiller/openapi/OpenApiServer;->pluginRegisterManager:Lkiller/openapi/core/PluginRegisterManager;

    return-object v0
.end method

.method public serve(Lkiller/core/httpserver/NanoHTTPD$IHTTPSession;)Lkiller/core/httpserver/NanoHTTPD$Response;
    .locals 7
    .param p1, "session"    # Lkiller/core/httpserver/NanoHTTPD$IHTTPSession;

    .prologue
    .line 27
    :try_start_0
    invoke-interface {p1}, Lkiller/core/httpserver/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, "uri":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lkiller/openapi/OpenApiServer;->getParameter(Lkiller/core/httpserver/NanoHTTPD$IHTTPSession;)Ljava/util/Map;

    move-result-object v2

    .line 29
    .local v2, "parameter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lkiller/openapi/OpenApiServer;->pluginRegisterManager:Lkiller/openapi/core/PluginRegisterManager;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v4, v3, v5}, Lkiller/openapi/core/PluginRegisterManager;->dispatcher(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    .local v0, "dispatcher":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkiller/openapi/OpenApiServer;->newFixedLengthResponse(Ljava/lang/String;)Lkiller/core/httpserver/NanoHTTPD$Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 33
    .end local v0    # "dispatcher":Ljava/lang/Object;
    .end local v2    # "parameter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "uri":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 31
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "PluginServer"

    const-string v5, "serve"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkiller/openapi/OpenApiServer;->newFixedLengthResponse(Ljava/lang/String;)Lkiller/core/httpserver/NanoHTTPD$Response;

    move-result-object v4

    goto :goto_0
.end method
