.class public Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;
.super Ljava/lang/Object;
.source "DownloadDeleteManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager$DeleteControl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDeleteControl:Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager$DeleteControl;

.field private mDownloadFileDeleter:Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;

.field private mDownloadTaskPauseable:Lorg/wlf/filedownloader/file_download/base/Pauseable;

.field private mTaskEngine:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;Lorg/wlf/filedownloader/file_download/base/Pauseable;)V
    .locals 0
    .param p1, "taskEngine"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "downloadFileDeleter"    # Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;
    .param p3, "downloadTaskPauseable"    # Lorg/wlf/filedownloader/file_download/base/Pauseable;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->mTaskEngine:Ljava/util/concurrent/ExecutorService;

    .line 48
    iput-object p2, p0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->mDownloadFileDeleter:Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;

    .line 49
    iput-object p3, p0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->mDownloadTaskPauseable:Lorg/wlf/filedownloader/file_download/base/Pauseable;

    .line 50
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->singleDeleteInternal(Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V

    return-void
.end method

.method static synthetic access$200(Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;
    .param p1, "x1"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "x2"    # Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    .param p3, "x3"    # Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->notifyDeleteDownloadFileFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V

    return-void
.end method

.method private addAndRunTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->mTaskEngine:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method private getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->mDownloadFileDeleter:Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;

    invoke-interface {v0, p1}, Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    return-object v0
.end method

.method private notifyDeleteDownloadFileFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V
    .locals 0
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "failReason"    # Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    .param p3, "onDeleteDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    .prologue
    .line 174
    invoke-static {p1, p2, p3}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$MainThreadHelper;->onDeleteDownloadFileFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V

    .line 176
    return-void
.end method

.method private singleDeleteInternal(Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "deleteDownloadedFileInPath"    # Z
    .param p3, "onDeleteDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    .prologue
    .line 76
    new-instance v0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->mDownloadFileDeleter:Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;

    invoke-direct {v0, p1, p2, v1}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;-><init>(Ljava/lang/String;ZLorg/wlf/filedownloader/file_delete/DownloadFileDeleter;)V

    .line 78
    .local v0, "deleteDownloadFileTask":Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;
    invoke-virtual {v0, p3}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->setOnDeleteDownloadFileListener(Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V

    .line 80
    invoke-direct {p0, v0}, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->addAndRunTask(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method


# virtual methods
.method public delete(Ljava/util/List;ZLorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;)Lorg/wlf/filedownloader/base/Control;
    .locals 6
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
    .line 147
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->mDeleteControl:Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager$DeleteControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->mDeleteControl:Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager$DeleteControl;

    invoke-virtual {v1}, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager$DeleteControl;->isStopped()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    iget-object v1, p0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->mDeleteControl:Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager$DeleteControl;

    .line 163
    :goto_0
    return-object v1

    .line 153
    :cond_0
    new-instance v0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;

    iget-object v3, p0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->mTaskEngine:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->mDownloadFileDeleter:Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;

    iget-object v5, p0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->mDownloadTaskPauseable:Lorg/wlf/filedownloader/file_download/base/Pauseable;

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;-><init>(Ljava/util/List;ZLjava/util/concurrent/ExecutorService;Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;Lorg/wlf/filedownloader/file_download/base/Pauseable;)V

    .line 155
    .local v0, "deleteDownloadFilesTask":Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;
    invoke-virtual {v0, p3}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->setOnDeleteDownloadFilesListener(Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;)V

    .line 158
    invoke-direct {p0, v0}, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->addAndRunTask(Ljava/lang/Runnable;)V

    .line 161
    new-instance v1, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager$DeleteControl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager$DeleteControl;-><init>(Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager$1;)V

    iput-object v1, p0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->mDeleteControl:Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager$DeleteControl;

    .line 163
    iget-object v1, p0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->mDeleteControl:Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager$DeleteControl;

    goto :goto_0
.end method

.method public delete(Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "deleteDownloadedFileInPath"    # Z
    .param p3, "onDeleteDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    .prologue
    .line 93
    move-object v0, p1

    .line 96
    .local v0, "finalUrl":Ljava/lang/String;
    iget-object v1, p0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->mDownloadTaskPauseable:Lorg/wlf/filedownloader/file_download/base/Pauseable;

    invoke-interface {v1, p1}, Lorg/wlf/filedownloader/file_download/base/Pauseable;->isDownloading(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    sget-object v1, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".delete \u4e0b\u8f7d\u4efb\u52a1\u5df2\u7ecf\u6682\u505c\uff0c\u53ef\u4ee5\u76f4\u63a5\u5220\u9664\uff0curl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->singleDeleteInternal(Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V

    .line 134
    :goto_0
    return-void

    .line 103
    :cond_0
    sget-object v1, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".delete \u9700\u8981\u5148\u6682\u505c\u4e0b\u8f7d\u4efb\u52a1\u540e\u5220\u9664,url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;->mDownloadTaskPauseable:Lorg/wlf/filedownloader/file_download/base/Pauseable;

    new-instance v2, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager$1;

    invoke-direct {v2, p0, v0, p2, p3}, Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager$1;-><init>(Lorg/wlf/filedownloader/file_delete/DownloadDeleteManager;Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V

    invoke-interface {v1, p1, v2}, Lorg/wlf/filedownloader/file_download/base/Pauseable;->pause(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V

    goto :goto_0
.end method
