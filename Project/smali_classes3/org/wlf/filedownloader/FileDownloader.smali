.class public final Lorg/wlf/filedownloader/FileDownloader;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static continueAll(Z)V
    .locals 1
    .param p0, "isIncludedErrorDownloads"    # Z

    .prologue
    .line 421
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/wlf/filedownloader/FileDownloader;->continueAll(ZLorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 422
    return-void
.end method

.method public static continueAll(ZLorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 6
    .param p0, "isIncludedErrorDownloads"    # Z
    .param p1, "downloadConfiguration"    # Lorg/wlf/filedownloader/DownloadConfiguration;

    .prologue
    .line 433
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .local v3, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getDownloadFiles()Ljava/util/List;

    move-result-object v1

    .line 436
    .local v1, "downloadFileInfos":Ljava/util/List;, "Ljava/util/List<Lorg/wlf/filedownloader/DownloadFileInfo;>;"
    if-eqz v1, :cond_2

    .line 437
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wlf/filedownloader/DownloadFileInfo;

    .line 438
    .local v0, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    invoke-static {v0}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 441
    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getStatus()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    .line 442
    if-eqz p0, :cond_1

    .line 443
    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 445
    :cond_1
    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getStatus()I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_0

    .line 446
    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 455
    .end local v0    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-static {v3, p1}, Lorg/wlf/filedownloader/FileDownloader;->start(Ljava/util/List;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 456
    return-void
.end method

.method public static createAndStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "saveDir"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/wlf/filedownloader/FileDownloadManager;->createAndStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public static createAndStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "saveDir"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "downloadConfiguration"    # Lorg/wlf/filedownloader/DownloadConfiguration;

    .prologue
    .line 342
    if-eqz p3, :cond_0

    .line 343
    invoke-virtual {p3, p0}, Lorg/wlf/filedownloader/DownloadConfiguration;->initNullKeyForUrl(Ljava/lang/String;)V

    .line 345
    :cond_0
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/wlf/filedownloader/FileDownloadManager;->createAndStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 346
    return-void
.end method

.method public static delete(Ljava/util/List;ZLorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;)Lorg/wlf/filedownloader/base/Control;
    .locals 1
    .param p1, "deleteDownloadedFile"    # Z
    .param p2, "onDeleteDownloadFilesListener"    # Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;",
            ")",
            "Lorg/wlf/filedownloader/base/Control;"
        }
    .end annotation

    .prologue
    .line 603
    .local p0, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/wlf/filedownloader/FileDownloadManager;->delete(Ljava/util/List;ZLorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;)Lorg/wlf/filedownloader/base/Control;

    move-result-object v0

    return-object v0
.end method

.method public static delete(Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "deleteDownloadedFileInPath"    # Z
    .param p2, "onDeleteDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    .prologue
    .line 590
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/wlf/filedownloader/FileDownloadManager;->delete(Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V

    .line 591
    return-void
.end method

.method public static detect(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "onDetectBigUrlFileListener"    # Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

    .prologue
    .line 289
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/wlf/filedownloader/FileDownloadManager;->detect(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;)V

    .line 290
    return-void
.end method

.method public static detect(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "onDetectBigUrlFileListener"    # Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;
    .param p2, "downloadConfiguration"    # Lorg/wlf/filedownloader/DownloadConfiguration;

    .prologue
    .line 302
    if-eqz p2, :cond_0

    .line 303
    invoke-virtual {p2, p0}, Lorg/wlf/filedownloader/DownloadConfiguration;->initNullKeyForUrl(Ljava/lang/String;)V

    .line 305
    :cond_0
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/wlf/filedownloader/FileDownloadManager;->detect(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 306
    return-void
.end method

.method public static detect(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "onDetectUrlFileListener"    # Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 278
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/wlf/filedownloader/FileDownloadManager;->detect(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener;)V

    .line 279
    return-void
.end method

.method public static getDownloadDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadDir()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadFileBySavePath(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 1
    .param p0, "savePath"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadFileBySavePath(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadFileByTempPath(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 1
    .param p0, "tempPath"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadFileByTempPath(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/wlf/filedownloader/DownloadFileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadFiles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getFileDownloadConfiguration()Lorg/wlf/filedownloader/FileDownloadConfiguration;
    .locals 1

    .prologue
    .line 161
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloadManager;->getFileDownloadConfiguration()Lorg/wlf/filedownloader/FileDownloadConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private static getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;
    .locals 3

    .prologue
    .line 78
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloadManager;->getFileDownloadConfiguration()Lorg/wlf/filedownloader/FileDownloadConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Please init the file-downloader by using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/wlf/filedownloader/FileDownloader;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".init(FileDownloadConfiguration) !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloadManager;->getFileDownloadConfiguration()Lorg/wlf/filedownloader/FileDownloadConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wlf/filedownloader/FileDownloadConfiguration;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/wlf/filedownloader/FileDownloadManager;->getInstance(Landroid/content/Context;)Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    return-object v0
.end method

.method public static init(Lorg/wlf/filedownloader/FileDownloadConfiguration;)V
    .locals 2
    .param p0, "configuration"    # Lorg/wlf/filedownloader/FileDownloadConfiguration;

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Lorg/wlf/filedownloader/FileDownloadConfiguration;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lorg/wlf/filedownloader/FileDownloadManager;->getInstance(Landroid/content/Context;)Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/wlf/filedownloader/FileDownloadManager;->init(Lorg/wlf/filedownloader/FileDownloadConfiguration;)V

    goto :goto_0
.end method

.method public static isInit()Z
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloadManager;->getFileDownloadConfiguration()Lorg/wlf/filedownloader/FileDownloadConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wlf/filedownloader/FileDownloadManager;->isInit()Z

    move-result v0

    goto :goto_0
.end method

.method public static move(Ljava/util/List;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;)Lorg/wlf/filedownloader/base/Control;
    .locals 1
    .param p1, "newDirPath"    # Ljava/lang/String;
    .param p2, "onMoveDownloadFilesListener"    # Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;",
            ")",
            "Lorg/wlf/filedownloader/base/Control;"
        }
    .end annotation

    .prologue
    .line 576
    .local p0, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/wlf/filedownloader/FileDownloadManager;->move(Ljava/util/List;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;)Lorg/wlf/filedownloader/base/Control;

    move-result-object v0

    return-object v0
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "newDirPath"    # Ljava/lang/String;
    .param p2, "onMoveDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;

    .prologue
    .line 563
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/wlf/filedownloader/FileDownloadManager;->move(Ljava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;)V

    .line 564
    return-void
.end method

.method public static pause(Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 466
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/wlf/filedownloader/FileDownloadManager;->pause(Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method public static pause(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 475
    .local p0, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/wlf/filedownloader/FileDownloadManager;->pause(Ljava/util/List;)V

    .line 476
    return-void
.end method

.method public static pauseAll()V
    .locals 1

    .prologue
    .line 482
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wlf/filedownloader/FileDownloadManager;->pauseAll()V

    .line 483
    return-void
.end method

.method public static reStart(Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 499
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/wlf/filedownloader/FileDownloadManager;->reStart(Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method public static reStart(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "downloadConfiguration"    # Lorg/wlf/filedownloader/DownloadConfiguration;

    .prologue
    .line 514
    if-eqz p1, :cond_0

    .line 515
    invoke-virtual {p1, p0}, Lorg/wlf/filedownloader/DownloadConfiguration;->initNullKeyForUrl(Ljava/lang/String;)V

    .line 517
    :cond_0
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/wlf/filedownloader/FileDownloadManager;->reStart(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 518
    return-void
.end method

.method public static reStart(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 532
    .local p0, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/wlf/filedownloader/FileDownloadManager;->reStart(Ljava/util/List;)V

    .line 533
    return-void
.end method

.method public static registerDownloadFileChangeListener(Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;)V
    .locals 2
    .param p0, "onDownloadFileChangeListener"    # Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    .prologue
    .line 240
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/wlf/filedownloader/FileDownloadManager;->registerDownloadFileChangeListener(Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;)V

    .line 241
    return-void
.end method

.method public static registerDownloadFileChangeListener(Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;)V
    .locals 1
    .param p0, "onDownloadFileChangeListener"    # Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;
    .param p1, "downloadFileChangeConfiguration"    # Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    .prologue
    .line 253
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/wlf/filedownloader/FileDownloadManager;->registerDownloadFileChangeListener(Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;)V

    .line 255
    return-void
.end method

.method public static registerDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 1
    .param p0, "onFileDownloadStatusListener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .prologue
    .line 175
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/wlf/filedownloader/FileDownloadManager;->registerDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    .line 176
    return-void
.end method

.method public static registerDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;Lorg/wlf/filedownloader/DownloadStatusConfiguration;)V
    .locals 1
    .param p0, "onFileDownloadStatusListener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;
    .param p1, "downloadStatusConfiguration"    # Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    .prologue
    .line 189
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/wlf/filedownloader/FileDownloadManager;->registerDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;Lorg/wlf/filedownloader/DownloadStatusConfiguration;)V

    .line 191
    return-void
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloadManager;->getFileDownloadConfiguration()Lorg/wlf/filedownloader/FileDownloadConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wlf/filedownloader/FileDownloadManager;->release()V

    .line 68
    :cond_0
    return-void
.end method

.method public static rename(Ljava/lang/String;Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "newFileName"    # Ljava/lang/String;
    .param p2, "includedSuffix"    # Z
    .param p3, "onRenameDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    .prologue
    .line 619
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/wlf/filedownloader/FileDownloadManager;->rename(Ljava/lang/String;Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V

    .line 620
    return-void
.end method

.method public static start(Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 360
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/wlf/filedownloader/FileDownloadManager;->start(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public static start(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "downloadConfiguration"    # Lorg/wlf/filedownloader/DownloadConfiguration;

    .prologue
    .line 375
    if-eqz p1, :cond_0

    .line 376
    invoke-virtual {p1, p0}, Lorg/wlf/filedownloader/DownloadConfiguration;->initNullKeyForUrl(Ljava/lang/String;)V

    .line 378
    :cond_0
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/wlf/filedownloader/FileDownloadManager;->start(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 379
    return-void
.end method

.method public static start(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 393
    .local p0, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/wlf/filedownloader/FileDownloadManager;->start(Ljava/util/List;)V

    .line 394
    return-void
.end method

.method public static start(Ljava/util/List;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 1
    .param p1, "downloadConfiguration"    # Lorg/wlf/filedownloader/DownloadConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/wlf/filedownloader/DownloadConfiguration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 409
    invoke-virtual {p1, p0}, Lorg/wlf/filedownloader/DownloadConfiguration;->initNullKeyForUrls(Ljava/util/List;)V

    .line 411
    :cond_0
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/wlf/filedownloader/FileDownloadManager;->start(Ljava/util/List;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 412
    return-void
.end method

.method public static unregisterDownloadFileChangeListener(Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;)V
    .locals 1
    .param p0, "onDownloadFileChangeListener"    # Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    .prologue
    .line 263
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/wlf/filedownloader/FileDownloadManager;->unregisterDownloadFileChangeListener(Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;)V

    .line 264
    return-void
.end method

.method public static unregisterDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 1
    .param p0, "onFileDownloadStatusListener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .prologue
    .line 231
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/wlf/filedownloader/FileDownloadManager;->unregisterDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    .line 232
    return-void
.end method


# virtual methods
.method public reStart(Ljava/util/List;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 1
    .param p2, "downloadConfiguration"    # Lorg/wlf/filedownloader/DownloadConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/wlf/filedownloader/DownloadConfiguration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 547
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 548
    invoke-virtual {p2, p1}, Lorg/wlf/filedownloader/DownloadConfiguration;->initNullKeyForUrls(Ljava/util/List;)V

    .line 550
    :cond_0
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->getFileDownloadManager()Lorg/wlf/filedownloader/FileDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/wlf/filedownloader/FileDownloadManager;->reStart(Ljava/util/List;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 551
    return-void
.end method
