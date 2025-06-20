.class public final Lorg/wlf/filedownloader/FileDownloadManager;
.super Ljava/lang/Object;
.source "FileDownloadManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lorg/wlf/filedownloader/FileDownloadManager;


# instance fields
.field private mConfiguration:Lorg/wlf/filedownloader/FileDownloadConfiguration;

.field private mDownloadDeleteManager:Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;

.field private mDownloadFileCacher:Lorg/wlf/filedownloader/DownloadCacher;

.field private mDownloadMoveManager:Lorg/wlf/filedownloader/file_move/DownloadMoveManager;

.field private mDownloadRenameManager:Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;

.field private mDownloadTaskManager:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

.field private mInitLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/wlf/filedownloader/FileDownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/FileDownloadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mInitLock:Ljava/lang/Object;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Lorg/wlf/filedownloader/DownloadCacher;

    invoke-direct {v1, v0}, Lorg/wlf/filedownloader/DownloadCacher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadFileCacher:Lorg/wlf/filedownloader/DownloadCacher;

    .line 87
    invoke-virtual {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadFiles()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/wlf/filedownloader/FileDownloadManager;->checkAndRecoveryExceptionStatus(Ljava/util/List;)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lorg/wlf/filedownloader/FileDownloadManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/FileDownloadManager;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mInitLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/wlf/filedownloader/FileDownloadManager;)Lorg/wlf/filedownloader/FileDownloadConfiguration;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/FileDownloadManager;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mConfiguration:Lorg/wlf/filedownloader/FileDownloadConfiguration;

    return-object v0
.end method

.method static synthetic access$200(Lorg/wlf/filedownloader/FileDownloadManager;)Lorg/wlf/filedownloader/DownloadCacher;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/FileDownloadManager;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadFileCacher:Lorg/wlf/filedownloader/DownloadCacher;

    return-object v0
.end method

.method static synthetic access$302(Lorg/wlf/filedownloader/FileDownloadManager;)Lorg/wlf/filedownloader/FileDownloadManager;
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/FileDownloadManager;

    .prologue
    .line 36
    sput-object p0, Lorg/wlf/filedownloader/FileDownloadManager;->sInstance:Lorg/wlf/filedownloader/FileDownloadManager;

    return-object p0
.end method

