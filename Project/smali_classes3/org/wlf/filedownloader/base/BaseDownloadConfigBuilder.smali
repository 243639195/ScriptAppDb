.class public Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;
.super Ljava/lang/Object;
.source "BaseDownloadConfigBuilder.java"


# static fields
.field public static final DEFAULT_CONNECT_TIMEOUT:I = 0x3a98

.field public static final DEFAULT_RETRY_DOWNLOAD_TIMES:I = 0x0

.field public static final MAX_CONNECT_TIMEOUT:I = 0x1d4c0

.field public static final MAX_RETRY_DOWNLOAD_TIMES:I = 0xa

.field public static final MIN_CONNECT_TIMEOUT:I = 0x1388


# instance fields
.field protected mConnectTimeout:I

.field protected mRetryDownloadTimes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;->mRetryDownloadTimes:I

    .line 38
    const/16 v0, 0x3a98

    iput v0, p0, Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;->mConnectTimeout:I

    .line 39
    return-void
.end method


# virtual methods
.method public configConnectTimeout(I)Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;
    .locals 3
    .param p1, "connectTimeout"    # I

    .prologue
    const v1, 0x1d4c0

    const/16 v0, 0x1388

    .line 72
    if-lt p1, v0, :cond_0

    if-gt p1, v1, :cond_0

    .line 73
    iput p1, p0, Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;->mConnectTimeout:I

    .line 82
    :goto_0
    return-object p0

    .line 74
    :cond_0
    if-le p1, v1, :cond_1

    .line 75
    iput v1, p0, Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;->mConnectTimeout:I

    goto :goto_0

    .line 76
    :cond_1
    if-ge p1, v0, :cond_2

    .line 77
    iput v0, p0, Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;->mConnectTimeout:I

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configConnectTimeout \u914d\u7f6e\u8fde\u63a5\u8d85\u65f6\u65f6\u95f4\u5931\u8d25\uff0cconnectTimeout\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public configRetryDownloadTimes(I)Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;
    .locals 3
    .param p1, "retryDownloadTimes"    # I

    .prologue
    const/16 v0, 0xa

    .line 50
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 51
    iput p1, p0, Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;->mRetryDownloadTimes:I

    .line 60
    :goto_0
    return-object p0

    .line 52
    :cond_0
    if-le p1, v0, :cond_1

    .line 53
    iput v0, p0, Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;->mRetryDownloadTimes:I

    goto :goto_0

    .line 54
    :cond_1
    if-gez p1, :cond_2

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;->mRetryDownloadTimes:I

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configRetryDownloadTimes \u914d\u7f6e\u4e0b\u8f7d\u5931\u8d25\u91cd\u8bd5\u6b21\u6570\u5931\u8d25\uff0cretryDownloadTimes\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
