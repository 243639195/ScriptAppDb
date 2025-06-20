.class Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;
.super Ljava/lang/Object;
.source "MoveDownloadFilesTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/wlf/filedownloader/base/Stoppable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$OnMoveSingleDownloadFileListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDownloadFileMover:Lorg/wlf/filedownloader/file_move/DownloadFileMover;

.field private final mDownloadFilesMoved:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/wlf/filedownloader/DownloadFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadFilesNeedMove:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/wlf/filedownloader/DownloadFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadFilesSkip:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/wlf/filedownloader/DownloadFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadTaskPauseable:Lorg/wlf/filedownloader/file_download/base/Pauseable;

.field private mIsNotifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsStop:Z

.field private mLock:Ljava/lang/Object;

.field private mNewDirPath:Ljava/lang/String;

.field private mOldFileDir:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnMoveDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;

.field private mTaskEngine:Ljava/util/concurrent/ExecutorService;

.field private mUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;Lorg/wlf/filedownloader/file_move/DownloadFileMover;Lorg/wlf/filedownloader/file_download/base/Pauseable;)V
    .locals 2
    .param p2, "newDirPath"    # Ljava/lang/String;
    .param p3, "taskEngine"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "downloadFileMover"    # Lorg/wlf/filedownloader/file_move/DownloadFileMover;
    .param p5, "downloadTaskPauseable"    # Lorg/wlf/filedownloader/file_download/base/Pauseable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lorg/wlf/filedownloader/file_move/DownloadFileMover;",
            "Lorg/wlf/filedownloader/file_download/base/Pauseable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mOldFileDir:Ljava/util/Map;

    .line 44
    iput-boolean v1, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mIsStop:Z

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mIsNotifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesNeedMove:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesMoved:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesSkip:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mUrls:Ljava/util/List;

    .line 57
    iput-object p2, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mNewDirPath:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mTaskEngine:Ljava/util/concurrent/ExecutorService;

    .line 59
    iput-object p4, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFileMover:Lorg/wlf/filedownloader/file_move/DownloadFileMover;

    .line 60
    iput-object p5, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadTaskPauseable:Lorg/wlf/filedownloader/file_download/base/Pauseable;

    .line 61
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;)V
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->notifyMoveDownloadFilesCompleted()V

    return-void
.end method

