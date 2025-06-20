.class Lkiller/elfin/update/ScriptDownload$1;
.super Lorg/wlf/filedownloader/listener/simple/OnSimpleFileDownloadStatusListener;
.source "ScriptDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkiller/elfin/update/ScriptDownload;->download(Lkiller/core/entity/ScriptVersionInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkiller/elfin/update/ScriptDownload;

.field final synthetic val$downloadDir:Ljava/io/File;

.field final synthetic val$scriptVersionInfo:Lkiller/core/entity/ScriptVersionInfo;


# direct methods
.method constructor <init>(Lkiller/elfin/update/ScriptDownload;Lkiller/core/entity/ScriptVersionInfo;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lkiller/elfin/update/ScriptDownload;

    .prologue
    .line 42
    iput-object p1, p0, Lkiller/elfin/update/ScriptDownload$1;->this$0:Lkiller/elfin/update/ScriptDownload;

    iput-object p2, p0, Lkiller/elfin/update/ScriptDownload$1;->val$scriptVersionInfo:Lkiller/core/entity/ScriptVersionInfo;

    iput-object p3, p0, Lkiller/elfin/update/ScriptDownload$1;->val$downloadDir:Ljava/io/File;

    invoke-direct {p0}, Lorg/wlf/filedownloader/listener/simple/OnSimpleFileDownloadStatusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileDownloadStatusCompleted(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 12
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 52
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lkiller/elfin/Free;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "assets"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "assetsDir":Ljava/lang/String;
    new-instance v5, Lnet/lingala/zip4j/ZipFile;

    new-instance v6, Ljava/io/File;

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/io/File;)V

    .line 54
    .local v5, "zipFile":Lnet/lingala/zip4j/ZipFile;
    invoke-virtual {v5, v1}, Lnet/lingala/zip4j/ZipFile;->extractAll(Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/io/File;

    const-string v6, "script.atc"

    invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .local v0, "assetsAtc":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 58
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lkiller/elfin/Free;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "script.atc"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .local v4, "sourceAtc":Ljava/io/File;
    const/4 v6, 0x0

    invoke-static {v4, v0, v6}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Z)V

    .line 61
    .end local v4    # "sourceAtc":Ljava/io/File;
    :cond_0
    sget-object v6, Lkiller/elfin/Free;->runner:Lkiller/elfin/runner/ScriptRunner;

    invoke-interface {v6}, Lkiller/elfin/runner/ScriptRunner;->isScriptStarted()Z

    move-result v3

    .line 63
    .local v3, "isScriptRun":Z
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cyjh/mq/sdk/MqRunner;->stop()V

    .line 65
    iget-object v6, p0, Lkiller/elfin/update/ScriptDownload$1;->val$scriptVersionInfo:Lkiller/core/entity/ScriptVersionInfo;

    iget-wide v6, v6, Lkiller/core/entity/ScriptVersionInfo;->version:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Lkiller/elfin/config/GlobalConfig;->setScriptVersion(Ljava/lang/Long;)V

    .line 67
    invoke-static {}, Lkiller/elfin/Free;->initScript()V

    .line 69
    if-eqz v3, :cond_1

    .line 71
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lkiller/elfin/update/ScriptDownload$1$1;

    invoke-direct {v7, p0}, Lkiller/elfin/update/ScriptDownload$1$1;-><init>(Lkiller/elfin/update/ScriptDownload$1;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 77
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 80
    :cond_1
    const-string v6, "\u811a\u672c\u70ed\u66f4\u6210\u529f"

    const/16 v7, 0x7d0

    const/16 v8, 0xa

    const/16 v9, 0xa

    invoke-static {v6, v7, v8, v9}, Lkiller/elfin/util/ToastUtil;->toast(Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v10, v11}, Lorg/wlf/filedownloader/FileDownloader;->delete(Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V

    .line 87
    invoke-static {p0}, Lorg/wlf/filedownloader/FileDownloader;->unregisterDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    .line 89
    :try_start_1
    iget-object v6, p0, Lkiller/elfin/update/ScriptDownload$1;->val$downloadDir:Ljava/io/File;

    invoke-static {v6}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 92
    .end local v0    # "assetsAtc":Ljava/io/File;
    .end local v1    # "assetsDir":Ljava/lang/String;
    .end local v3    # "isScriptRun":Z
    .end local v5    # "zipFile":Lnet/lingala/zip4j/ZipFile;
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "ScriptDownload"

    const-string v7, "onFileDownloadStatusCompleted"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u811a\u672c\u70ed\u66f4\u5931\u8d25-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x7d0

    const/16 v8, 0xa

    const/16 v9, 0xa

    invoke-static {v6, v7, v8, v9}, Lkiller/elfin/util/ToastUtil;->toast(Ljava/lang/String;III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v10, v11}, Lorg/wlf/filedownloader/FileDownloader;->delete(Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V

    .line 87
    invoke-static {p0}, Lorg/wlf/filedownloader/FileDownloader;->unregisterDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    .line 89
    :try_start_3
    iget-object v6, p0, Lkiller/elfin/update/ScriptDownload$1;->val$downloadDir:Ljava/io/File;

    invoke-static {v6}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 90
    :catch_1
    move-exception v6

    goto :goto_0

    .line 86
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10, v11}, Lorg/wlf/filedownloader/FileDownloader;->delete(Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V

    .line 87
    invoke-static {p0}, Lorg/wlf/filedownloader/FileDownloader;->unregisterDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    .line 89
    :try_start_4
    iget-object v7, p0, Lkiller/elfin/update/ScriptDownload$1;->val$downloadDir:Ljava/io/File;

    invoke-static {v7}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 91
    :goto_1
    throw v6

    .line 90
    :catch_2
    move-exception v7

    goto :goto_1

    .restart local v0    # "assetsAtc":Ljava/io/File;
    .restart local v1    # "assetsDir":Ljava/lang/String;
    .restart local v3    # "isScriptRun":Z
    .restart local v5    # "zipFile":Lnet/lingala/zip4j/ZipFile;
    :catch_3
    move-exception v6

    goto :goto_0
.end method

.method public onFileDownloadStatusDownloading(Lorg/wlf/filedownloader/DownloadFileInfo;FJ)V
    .locals 5
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "downloadSpeed"    # F
    .param p3, "remainingTime"    # J

    .prologue
    const/16 v4, 0xa

    .line 45
    const-string v0, "\u811a\u672c\u66f4\u65b0\u4e2d,\u5269\u4f59(%d)\u79d2"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-static {v0, v1, v4, v4}, Lkiller/elfin/util/ToastUtil;->toast(Ljava/lang/String;III)V

    .line 46
    return-void
.end method

.method public onFileDownloadStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p3, "failReason"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    .prologue
    const/16 v2, 0xa

    .line 96
    const-string v0, "ScriptDownload"

    const-string v1, "onFileDownloadStatusFailed"

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u811a\u672c\u70ed\u66f4\u5931\u8d25-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-static {v0, v1, v2, v2}, Lkiller/elfin/util/ToastUtil;->toast(Ljava/lang/String;III)V

    .line 98
    invoke-static {p0}, Lorg/wlf/filedownloader/FileDownloader;->unregisterDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    .line 100
    :try_start_0
    iget-object v0, p0, Lkiller/elfin/update/ScriptDownload$1;->val$downloadDir:Ljava/io/File;

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    goto :goto_0
.end method
