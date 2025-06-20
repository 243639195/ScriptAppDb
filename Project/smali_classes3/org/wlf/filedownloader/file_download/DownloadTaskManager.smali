.class public Lorg/wlf/filedownloader/file_download/DownloadTaskManager;
.super Ljava/lang/Object;
.source "DownloadTaskManager.java"

# interfaces
.implements Lorg/wlf/filedownloader/file_download/base/Pauseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/file_download/DownloadTaskManager$OnReleaseListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConfiguration:Lorg/wlf/filedownloader/FileDownloadConfiguration;

.field private mDetectUrlFileCacher:Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;

.field private mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

.field private mDownloadStatusObserver:Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;

.field private mDownloadTaskLock:Ljava/lang/Object;

.field private mRunningDownloadTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/wlf/filedownloader/file_download/base/DownloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/wlf/filedownloader/FileDownloadConfiguration;Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;)V
    .locals 1
    .param p1, "configuration"    # Lorg/wlf/filedownloader/FileDownloadConfiguration;
    .param p2, "downloadRecorder"    # Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mRunningDownloadTaskMap:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mDownloadTaskLock:Ljava/lang/Object;

    .line 84
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mConfiguration:Lorg/wlf/filedownloader/FileDownloadConfiguration;

    .line 85
    iput-object p2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    .line 88
    new-instance v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;

    invoke-direct {v0}, Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mDetectUrlFileCacher:Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;

    .line 90
    new-instance v0, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;

    invoke-direct {v0}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mDownloadStatusObserver:Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Lorg/wlf/filedownloader/file_download/DownloadTaskManager$OnReleaseListener;)V
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/DownloadTaskManager;
    .param p1, "x1"    # Lorg/wlf/filedownloader/file_download/DownloadTaskManager$OnReleaseListener;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->notifyReleased(Lorg/wlf/filedownloader/file_download/DownloadTaskManager$OnReleaseListener;)V

    return-void
.end method

.method static synthetic access$100(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mDownloadTaskLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;)Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;ZLorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/DownloadTaskManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lorg/wlf/filedownloader/DownloadConfiguration;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->reStartInternal(Ljava/lang/String;ZLorg/wlf/filedownloader/DownloadConfiguration;)V

    return-void
.end method

.method static synthetic access$200(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mRunningDownloadTaskMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Z)Z
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/DownloadTaskManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    .param p3, "x3"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->notifyDownloadStatusFailedInternal(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Z)Z
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/DownloadTaskManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    .param p3, "x3"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->notifyDownloadStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/DownloadTaskManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/DownloadTaskManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p3, "x3"    # Lorg/wlf/filedownloader/DownloadConfiguration;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->startInternal(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    return-void
.end method

