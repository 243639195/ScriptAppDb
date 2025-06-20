.class public Lcom/alibaba/sdk/android/oss/common/OSSLog;
.super Ljava/lang/Object;
.source "OSSLog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OSS-Android-SDK"

.field private static enableLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableLog()V
    .locals 1

    const/4 v0, 0x0

    .line 24
    sput-boolean v0, Lcom/alibaba/sdk/android/oss/common/OSSLog;->enableLog:Z

    return-void
.end method

.method public static enableLog()V
    .locals 1

    const/4 v0, 0x1

    .line 17
    sput-boolean v0, Lcom/alibaba/sdk/android/oss/common/OSSLog;->enableLog:Z

    return-void
.end method

.method public static isEnableLog()Z
    .locals 1

    .line 31
    sget-boolean v0, Lcom/alibaba/sdk/android/oss/common/OSSLog;->enableLog:Z

    return v0
.end method

.method private static log2Local(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 148
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getInstance()Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->write(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static logDebug(Ljava/lang/String;)V
    .locals 1

    const-string v0, "OSS-Android-SDK"

    .line 88
    invoke-static {v0, p0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 92
    invoke-static {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static logDebug(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 105
    sget-boolean v0, Lcom/alibaba/sdk/android/oss/common/OSSLog;->enableLog:Z

    if-eqz v0, :cond_0

    const-string v0, "[Debug]: "

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->log2Local(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static logDebug(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "OSS-Android-SDK"

    .line 101
    invoke-static {v0, p0, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static logError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "OSS-Android-SDK"

    .line 117
    invoke-static {v0, p0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 121
    invoke-static {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 134
    sget-boolean v0, Lcom/alibaba/sdk/android/oss/common/OSSLog;->enableLog:Z

    if-eqz v0, :cond_0

    const-string v0, "[Error]: "

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->log2Local(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static logError(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "OSS-Android-SDK"

    .line 130
    invoke-static {v0, p0, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static logInfo(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 40
    invoke-static {p0, v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logInfo(Ljava/lang/String;Z)V

    return-void
.end method

.method public static logInfo(Ljava/lang/String;Z)V
    .locals 2

    .line 44
    sget-boolean v0, Lcom/alibaba/sdk/android/oss/common/OSSLog;->enableLog:Z

    if-eqz v0, :cond_0

    const-string v0, "OSS-Android-SDK"

    const-string v1, "[INFO]: "

    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->log2Local(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static logThrowable2Local(Ljava/lang/Throwable;)V
    .locals 1

    .line 141
    sget-boolean v0, Lcom/alibaba/sdk/android/oss/common/OSSLog;->enableLog:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->getInstance()Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/oss/common/OSSLogToFileUtils;->write(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static logVerbose(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 56
    invoke-static {p0, v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logVerbose(Ljava/lang/String;Z)V

    return-void
.end method

.method public static logVerbose(Ljava/lang/String;Z)V
    .locals 2

    .line 60
    sget-boolean v0, Lcom/alibaba/sdk/android/oss/common/OSSLog;->enableLog:Z

    if-eqz v0, :cond_0

    const-string v0, "OSS-Android-SDK"

    const-string v1, "[Verbose]: "

    .line 61
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->log2Local(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static logWarn(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 72
    invoke-static {p0, v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logWarn(Ljava/lang/String;Z)V

    return-void
.end method

.method public static logWarn(Ljava/lang/String;Z)V
    .locals 2

    .line 76
    sget-boolean v0, Lcom/alibaba/sdk/android/oss/common/OSSLog;->enableLog:Z

    if-eqz v0, :cond_0

    const-string v0, "OSS-Android-SDK"

    const-string v1, "[Warn]: "

    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->log2Local(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
