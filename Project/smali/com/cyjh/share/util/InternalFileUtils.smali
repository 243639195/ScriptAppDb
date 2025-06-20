.class public Lcom/cyjh/share/util/InternalFileUtils;
.super Ljava/lang/Object;
.source "InternalFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/share/util/InternalFileUtils$FileOperateCallback;
    }
.end annotation


# static fields
.field private static final FAILED:I = 0x0

.field private static final SUCCESS:I = 0x1

.field private static instance:Lcom/cyjh/share/util/InternalFileUtils;


# instance fields
.field private callback:Lcom/cyjh/share/util/InternalFileUtils$FileOperateCallback;

.field private context:Landroid/content/Context;

.field private errorStr:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private volatile isSuccess:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/cyjh/share/util/InternalFileUtils$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cyjh/share/util/InternalFileUtils$1;-><init>(Lcom/cyjh/share/util/InternalFileUtils;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cyjh/share/util/InternalFileUtils;->handler:Landroid/os/Handler;

    .line 32
    iput-object p1, p0, Lcom/cyjh/share/util/InternalFileUtils;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/cyjh/share/util/InternalFileUtils;)Lcom/cyjh/share/util/InternalFileUtils$FileOperateCallback;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/cyjh/share/util/InternalFileUtils;->callback:Lcom/cyjh/share/util/InternalFileUtils$FileOperateCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/cyjh/share/util/InternalFileUtils;)Landroid/content/Context;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/cyjh/share/util/InternalFileUtils;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/cyjh/share/util/InternalFileUtils;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/cyjh/share/util/InternalFileUtils;->copyAssetsToDst(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/cyjh/share/util/InternalFileUtils;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/cyjh/share/util/InternalFileUtils;->isSuccess:Z

    return p0
.end method

.method static synthetic access$400(Lcom/cyjh/share/util/InternalFileUtils;)Landroid/os/Handler;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/cyjh/share/util/InternalFileUtils;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/cyjh/share/util/InternalFileUtils;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/cyjh/share/util/InternalFileUtils;->errorStr:Ljava/lang/String;

    return-object p0
.end method

.method private copyAssetsToDst(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    .line 70
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 71
    array-length v2, v1

    if-lez v2, :cond_2

    .line 72
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 74
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    const-string v5, ""

    .line 75
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v5, v4}, Lcom/cyjh/share/util/InternalFileUtils;->copyAssetsToDst(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 78
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v4, v5}, Lcom/cyjh/share/util/InternalFileUtils;->copyAssetsToDst(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 84
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p3, 0x400

    .line 85
    new-array p3, p3, [B

    .line 87
    :goto_2
    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 88
    invoke-virtual {p2, p3, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 90
    :cond_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 91
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 92
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lcom/cyjh/share/util/InternalFileUtils;->isSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 96
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 97
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/share/util/InternalFileUtils;->errorStr:Ljava/lang/String;

    .line 98
    iput-boolean v0, p0, Lcom/cyjh/share/util/InternalFileUtils;->isSuccess:Z

    :goto_3
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cyjh/share/util/InternalFileUtils;
    .locals 1

    .line 26
    sget-object v0, Lcom/cyjh/share/util/InternalFileUtils;->instance:Lcom/cyjh/share/util/InternalFileUtils;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/cyjh/share/util/InternalFileUtils;

    invoke-direct {v0, p0}, Lcom/cyjh/share/util/InternalFileUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cyjh/share/util/InternalFileUtils;->instance:Lcom/cyjh/share/util/InternalFileUtils;

    .line 28
    :cond_0
    sget-object p0, Lcom/cyjh/share/util/InternalFileUtils;->instance:Lcom/cyjh/share/util/InternalFileUtils;

    return-object p0
.end method


# virtual methods
.method public copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/share/util/InternalFileUtils;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cyjh/share/util/InternalFileUtils$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/cyjh/share/util/InternalFileUtils$2;-><init>(Lcom/cyjh/share/util/InternalFileUtils;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object p0
.end method

.method public setFileOperateCallback(Lcom/cyjh/share/util/InternalFileUtils$FileOperateCallback;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/cyjh/share/util/InternalFileUtils;->callback:Lcom/cyjh/share/util/InternalFileUtils$FileOperateCallback;

    return-void
.end method
