.class final Lkiller/openapi/OpenApiServer$1;
.super Ljava/lang/Object;
.source "OpenApiServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkiller/openapi/OpenApiServer;->startServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 41
    invoke-static {}, Lkiller/openapi/OpenApiServer;->get()Lkiller/openapi/OpenApiServer;

    move-result-object v2

    .line 42
    .local v2, "pluginServer":Lkiller/openapi/OpenApiServer;
    invoke-virtual {v2}, Lkiller/openapi/OpenApiServer;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    :goto_0
    return-void

    .line 45
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v4, 0x4

    if-ge v1, v4, :cond_1

    .line 47
    :try_start_0
    invoke-virtual {v2}, Lkiller/openapi/OpenApiServer;->start()V

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://127.0.0.1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lkiller/openapi/OpenApiServer;->getListeningPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "pluginUrl":Ljava/lang/String;
    const-string v4, "$pluginStart"

    const-string v5, "ok"

    invoke-static {v4, v5}, Lkiller/elfin/util/Config;->writeConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v4, "$pluginUrl"

    invoke-static {v4, v3}, Lkiller/elfin/util/Config;->writeConfig(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    .end local v3    # "pluginUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "PluginServer"

    const-string v5, "\u63d2\u4ef6\u670d\u52a1\u542f\u52a8\u5931\u8d25"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 56
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const-string v4, "$pluginStart"

    const-string v5, "fail"

    invoke-static {v4, v5}, Lkiller/elfin/util/Config;->writeConfig(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
