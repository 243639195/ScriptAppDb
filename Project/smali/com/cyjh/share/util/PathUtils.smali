.class public Lcom/cyjh/share/util/PathUtils;
.super Ljava/lang/Object;
.source "PathUtils.java"


# static fields
.field private static final DIR_CSTEMP:Ljava/lang/String; = "CSTemp"

.field private static final DIR_MOBILEANJIAN:Ljava/lang/String; = "MobileAnJian"

.field private static final DIR_MQTEMP:Ljava/lang/String; = "MQTemp"

.field private static final DIR_SCRIPT:Ljava/lang/String; = "Script"

.field private static final DIR_UI_CONFIG:Ljava/lang/String; = "UIConfig"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMobileAnjianCSTempPath()Ljava/lang/String;
    .locals 2

    .line 50
    invoke-static {}, Lcom/cyjh/share/util/PathUtils;->getMobileAnjianPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSTemp"

    invoke-static {v0, v1}, Lcom/cyjh/share/util/PathUtils;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/share/util/PathUtils;->mkdirs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMobileAnjianPath()Ljava/lang/String;
    .locals 2

    .line 32
    invoke-static {}, Lcom/cyjh/share/util/PathUtils;->getSDCardPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileAnJian"

    invoke-static {v0, v1}, Lcom/cyjh/share/util/PathUtils;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMobileAnjianScriptPath()Ljava/lang/String;
    .locals 2

    .line 41
    invoke-static {}, Lcom/cyjh/share/util/PathUtils;->getMobileAnjianPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Script"

    invoke-static {v0, v1}, Lcom/cyjh/share/util/PathUtils;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMobileAnjianUIConfigPath()Ljava/lang/String;
    .locals 2

    .line 68
    invoke-static {}, Lcom/cyjh/share/util/PathUtils;->getMobileAnjianPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UIConfig"

    invoke-static {v0, v1}, Lcom/cyjh/share/util/PathUtils;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/share/util/PathUtils;->mkdirs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMqTempPath()Ljava/lang/String;
    .locals 2

    .line 59
    invoke-static {}, Lcom/cyjh/share/util/PathUtils;->getMobileAnjianPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MQTemp"

    invoke-static {v0, v1}, Lcom/cyjh/share/util/PathUtils;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/share/util/PathUtils;->mkdirs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDCardPath()Ljava/lang/String;
    .locals 1

    .line 23
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 101
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static mkdirs(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 84
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 86
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