.method private checkAndRecoveryExceptionStatus(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/wlf/filedownloader/DownloadFileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "downloadFileInfos":Ljava/util/List;, "Ljava/util/List<Lorg/wlf/filedownloader/DownloadFileInfo;>;"
    sget-object v3, Lorg/wlf/filedownloader/FileDownloadManager;->TAG:Ljava/lang/String;

    const-string v4, "checkAndRecoveryExceptionStatus \u5f02\u5e38\u6062\u590d\u68c0\u67e5\uff01"

    invoke-static {v3, v4}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {p1}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    :cond_0
    return-void

    .line 118
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wlf/filedownloader/DownloadFileInfo;

    .line 120
    .local v0, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    invoke-static {v0}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 124
    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->isInit()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadTaskManager()Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->isDownloading(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 132
    :cond_3
    iget-object v3, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadFileCacher:Lorg/wlf/filedownloader/DownloadCacher;

    invoke-static {v3, v0}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->recoveryExceptionStatus(Lorg/wlf/filedownloader/file_download/db_recorder/Record;Lorg/wlf/filedownloader/DownloadFileInfo;)V

    goto :goto_0
.end method

.method private checkInit()V
    .locals 3

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
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

    const-string v2, ".init(FileDownloadConfiguration) or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/wlf/filedownloader/FileDownloadManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".init(FileDownloadConfiguration) if the version is below 0.2.0 !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    return-void
.end method

.method private getDownloadDeleteManager()Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;
    .locals 4

    .prologue
    .line 224
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->checkInit()V

    .line 225
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadDeleteManager:Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;

    iget-object v1, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mConfiguration:Lorg/wlf/filedownloader/FileDownloadConfiguration;

    invoke-virtual {v1}, Lorg/wlf/filedownloader/FileDownloadConfiguration;->getFileOperationEngine()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadFileCacher:Lorg/wlf/filedownloader/DownloadCacher;

    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadTaskManager()Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;-><init>(Ljava/util/concurrent/ExecutorService;Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;Lorg/wlf/filedownloader/file_download/base/Pauseable;)V

    iput-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadDeleteManager:Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadDeleteManager:Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;

    return-object v0
.end method

.method private getDownloadMoveManager()Lorg/wlf/filedownloader/file_move/DownloadMoveManager;
    .locals 4

    .prologue
    .line 210
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->checkInit()V

    .line 211
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadMoveManager:Lorg/wlf/filedownloader/file_move/DownloadMoveManager;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;

    iget-object v1, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mConfiguration:Lorg/wlf/filedownloader/FileDownloadConfiguration;

    invoke-virtual {v1}, Lorg/wlf/filedownloader/FileDownloadConfiguration;->getFileOperationEngine()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadFileCacher:Lorg/wlf/filedownloader/DownloadCacher;

    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadTaskManager()Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;-><init>(Ljava/util/concurrent/ExecutorService;Lorg/wlf/filedownloader/file_move/DownloadFileMover;Lorg/wlf/filedownloader/file_download/base/Pauseable;)V

    iput-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadMoveManager:Lorg/wlf/filedownloader/file_move/DownloadMoveManager;

    .line 215
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadMoveManager:Lorg/wlf/filedownloader/file_move/DownloadMoveManager;

    return-object v0
.end method

.method private getDownloadRenameManager()Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;
    .locals 4

    .prologue
    .line 238
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->checkInit()V

    .line 239
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadRenameManager:Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;

    iget-object v1, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mConfiguration:Lorg/wlf/filedownloader/FileDownloadConfiguration;

    invoke-virtual {v1}, Lorg/wlf/filedownloader/FileDownloadConfiguration;->getFileOperationEngine()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadFileCacher:Lorg/wlf/filedownloader/DownloadCacher;

    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadTaskManager()Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;-><init>(Ljava/util/concurrent/ExecutorService;Lorg/wlf/filedownloader/file_rename/DownloadFileRenamer;Lorg/wlf/filedownloader/file_download/base/Pauseable;)V

    iput-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadRenameManager:Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadRenameManager:Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;

    return-object v0
.end method

.method private getDownloadTaskManager()Lorg/wlf/filedownloader/file_download/DownloadTaskManager;
    .locals 3

    .prologue
    .line 197
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->checkInit()V

    .line 198
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadTaskManager:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iget-object v1, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mConfiguration:Lorg/wlf/filedownloader/FileDownloadConfiguration;

    iget-object v2, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadFileCacher:Lorg/wlf/filedownloader/DownloadCacher;

    invoke-direct {v0, v1, v2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;-><init>(Lorg/wlf/filedownloader/FileDownloadConfiguration;Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;)V

    iput-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadTaskManager:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadTaskManager:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    return-object v0
.end method

.method static getFileDownloadConfiguration()Lorg/wlf/filedownloader/FileDownloadConfiguration;
    .locals 2

    .prologue
    .line 643
    sget-object v0, Lorg/wlf/filedownloader/FileDownloadManager;->sInstance:Lorg/wlf/filedownloader/FileDownloadManager;

    if-eqz v0, :cond_1

    .line 644
    sget-object v0, Lorg/wlf/filedownloader/FileDownloadManager;->sInstance:Lorg/wlf/filedownloader/FileDownloadManager;

    iget-object v1, v0, Lorg/wlf/filedownloader/FileDownloadManager;->mInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 645
    :try_start_0
    sget-object v0, Lorg/wlf/filedownloader/FileDownloadManager;->sInstance:Lorg/wlf/filedownloader/FileDownloadManager;

    if-eqz v0, :cond_0

    .line 646
    sget-object v0, Lorg/wlf/filedownloader/FileDownloadManager;->sInstance:Lorg/wlf/filedownloader/FileDownloadManager;

    iget-object v0, v0, Lorg/wlf/filedownloader/FileDownloadManager;->mConfiguration:Lorg/wlf/filedownloader/FileDownloadConfiguration;

    monitor-exit v1

    .line 650
    :goto_0
    return-object v0

    .line 648
    :cond_0
    monitor-exit v1

    .line 650
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/wlf/filedownloader/FileDownloadManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    sget-object v0, Lorg/wlf/filedownloader/FileDownloadManager;->sInstance:Lorg/wlf/filedownloader/FileDownloadManager;

    if-nez v0, :cond_1

    .line 98
    const-class v1, Lorg/wlf/filedownloader/FileDownloadManager;

    monitor-enter v1

    .line 99
    :try_start_0
    sget-object v0, Lorg/wlf/filedownloader/FileDownloadManager;->sInstance:Lorg/wlf/filedownloader/FileDownloadManager;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lorg/wlf/filedownloader/FileDownloadManager;

    invoke-direct {v0, p0}, Lorg/wlf/filedownloader/FileDownloadManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/wlf/filedownloader/FileDownloadManager;->sInstance:Lorg/wlf/filedownloader/FileDownloadManager;

    .line 102
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_1
    sget-object v0, Lorg/wlf/filedownloader/FileDownloadManager;->sInstance:Lorg/wlf/filedownloader/FileDownloadManager;

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public createAndStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "saveDir"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 384
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadTaskManager()Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->createAndStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 385
    return-void
.end method

.method createAndStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "saveDir"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "downloadConfiguration"    # Lorg/wlf/filedownloader/DownloadConfiguration;

    .prologue
    .line 723
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadTaskManager()Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->createAndStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 724
    return-void
.end method

.method public createAndStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "saveDir"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "onFileDownloadStatusListener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 400
    new-instance v0, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;

    invoke-direct {v0}, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;-><init>()V

    .line 401
    .local v0, "builder":Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;
    invoke-virtual {v0, p1}, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->addListenUrl(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;

    .line 402
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->configAutoRelease(Z)Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;

    .line 403
    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->build()Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v1

    invoke-virtual {p0, p4, v1}, Lorg/wlf/filedownloader/FileDownloadManager;->registerDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;Lorg/wlf/filedownloader/DownloadStatusConfiguration;)V

    .line 405
    invoke-virtual {p0, p1, p2, p3}, Lorg/wlf/filedownloader/FileDownloadManager;->createAndStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public delete(Ljava/util/List;ZLorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;)Lorg/wlf/filedownloader/base/Control;
    .locals 1
    .param p2, "deleteDownloadedFile"    # Z
    .param p3, "onDeleteDownloadFilesListener"    # Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;
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
    .line 614
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadDeleteManager()Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->delete(Ljava/util/List;ZLorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;)Lorg/wlf/filedownloader/base/Control;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "deleteDownloadedFileInPath"    # Z
    .param p3, "onDeleteDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    .prologue
    .line 601
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadDeleteManager()Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->delete(Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V

    .line 602
    return-void
.end method

.method public detect(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "onDetectBigUrlFileListener"    # Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/wlf/filedownloader/FileDownloadManager;->detect(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 367
    return-void
.end method

.method detect(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "onDetectBigUrlFileListener"    # Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;
    .param p3, "downloadConfiguration"    # Lorg/wlf/filedownloader/DownloadConfiguration;

    .prologue
    .line 705
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadTaskManager()Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->detect(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 706
    return-void
.end method

.method public detect(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "onDetectUrlFileListener"    # Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 356
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadTaskManager()Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->detect(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 357
    return-void
.end method

.method public getDownloadDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->checkInit()V

    .line 318
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mConfiguration:Lorg/wlf/filedownloader/FileDownloadConfiguration;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/FileDownloadConfiguration;->getFileDownloadDir()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 253
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadFileCacher:Lorg/wlf/filedownloader/DownloadCacher;

    invoke-virtual {v0, p1}, Lorg/wlf/filedownloader/DownloadCacher;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadFileBySavePath(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 2
    .param p1, "savePath"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadFileCacher:Lorg/wlf/filedownloader/DownloadCacher;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/wlf/filedownloader/DownloadCacher;->getDownloadFileBySavePath(Ljava/lang/String;Z)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadFileBySavePath(Ljava/lang/String;Z)Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 1
    .param p1, "savePath"    # Ljava/lang/String;
    .param p2, "includeTempFilePath"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadFileCacher:Lorg/wlf/filedownloader/DownloadCacher;

    invoke-virtual {v0, p1, p2}, Lorg/wlf/filedownloader/DownloadCacher;->getDownloadFileBySavePath(Ljava/lang/String;Z)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadFileByTempPath(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 2
    .param p1, "tempPath"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadFileCacher:Lorg/wlf/filedownloader/DownloadCacher;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/wlf/filedownloader/DownloadCacher;->getDownloadFileBySavePath(Ljava/lang/String;Z)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadFileByUrl(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadFileCacher:Lorg/wlf/filedownloader/DownloadCacher;

    invoke-virtual {v0, p1}, Lorg/wlf/filedownloader/DownloadCacher;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadFiles()Ljava/util/List;
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
    .line 308
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadFileCacher:Lorg/wlf/filedownloader/DownloadCacher;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadCacher;->getDownloadFiles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/wlf/filedownloader/FileDownloadConfiguration;)V
    .locals 2
    .param p1, "configuration"    # Lorg/wlf/filedownloader/FileDownloadConfiguration;

    .prologue
    .line 142
    iget-object v1, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    iput-object p1, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mConfiguration:Lorg/wlf/filedownloader/FileDownloadConfiguration;

    .line 144
    monitor-exit v1

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isInit()Z
    .locals 2

    .prologue
    .line 153
    iget-object v1, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mConfiguration:Lorg/wlf/filedownloader/FileDownloadConfiguration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public move(Ljava/util/List;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;)Lorg/wlf/filedownloader/base/Control;
    .locals 1
    .param p2, "newDirPath"    # Ljava/lang/String;
    .param p3, "onMoveDownloadFilesListener"    # Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;
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
    .line 587
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadMoveManager()Lorg/wlf/filedownloader/file_move/DownloadMoveManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->move(Ljava/util/List;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;)Lorg/wlf/filedownloader/base/Control;

    move-result-object v0

    return-object v0
.end method

.method public move(Ljava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "newDirPath"    # Ljava/lang/String;
    .param p3, "onMoveDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;

    .prologue
    .line 575
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadMoveManager()Lorg/wlf/filedownloader/file_move/DownloadMoveManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->move(Ljava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;)V

    .line 576
    return-void
.end method

.method public pause(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 480
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadTaskManager()Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->pause(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V

    .line 481
    return-void
.end method

.method public pause(Ljava/util/List;)V
    .locals 2
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
    .line 489
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadTaskManager()Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->pause(Ljava/util/List;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V

    .line 490
    return-void
.end method

.method public pauseAll()V
    .locals 2

    .prologue
    .line 496
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadTaskManager()Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->pauseAll(Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V

    .line 497
    return-void
.end method

.method public reStart(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 512
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadTaskManager()Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->reStart(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 513
    return-void
.end method

.method reStart(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "downloadConfiguration"    # Lorg/wlf/filedownloader/DownloadConfiguration;

    .prologue
    .line 768
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadTaskManager()Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->reStart(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 769
    return-void
.end method

.method public reStart(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "onFileDownloadStatusListener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 525
    new-instance v0, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;

    invoke-direct {v0}, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;-><init>()V

    .line 526
    .local v0, "builder":Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;
    invoke-virtual {v0, p1}, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->addListenUrl(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;

    .line 527
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->configAutoRelease(Z)Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;

    .line 528
    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->build()Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lorg/wlf/filedownloader/FileDownloadManager;->registerDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;Lorg/wlf/filedownloader/DownloadStatusConfiguration;)V

    .line 530
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/FileDownloadManager;->reStart(Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method public reStart(Ljava/util/List;)V
    .locals 2
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
    .line 544
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadTaskManager()Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->reStart(Ljava/util/List;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 545
    return-void
.end method

.method reStart(Ljava/util/List;Lorg/wlf/filedownloader/DownloadConfiguration;)V
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
    .line 783
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadTaskManager()Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->reStart(Ljava/util/List;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 785
    return-void
.end method

.method public reStart(Ljava/util/List;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 2
    .param p2, "onFileDownloadStatusListener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 557
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;

    invoke-direct {v0}, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;-><init>()V

    .line 558
    .local v0, "builder":Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;
    invoke-virtual {v0, p1}, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->addListenUrls(Ljava/util/List;)Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;

    .line 559
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->configAutoRelease(Z)Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;

    .line 560
    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->build()Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lorg/wlf/filedownloader/FileDownloadManager;->registerDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;Lorg/wlf/filedownloader/DownloadStatusConfiguration;)V

    .line 562
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/FileDownloadManager;->reStart(Ljava/util/List;)V

    .line 563
    return-void
.end method

.method registerDownloadFileChangeListener(Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;)V
    .locals 1
    .param p1, "onDownloadFileChangeListener"    # Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;
    .param p2, "downloadFileChangeConfiguration"    # Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    .prologue
    .line 679
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadFileCacher:Lorg/wlf/filedownloader/DownloadCacher;

    invoke-virtual {v0, p1, p2}, Lorg/wlf/filedownloader/DownloadCacher;->registerDownloadFileChangeListener(Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;)V

    .line 681
    return-void
.end method

.method public registerDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 1
    .param p1, "onFileDownloadStatusListener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/wlf/filedownloader/FileDownloadManager;->registerDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;Lorg/wlf/filedownloader/DownloadStatusConfiguration;)V

    .line 331
    return-void
.end method

.method registerDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;Lorg/wlf/filedownloader/DownloadStatusConfiguration;)V
    .locals 1
    .param p1, "onFileDownloadStatusListener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;
    .param p2, "downloadStatusConfiguration"    # Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    .prologue
    .line 664
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadTaskManager()Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->registerDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;Lorg/wlf/filedownloader/DownloadStatusConfiguration;)V

    .line 666
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 173
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadTaskManager()Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    move-result-object v0

    new-instance v1, Lorg/wlf/filedownloader/FileDownloadManager$1;

    invoke-direct {v1, p0}, Lorg/wlf/filedownloader/FileDownloadManager$1;-><init>(Lorg/wlf/filedownloader/FileDownloadManager;)V

    invoke-virtual {v0, v1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->release(Lorg/wlf/filedownloader/file_download/DownloadTaskManager$OnReleaseListener;)V

    .line 187
    return-void
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "newFileName"    # Ljava/lang/String;
    .param p3, "includedSuffix"    # Z
    .param p4, "onRenameDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    .prologue
    .line 630
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadRenameManager()Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->rename(Ljava/lang/String;Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V

    .line 631
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 419
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadTaskManager()Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->start(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 420
    return-void
.end method

.method start(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "downloadConfiguration"    # Lorg/wlf/filedownloader/DownloadConfiguration;

    .prologue
    .line 738
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadTaskManager()Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->start(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 739
    return-void
.end method

.method public start(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "onFileDownloadStatusListener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 432
    new-instance v0, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;

    invoke-direct {v0}, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;-><init>()V

    .line 433
    .local v0, "builder":Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;
    invoke-virtual {v0, p1}, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->addListenUrl(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;

    .line 434
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->configAutoRelease(Z)Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;

    .line 435
    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->build()Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lorg/wlf/filedownloader/FileDownloadManager;->registerDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;Lorg/wlf/filedownloader/DownloadStatusConfiguration;)V

    .line 437
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/FileDownloadManager;->start(Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public start(Ljava/util/List;)V
    .locals 2
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
    .line 451
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadTaskManager()Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->start(Ljava/util/List;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 452
    return-void
.end method

.method start(Ljava/util/List;Lorg/wlf/filedownloader/DownloadConfiguration;)V
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
    .line 753
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadTaskManager()Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->start(Ljava/util/List;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 754
    return-void
.end method

.method public start(Ljava/util/List;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 2
    .param p2, "onFileDownloadStatusListener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 464
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;

    invoke-direct {v0}, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;-><init>()V

    .line 465
    .local v0, "builder":Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;
    invoke-virtual {v0, p1}, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->addListenUrls(Ljava/util/List;)Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;

    .line 466
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->configAutoRelease(Z)Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;

    .line 467
    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->build()Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lorg/wlf/filedownloader/FileDownloadManager;->registerDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;Lorg/wlf/filedownloader/DownloadStatusConfiguration;)V

    .line 469
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/FileDownloadManager;->start(Ljava/util/List;)V

    .line 470
    return-void
.end method

.method unregisterDownloadFileChangeListener(Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;)V
    .locals 1
    .param p1, "onDownloadFileChangeListener"    # Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    .prologue
    .line 690
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadManager;->mDownloadFileCacher:Lorg/wlf/filedownloader/DownloadCacher;

    invoke-virtual {v0, p1}, Lorg/wlf/filedownloader/DownloadCacher;->unregisterDownloadFileChangeListener(Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;)V

    .line 691
    return-void
.end method

.method public unregisterDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 1
    .param p1, "onFileDownloadStatusListener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .prologue
    .line 341
    invoke-direct {p0}, Lorg/wlf/filedownloader/FileDownloadManager;->getDownloadTaskManager()Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->unregisterDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    .line 342
    return-void
.end method