.method static synthetic access$800(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/DownloadTaskManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->notifyStopDownloadTaskSucceed(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V

    return-void
.end method

.method static synthetic access$900(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/DownloadTaskManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;
    .param p3, "x3"    # Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->notifyStopDownloadTaskFailed(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V

    return-void
.end method

.method private addAndRunDetectUrlFileTask(Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "forceDetect"    # Z
    .param p3, "onDetectBigUrlFileListener"    # Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;
    .param p4, "downloadConfiguration"    # Lorg/wlf/filedownloader/DownloadConfiguration;

    .prologue
    .line 238
    const/4 v1, 0x0

    .line 241
    .local v1, "failReason":Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;
    invoke-static {p1}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    new-instance v1, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;

    .end local v1    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;
    const-string v2, "url illegal !"

    sget-object v3, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;->TYPE_URL_ILLEGAL:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .restart local v1    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;
    :cond_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mConfiguration:Lorg/wlf/filedownloader/FileDownloadConfiguration;

    invoke-virtual {v2}, Lorg/wlf/filedownloader/FileDownloadConfiguration;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/wlf/filedownloader/util/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 248
    new-instance v1, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;

    .end local v1    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;
    const-string v2, "network not available !"

    sget-object v3, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;->TYPE_NETWORK_DENIED:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .restart local v1    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;
    :cond_1
    if-eqz v1, :cond_2

    .line 256
    invoke-direct {p0, p1, v1, p3}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->notifyDetectUrlFileFailed(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;)V

    .line 281
    :goto_0
    return-void

    .line 263
    :cond_2
    new-instance v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mConfiguration:Lorg/wlf/filedownloader/FileDownloadConfiguration;

    invoke-virtual {v2}, Lorg/wlf/filedownloader/FileDownloadConfiguration;->getFileDownloadDir()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mDetectUrlFileCacher:Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;

    iget-object v4, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    invoke-direct {v0, p1, v2, v3, v4}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;)V

    .line 265
    .local v0, "detectUrlFileTask":Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;
    invoke-virtual {v0, p3}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->setOnDetectBigUrlFileListener(Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;)V

    .line 267
    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mConfiguration:Lorg/wlf/filedownloader/FileDownloadConfiguration;

    invoke-virtual {v2}, Lorg/wlf/filedownloader/FileDownloadConfiguration;->getFileOperationEngine()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->setCloseConnectionEngine(Ljava/util/concurrent/ExecutorService;)V

    .line 268
    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mConfiguration:Lorg/wlf/filedownloader/FileDownloadConfiguration;

    invoke-virtual {v2}, Lorg/wlf/filedownloader/FileDownloadConfiguration;->getConnectTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->setConnectTimeout(I)V

    .line 269
    if-eqz p4, :cond_3

    .line 270
    invoke-virtual {p4, p1}, Lorg/wlf/filedownloader/DownloadConfiguration;->getRequestMethod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->setRequestMethod(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p4, p1}, Lorg/wlf/filedownloader/DownloadConfiguration;->getHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->setHeaders(Ljava/util/Map;)V

    .line 274
    :cond_3
    if-eqz p2, :cond_4

    .line 276
    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->enableForceDetect()V

    .line 280
    :cond_4
    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mConfiguration:Lorg/wlf/filedownloader/FileDownloadConfiguration;

    invoke-virtual {v2}, Lorg/wlf/filedownloader/FileDownloadConfiguration;->getFileDetectEngine()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private addAndRunDownloadTask(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 18
    .param p1, "callerUrl"    # Ljava/lang/String;
    .param p2, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p3, "downloadConfiguration"    # Lorg/wlf/filedownloader/DownloadConfiguration;

    .prologue
    .line 289
    const/4 v4, 0x0

    .line 292
    .local v4, "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    invoke-static/range {p1 .. p1}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 293
    new-instance v4, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    const-string v13, "url illegal !"

    sget-object v14, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_URL_ILLEGAL:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v13, v14}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    :cond_0
    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mConfiguration:Lorg/wlf/filedownloader/FileDownloadConfiguration;

    invoke-virtual {v13}, Lorg/wlf/filedownloader/FileDownloadConfiguration;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lorg/wlf/filedownloader/util/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 299
    new-instance v4, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    const-string v13, "network not available !"

    sget-object v14, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_NETWORK_DENIED:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v13, v14}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    :cond_1
    if-nez v4, :cond_4

    .line 305
    invoke-static/range {p2 .. p2}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 306
    new-instance v4, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    const-string v13, "the download file does not exist or illegal !"

    sget-object v14, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_DOWNLOAD_FILE_ERROR:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v13, v14}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    :cond_2
    if-nez v4, :cond_4

    .line 310
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual/range {p2 .. p2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-direct/range {p0 .. p1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/wlf/filedownloader/DownloadFileInfo;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 312
    :cond_3
    new-instance v4, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    const-string v13, "the download file does not exist or illegal !"

    sget-object v14, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_DOWNLOAD_FILE_ERROR:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v13, v14}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    :cond_4
    if-nez v4, :cond_5

    invoke-virtual/range {p2 .. p2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileSizeLong()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-lez v13, :cond_5

    .line 320
    new-instance v4, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    const-string v13, "download size illegal, please delete or re-download !"

    sget-object v14, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_DOWNLOAD_FILE_ERROR:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v13, v14}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    :cond_5
    if-eqz v4, :cond_7

    .line 327
    if-eqz p2, :cond_6

    const/4 v13, 0x1

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v13}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->notifyDownloadStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Z)Z

    .line 411
    :goto_1
    return-void

    .line 327
    :cond_6
    const/4 v13, 0x0

    goto :goto_0

    .line 331
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mDownloadTaskLock:Ljava/lang/Object;

    monitor-enter v14

    .line 333
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mRunningDownloadTaskMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/wlf/filedownloader/file_download/base/DownloadTask;

    .line 334
    .local v11, "taskInMap":Lorg/wlf/filedownloader/file_download/base/DownloadTask;
    if-eqz v11, :cond_8

    .line 336
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v12

    .line 337
    .local v12, "threads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    sget-object v13, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mRunningDownloadTaskMap\uff0c\u5ffd\u75651\uff1a"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\uff0cold task\uff1a"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\uff0c\u7ebf\u7a0b\u6570\uff1a"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    monitor-exit v14

    goto :goto_1

    .line 341
    .end local v11    # "taskInMap":Lorg/wlf/filedownloader/file_download/base/DownloadTask;
    .end local v12    # "threads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .restart local v11    # "taskInMap":Lorg/wlf/filedownloader/file_download/base/DownloadTask;
    :cond_8
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mConfiguration:Lorg/wlf/filedownloader/FileDownloadConfiguration;

    invoke-virtual {v13}, Lorg/wlf/filedownloader/FileDownloadConfiguration;->getRetryDownloadTimes()I

    move-result v10

    .line 345
    .local v10, "retryDownloadTimes":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mConfiguration:Lorg/wlf/filedownloader/FileDownloadConfiguration;

    invoke-virtual {v13}, Lorg/wlf/filedownloader/FileDownloadConfiguration;->getConnectTimeout()I

    move-result v2

    .line 346
    .local v2, "connectTimeout":I
    const-string v9, "GET"

    .line 347
    .local v9, "requestMethod":Ljava/lang/String;
    const/4 v5, 0x0

    .line 349
    .local v5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_d

    .line 350
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/wlf/filedownloader/DownloadConfiguration;->getRetryDownloadTimes(Ljava/lang/String;)I

    move-result v8

    .line 351
    .local v8, "localRetryDownloadTimes":I
    if-eqz v8, :cond_9

    .line 352
    move v10, v8

    .line 354
    :cond_9
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/wlf/filedownloader/DownloadConfiguration;->getConnectTimeout(Ljava/lang/String;)I

    move-result v6

    .line 355
    .local v6, "localConnectTimeout":I
    const/16 v13, 0x3a98

    if-eq v6, v13, :cond_a

    .line 356
    move v2, v6

    .line 358
    :cond_a
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/wlf/filedownloader/DownloadConfiguration;->getRequestMethod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 359
    .local v7, "localRequestMethod":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 360
    const-string v7, "GET"

    .line 362
    :cond_b
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_c

    .line 363
    move-object v9, v7

    .line 365
    :cond_c
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/wlf/filedownloader/DownloadConfiguration;->getHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 369
    .end local v6    # "localConnectTimeout":I
    .end local v7    # "localRequestMethod":Ljava/lang/String;
    .end local v8    # "localRetryDownloadTimes":I
    :cond_d
    new-instance v3, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;

    move-object/from16 v0, p2

    invoke-static {v0, v9, v5}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->createByDownloadFile(Lorg/wlf/filedownloader/DownloadFileInfo;Ljava/lang/String;Ljava/util/Map;)Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mDownloadStatusObserver:Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;

    invoke-direct {v3, v13, v14, v15}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;-><init>(Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    .line 372
    .local v3, "downloadTask":Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mConfiguration:Lorg/wlf/filedownloader/FileDownloadConfiguration;

    invoke-virtual {v13}, Lorg/wlf/filedownloader/FileDownloadConfiguration;->getFileOperationEngine()Ljava/util/concurrent/ExecutorService;

    move-result-object v13

    invoke-virtual {v3, v13}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->setCloseConnectionEngine(Ljava/util/concurrent/ExecutorService;)V

    .line 374
    invoke-virtual {v3, v10}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->setRetryDownloadTimes(I)V

    .line 375
    invoke-virtual {v3, v2}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->setConnectTimeout(I)V

    .line 376
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v3}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$2;-><init>(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;)V

    invoke-virtual {v3, v13}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->setOnTaskRunFinishListener(Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mDownloadTaskLock:Ljava/lang/Object;

    monitor-enter v14

    .line 393
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mRunningDownloadTaskMap:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "taskInMap":Lorg/wlf/filedownloader/file_download/base/DownloadTask;
    check-cast v11, Lorg/wlf/filedownloader/file_download/base/DownloadTask;

    .line 394
    .restart local v11    # "taskInMap":Lorg/wlf/filedownloader/file_download/base/DownloadTask;
    if-eqz v11, :cond_e

    .line 396
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v12

    .line 397
    .restart local v12    # "threads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    sget-object v13, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mRunningDownloadTaskMap\uff0c\u5ffd\u75652\uff1a"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\uff0cold task\uff1a"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\uff0c\u7ebf\u7a0b\u6570\uff1a"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    monitor-exit v14

    goto/16 :goto_1

    .line 408
    .end local v11    # "taskInMap":Lorg/wlf/filedownloader/file_download/base/DownloadTask;
    .end local v12    # "threads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    :catchall_1
    move-exception v13

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v13

    .line 403
    .restart local v11    # "taskInMap":Lorg/wlf/filedownloader/file_download/base/DownloadTask;
    :cond_e
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mRunningDownloadTaskMap:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v12

    .line 406
    .restart local v12    # "threads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    sget-object v13, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mRunningDownloadTaskMap\uff0c--\u589e\u52a0--\uff1a"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\uff0ctask\uff1a"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\uff0c\u7ebf\u7a0b\u6570\uff1a"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 410
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mConfiguration:Lorg/wlf/filedownloader/FileDownloadConfiguration;

    invoke-virtual {v13}, Lorg/wlf/filedownloader/FileDownloadConfiguration;->getFileDownloadEngine()Ljava/util/concurrent/ExecutorService;

    move-result-object v13

    invoke-interface {v13, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method

.method private checkFileName(Ljava/lang/String;)I
    .locals 1
    .param p1, "fileNamePath"    # Ljava/lang/String;

    .prologue
    .line 621
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->checkFileNameInternal(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private checkFileNameInternal(Ljava/lang/String;I)I
    .locals 7
    .param p1, "fileNamePath"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 625
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-lez p2, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, "checkFileNamePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 627
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    invoke-interface {v5}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->getDownloadFiles()Ljava/util/List;

    move-result-object v1

    .line 628
    .local v1, "downloadFileInfos":Ljava/util/List;, "Ljava/util/List<Lorg/wlf/filedownloader/DownloadFileInfo;>;"
    invoke-static {v1}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 629
    const/4 v4, 0x0

    .line 630
    .local v4, "isFindSame":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/wlf/filedownloader/DownloadFileInfo;

    .line 631
    .local v3, "info":Lorg/wlf/filedownloader/DownloadFileInfo;
    if-eqz v3, :cond_0

    .line 634
    invoke-virtual {v3}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 636
    const/4 v4, 0x1

    .line 641
    .end local v3    # "info":Lorg/wlf/filedownloader/DownloadFileInfo;
    :cond_1
    if-eqz v4, :cond_3

    .line 643
    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->checkFileNameInternal(Ljava/lang/String;I)I

    move-result v5

    .line 649
    .end local v1    # "downloadFileInfos":Ljava/util/List;, "Ljava/util/List<Lorg/wlf/filedownloader/DownloadFileInfo;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "isFindSame":Z
    :goto_1
    return v5

    .line 625
    .end local v0    # "checkFileNamePath":Ljava/lang/String;
    :cond_2
    const-string v5, ""

    goto :goto_0

    .restart local v0    # "checkFileNamePath":Ljava/lang/String;
    .restart local v1    # "downloadFileInfos":Ljava/util/List;, "Ljava/util/List<Lorg/wlf/filedownloader/DownloadFileInfo;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "isFindSame":Z
    :cond_3
    move v5, p2

    .line 645
    goto :goto_1

    .end local v1    # "downloadFileInfos":Ljava/util/List;, "Ljava/util/List<Lorg/wlf/filedownloader/DownloadFileInfo;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "isFindSame":Z
    :cond_4
    move v5, p2

    .line 649
    goto :goto_1
.end method

.method private createAndStartByDetectUrlFile(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 4
    .param p1, "callerUrl"    # Ljava/lang/String;
    .param p2, "detectUrlFileInfo"    # Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    .param p3, "downloadConfiguration"    # Lorg/wlf/filedownloader/DownloadConfiguration;

    .prologue
    .line 658
    const/4 v1, 0x0

    .line 661
    .local v1, "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    invoke-static {p2}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 662
    new-instance v1, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    .end local v1    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    const-string v2, "detect file does not exist, please use detect(String,OnDetectBigUrlFileListener) first !"

    sget-object v3, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_FILE_NOT_DETECT:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    .restart local v1    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    if-nez v1, :cond_1

    .line 666
    invoke-static {p1}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 667
    :cond_0
    new-instance v1, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    .end local v1    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    const-string v2, "detect file does not exist, please use detect(String,OnDetectBigUrlFileListener) first !"

    sget-object v3, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_FILE_NOT_DETECT:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    .restart local v1    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    :cond_1
    if-eqz v1, :cond_3

    .line 677
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, v2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->notifyDownloadStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Z)Z

    .line 692
    :goto_1
    return-void

    .line 677
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 682
    :cond_3
    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    invoke-interface {v2, p2}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->createDownloadFileInfo(Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    .line 685
    .local v0, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    invoke-static {v0}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 687
    invoke-virtual {p2}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->removeDetectUrlFile(Ljava/lang/String;)V

    .line 691
    :cond_4
    invoke-direct {p0, p1, v0, p3}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->startInternal(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    goto :goto_1
.end method

.method private detectInternal(Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "forceDetect"    # Z
    .param p3, "onDetectBigUrlFileListener"    # Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;
    .param p4, "downloadConfiguration"    # Lorg/wlf/filedownloader/DownloadConfiguration;

    .prologue
    .line 526
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->addAndRunDetectUrlFileTask(Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 527
    return-void
.end method

.method private getDetectUrlFile(Ljava/lang/String;)Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mDetectUrlFileCacher:Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;

    invoke-virtual {v0, p1}, Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;->getDetectUrlFile(Ljava/lang/String;)Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;

    move-result-object v0

    return-object v0
.end method

.method private getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    invoke-interface {v0, p1}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    return-object v0
.end method

.method private getRunningDownloadTask(Ljava/lang/String;)Lorg/wlf/filedownloader/file_download/base/DownloadTask;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->getRunningDownloadTask(Ljava/lang/String;Z)Lorg/wlf/filedownloader/file_download/base/DownloadTask;

    move-result-object v0

    return-object v0
.end method

.method private getRunningDownloadTask(Ljava/lang/String;Z)Lorg/wlf/filedownloader/file_download/base/DownloadTask;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "includeStopped"    # Z

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    .line 182
    .local v0, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    invoke-static {v0}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 183
    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mRunningDownloadTaskMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wlf/filedownloader/file_download/base/DownloadTask;

    move-object v1, v2

    .line 200
    :cond_0
    :goto_0
    return-object v1

    .line 187
    :cond_1
    invoke-static {v0}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isDownloadingStatus(Lorg/wlf/filedownloader/DownloadFileInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 189
    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mRunningDownloadTaskMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wlf/filedownloader/file_download/base/DownloadTask;

    .line 190
    .local v1, "task":Lorg/wlf/filedownloader/file_download/base/DownloadTask;
    if-eqz v1, :cond_2

    .line 191
    if-nez p2, :cond_0

    .line 192
    invoke-interface {v1}, Lorg/wlf/filedownloader/file_download/base/DownloadTask;->isStopped()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    .end local v1    # "task":Lorg/wlf/filedownloader/file_download/base/DownloadTask;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyDetectUrlFileFailed(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "failReason"    # Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;
    .param p3, "onDetectBigUrlFileListener"    # Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

    .prologue
    .line 421
    sget-object v0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u63a2\u6d4b\u6587\u4ef6\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-static {p1, p2, p3}, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper;->onDetectUrlFileFailed(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;)V

    .line 425
    return-void
.end method

.method private notifyDownloadStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Z)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "failReason"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    .param p3, "recordStatus"    # Z

    .prologue
    .line 432
    move-object v0, p1

    .line 434
    .local v0, "finalUrl":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->isDownloading(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    new-instance v1, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$3;

    invoke-direct {v1, p0, v0, p2, p3}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$3;-><init>(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Z)V

    invoke-virtual {p0, p1, v1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->pause(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V

    .line 451
    const/4 v1, 0x1

    .line 454
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->notifyDownloadStatusFailedInternal(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Z)Z

    move-result v1

    goto :goto_0
.end method

.method private notifyDownloadStatusFailedInternal(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Z)Z
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "failReason"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    .param p3, "recordStatus"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 463
    if-eqz p3, :cond_0

    .line 466
    :try_start_0
    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, p1, v4, v5}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->recordStatus(Ljava/lang/String;II)V

    .line 468
    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mDownloadStatusObserver:Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;

    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v4

    invoke-virtual {v3, p1, v4, p2}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->onFileDownloadStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_0
    return v1

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 472
    goto :goto_0

    .line 476
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mDownloadStatusObserver:Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;

    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v3

    invoke-virtual {v2, p1, v3, p2}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->onFileDownloadStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    goto :goto_0
.end method

.method private notifyReleased(Lorg/wlf/filedownloader/file_download/DownloadTaskManager$OnReleaseListener;)V
    .locals 1
    .param p1, "onReleaseListener"    # Lorg/wlf/filedownloader/file_download/DownloadTaskManager$OnReleaseListener;

    .prologue
    .line 508
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mDetectUrlFileCacher:Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;->release()V

    .line 510
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mDownloadStatusObserver:Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->release()V

    .line 513
    if-eqz p1, :cond_0

    .line 514
    invoke-interface {p1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$OnReleaseListener;->onReleased()V

    .line 516
    :cond_0
    return-void
.end method

.method private notifyStopDownloadTaskFailed(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "failReason"    # Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;
    .param p3, "onStopFileDownloadTaskListener"    # Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    .prologue
    .line 498
    if-eqz p3, :cond_0

    .line 499
    invoke-interface {p3, p1, p2}, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;->onStopFileDownloadTaskFailed(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;)V

    .line 501
    :cond_0
    return-void
.end method

.method private notifyStopDownloadTaskSucceed(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "onStopFileDownloadTaskListener"    # Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    .prologue
    .line 487
    if-eqz p2, :cond_0

    .line 488
    invoke-interface {p2, p1}, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;->onStopFileDownloadTaskSucceed(Ljava/lang/String;)V

    .line 490
    :cond_0
    return-void
.end method

.method private pauseInternal(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "onStopFileDownloadTaskListener"    # Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    .prologue
    .line 780
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->getRunningDownloadTask(Ljava/lang/String;)Lorg/wlf/filedownloader/file_download/base/DownloadTask;

    move-result-object v1

    .line 782
    .local v1, "downloadTask":Lorg/wlf/filedownloader/file_download/base/DownloadTask;
    sget-object v6, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pauseInternal fileDownloadTask\u662f\u5426\u5df2\u7ecf\u505c\u6b62\uff1a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/wlf/filedownloader/file_download/base/DownloadTask;->isStopped()Z

    move-result v5

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ",url\uff1a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    move-object v4, p1

    .line 788
    .local v4, "finalUrl":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/wlf/filedownloader/file_download/base/DownloadTask;->isStopped()Z

    move-result v5

    if-nez v5, :cond_1

    .line 790
    new-instance v5, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$6;

    invoke-direct {v5, p0, v4, p2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$6;-><init>(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V

    invoke-interface {v1, v5}, Lorg/wlf/filedownloader/file_download/base/DownloadTask;->setOnStopFileDownloadTaskListener(Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V

    .line 810
    invoke-interface {v1}, Lorg/wlf/filedownloader/file_download/base/DownloadTask;->stop()V

    .line 830
    :goto_1
    return-void

    .line 782
    .end local v4    # "finalUrl":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    .line 812
    .restart local v4    # "finalUrl":Ljava/lang/String;
    :cond_1
    new-instance v3, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;

    const-string v5, "the download task has been paused !"

    sget-object v6, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;->TYPE_TASK_HAS_BEEN_STOPPED:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    .local v3, "failReason":Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;
    sget-object v5, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pauseInternal \u4efb\u52a1\u5df2\u7ecf\u88ab\u6682\u505c\uff0curl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",failReason:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    .line 819
    .local v0, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    invoke-static {v0}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isDownloadingStatus(Lorg/wlf/filedownloader/DownloadFileInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 821
    :try_start_0
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-interface {v5, p1, v6, v7}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->recordStatus(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :cond_2
    :goto_2
    invoke-direct {p0, p1, v3, p2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->notifyStopDownloadTaskFailed(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V

    goto :goto_1

    .line 822
    :catch_0
    move-exception v2

    .line 823
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private reStartInternal(Ljava/lang/String;ZLorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isDelete"    # Z
    .param p3, "downloadConfiguration"    # Lorg/wlf/filedownloader/DownloadConfiguration;

    .prologue
    const/4 v9, 0x1

    .line 875
    invoke-static {p1}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 876
    new-instance v8, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    const-string v0, "url illegal !"

    sget-object v1, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_URL_ILLEGAL:Ljava/lang/String;

    invoke-direct {v8, p1, v0, v1}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    .local v8, "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v9

    :goto_0
    invoke-direct {p0, p1, v8, v0}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->notifyDownloadStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Z)Z

    .line 937
    .end local v8    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    :goto_1
    return-void

    .line 879
    .restart local v8    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 884
    .end local v8    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    :cond_1
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v7

    .line 885
    .local v7, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    invoke-static {v7}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 887
    move-object v2, p1

    .line 888
    .local v2, "finalUrl":Ljava/lang/String;
    invoke-virtual {v7}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v5

    .line 889
    .local v5, "oldFileName":Ljava/lang/String;
    invoke-virtual {v7}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileDir()Ljava/lang/String;

    move-result-object v4

    .line 892
    .local v4, "oldFileDir":Ljava/lang/String;
    new-instance v0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;

    move-object v1, p0

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$7;-><init>(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    invoke-direct {p0, p1, v9, v0, p3}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->detectInternal(Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    goto :goto_1

    .line 935
    .end local v2    # "finalUrl":Ljava/lang/String;
    .end local v4    # "oldFileDir":Ljava/lang/String;
    .end local v5    # "oldFileName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1, p3}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->start(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    goto :goto_1
.end method

.method private removeDetectUrlFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1005
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mDetectUrlFileCacher:Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;

    invoke-virtual {v0, p1}, Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;->removeDetectUrlFile(Ljava/lang/String;)V

    .line 1006
    return-void
.end method

.method private startInternal(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 0
    .param p1, "callerUrl"    # Ljava/lang/String;
    .param p2, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p3, "downloadConfiguration"    # Lorg/wlf/filedownloader/DownloadConfiguration;

    .prologue
    .line 700
    invoke-direct {p0, p1, p2, p3}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->addAndRunDownloadTask(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 701
    return-void
.end method


# virtual methods
.method public createAndStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "saveDir"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "downloadConfiguration"    # Lorg/wlf/filedownloader/DownloadConfiguration;

    .prologue
    .line 600
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->getDetectUrlFile(Ljava/lang/String;)Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;

    move-result-object v0

    .line 601
    .local v0, "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    if-eqz v0, :cond_2

    .line 602
    invoke-static {p2}, Lorg/wlf/filedownloader/util/FileUtil;->isFilePath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 603
    invoke-virtual {v0, p2}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->setFileDir(Ljava/lang/String;)V

    .line 605
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 606
    invoke-virtual {v0, p3}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->setFileName(Ljava/lang/String;)V

    .line 609
    :cond_1
    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->checkFileName(Ljava/lang/String;)I

    move-result v1

    .line 610
    .local v1, "index":I
    if-lez v1, :cond_2

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->setFileName(Ljava/lang/String;)V

    .line 617
    .end local v1    # "index":I
    :cond_2
    invoke-direct {p0, p1, v0, p4}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->createAndStartByDetectUrlFile(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 618
    return-void
.end method

.method public detect(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "onDetectBigUrlFileListener"    # Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;
    .param p3, "downloadConfiguration"    # Lorg/wlf/filedownloader/DownloadConfiguration;

    .prologue
    .line 579
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->detectInternal(Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 580
    return-void
.end method

.method public detect(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "onDetectUrlFileListener"    # Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener;
    .param p3, "downloadConfiguration"    # Lorg/wlf/filedownloader/DownloadConfiguration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 541
    move-object v0, p1

    .line 542
    .local v0, "finalUrl":Ljava/lang/String;
    new-instance v1, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$4;

    invoke-direct {v1, p0, p2, v0}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$4;-><init>(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, p3}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->detect(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 568
    return-void
.end method

.method public isDownloading(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 836
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->getRunningDownloadTask(Ljava/lang/String;)Lorg/wlf/filedownloader/file_download/base/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "onStopFileDownloadTaskListener"    # Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    .prologue
    .line 841
    invoke-direct {p0, p1, p2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->pauseInternal(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V

    .line 842
    return-void
.end method

.method public pause(Ljava/util/List;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V
    .locals 3
    .param p2, "onStopFileDownloadTaskListener"    # Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 851
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 852
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->pause(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V

    goto :goto_0

    .line 854
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public pauseAll(Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V
    .locals 2
    .param p1, "onStopFileDownloadTaskListener"    # Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    .prologue
    .line 862
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mRunningDownloadTaskMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 863
    .local v0, "urls":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v1, p1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->pause(Ljava/util/List;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V

    .line 864
    return-void
.end method

.method public reStart(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "downloadConfiguration"    # Lorg/wlf/filedownloader/DownloadConfiguration;

    .prologue
    .line 951
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->isDownloading(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 952
    move-object v0, p1

    .line 954
    .local v0, "finalUrl":Ljava/lang/String;
    new-instance v1, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$8;

    invoke-direct {v1, p0, v0, p2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$8;-><init>(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    invoke-virtual {p0, p1, v1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->pause(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V

    .line 980
    .end local v0    # "finalUrl":Ljava/lang/String;
    :goto_0
    return-void

    .line 978
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, p2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->reStartInternal(Ljava/lang/String;ZLorg/wlf/filedownloader/DownloadConfiguration;)V

    goto :goto_0
.end method

.method public reStart(Ljava/util/List;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 3
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
    .line 993
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 994
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->reStart(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    goto :goto_0

    .line 996
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public registerDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;Lorg/wlf/filedownloader/DownloadStatusConfiguration;)V
    .locals 1
    .param p1, "onFileDownloadStatusListener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;
    .param p2, "downloadStatusConfiguration"    # Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    .prologue
    .line 213
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mDownloadStatusObserver:Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;

    invoke-virtual {v0, p1, p2}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->addOnFileDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;Lorg/wlf/filedownloader/DownloadStatusConfiguration;)V

    .line 215
    return-void
.end method

.method public release(Lorg/wlf/filedownloader/file_download/DownloadTaskManager$OnReleaseListener;)V
    .locals 3
    .param p1, "onReleaseListener"    # Lorg/wlf/filedownloader/file_download/DownloadTaskManager$OnReleaseListener;

    .prologue
    .line 100
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mRunningDownloadTaskMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 103
    .local v0, "runningUrls":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$1;

    invoke-direct {v2, p0, v0, p1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$1;-><init>(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/util/Set;Lorg/wlf/filedownloader/file_download/DownloadTaskManager$OnReleaseListener;)V

    invoke-virtual {p0, v1, v2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->pause(Ljava/util/List;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V

    .line 135
    return-void
.end method

.method public start(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "downloadConfiguration"    # Lorg/wlf/filedownloader/DownloadConfiguration;

    .prologue
    .line 714
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v1

    .line 716
    .local v1, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    if-eqz v1, :cond_0

    .line 718
    invoke-direct {p0, p1, v1, p2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->startInternal(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    .line 754
    :goto_0
    return-void

    .line 722
    :cond_0
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->getDetectUrlFile(Ljava/lang/String;)Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;

    move-result-object v0

    .line 724
    .local v0, "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    if-eqz v0, :cond_1

    .line 726
    invoke-direct {p0, p1, v0, p2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->createAndStartByDetectUrlFile(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    goto :goto_0

    .line 730
    :cond_1
    move-object v2, p1

    .line 732
    .local v2, "finalUrl":Ljava/lang/String;
    new-instance v3, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$5;

    invoke-direct {v3, p0, v2, p2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$5;-><init>(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    invoke-virtual {p0, v2, v3, p2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->detect(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    goto :goto_0
.end method

.method public start(Ljava/util/List;Lorg/wlf/filedownloader/DownloadConfiguration;)V
    .locals 3
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
    .line 767
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 768
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->start(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadConfiguration;)V

    goto :goto_0

    .line 770
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public unregisterDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 1
    .param p1, "onFileDownloadStatusListener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .prologue
    .line 225
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->mDownloadStatusObserver:Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;

    invoke-virtual {v0, p1}, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;->removeOnFileDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    .line 226
    return-void
.end method
