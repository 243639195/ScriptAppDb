.class public abstract Lorg/wlf/filedownloader/listener/simple/OnSimpleFileDownloadStatusListener;
.super Ljava/lang/Object;
.source "OnSimpleFileDownloadStatusListener.java"

# interfaces
.implements Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAppContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->isInit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadConfiguration()Lorg/wlf/filedownloader/FileDownloadConfiguration;

    move-result-object v1

    .line 79
    .local v1, "configuration":Lorg/wlf/filedownloader/FileDownloadConfiguration;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/wlf/filedownloader/FileDownloadConfiguration;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    .end local v1    # "configuration":Lorg/wlf/filedownloader/FileDownloadConfiguration;
    :cond_0
    :goto_0
    return-object v0

    .line 79
    .restart local v1    # "configuration":Lorg/wlf/filedownloader/FileDownloadConfiguration;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onFileDownloadStatusCompleted(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 4
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/wlf/filedownloader/listener/simple/OnSimpleFileDownloadStatusListener;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 49
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 50
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "fileName":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  completed !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 55
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_0
    return-void

    .line 50
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onFileDownloadStatusDownloading(Lorg/wlf/filedownloader/DownloadFileInfo;FJ)V
    .locals 0
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "downloadSpeed"    # F
    .param p3, "remainingTime"    # J

    .prologue
    .line 39
    return-void
.end method

.method public onFileDownloadStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p3, "failReason"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/wlf/filedownloader/listener/simple/OnSimpleFileDownloadStatusListener;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 63
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "fileName":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  error !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 68
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_0
    return-void

    .line 63
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onFileDownloadStatusPaused(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 0
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 43
    return-void
.end method

.method public onFileDownloadStatusPrepared(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 0
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 34
    return-void
.end method

.method public onFileDownloadStatusPreparing(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 0
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 30
    return-void
.end method

.method public onFileDownloadStatusRetrying(Lorg/wlf/filedownloader/DownloadFileInfo;I)V
    .locals 0
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "retryTimes"    # I

    .prologue
    .line 22
    return-void
.end method

.method public onFileDownloadStatusWaiting(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 0
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 26
    return-void
.end method
