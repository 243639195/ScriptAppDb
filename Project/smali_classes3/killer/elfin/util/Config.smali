.class public Lkiller/elfin/util/Config;
.super Ljava/lang/Object;
.source "Config.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized readConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "dfValue"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v5, Lkiller/elfin/util/Config;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lkiller/elfin/Free;->getContext()Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-nez v4, :cond_1

    .line 17
    const/4 p1, 0x0

    .line 29
    .end local p1    # "dfValue":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit v5

    return-object p1

    .line 20
    .restart local p1    # "dfValue":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lkiller/elfin/Free;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v6, "script.cfg.user"

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .local v3, "userConfig":Ljava/io/File;
    const-string v4, "utf-8"

    invoke-static {v3, v4}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "configStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 23
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_0

    .line 26
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    goto :goto_0

    .line 27
    .end local v0    # "configStr":Ljava/lang/String;
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "userConfig":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 28
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "FileUtils"

    const-string v6, "readConfig"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 16
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized writeConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v5, Lkiller/elfin/util/Config;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lkiller/elfin/Free;->getContext()Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-nez v4, :cond_0

    .line 55
    :goto_0
    monitor-exit v5

    return-void

    .line 44
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lkiller/elfin/Free;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v6, "script.cfg.user"

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .local v3, "userConfig":Ljava/io/File;
    const-string v4, "utf-8"

    invoke-static {v3, v4}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "configStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 47
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-nez v2, :cond_1

    .line 48
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 50
    .restart local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    invoke-virtual {v2, p0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "utf-8"

    invoke-static {v3, v4, v6}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    .end local v0    # "configStr":Ljava/lang/String;
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "userConfig":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "FileUtils"

    const-string v6, "writeConfig"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 40
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
