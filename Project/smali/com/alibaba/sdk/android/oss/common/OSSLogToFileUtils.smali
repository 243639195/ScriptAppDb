.class public Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;
.super Ljava/lang/Object;
.source "OSSLogToFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$WriteCall;
    }
.end annotation


# static fields
.field private static final LOG_DIR_NAME:Ljava/lang/String; = "OSSLog"

.field private static LOG_MAX_SIZE:J = 0x500000L

.field private static instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

.field private static logService:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

.field private static sContext:Landroid/content/Context;

.field private static sLogFile:Ljava/io/File;

.field private static sLogSDF:Ljava/text/SimpleDateFormat;


# instance fields
.field private useSdCard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->newInstance()Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->logService:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogSDF:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->useSdCard:Z

    return-void
.end method

.method static synthetic access$000()Ljava/io/File;
    .locals 1

    .line 29
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100()J
    .locals 2

    .line 29
    sget-wide v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->LOG_MAX_SIZE:J

    return-wide v0
.end method

.method static synthetic access$200()Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;
    .locals 1

    .line 29
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;[Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getFunctionInfo([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 29
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogSDF:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private getFunctionInfo([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogSDF:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static getInstance()Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;
    .locals 2

    .line 101
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    if-nez v0, :cond_1

    .line 102
    const-class v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    monitor-enter v0

    .line 103
    :try_start_0
    sget-object v1, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;-><init>()V

    sput-object v1, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    .line 106
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 108
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    return-object v0
.end method

.method public static getLocalLogFileSize()J
    .locals 2

    .line 215
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getLogFileSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getLogFile()Ljava/io/File;
    .locals 9

    .line 227
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->useSdCard:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x400

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v5, "mounted"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->readSDCardSpace()J

    move-result-wide v5

    sget-wide v7, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->LOG_MAX_SIZE:J

    div-long/2addr v7, v3

    cmp-long v0, v5, v7

    if-lez v0, :cond_0

    const/4 v1, 0x1

    .line 231
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "OSSLog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->readSystemSpace()J

    move-result-wide v5

    sget-wide v7, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->LOG_MAX_SIZE:J

    div-long/2addr v7, v3

    cmp-long v0, v5, v7

    if-lez v0, :cond_2

    const/4 v1, 0x1

    .line 236
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "OSSLog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 241
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 242
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 244
    :cond_3
    new-instance v2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/logs.csv"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 246
    invoke-virtual {p0, v2}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->createNewFile(Ljava/io/File;)V

    :cond_4
    return-object v2
.end method

.method public static getLogFileSize(Ljava/io/File;)J
    .locals 2

    if-eqz p0, :cond_0

    .line 204
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static init(Landroid/content/Context;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V
    .locals 2

    const-string v0, "init ..."

    const/4 v1, 0x0

    .line 72
    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    .line 73
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "LogToFileUtils has been init ..."

    .line 96
    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    goto :goto_1

    .line 74
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getInstance()Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    if-eqz p1, :cond_2

    .line 76
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getMaxLogSize()J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->LOG_MAX_SIZE:J

    .line 78
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sContext:Landroid/content/Context;

    .line 79
    sget-object p0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getLogFile()Ljava/io/File;

    move-result-object p0

    sput-object p0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    .line 80
    sget-object p0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->logService:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    new-instance p1, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$1;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->addExecuteTask(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private readSDCardSpace()J
    .locals 4

    .line 117
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 120
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 122
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 125
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sd\u5361\u5b58\u50a8\u7a7a\u95f4:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "kb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    return-wide v0
.end method

.method private readSystemSpace()J
    .locals 4

    .line 134
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    .line 135
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 137
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, v2

    const-wide/16 v2, 0x400

    .line 138
    div-long/2addr v0, v2

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5185\u90e8\u5b58\u50a8\u7a7a\u95f4:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "kb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    return-wide v0
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x0

    .line 191
    sput-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sContext:Landroid/content/Context;

    .line 192
    sput-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    .line 193
    sput-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public createNewFile(Ljava/io/File;)V
    .locals 2

    .line 254
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create log file failure !!! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public deleteLogFile()V
    .locals 3

    .line 173
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/logs.csv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "delete Log File ... "

    const/4 v2, 0x0

    .line 175
    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public deleteLogFileDir()V
    .locals 3

    .line 182
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->deleteLogFile()V

    .line 183
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OSSLog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "delete Log FileDir ... "

    const/4 v2, 0x0

    .line 185
    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    .line 186
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public resetLogFile()V
    .locals 3

    const-string v0, "Reset Log File ... "

    const/4 v1, 0x0

    .line 156
    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    .line 159
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Reset Log make File dir ... "

    .line 160
    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    .line 161
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 163
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/logs.csv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 168
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->createNewFile(Ljava/io/File;)V

    return-void
.end method

.method public setUseSdCard(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->useSdCard:Z

    return-void
.end method

.method public declared-synchronized write(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 279
    :try_start_0
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->isEnableLog()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->instance:Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    if-nez v0, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->sLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->resetLogFile()V

    .line 287
    :cond_1
    new-instance v0, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$WriteCall;

    invoke-direct {v0, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils$WriteCall;-><init>(Ljava/lang/Object;)V

    .line 288
    sget-object p1, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->logService:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->addExecuteTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 282
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 290
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 278
    monitor-exit p0

    throw p1
.end method