.method static synthetic access$300(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;
    .param p3, "x3"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->runSingleMoveTask(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;Z)V

    return-void
.end method

.method static synthetic access$400(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    .prologue
    .line 27
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    .prologue
    .line 27
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesSkip:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;
    .param p1, "x1"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->notifyMovingDownloadFiles(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    return-void
.end method

.method static synthetic access$800(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    .prologue
    .line 27
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesMoved:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    .prologue
    .line 27
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesNeedMove:Ljava/util/List;

    return-object v0
.end method

.method private checkRollback()V
    .locals 7

    .prologue
    .line 363
    iget-object v5, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesSkip:Ljava/util/List;

    invoke-static {v5}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 391
    :cond_0
    return-void

    .line 367
    :cond_1
    iget-object v5, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesSkip:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wlf/filedownloader/DownloadFileInfo;

    .line 368
    .local v0, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    if-eqz v0, :cond_2

    .line 372
    iget-object v5, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mOldFileDir:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 373
    .local v4, "oldDirPath":Ljava/lang/String;
    invoke-static {v4}, Lorg/wlf/filedownloader/util/FileUtil;->isFilePath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileDir()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 379
    :try_start_0
    iget-object v5, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFileMover:Lorg/wlf/filedownloader/file_move/DownloadFileMover;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lorg/wlf/filedownloader/file_move/DownloadFileMover;->moveDownloadFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v1

    .line 381
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 384
    :try_start_1
    iget-object v5, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFileMover:Lorg/wlf/filedownloader/file_move/DownloadFileMover;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lorg/wlf/filedownloader/file_move/DownloadFileMover;->moveDownloadFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 385
    :catch_1
    move-exception v2

    .line 386
    .local v2, "e1":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFileMover:Lorg/wlf/filedownloader/file_move/DownloadFileMover;

    invoke-interface {v0, p1}, Lorg/wlf/filedownloader/file_move/DownloadFileMover;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    return-object v0
.end method

.method private notifyMoveDownloadFilesCompleted()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 338
    iget-object v3, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mIsNotifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v3, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mIsNotifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 344
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->checkRollback()V

    .line 346
    iget-object v3, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesNeedMove:Ljava/util/List;

    iget-object v4, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesMoved:Ljava/util/List;

    iget-object v5, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mOnMoveDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;

    invoke-static {v3, v4, v5}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener$MainThreadHelper;->onMoveDownloadFilesCompleted(Ljava/util/List;Ljava/util/List;Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;)V

    .line 349
    iput-boolean v1, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mIsStop:Z

    .line 351
    iget-object v3, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesNeedMove:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesMoved:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int v0, v3, v4

    .line 353
    .local v0, "failedSize":I
    sget-object v3, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".run\uff0c\u6279\u91cf\u79fb\u52a8\u6587\u4ef6\u4e3b\u4efb\u52a1\u548c\u5176\u5b83\u76f8\u5173\u4efb\u52a1\u5168\u90e8\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u603b\u5171\u9700\u8981\u79fb\u52a8\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesNeedMove:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff0c\u5df2\u79fb\u52a8\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesMoved:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff0c\u5931\u8d25\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff0c\u8df3\u8fc7\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesSkip:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff0c\u8df3\u8fc7\u6570\u91cf\u662f\u5426\u7b49\u4e8e\u5931\u8d25\u6570\u91cf\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesSkip:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v0, v5, :cond_2

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private notifyMoveDownloadFilesPrepared()V
    .locals 3

    .prologue
    .line 312
    sget-object v0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".run \u51c6\u5907\u6279\u91cf\u79fb\u52a8\uff0c\u5927\u5c0f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesNeedMove:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesNeedMove:Ljava/util/List;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mOnMoveDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener$MainThreadHelper;->onMoveDownloadFilesPrepared(Ljava/util/List;Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;)V

    .line 316
    return-void
.end method

.method private notifyMovingDownloadFiles(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 5
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 325
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 328
    :cond_0
    sget-object v1, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".run \u51c6\u5907\u79fb\u52a8\u5355\u4e2a\uff0curl\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v1, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesNeedMove:Ljava/util/List;

    iget-object v2, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesMoved:Ljava/util/List;

    iget-object v3, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesSkip:Ljava/util/List;

    iget-object v4, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mOnMoveDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;

    invoke-static {v1, v2, v3, p1, v4}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener$MainThreadHelper;->onMovingDownloadFiles(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;)V

    .line 332
    return-void
.end method

.method private runSingleMoveTask(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;Z)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "onMoveEverySingleDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;
    .param p3, "sync"    # Z

    .prologue
    .line 229
    new-instance v0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mNewDirPath:Ljava/lang/String;

    iget-object v2, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFileMover:Lorg/wlf/filedownloader/file_move/DownloadFileMover;

    invoke-direct {v0, p1, v1, v2}, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/file_move/DownloadFileMover;)V

    .line 231
    .local v0, "moveSingleDownloadFileTask":Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;
    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->enableSyncCallback()V

    .line 232
    invoke-virtual {v0, p2}, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->setOnMoveDownloadFileListener(Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;)V

    .line 234
    if-eqz p3, :cond_0

    .line 236
    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->run()V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v1, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mTaskEngine:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public isStopped()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mIsStop:Z

    return v0
.end method

.method public run()V
    .locals 11

    .prologue
    .line 98
    :try_start_0
    iget-object v7, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesNeedMove:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 99
    iget-object v7, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesMoved:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 100
    iget-object v7, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesSkip:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 102
    iget-object v7, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mUrls:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 103
    .local v6, "url":Ljava/lang/String;
    invoke-static {v6}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 106
    invoke-direct {p0, v6}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    .line 107
    .local v0, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    if-eqz v0, :cond_0

    .line 109
    iget-object v7, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesNeedMove:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v7, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mOldFileDir:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileDir()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 208
    .end local v0    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->isStopped()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 215
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->notifyMoveDownloadFilesCompleted()V

    .line 218
    :cond_1
    sget-object v7, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".run \u6279\u91cf\u79fb\u52a8\u6587\u4ef6\u4e3b\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u4f46\u662f\u901a\u8fc7\u6682\u505c\u4e0b\u8f7d\u4e2d\u7684\u6587\u4ef6\u79fb\u52a8\u4efb\u52a1\u53ef\u80fd\u8fd8\u6ca1\u6709\u7ed3\u675f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 117
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->notifyMoveDownloadFilesPrepared()V

    .line 120
    new-instance v5, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$OnMoveSingleDownloadFileListener;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$OnMoveSingleDownloadFileListener;-><init>(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$1;)V

    .line 124
    .local v5, "onMoveEverySingleDownloadFileListener":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v7, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesNeedMove:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_8

    .line 126
    iget-object v7, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesNeedMove:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wlf/filedownloader/DownloadFileInfo;

    .line 127
    .restart local v0    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    if-nez v0, :cond_4

    .line 129
    iget-object v8, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    :try_start_3
    iget-object v7, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadFilesSkip:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    monitor-exit v8

    .line 124
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 131
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 213
    .end local v0    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "onMoveEverySingleDownloadFileListener":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;
    :catchall_1
    move-exception v7

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->isStopped()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 215
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->notifyMoveDownloadFilesCompleted()V

    .line 218
    :cond_3
    sget-object v8, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".run \u6279\u91cf\u79fb\u52a8\u6587\u4ef6\u4e3b\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u4f46\u662f\u901a\u8fc7\u6682\u505c\u4e0b\u8f7d\u4e2d\u7684\u6587\u4ef6\u79fb\u52a8\u4efb\u52a1\u53ef\u80fd\u8fd8\u6ca1\u6709\u7ed3\u675f"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v7

    .line 135
    .restart local v0    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "onMoveEverySingleDownloadFileListener":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;
    :cond_4
    :try_start_5
    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "finalUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->isStopped()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 140
    sget-object v7, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".run \u6279\u91cf\u79fb\u52a8\u4efb\u52a1\u88ab\u53d6\u6d88\uff0c\u65e0\u6cd5\u7ee7\u7eed\u79fb\u52a8\uff0c\u4efb\u52a1\u5373\u5c06\u7ed3\u675f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 213
    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->isStopped()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 215
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->notifyMoveDownloadFilesCompleted()V

    .line 218
    :cond_5
    sget-object v7, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".run \u6279\u91cf\u79fb\u52a8\u6587\u4ef6\u4e3b\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u4f46\u662f\u901a\u8fc7\u6682\u505c\u4e0b\u8f7d\u4e2d\u7684\u6587\u4ef6\u79fb\u52a8\u4efb\u52a1\u53ef\u80fd\u8fd8\u6ca1\u6709\u7ed3\u675f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 147
    :cond_6
    :try_start_6
    iget-object v7, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadTaskPauseable:Lorg/wlf/filedownloader/file_download/base/Pauseable;

    invoke-interface {v7, v2}, Lorg/wlf/filedownloader/file_download/base/Pauseable;->isDownloading(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 149
    sget-object v7, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".run \u9700\u8981\u5148\u6682\u505c\u5355\u4e2a\u4e0b\u8f7d\u4efb\u52a1\u540e\u79fb\u52a8\uff0curl:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v7, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mDownloadTaskPauseable:Lorg/wlf/filedownloader/file_download/base/Pauseable;

    new-instance v8, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$1;

    invoke-direct {v8, p0, v2, v5}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask$1;-><init>(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;)V

    invoke-interface {v7, v2, v8}, Lorg/wlf/filedownloader/file_download/base/Pauseable;->pause(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V

    goto/16 :goto_3

    .line 205
    :cond_7
    const/4 v7, 0x1

    invoke-direct {p0, v2, v5, v7}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->runSingleMoveTask(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_3

    .line 213
    .end local v0    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    .end local v2    # "finalUrl":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->isStopped()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 215
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->notifyMoveDownloadFilesCompleted()V

    .line 218
    :cond_9
    sget-object v7, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".run \u6279\u91cf\u79fb\u52a8\u6587\u4ef6\u4e3b\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u4f46\u662f\u901a\u8fc7\u6682\u505c\u4e0b\u8f7d\u4e2d\u7684\u6587\u4ef6\u79fb\u52a8\u4efb\u52a1\u53ef\u80fd\u8fd8\u6ca1\u6709\u7ed3\u675f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public setOnMoveDownloadFilesListener(Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;)V
    .locals 0
    .param p1, "onMoveDownloadFilesListener"    # Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;

    .prologue
    .line 69
    iput-object p1, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mOnMoveDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;

    .line 70
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->mIsStop:Z

    .line 85
    return-void
.end method
