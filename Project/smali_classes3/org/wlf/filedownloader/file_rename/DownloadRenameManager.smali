.class public Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;
.super Ljava/lang/Object;
.source "DownloadRenameManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDownloadFileRenamer:Lorg/wlf/filedownloader/file_rename/DownloadFileRenamer;

.field private mDownloadTaskPauseable:Lorg/wlf/filedownloader/file_download/base/Pauseable;

.field private mTaskEngine:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lorg/wlf/filedownloader/file_rename/DownloadFileRenamer;Lorg/wlf/filedownloader/file_download/base/Pauseable;)V
    .locals 0
    .param p1, "taskEngine"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "downloadFileRenamer"    # Lorg/wlf/filedownloader/file_rename/DownloadFileRenamer;
    .param p3, "downloadTaskPauseable"    # Lorg/wlf/filedownloader/file_download/base/Pauseable;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->mTaskEngine:Ljava/util/concurrent/ExecutorService;

    .line 41
    iput-object p2, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->mDownloadFileRenamer:Lorg/wlf/filedownloader/file_rename/DownloadFileRenamer;

    .line 42
    iput-object p3, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->mDownloadTaskPauseable:Lorg/wlf/filedownloader/file_download/base/Pauseable;

    .line 43
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;Ljava/lang/String;Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->renameInternal(Ljava/lang/String;Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V

    return-void
.end method

.method static synthetic access$200(Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;
    .param p1, "x1"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "x2"    # Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .param p3, "x3"    # Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->notifyRenameDownloadFileFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V

    return-void
.end method

.method private addAndRunTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->mTaskEngine:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method private getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->mDownloadFileRenamer:Lorg/wlf/filedownloader/file_rename/DownloadFileRenamer;

    invoke-interface {v0, p1}, Lorg/wlf/filedownloader/file_rename/DownloadFileRenamer;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    return-object v0
.end method

.method private notifyRenameDownloadFileFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V
    .locals 0
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "failReason"    # Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .param p3, "onRenameDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    .prologue
    .line 138
    invoke-static {p1, p2, p3}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper;->onRenameDownloadFileFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V

    .line 140
    return-void
.end method

.method private renameInternal(Ljava/lang/String;Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "newFileName"    # Ljava/lang/String;
    .param p3, "includedSuffix"    # Z
    .param p4, "onRenameDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    .prologue
    .line 69
    new-instance v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->mDownloadFileRenamer:Lorg/wlf/filedownloader/file_rename/DownloadFileRenamer;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/wlf/filedownloader/file_rename/DownloadFileRenamer;)V

    .line 71
    .local v0, "task":Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;
    invoke-virtual {v0, p4}, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->setOnRenameDownloadFileListener(Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V

    .line 73
    invoke-direct {p0, v0}, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->addAndRunTask(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method


# virtual methods
.method public rename(Ljava/lang/String;Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "newFileName"    # Ljava/lang/String;
    .param p3, "includedSuffix"    # Z
    .param p4, "onRenameDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    .prologue
    .line 88
    move-object v2, p1

    .line 90
    .local v2, "finalUrl":Ljava/lang/String;
    iget-object v0, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->mDownloadTaskPauseable:Lorg/wlf/filedownloader/file_download/base/Pauseable;

    invoke-interface {v0, p1}, Lorg/wlf/filedownloader/file_download/base/Pauseable;->isDownloading(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    sget-object v0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".rename \u4e0b\u8f7d\u4efb\u52a1\u5df2\u7ecf\u6682\u505c\uff0c\u53ef\u4ee5\u76f4\u63a5\u91cd\u547d\u540d\uff0curl:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->renameInternal(Ljava/lang/String;Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V

    .line 128
    :goto_0
    return-void

    .line 97
    :cond_0
    sget-object v0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".rename \u9700\u8981\u5148\u6682\u505c\u4e0b\u8f7d\u4efb\u52a1\u540e\u91cd\u547d\u540d,url:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v6, p0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;->mDownloadTaskPauseable:Lorg/wlf/filedownloader/file_download/base/Pauseable;

    new-instance v0, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager$1;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/wlf/filedownloader/file_rename/DownloadRenameManager$1;-><init>(Lorg/wlf/filedownloader/file_rename/DownloadRenameManager;Ljava/lang/String;Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V

    invoke-interface {v6, p1, v0}, Lorg/wlf/filedownloader/file_download/base/Pauseable;->pause(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V

    goto :goto_0
.end method
