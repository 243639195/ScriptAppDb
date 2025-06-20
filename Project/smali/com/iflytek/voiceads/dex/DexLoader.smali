.class public Lcom/iflytek/voiceads/dex/DexLoader;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initIFLYADModule(Landroid/content/Context;)V
    .locals 4

    const-string v0, "initIFLYADModule"

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-string p0, "context is null"

    invoke-static {p0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/iflytek/voiceads/dex/a;->a(Landroid/content/Context;)Ldalvik/system/DexClassLoader;

    move-result-object v0

    sput-object v0, Lcom/iflytek/voiceads/dex/a;->a:Ldalvik/system/DexClassLoader;

    const-string v0, "loadDex success"

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDex error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->e(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iflytek/voiceads/dex/a;->b(Landroid/content/Context;)Ldalvik/system/DexClassLoader;

    move-result-object v0

    sput-object v0, Lcom/iflytek/voiceads/dex/a;->a:Ldalvik/system/DexClassLoader;

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    check-cast v0, Ldalvik/system/PathClassLoader;

    invoke-static {v0}, Lcom/iflytek/voiceads/dex/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/iflytek/voiceads/dex/a;->a:Ldalvik/system/DexClassLoader;

    invoke-static {v1}, Lcom/iflytek/voiceads/dex/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Lcom/iflytek/voiceads/dex/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Lcom/iflytek/voiceads/dex/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/iflytek/voiceads/dex/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "dexElements"

    invoke-static {v0, v2, v3, v1}, Lcom/iflytek/voiceads/dex/a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "dex inject success"

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dex inject error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->e(Ljava/lang/String;)V

    :goto_1
    sget-boolean v0, Lcom/iflytek/voiceads/config/SDKLogger;->dev:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/iflytek/collector/a/a/b;->a(Landroid/content/Context;)Lcom/iflytek/collector/a/a/b;

    move-result-object v0

    const-string v1, "5c075f2e17"

    invoke-virtual {v0, v1}, Lcom/iflytek/collector/a/a/b;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iflytek/voiceads/dex/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/iflytek/collector/a/a/b;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
