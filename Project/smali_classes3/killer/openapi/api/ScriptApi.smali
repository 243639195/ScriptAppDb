.class public Lkiller/openapi/api/ScriptApi;
.super Ljava/lang/Object;
.source "ScriptApi.java"

# interfaces
.implements Lkiller/openapi/core/PluginHandler;


# annotations
.annotation runtime Lkiller/openapi/core/PluginMapper;
    value = "script"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScriptCfg(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lkiller/openapi/core/PluginMapper;
        value = "getScriptCfg"
    .end annotation

    .prologue
    .line 51
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lkiller/elfin/Free;->runner:Lkiller/elfin/runner/ScriptRunner;

    invoke-interface {v1}, Lkiller/elfin/runner/ScriptRunner;->getScriptCfg()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "scriptCfg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "scriptCfg":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "scriptCfg":Ljava/lang/String;
    :cond_0
    const-string v0, "{}"

    goto :goto_0
.end method

.method public getScriptUip(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lkiller/openapi/core/PluginMapper;
        value = "getScriptUip"
    .end annotation

    .prologue
    .line 57
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lkiller/elfin/Free;->runner:Lkiller/elfin/runner/ScriptRunner;

    invoke-interface {v1}, Lkiller/elfin/runner/ScriptRunner;->getScriptUip()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "scriptUIP":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "{}"

    .end local v0    # "scriptUIP":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public hotUpdateScript(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lkiller/openapi/core/PluginMapper;
        value = "update"
    .end annotation

    .prologue
    .line 28
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "scriptDownloadUrl"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 29
    .local v0, "scriptDownloadUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    const-string v2, "scriptDownloadUrl\u4e0d\u80fd\u4e3a\u7a7a"

    .line 36
    :goto_0
    return-object v2

    .line 32
    :cond_0
    new-instance v1, Lkiller/core/entity/ScriptVersionInfo;

    invoke-direct {v1}, Lkiller/core/entity/ScriptVersionInfo;-><init>()V

    .line 33
    .local v1, "versionInfo":Lkiller/core/entity/ScriptVersionInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v1, Lkiller/core/entity/ScriptVersionInfo;->version:J

    .line 34
    iput-object v0, v1, Lkiller/core/entity/ScriptVersionInfo;->downloadUrl:Ljava/lang/String;

    .line 35
    invoke-static {}, Lkiller/elfin/update/ScriptDownload;->get()Lkiller/elfin/update/ScriptDownload;

    move-result-object v2

    invoke-virtual {v2, v1}, Lkiller/elfin/update/ScriptDownload;->download(Lkiller/core/entity/ScriptVersionInfo;)V

    .line 36
    const-string v2, "ok"

    goto :goto_0
.end method

.method public runScript(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lkiller/openapi/core/PluginMapper;
        value = "run"
    .end annotation

    .prologue
    .line 68
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lkiller/elfin/Free;->runner:Lkiller/elfin/runner/ScriptRunner;

    invoke-interface {v0}, Lkiller/elfin/runner/ScriptRunner;->runScript()V

    .line 69
    const-string v0, "ok"

    return-object v0
.end method

.method public scriptState(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lkiller/openapi/core/PluginMapper;
        value = "state"
    .end annotation

    .prologue
    .line 63
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lkiller/elfin/Free;->runner:Lkiller/elfin/runner/ScriptRunner;

    invoke-interface {v0}, Lkiller/elfin/runner/ScriptRunner;->isScriptStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "run"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "stop"

    goto :goto_0
.end method

.method public shell(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lkiller/openapi/core/PluginMapper;
        value = "shell"
    .end annotation

    .prologue
    .line 19
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "cmd"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/cyjh/share/util/ShellUtils;->execCommand(Ljava/lang/String;ZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;

    move-result-object v0

    .line 20
    .local v0, "commandResult":Lcom/cyjh/share/util/ShellUtils$CommandResult;
    iget-object v1, v0, Lcom/cyjh/share/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/cyjh/share/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/cyjh/share/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    goto :goto_0
.end method

.method public stopScript(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lkiller/openapi/core/PluginMapper;
        value = "stop"
    .end annotation

    .prologue
    .line 74
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lkiller/elfin/Free;->runner:Lkiller/elfin/runner/ScriptRunner;

    invoke-interface {v0}, Lkiller/elfin/runner/ScriptRunner;->stopScript()V

    .line 75
    const-string v0, "ok"

    return-object v0
.end method

.method public updateScriptCfg(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lkiller/openapi/core/PluginMapper;
        value = "updateScriptCfg"
    .end annotation

    .prologue
    .line 41
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "config"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    .local v0, "config":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const-string v1, "\u811a\u672c\u8bbe\u7f6e\u5185\u5bb9\u4e3a\u7a7a\uff01"

    .line 46
    :goto_0
    return-object v1

    .line 45
    :cond_0
    sget-object v1, Lkiller/elfin/Free;->runner:Lkiller/elfin/runner/ScriptRunner;

    invoke-interface {v1, v0}, Lkiller/elfin/runner/ScriptRunner;->updateUISetting(Ljava/lang/String;)V

    .line 46
    const-string v1, "ok"

    goto :goto_0
.end method
