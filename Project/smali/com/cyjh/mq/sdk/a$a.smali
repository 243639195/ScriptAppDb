.class final Lcom/cyjh/mq/sdk/a$a;
.super Landroid/os/AsyncTask;
.source "GeneralMqRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mq/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/cyjh/mq/sdk/entity/Script4Run;",
        "Ljava/lang/Void;",
        "Lcom/cyjh/mq/sdk/entity/Script4Run;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mq/sdk/a;


# direct methods
.method private constructor <init>(Lcom/cyjh/mq/sdk/a;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/cyjh/mq/sdk/a$a;->a:Lcom/cyjh/mq/sdk/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/mq/sdk/a;B)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/cyjh/mq/sdk/a$a;-><init>(Lcom/cyjh/mq/sdk/a;)V

    return-void
.end method

.method private static varargs a([Lcom/cyjh/mq/sdk/entity/Script4Run;)Lcom/cyjh/mq/sdk/entity/Script4Run;
    .locals 11

    const/4 v0, 0x0

    .line 50
    aget-object p0, p0, v0

    .line 1061
    :try_start_0
    sget-object v1, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2019
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "script"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2020
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 2022
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 2023
    invoke-virtual {v2, v3, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 2024
    invoke-virtual {v2, v3, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    goto :goto_0

    .line 2028
    :cond_0
    invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 2031
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getLcPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2032
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getAtcPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2033
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getConfigPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x3

    .line 2034
    new-array v7, v6, [Ljava/io/File;

    aput-object v1, v7, v0

    aput-object v4, v7, v3

    const/4 v1, 0x2

    aput-object v5, v7, v1

    .line 2036
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getLcPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2037
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getAtcPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2038
    new-instance v8, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getConfigPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2039
    new-array v2, v6, [Ljava/io/File;

    aput-object v4, v2, v0

    aput-object v5, v2, v3

    aput-object v8, v2, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_2

    .line 2042
    aget-object v9, v7, v1

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2043
    aget-object v9, v7, v1

    aget-object v10, v2, v1

    invoke-static {v9, v10}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 2044
    aget-object v9, v2, v1

    invoke-virtual {v9, v3, v0}, Ljava/io/File;->setReadable(ZZ)Z

    goto :goto_2

    .line 2048
    :cond_1
    aget-object v9, v7, v1

    aput-object v9, v2, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2052
    :cond_2
    invoke-virtual {p0}, Lcom/cyjh/mq/sdk/entity/Script4Run;->clone()Lcom/cyjh/mq/sdk/entity/Script4Run;

    move-result-object p0

    .line 2055
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mq/sdk/entity/Script4Run;->setLcPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    move-result-object v0

    .line 2056
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cyjh/mq/sdk/inf/IScript;->setAtcPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;

    move-result-object v0

    .line 2057
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cyjh/mq/sdk/inf/IScript;->setConfigPath(Ljava/lang/String;)Lcom/cyjh/mq/sdk/inf/IScript;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 54
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Lcom/cyjh/mq/sdk/entity/Script4Run;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/cyjh/mq/sdk/a$a;->a:Lcom/cyjh/mq/sdk/a;

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->toMessage(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    .line 63
    iget-object v0, p0, Lcom/cyjh/mq/sdk/a$a;->a:Lcom/cyjh/mq/sdk/a;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->toMessage(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p1, [Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-static {p1}, Lcom/cyjh/mq/sdk/a$a;->a([Lcom/cyjh/mq/sdk/entity/Script4Run;)Lcom/cyjh/mq/sdk/entity/Script4Run;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 47
    check-cast p1, Lcom/cyjh/mq/sdk/entity/Script4Run;

    if-eqz p1, :cond_0

    .line 2062
    iget-object v0, p0, Lcom/cyjh/mq/sdk/a$a;->a:Lcom/cyjh/mq/sdk/a;

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->toMessage(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    .line 2063
    iget-object v0, p0, Lcom/cyjh/mq/sdk/a$a;->a:Lcom/cyjh/mq/sdk/a;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->toMessage(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    :cond_0
    return-void
.end method
