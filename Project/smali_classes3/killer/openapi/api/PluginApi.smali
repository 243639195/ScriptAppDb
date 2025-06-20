.class public Lkiller/openapi/api/PluginApi;
.super Ljava/lang/Object;
.source "PluginApi.java"

# interfaces
.implements Lkiller/openapi/core/PluginHandler;


# annotations
.annotation runtime Lkiller/openapi/core/PluginMapper;
    value = "plugin"
.end annotation


# static fields
.field private static final plugins:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lkiller/openapi/api/PluginApi;->plugins:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public register(Ljava/util/Map;)Ljava/lang/String;
    .locals 13
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
        value = "register"
    .end annotation

    .prologue
    .line 27
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "path"

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 28
    .local v7, "path":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "Attachment:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 29
    invoke-static {}, Lkiller/elfin/Free;->getContext()Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 30
    new-instance v2, Lnet/lingala/zip4j/ZipFile;

    invoke-static {}, Lkiller/elfin/Free;->getAtcFile()Ljava/io/File;

    move-result-object v9

    invoke-direct {v2, v9}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/io/File;)V

    .line 32
    .local v2, "atc":Lnet/lingala/zip4j/ZipFile;
    :try_start_0
    const-string v9, "Attachment:"

    const-string v10, "Attachment/"

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lkiller/elfin/Free;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lnet/lingala/zip4j/ZipFile;->extractFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lkiller/elfin/Free;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Attachment:"

    const-string v11, "Attachment/"

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 39
    .end local v2    # "atc":Lnet/lingala/zip4j/ZipFile;
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v1, "apkFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 41
    const-string v9, "\u6ce8\u518c\u5931\u8d25\u63d2\u4ef6\u4e0d\u5b58\u5728"

    .line 64
    :goto_1
    return-object v9

    .line 34
    .end local v1    # "apkFile":Ljava/io/File;
    .restart local v2    # "atc":Lnet/lingala/zip4j/ZipFile;
    :catch_0
    move-exception v6

    .line 35
    .local v6, "ignored":Ljava/lang/Exception;
    const-string v9, "PluginApkHandler"

    const-string v10, "register"

    invoke-static {v9, v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 43
    .end local v2    # "atc":Lnet/lingala/zip4j/ZipFile;
    .end local v6    # "ignored":Ljava/lang/Exception;
    .restart local v1    # "apkFile":Ljava/io/File;
    :cond_1
    invoke-static {}, Lkiller/elfin/Free;->getContext()Landroid/content/Context;

    move-result-object v9

    if-nez v9, :cond_2

    .line 44
    const-string v9, "\u6ce8\u518c\u5931\u8d25"

    goto :goto_1

    .line 46
    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lkiller/elfin/Free;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    const-string v10, "classes"

    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .local v4, "dexOutFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 48
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 50
    :cond_3
    const-string v9, "PluginApkHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dexFile\uff1a"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v3, Ldalvik/system/DexClassLoader;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lkiller/elfin/Free;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-direct {v3, v9, v10, v11, v12}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 52
    .local v3, "dexClassLoader":Ldalvik/system/DexClassLoader;
    const-string v9, "PluginApkHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DexClassLoader\uff1a"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ldalvik/system/DexClassLoader;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :try_start_1
    const-string v9, "com.plugin.Register"

    invoke-virtual {v3, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 55
    .local v0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkiller/openapi/core/PluginRegister;

    .line 56
    .local v8, "register":Lkiller/openapi/core/PluginRegister;
    sget-object v9, Lkiller/openapi/api/PluginApi;->plugins:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8}, Lkiller/openapi/core/PluginRegister;->getPluginName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 57
    const-string v9, "\u63d2\u4ef6\u5df2\u6ce8\u518c,\u6709\u6539\u52a8\u9700\u91cd\u542f\u5c0f\u7cbe\u7075"

    goto/16 :goto_1

    .line 59
    :cond_4
    invoke-static {}, Lkiller/openapi/OpenApiServer;->get()Lkiller/openapi/OpenApiServer;

    move-result-object v9

    invoke-virtual {v9}, Lkiller/openapi/OpenApiServer;->getPluginRegisterManager()Lkiller/openapi/core/PluginRegisterManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Lkiller/openapi/core/PluginRegisterManager;->registerPlugin(Lkiller/openapi/core/PluginRegister;)V

    .line 60
    sget-object v9, Lkiller/openapi/api/PluginApi;->plugins:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8}, Lkiller/openapi/core/PluginRegister;->getPluginName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-interface {v9, v10, v11}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v9, "\u6ce8\u518c\u6210\u529f"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 62
    .end local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "register":Lkiller/openapi/core/PluginRegister;
    :catch_1
    move-exception v5

    .line 63
    .local v5, "e":Ljava/lang/Exception;
    const-string v9, "PluginApkHandler"

    const-string v10, "\u6ce8\u518c\u5931\u8d25"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    const-string v9, "\u6ce8\u518c\u5931\u8d25"

    goto/16 :goto_1
.end method
