.class public Lorg/wlf/filedownloader/file_move/DownloadMoveManager;
.super Ljava/lang/Object;
.source "DownloadMoveManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/file_move/DownloadMoveManager$MoveControl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDownloadFileMover:Lorg/wlf/filedownloader/file_move/DownloadFileMover;

.field private mDownloadTaskPauseable:Lorg/wlf/filedownloader/file_download/base/Pauseable;

.field private mMoveControl:Lorg/wlf/filedownloader/file_move/DownloadMoveManager$MoveControl;

.field private mTaskEngine:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lorg/wlf/filedownloader/file_move/DownloadFileMover;Lorg/wlf/filedownloader/file_download/base/Pauseable;)V
    .locals 0
    .param p1, "taskEngine"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "downloadFileMover"    # Lorg/wlf/filedownloader/file_move/DownloadFileMover;
    .param p3, "downloadTaskPauseable"    # Lorg/wlf/filedownloader/file_download/base/Pauseable;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->mTaskEngine:Ljava/util/concurrent/ExecutorService;

    .line 48
    iput-object p2, p0, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->mDownloadFileMover:Lorg/wlf/filedownloader/file_move/DownloadFileMover;

    .line 49
    iput-object p3, p0, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->mDownloadTaskPauseable:Lorg/wlf/filedownloader/file_download/base/Pauseable;

    .line 50
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/wlf/filedownloader/file_move/DownloadMoveManager;Ljava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;)V
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_move/DownloadMoveManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->singleMoveInternal(Ljava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;)V

    return-void
.end method

.method static synthetic access$200(Lorg/wlf/filedownloader/file_move/DownloadMoveManager;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_move/DownloadMoveManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/wlf/filedownloader/file_move/DownloadMoveManager;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;)V
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_move/DownloadMoveManager;
    .param p1, "x1"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "x2"    # Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .param p3, "x3"    # Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->notifyMoveDownloadFileFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;)V

    return-void
.end method

.method private addAndRunTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->mTaskEngine:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method private getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->mDownloadFileMover:Lorg/wlf/filedownloader/file_move/DownloadFileMover;

    invoke-interface {v0, p1}, Lorg/wlf/filedownloader/file_move/DownloadFileMover;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    return-object v0
.end method

.method private notifyMoveDownloadFileFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;)V
    .locals 0
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "failReason"    # Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .param p3, "onMoveDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;

    .prologue
    .line 171
    invoke-static {p1, p2, p3}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MainThreadHelper;->onMoveDownloadFileFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;)V

    .line 173
    return-void
.end method

.method private singleMoveInternal(Ljava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "newDirPath"    # Ljava/lang/String;
    .param p3, "onMoveDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;

    .prologue
    .line 76
    new-instance v0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->mDownloadFileMover:Lorg/wlf/filedownloader/file_move/DownloadFileMover;

    invoke-direct {v0, p1, p2, v1}, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/file_move/DownloadFileMover;)V

    .line 77
    .local v0, "moveDownloadFileTask":Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;
    invoke-virtual {v0, p3}, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->setOnMoveDownloadFileListener(Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;)V

    .line 79
    invoke-direct {p0, v0}, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->addAndRunTask(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method


# virtual methods
.method public move(Ljava/util/List;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;)Lorg/wlf/filedownloader/base/Control;
    .locals 6
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
    .line 144
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->mMoveControl:Lorg/wlf/filedownloader/file_move/DownloadMoveManager$MoveControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->mMoveControl:Lorg/wlf/filedownloader/file_move/DownloadMoveManager$MoveControl;

    invoke-virtual {v1}, Lorg/wlf/filedownloader/file_move/DownloadMoveManager$MoveControl;->isStopped()Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    iget-object v1, p0, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->mMoveControl:Lorg/wlf/filedownloader/file_move/DownloadMoveManager$MoveControl;

    .line 160
    :goto_0
    return-object v1

    .line 150
    :cond_0
    new-instance v0, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;

    iget-object v3, p0, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->mTaskEngine:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->mDownloadFileMover:Lorg/wlf/filedownloader/file_move/DownloadFileMover;

    iget-object v5, p0, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->mDownloadTaskPauseable:Lorg/wlf/filedownloader/file_download/base/Pauseable;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;Lorg/wlf/filedownloader/file_move/DownloadFileMover;Lorg/wlf/filedownloader/file_download/base/Pauseable;)V

    .line 152
    .local v0, "moveDownloadFilesTask":Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;
    invoke-virtual {v0, p3}, Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;->setOnMoveDownloadFilesListener(Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;)V

    .line 155
    invoke-direct {p0, v0}, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->addAndRunTask(Ljava/lang/Runnable;)V

    .line 158
    new-instance v1, Lorg/wlf/filedownloader/file_move/DownloadMoveManager$MoveControl;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/wlf/filedownloader/file_move/DownloadMoveManager$MoveControl;-><init>(Lorg/wlf/filedownloader/file_move/MoveDownloadFilesTask;Lorg/wlf/filedownloader/file_move/DownloadMoveManager$1;)V

    iput-object v1, p0, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->mMoveControl:Lorg/wlf/filedownloader/file_move/DownloadMoveManager$MoveControl;

    .line 160
    iget-object v1, p0, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->mMoveControl:Lorg/wlf/filedownloader/file_move/DownloadMoveManager$MoveControl;

    goto :goto_0
.end method

.method public move(Ljava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "newDirPath"    # Ljava/lang/String;
    .param p3, "onMoveDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;

    .prologue
    .line 91
    move-object v0, p1

    .line 94
    .local v0, "finalUrl":Ljava/lang/String;
    iget-object v1, p0, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->mDownloadTaskPauseable:Lorg/wlf/filedownloader/file_download/base/Pauseable;

    invoke-interface {v1, p1}, Lorg/wlf/filedownloader/file_download/base/Pauseable;->isDownloading(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    sget-object v1, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".move \u4e0b\u8f7d\u4efb\u52a1\u5df2\u7ecf\u6682\u505c\uff0c\u53ef\u4ee5\u76f4\u63a5\u79fb\u52a8\uff0curl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->singleMoveInternal(Ljava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;)V

    .line 132
    :goto_0
    return-void

    .line 101
    :cond_0
    sget-object v1, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".move \u9700\u8981\u5148\u6682\u505c\u4e0b\u8f7d\u4efb\u52a1\u540e\u79fb\u52a8\uff0curl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lorg/wlf/filedownloader/file_move/DownloadMoveManager;->mDownloadTaskPauseable:Lorg/wlf/filedownloader/file_download/base/Pauseable;

    new-instance v2, Lorg/wlf/filedownloader/file_move/DownloadMoveManager$1;

    invoke-direct {v2, p0, v0, p2, p3}, Lorg/wlf/filedownloader/file_move/DownloadMoveManager$1;-><init>(Lorg/wlf/filedownloader/file_move/DownloadMoveManager;Ljava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;)V

    invoke-interface {v1, p1, v2}, Lorg/wlf/filedownloader/file_download/base/Pauseable;->pause(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V

    goto :goto_0
.end method
