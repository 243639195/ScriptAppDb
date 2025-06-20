.class public Lcom/cyjh/mq/service/IpcService;
.super Landroid/app/Service;
.source "IpcService.java"


# static fields
.field private static final f:Ljava/lang/String; = "mqm_engine"

.field private static final g:Ljava/lang/String; = "ipc_server_port"

.field private static final h:Ljava/lang/String; = "/system/bin/app_process32"

.field private static final i:Ljava/lang/String; = "elfinject"

.field private static final j:Ljava/lang/String; = "model"

.field private static final k:Ljava/lang/String; = "code_cache"

.field private static final l:Ljava/lang/String; = "secondary-dexes"

.field private static final m:Ljava/lang/String; = "mycache"

.field private static final n:Ljava/lang/String; = "dalvik-cache"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/cyjh/mq/c/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/cyjh/mq/service/IpcService;->a:Ljava/lang/String;

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lcom/cyjh/mq/service/IpcService;->c:Ljava/lang/String;

    const-string v0, ""

    .line 39
    iput-object v0, p0, Lcom/cyjh/mq/service/IpcService;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/cyjh/mq/service/IpcService;)Lcom/cyjh/mq/c/c;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/cyjh/mq/service/IpcService;->e:Lcom/cyjh/mq/c/c;

    return-object p0
.end method

.method static synthetic a(Lcom/cyjh/mq/service/IpcService;Lcom/cyjh/mq/c/c;)Lcom/cyjh/mq/c/c;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/cyjh/mq/service/IpcService;->e:Lcom/cyjh/mq/c/c;

    return-object p1
.end method

