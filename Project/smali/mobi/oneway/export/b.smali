.class public Lmobi/oneway/export/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {}, Lmobi/oneway/export/b;->a()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()Ljava/lang/ClassLoader;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lmobi/oneway/export/b;->a:Ljava/lang/ClassLoader;

    if-nez v1, :cond_1

    invoke-static {}, Lmobi/oneway/export/b;->e()V

    invoke-static {}, Lmobi/oneway/export/a/d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lmobi/oneway/export/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :goto_0
    sput-object v1, Lmobi/oneway/export/b;->a:Ljava/lang/ClassLoader;

    goto :goto_1

    :cond_0
    new-instance v1, Ldalvik/system/DexClassLoader;

    invoke-static {}, Lmobi/oneway/export/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmobi/oneway/export/b;->c()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lmobi/oneway/export/b;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v1, Lmobi/oneway/export/b;->a:Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    sget-object v2, Lmobi/oneway/export/enums/PluginErrorType;->shell_error_classloader:Lmobi/oneway/export/enums/PluginErrorType;

    invoke-static {v1}, Lmobi/oneway/export/g/g;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmobi/oneway/export/e/c;->a(Lmobi/oneway/export/enums/PluginErrorType;Ljava/lang/String;)V

    return-object v0
.end method

.method private static b()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lmobi/oneway/export/a/b;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/oneway/export/a/b;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "plugin"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "OnewaySdk2.4.7.jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lmobi/oneway/export/a/b;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmobi/oneway/export/a/b;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "opt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lmobi/oneway/export/a/b;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmobi/oneway/export/a/b;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "plugin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private static e()V
    .locals 7

    invoke-static {}, Lmobi/oneway/export/a/b;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "context is null,please invoke OnewaySdk.init method first"

    invoke-static {v0}, Lmobi/oneway/export/g/m;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lmobi/oneway/export/b;->f()V

    invoke-static {}, Lmobi/oneway/export/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/oneway/export/g/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/oneway/export/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/oneway/export/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-static {}, Lmobi/oneway/export/a/b;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    new-instance v4, Ljava/io/File;

    invoke-static {}, Lmobi/oneway/export/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v1}, Lmobi/oneway/export/g/h;->a(Ljava/io/File;[B)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-array v1, v3, [Ljava/io/Closeable;

    aput-object v0, v1, v2

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_0
    :try_start_2
    const-string v4, "load local default OnewaySdk failed"

    invoke-static {v4}, Lmobi/oneway/export/g/m;->d(Ljava/lang/String;)V

    sget-object v4, Lmobi/oneway/export/enums/PluginErrorType;->shell_error_assetsIo:Lmobi/oneway/export/enums/PluginErrorType;

    invoke-static {v1}, Lmobi/oneway/export/g/g;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lmobi/oneway/export/e/c;->a(Lmobi/oneway/export/enums/PluginErrorType;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-array v1, v3, [Ljava/io/Closeable;

    aput-object v0, v1, v2

    :goto_1
    invoke-static {v1}, Lmobi/oneway/export/g/j;->a([Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v1

    :goto_2
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v0, v3, v2

    invoke-static {v3}, Lmobi/oneway/export/g/j;->a([Ljava/io/Closeable;)V

    throw v1

    :cond_1
    return-void
.end method

.method private static f()V
    .locals 6

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/oneway/export/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmobi/oneway/export/g/h;->e(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lmobi/oneway/export/b$1;

    invoke-direct {v1}, Lmobi/oneway/export/b$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OnewaySdk2.4.7.jar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lmobi/oneway/export/g/h;->j(Ljava/io/File;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
