.class public final Lcom/goldcoast/sdk/c/g;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static a:Lcom/goldcoast/sdk/c/g;

.field private static b:Landroid/content/Context;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/goldcoast/sdk/c/g;
    .locals 1

    .line 26
    sget-object v0, Lcom/goldcoast/sdk/c/g;->a:Lcom/goldcoast/sdk/c/g;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/goldcoast/sdk/c/g;

    invoke-direct {v0}, Lcom/goldcoast/sdk/c/g;-><init>()V

    sput-object v0, Lcom/goldcoast/sdk/c/g;->a:Lcom/goldcoast/sdk/c/g;

    .line 29
    :cond_0
    sget-object v0, Lcom/goldcoast/sdk/c/g;->a:Lcom/goldcoast/sdk/c/g;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .line 22
    sput-object p0, Lcom/goldcoast/sdk/c/g;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 33
    sget-boolean v0, Lcom/goldcoast/sdk/c/g;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "GOLD_COAST"

    .line 34
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/goldcoast/sdk/c/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dump"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 43
    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 45
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 47
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method