.method private a()V
    .locals 17

    move-object/from16 v0, p0

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mq/service/IpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 94
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 95
    invoke-virtual {v2, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mq/service/IpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".event.localserver"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cyjh/mq/service/IpcService;->a:Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/cyjh/mq/service/IpcService;->g()I

    move-result v2

    iput v2, v0, Lcom/cyjh/mq/service/IpcService;->b:I

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mq/service/IpcService;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "DaemonClient.zip"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mq/service/IpcService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    const-string v8, "lib"

    aput-object v8, v7, v3

    const-string v8, "libmqm.so"

    aput-object v8, v7, v4

    invoke-static {v5, v7}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->makeAbsolutePath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "app_process"

    .line 111
    new-instance v8, Ljava/io/File;

    const-string v9, "/system/bin/app_process32"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v7, "/system/bin/app_process32"

    .line 116
    :cond_0
    new-instance v8, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mq/service/IpcService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    new-array v10, v6, [Ljava/lang/String;

    const-string v11, "mycache"

    aput-object v11, v10, v3

    const-string v11, "dalvik-cache"

    aput-object v11, v10, v4

    invoke-static {v9, v10}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->makeAbsolutePath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 119
    invoke-virtual {v8, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 120
    invoke-virtual {v8, v4, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 121
    invoke-virtual {v8, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 123
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 124
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9, v4, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 125
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 133
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "export CLASSPATH="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "exec %s %s %s %s %s %s &\n"

    const/4 v11, 0x6

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v7, v12, v3

    aput-object v1, v12, v4

    const-string v13, "com.cyjh.mobileanjian.ipc.ClientService"

    aput-object v13, v12, v6

    iget-object v13, v0, Lcom/cyjh/mq/service/IpcService;->a:Ljava/lang/String;

    const/4 v14, 0x3

    aput-object v13, v12, v14

    const/4 v13, 0x4

    aput-object v5, v12, v13

    iget v15, v0, Lcom/cyjh/mq/service/IpcService;->b:I

    .line 134
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x5

    aput-object v15, v12, v16

    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/cyjh/mq/service/IpcService;->c:Ljava/lang/String;

    .line 135
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isOppoR9S()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 136
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "export CLASSPATH="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "exec %s -Xnodex2oat %s %s %s %s %s &\n"

    new-array v10, v11, [Ljava/lang/Object;

    aput-object v7, v10, v3

    aput-object v1, v10, v4

    const-string v1, "com.cyjh.mobileanjian.ipc.ClientService"

    aput-object v1, v10, v6

    iget-object v1, v0, Lcom/cyjh/mq/service/IpcService;->a:Ljava/lang/String;

    aput-object v1, v10, v14

    aput-object v5, v10, v13

    iget v1, v0, Lcom/cyjh/mq/service/IpcService;->b:I

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v16

    .line 137
    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/mq/service/IpcService;->c:Ljava/lang/String;

    .line 141
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "export ANDROID_DATA="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/cyjh/mq/service/IpcService;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\necho Okay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/mq/service/IpcService;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/cyjh/mq/service/IpcService;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/cyjh/mq/service/IpcService;->a:Ljava/lang/String;

    return-object p0
.end method

.method private b()V
    .locals 10

    const-string v0, "model"

    const/4 v1, 0x0

    .line 166
    invoke-virtual {p0, v0, v1}, Lcom/cyjh/mq/service/IpcService;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 173
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/cyjh/mq/service/IpcService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "model"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 174
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_2

    aget-object v6, v2, v4

    .line 176
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    new-instance v8, Ljava/io/File;

    const-string v9, "model"

    invoke-direct {v8, v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 178
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 177
    invoke-static {p0, v6, v8}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->copyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 181
    invoke-virtual {v7, v5, v1}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 185
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cyjh/mq/service/IpcService;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "DaemonClient.zip"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "DaemonClient.zip"

    .line 186
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->copyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, v5, v1}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 190
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic c(Lcom/cyjh/mq/service/IpcService;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/cyjh/mq/service/IpcService;->b:I

    return p0
.end method

.method private c()V
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cyjh/mq/service/IpcService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "elfinject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/utils/r;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    sget v1, Lcom/cyjh/mqsdk/R$raw;->elfinject_x86:I

    invoke-static {p0, v1, v0}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->copyRawFile(Landroid/content/Context;ILjava/lang/String;)Z

    return-void

    .line 203
    :cond_0
    sget v1, Lcom/cyjh/mqsdk/R$raw;->elfinject_arm:I

    invoke-static {p0, v1, v0}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->copyRawFile(Landroid/content/Context;ILjava/lang/String;)Z

    return-void
.end method

.method private d()V
    .locals 5

    .line 216
    invoke-virtual {p0}, Lcom/cyjh/mq/service/IpcService;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 217
    new-instance v1, Ljava/io/File;

    const-string v2, "start_eventsrv"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lcom/cyjh/mq/service/IpcService;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 220
    invoke-virtual {v1, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 221
    invoke-virtual {v1, v3, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 224
    new-instance v1, Ljava/io/File;

    const-string v4, "start_eventsrvR"

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/mq/service/IpcService;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/cyjh/mq/a/a;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 227
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, v0}, Lcom/cyjh/mq/service/IpcService;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    new-instance v1, Ljava/io/File;

    const-string v2, "start_eventsrv"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/mq/service/IpcService;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/cyjh/mq/service/IpcService;)V
    .locals 10

    const-string v0, "model"

    const/4 v1, 0x0

    .line 3166
    invoke-virtual {p0, v0, v1}, Lcom/cyjh/mq/service/IpcService;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 3167
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3169
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 3173
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/cyjh/mq/service/IpcService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "model"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3174
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_2

    aget-object v6, v2, v4

    .line 3176
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3177
    new-instance v8, Ljava/io/File;

    const-string v9, "model"

    invoke-direct {v8, v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 3178
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 3177
    invoke-static {p0, v6, v8}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->copyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3179
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3181
    invoke-virtual {v7, v5, v1}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3185
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cyjh/mq/service/IpcService;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "DaemonClient.zip"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "DaemonClient.zip"

    .line 3186
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->copyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3187
    invoke-virtual {v0, v5, v1}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3190
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method private e()V
    .locals 2

    .line 240
    new-instance v0, Lcom/cyjh/mq/service/IpcService$1;

    const-string v1, "ipcserver_thread"

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mq/service/IpcService$1;-><init>(Lcom/cyjh/mq/service/IpcService;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0}, Lcom/cyjh/mq/service/IpcService$1;->start()V

    return-void
.end method

.method static synthetic e(Lcom/cyjh/mq/service/IpcService;)V
    .locals 2

    .line 3196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cyjh/mq/service/IpcService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "elfinject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3197
    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/utils/r;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3199
    sget v1, Lcom/cyjh/mqsdk/R$raw;->elfinject_x86:I

    invoke-static {p0, v1, v0}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->copyRawFile(Landroid/content/Context;ILjava/lang/String;)Z

    return-void

    .line 3203
    :cond_0
    sget v1, Lcom/cyjh/mqsdk/R$raw;->elfinject_arm:I

    invoke-static {p0, v1, v0}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->copyRawFile(Landroid/content/Context;ILjava/lang/String;)Z

    return-void
.end method

.method private f()V
    .locals 2

    .line 259
    new-instance v0, Lcom/cyjh/mq/service/IpcService$2;

    const-string v1, "startRootRequest"

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mq/service/IpcService$2;-><init>(Lcom/cyjh/mq/service/IpcService;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Lcom/cyjh/mq/service/IpcService$2;->start()V

    return-void
.end method

.method static synthetic f(Lcom/cyjh/mq/service/IpcService;)V
    .locals 5

    .line 3216
    invoke-virtual {p0}, Lcom/cyjh/mq/service/IpcService;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 3217
    new-instance v1, Ljava/io/File;

    const-string v2, "start_eventsrv"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3219
    iget-object v2, p0, Lcom/cyjh/mq/service/IpcService;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3220
    invoke-virtual {v1, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 3221
    invoke-virtual {v1, v3, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 3224
    new-instance v1, Ljava/io/File;

    const-string v4, "start_eventsrvR"

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/mq/service/IpcService;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 3225
    invoke-static {}, Lcom/cyjh/mq/a/a;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 3227
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3228
    invoke-virtual {p0, v0}, Lcom/cyjh/mq/service/IpcService;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3229
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3230
    new-instance v1, Ljava/io/File;

    const-string v2, "start_eventsrv"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cyjh/mq/service/IpcService;->d:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static g()I
    .locals 3

    const/16 v0, 0x2efe

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 285
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    invoke-direct {v2, v0}, Ljava/net/ServerSocket;-><init>(I)V

    .line 286
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    add-int/lit8 v0, v0, 0x1

    .line 298
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v2

    add-int/lit8 v0, v0, 0x1

    .line 292
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_2
    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 157
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 158
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/MqRunner;->notifyRotationStatus()V

    .line 159
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/MqRunnerLite;->notifyRotationStatus()V

    .line 160
    invoke-static {}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->getInstance()Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->updateScreenSize()V

    return-void
.end method

.method public onCreate()V
    .locals 17

    move-object/from16 v0, p0

    .line 61
    invoke-super/range {p0 .. p0}, Landroid/app/Service;->onCreate()V

    .line 62
    invoke-static/range {p0 .. p0}, Lcom/cyjh/mobileanjian/ipc/rpc/AndroidHelper;->init(Landroid/content/Context;)V

    .line 63
    invoke-static/range {p0 .. p0}, Lcom/cyjh/event/Injector;->init(Landroid/content/Context;)V

    .line 1093
    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mq/service/IpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1094
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1095
    invoke-virtual {v2, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1097
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mq/service/IpcService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".event.localserver"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cyjh/mq/service/IpcService;->a:Ljava/lang/String;

    .line 1098
    invoke-static {}, Lcom/cyjh/mq/service/IpcService;->g()I

    move-result v2

    iput v2, v0, Lcom/cyjh/mq/service/IpcService;->b:I

    .line 1101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mq/service/IpcService;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "DaemonClient.zip"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1108
    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mq/service/IpcService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    const-string v8, "lib"

    aput-object v8, v7, v3

    const-string v8, "libmqm.so"

    aput-object v8, v7, v4

    invoke-static {v5, v7}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->makeAbsolutePath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "app_process"

    .line 1111
    new-instance v8, Ljava/io/File;

    const-string v9, "/system/bin/app_process32"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v7, "/system/bin/app_process32"

    .line 1116
    :cond_0
    new-instance v8, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mq/service/IpcService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    new-array v10, v6, [Ljava/lang/String;

    const-string v11, "mycache"

    aput-object v11, v10, v3

    const-string v11, "dalvik-cache"

    aput-object v11, v10, v4

    invoke-static {v9, v10}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->makeAbsolutePath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 1119
    invoke-virtual {v8, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1120
    invoke-virtual {v8, v4, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 1121
    invoke-virtual {v8, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1123
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1124
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9, v4, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 1125
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1133
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "export CLASSPATH="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "exec %s %s %s %s %s %s &\n"

    const/4 v11, 0x6

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v7, v12, v3

    aput-object v1, v12, v4

    const-string v13, "com.cyjh.mobileanjian.ipc.ClientService"

    aput-object v13, v12, v6

    iget-object v13, v0, Lcom/cyjh/mq/service/IpcService;->a:Ljava/lang/String;

    const/4 v14, 0x3

    aput-object v13, v12, v14

    const/4 v13, 0x4

    aput-object v5, v12, v13

    iget v15, v0, Lcom/cyjh/mq/service/IpcService;->b:I

    .line 1134
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x5

    aput-object v15, v12, v16

    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/cyjh/mq/service/IpcService;->c:Ljava/lang/String;

    .line 1135
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isOppoR9S()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1136
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "export CLASSPATH="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "exec %s -Xnodex2oat %s %s %s %s %s &\n"

    new-array v10, v11, [Ljava/lang/Object;

    aput-object v7, v10, v3

    aput-object v1, v10, v4

    const-string v1, "com.cyjh.mobileanjian.ipc.ClientService"

    aput-object v1, v10, v6

    iget-object v1, v0, Lcom/cyjh/mq/service/IpcService;->a:Ljava/lang/String;

    aput-object v1, v10, v14

    aput-object v5, v10, v13

    iget v1, v0, Lcom/cyjh/mq/service/IpcService;->b:I

    .line 1138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v16

    .line 1137
    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/mq/service/IpcService;->c:Ljava/lang/String;

    .line 1141
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "export ANDROID_DATA="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/cyjh/mq/service/IpcService;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\necho Okay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/mq/service/IpcService;->d:Ljava/lang/String;

    .line 1240
    new-instance v1, Lcom/cyjh/mq/service/IpcService$1;

    const-string v2, "ipcserver_thread"

    invoke-direct {v1, v0, v2}, Lcom/cyjh/mq/service/IpcService$1;-><init>(Lcom/cyjh/mq/service/IpcService;Ljava/lang/String;)V

    .line 1251
    invoke-virtual {v1}, Lcom/cyjh/mq/service/IpcService$1;->start()V

    .line 1259
    new-instance v1, Lcom/cyjh/mq/service/IpcService$2;

    const-string v2, "startRootRequest"

    invoke-direct {v1, v0, v2}, Lcom/cyjh/mq/service/IpcService$2;-><init>(Lcom/cyjh/mq/service/IpcService;Ljava/lang/String;)V

    .line 1270
    invoke-virtual {v1}, Lcom/cyjh/mq/service/IpcService$2;->start()V

    const-string v1, "VERSION"

    const-string v2, "build info: build on 2021-09-26 14:41:33"

    .line 69
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/cyjh/mq/service/IpcService;->e:Lcom/cyjh/mq/c/c;

    invoke-virtual {v0}, Lcom/cyjh/mq/c/c;->onAppQuit()V

    .line 149
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 151
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/d;->a()Lcom/cyjh/mobileanjian/ipc/d;

    move-result-object v0

    .line 2199
    iget-boolean v1, v0, Lcom/cyjh/mobileanjian/ipc/d;->d:Z

    if-eqz v1, :cond_1

    const-string v1, "exit"

    .line 2200
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/d;->a(Ljava/lang/String;)Z

    .line 2201
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/d;->c:Lcom/cyjh/mobileanjian/ipc/d$a;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/d$a;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2202
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/d;->c:Lcom/cyjh/mobileanjian/ipc/d$a;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/d$a;->interrupt()V

    .line 2205
    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/d;->e:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2207
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 2210
    sput-object v0, Lcom/cyjh/mobileanjian/ipc/d;->a:Lcom/cyjh/mobileanjian/ipc/d;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method
