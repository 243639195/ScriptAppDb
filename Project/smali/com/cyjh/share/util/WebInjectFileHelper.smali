.class public final enum Lcom/cyjh/share/util/WebInjectFileHelper;
.super Ljava/lang/Enum;
.source "WebInjectFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyjh/share/util/WebInjectFileHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cyjh/share/util/WebInjectFileHelper;

.field public static final enum INSTANCE:Lcom/cyjh/share/util/WebInjectFileHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/cyjh/share/util/WebInjectFileHelper;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cyjh/share/util/WebInjectFileHelper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyjh/share/util/WebInjectFileHelper;->INSTANCE:Lcom/cyjh/share/util/WebInjectFileHelper;

    const/4 v0, 0x1

    .line 13
    new-array v0, v0, [Lcom/cyjh/share/util/WebInjectFileHelper;

    sget-object v1, Lcom/cyjh/share/util/WebInjectFileHelper;->INSTANCE:Lcom/cyjh/share/util/WebInjectFileHelper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/cyjh/share/util/WebInjectFileHelper;->$VALUES:[Lcom/cyjh/share/util/WebInjectFileHelper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyjh/share/util/WebInjectFileHelper;
    .locals 1

    .line 13
    const-class v0, Lcom/cyjh/share/util/WebInjectFileHelper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyjh/share/util/WebInjectFileHelper;

    return-object p0
.end method

.method public static values()[Lcom/cyjh/share/util/WebInjectFileHelper;
    .locals 1

    .line 13
    sget-object v0, Lcom/cyjh/share/util/WebInjectFileHelper;->$VALUES:[Lcom/cyjh/share/util/WebInjectFileHelper;

    invoke-virtual {v0}, [Lcom/cyjh/share/util/WebInjectFileHelper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyjh/share/util/WebInjectFileHelper;

    return-object v0
.end method


# virtual methods
.method public copyWebInjectFile(Landroid/content/Context;)V
    .locals 7

    .line 19
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libc.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x14

    .line 22
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 24
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 25
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    const/16 v0, 0x12

    .line 26
    aget-byte v0, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 31
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x1

    .line 34
    :goto_0
    invoke-static {}, Lcom/cyjh/share/util/ShellUtils;->checkRootPermission()Z

    move-result v1

    const-string v4, "xygtest"

    .line 35
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRoot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    const-string v0, "getprop phone.id"

    const/16 v4, 0x64

    .line 37
    invoke-static {v0, v3, v4}, Lcom/cyjh/share/util/ShellUtils;->execCommand(Ljava/lang/String;ZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;

    move-result-object v0

    .line 38
    iget-object v4, v0, Lcom/cyjh/share/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v0, v0, Lcom/cyjh/share/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    if-eqz v1, :cond_a

    :try_start_1
    const-string v0, "mkdir -p /sdcard/data/local/tmp/"

    .line 42
    invoke-static {v0, v3, v2}, Lcom/cyjh/share/util/ShellUtils;->execCommand(Ljava/lang/String;ZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;

    move-result-object v0

    const-string v1, "xygtest"

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/cyjh/share/util/ShellUtils$CommandResult;->result:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {p1}, Lcom/cyjh/share/util/InternalFileUtils;->getInstance(Landroid/content/Context;)Lcom/cyjh/share/util/InternalFileUtils;

    move-result-object v0

    const-string v1, "injectDDY/test.apk"

    const-string v4, "data/local/tmp/test.apk"

    invoke-virtual {v0, v1, v4}, Lcom/cyjh/share/util/InternalFileUtils;->copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/share/util/InternalFileUtils;

    .line 45
    invoke-static {p1}, Lcom/cyjh/share/util/InternalFileUtils;->getInstance(Landroid/content/Context;)Lcom/cyjh/share/util/InternalFileUtils;

    move-result-object v0

    const-string v1, "injectDDY/ddyinject.apk"

    const-string v4, "data/local/tmp/ddyinject.apk"

    invoke-virtual {v0, v1, v4}, Lcom/cyjh/share/util/InternalFileUtils;->copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/share/util/InternalFileUtils;

    .line 46
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/com.cyjh.mrpa/script/.config"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 48
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/com.cyjh.mrpa/script/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 52
    :cond_1
    invoke-static {p1}, Lcom/cyjh/share/util/InternalFileUtils;->getInstance(Landroid/content/Context;)Lcom/cyjh/share/util/InternalFileUtils;

    move-result-object p1

    const-string v0, "injectDDY/config.txt"

    const-string v1, "com.cyjh.mrpa/script/.config"

    invoke-virtual {p1, v0, v1}, Lcom/cyjh/share/util/InternalFileUtils;->copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/share/util/InternalFileUtils;

    .line 54
    :cond_2
    new-instance p1, Ljava/io/File;

    const-string v0, "/data/local/tmp/ddyinject.apk"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/test.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/cyjh/share/util/FileUtil;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    const-string v4, "/sdcard/data/local/tmp/ddyinject.apk"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/cyjh/share/util/FileUtil;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v0}, Lcom/cyjh/share/util/FileUtil;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/data/local/tmp/test.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cyjh/share/util/FileUtil;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const-string p1, "cp /sdcard/data/local/tmp/* /data/local/tmp/"

    .line 63
    invoke-static {p1, v3, v2}, Lcom/cyjh/share/util/ShellUtils;->execCommand(Ljava/lang/String;ZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;

    move-result-object p1

    const-string v0, "xygtest"

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cp result="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/cyjh/share/util/ShellUtils$CommandResult;->result:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "chmod 777 /data/local/tmp/*"

    .line 65
    invoke-static {p1, v3, v2}, Lcom/cyjh/share/util/ShellUtils;->execCommand(Ljava/lang/String;ZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;

    move-result-object p1

    const-string v0, "xygtest"

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/cyjh/share/util/ShellUtils$CommandResult;->result:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    .line 68
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_4
    if-eqz v1, :cond_a

    :try_start_2
    const-string v0, "mkdir -p /sdcard/data/local/tmp/"

    .line 75
    invoke-static {v0, v3, v2}, Lcom/cyjh/share/util/ShellUtils;->execCommand(Ljava/lang/String;ZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;

    const-string v0, "mkdir -p /data/local/tmp/"

    .line 76
    invoke-static {v0, v3, v2}, Lcom/cyjh/share/util/ShellUtils;->execCommand(Ljava/lang/String;ZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;

    const-string v0, "mkdir -p /sdcard/com.cyjh.mrpa/script/"

    .line 77
    invoke-static {v0, v3, v2}, Lcom/cyjh/share/util/ShellUtils;->execCommand(Ljava/lang/String;ZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;

    .line 79
    invoke-static {p1}, Lcom/cyjh/share/util/InternalFileUtils;->getInstance(Landroid/content/Context;)Lcom/cyjh/share/util/InternalFileUtils;

    move-result-object v0

    const-string v1, "inject/armeabi-v7a/Inject"

    const-string v4, "data/local/tmp/a"

    invoke-virtual {v0, v1, v4}, Lcom/cyjh/share/util/InternalFileUtils;->copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/share/util/InternalFileUtils;

    .line 80
    invoke-static {p1}, Lcom/cyjh/share/util/InternalFileUtils;->getInstance(Landroid/content/Context;)Lcom/cyjh/share/util/InternalFileUtils;

    move-result-object v0

    const-string v1, "inject/armeabi-v7a/libnullso2.so"

    const-string v4, "data/local/tmp/c"

    invoke-virtual {v0, v1, v4}, Lcom/cyjh/share/util/InternalFileUtils;->copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/share/util/InternalFileUtils;

    .line 82
    invoke-static {p1}, Lcom/cyjh/share/util/InternalFileUtils;->getInstance(Landroid/content/Context;)Lcom/cyjh/share/util/InternalFileUtils;

    move-result-object v0

    const-string v1, "inject/test.apk"

    const-string v4, "test.apk"

    invoke-virtual {v0, v1, v4}, Lcom/cyjh/share/util/InternalFileUtils;->copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/share/util/InternalFileUtils;

    .line 83
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/com.cyjh.mrpa/script/.config"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    .line 85
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/com.cyjh.mrpa/script/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 89
    :cond_5
    invoke-static {p1}, Lcom/cyjh/share/util/InternalFileUtils;->getInstance(Landroid/content/Context;)Lcom/cyjh/share/util/InternalFileUtils;

    move-result-object p1

    const-string v0, "inject/config.txt"

    const-string v1, "com.cyjh.mrpa/script/.config"

    invoke-virtual {p1, v0, v1}, Lcom/cyjh/share/util/InternalFileUtils;->copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/share/util/InternalFileUtils;

    :cond_6
    const-string p1, "cp /sdcard/data/local/tmp/* /data/local/tmp/"

    .line 91
    invoke-static {p1, v3, v2}, Lcom/cyjh/share/util/ShellUtils;->execCommand(Ljava/lang/String;ZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;

    move-result-object p1

    const-string v0, "xygtest"

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/cyjh/share/util/ShellUtils$CommandResult;->result:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "chmod 777 /data/local/tmp/*"

    .line 93
    invoke-static {p1, v3, v2}, Lcom/cyjh/share/util/ShellUtils;->execCommand(Ljava/lang/String;ZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;

    move-result-object p1

    const-string v0, "xygtest"

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/cyjh/share/util/ShellUtils$CommandResult;->result:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception p1

    .line 96
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_7
    if-eqz v1, :cond_a

    :try_start_3
    const-string v0, "mkdir -p /sdcard/data/local/tmp/"

    .line 104
    invoke-static {v0, v3, v2}, Lcom/cyjh/share/util/ShellUtils;->execCommand(Ljava/lang/String;ZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;

    const-string v0, "mkdir -p /data/local/tmp/"

    .line 105
    invoke-static {v0, v3, v2}, Lcom/cyjh/share/util/ShellUtils;->execCommand(Ljava/lang/String;ZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;

    const-string v0, "mkdir -p /sdcard/com.cyjh.mrpa/script/"

    .line 106
    invoke-static {v0, v3, v2}, Lcom/cyjh/share/util/ShellUtils;->execCommand(Ljava/lang/String;ZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;

    .line 108
    invoke-static {p1}, Lcom/cyjh/share/util/InternalFileUtils;->getInstance(Landroid/content/Context;)Lcom/cyjh/share/util/InternalFileUtils;

    move-result-object v0

    const-string v1, "inject/x86/Inject"

    const-string v4, "data/local/tmp/a"

    invoke-virtual {v0, v1, v4}, Lcom/cyjh/share/util/InternalFileUtils;->copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/share/util/InternalFileUtils;

    .line 109
    invoke-static {p1}, Lcom/cyjh/share/util/InternalFileUtils;->getInstance(Landroid/content/Context;)Lcom/cyjh/share/util/InternalFileUtils;

    move-result-object v0

    const-string v1, "inject/x86/libnullso2.so"

    const-string v4, "data/local/tmp/c"

    invoke-virtual {v0, v1, v4}, Lcom/cyjh/share/util/InternalFileUtils;->copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/share/util/InternalFileUtils;

    .line 111
    invoke-static {p1}, Lcom/cyjh/share/util/InternalFileUtils;->getInstance(Landroid/content/Context;)Lcom/cyjh/share/util/InternalFileUtils;

    move-result-object v0

    const-string v1, "inject/test.apk"

    const-string v4, "test.apk"

    invoke-virtual {v0, v1, v4}, Lcom/cyjh/share/util/InternalFileUtils;->copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/share/util/InternalFileUtils;

    .line 112
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/com.cyjh.mrpa/script/.config"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 114
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/com.cyjh.mrpa/script/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 118
    :cond_8
    invoke-static {p1}, Lcom/cyjh/share/util/InternalFileUtils;->getInstance(Landroid/content/Context;)Lcom/cyjh/share/util/InternalFileUtils;

    move-result-object p1

    const-string v0, "inject/config.txt"

    const-string v1, "com.cyjh.mrpa/script/.config"

    invoke-virtual {p1, v0, v1}, Lcom/cyjh/share/util/InternalFileUtils;->copyAssetsToSD(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/share/util/InternalFileUtils;

    :cond_9
    const-string p1, "cp /sdcard/data/local/tmp/* /data/local/tmp/"

    .line 120
    invoke-static {p1, v3, v2}, Lcom/cyjh/share/util/ShellUtils;->execCommand(Ljava/lang/String;ZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;

    move-result-object p1

    const-string v0, "xygtest"

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/cyjh/share/util/ShellUtils$CommandResult;->result:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "chmod 777 /data/local/tmp/*"

    .line 122
    invoke-static {p1, v3, v2}, Lcom/cyjh/share/util/ShellUtils;->execCommand(Ljava/lang/String;ZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;

    move-result-object p1

    const-string v0, "xygtest"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/cyjh/share/util/ShellUtils$CommandResult;->result:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_a
    :goto_1
    return-void
.end method
