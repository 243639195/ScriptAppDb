.class public Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;
.super Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;
.source "FileDownloadConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/FileDownloadConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final DEFAULT_DOWNLOAD_TASK_SIZE:I = 0x2

.field public static final MAX_DOWNLOAD_TASK_SIZE:I = 0xa


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadTaskSize:I

.field private mFileDownloadDir:Ljava/lang/String;

.field private mIsDebugMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;-><init>()V

    .line 40
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->mIsDebugMode:Z

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->mContext:Landroid/content/Context;

    .line 47
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "file_downloader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->mFileDownloadDir:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    const/4 v1, 0x2

    iput v1, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->mDownloadTaskSize:I

    .line 57
    iget-boolean v1, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->mIsDebugMode:Z

    invoke-static {v1}, Lorg/wlf/filedownloader/base/Log;->setDebugMode(Z)V

    .line 58
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "file_downloader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->mFileDownloadDir:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$200(Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;

    .prologue
    .line 26
    iget v0, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->mDownloadTaskSize:I

    return v0
.end method

.method static synthetic access$300(Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->mFileDownloadDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;

    .prologue
    .line 26
    iget-boolean v0, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->mIsDebugMode:Z

    return v0
.end method

.method static synthetic access$600(Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->getRetryDownloadTimes()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method private getConnectTimeout()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->mConnectTimeout:I

    return v0
.end method

.method private getRetryDownloadTimes()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->mRetryDownloadTimes:I

    return v0
.end method


# virtual methods
.method public build()Lorg/wlf/filedownloader/FileDownloadConfiguration;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lorg/wlf/filedownloader/FileDownloadConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/wlf/filedownloader/FileDownloadConfiguration;-><init>(Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;Lorg/wlf/filedownloader/FileDownloadConfiguration$1;)V

    return-object v0
.end method

.method public configConnectTimeout(I)Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;
    .locals 0
    .param p1, "connectTimeout"    # I

    .prologue
    .line 131
    invoke-super {p0, p1}, Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;->configConnectTimeout(I)Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;

    .line 132
    return-object p0
.end method

.method public bridge synthetic configConnectTimeout(I)Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->configConnectTimeout(I)Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public configDebugMode(Z)Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;
    .locals 1
    .param p1, "isDebugMode"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->mIsDebugMode:Z

    .line 119
    iget-boolean v0, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->mIsDebugMode:Z

    invoke-static {v0}, Lorg/wlf/filedownloader/base/Log;->setDebugMode(Z)V

    .line 120
    return-object p0
.end method

.method public configDownloadTaskSize(I)Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;
    .locals 3
    .param p1, "downloadTaskSize"    # I

    .prologue
    const/16 v1, 0xa

    const/4 v0, 0x1

    .line 98
    if-lt p1, v0, :cond_0

    if-gt p1, v1, :cond_0

    .line 99
    iput p1, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->mDownloadTaskSize:I

    .line 107
    :goto_0
    return-object p0

    .line 100
    :cond_0
    if-le p1, v1, :cond_1

    .line 101
    iput v1, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->mDownloadTaskSize:I

    goto :goto_0

    .line 102
    :cond_1
    if-ge p1, v0, :cond_2

    .line 103
    iput v0, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->mDownloadTaskSize:I

    goto :goto_0

    .line 105
    :cond_2
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloadConfiguration;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configDownloadTaskSize \u914d\u7f6e\u540c\u65f6\u4e0b\u8f7d\u4efb\u52a1\u7684\u6570\u91cf\u5931\u8d25\uff0cdownloadTaskSize\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public configFileDownloadDir(Ljava/lang/String;)Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;
    .locals 5
    .param p1, "fileDownloadDir"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 72
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloadConfiguration;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configFileDownloadDir \u8981\u8bbe\u7f6e\u7684\u6587\u4ef6\u4e0b\u8f7d\u4fdd\u5b58\u76ee\u5f55\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u8fd8\u4e0d\u5b58\u5728\uff0c\u9700\u8981\u521b\u5efa\uff01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 76
    .local v1, "isCreateSuccess":Z
    if-eqz v1, :cond_1

    .line 77
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloadConfiguration;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configFileDownloadDir \u8981\u8bbe\u7f6e\u7684\u6587\u4ef6\u4e0b\u8f7d\u4fdd\u5b58\u76ee\u5f55\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u521b\u5efa\u6210\u529f\uff01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v1    # "isCreateSuccess":Z
    :goto_0
    iput-object p1, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->mFileDownloadDir:Ljava/lang/String;

    .line 87
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-object p0

    .line 79
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "isCreateSuccess":Z
    :cond_1
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloadConfiguration;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configFileDownloadDir \u8981\u8bbe\u7f6e\u7684\u6587\u4ef6\u4e0b\u8f7d\u4fdd\u5b58\u76ee\u5f55\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u521b\u5efa\u5931\u8d25\uff01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    .end local v1    # "isCreateSuccess":Z
    :cond_2
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloadConfiguration;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configFileDownloadDir \u8981\u8bbe\u7f6e\u7684\u6587\u4ef6\u4e0b\u8f7d\u4fdd\u5b58\u76ee\u5f55\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u5df2\u5b58\u5728\uff0c\u4e0d\u9700\u8981\u521b\u5efa\uff01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public configRetryDownloadTimes(I)Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;
    .locals 0
    .param p1, "retryDownloadTimes"    # I

    .prologue
    .line 125
    invoke-super {p0, p1}, Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;->configRetryDownloadTimes(I)Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;

    .line 126
    return-object p0
.end method

.method public bridge synthetic configRetryDownloadTimes(I)Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->configRetryDownloadTimes(I)Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method
