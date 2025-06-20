.class Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;
.super Ljava/lang/Object;
.source "DeleteDownloadFilesTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/wlf/filedownloader/base/Stoppable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$OnDeleteSingleDownloadFileListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDeleteDownloadedFile:Z

.field private mDownloadFileDeleter:Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;

.field private final mDownloadFilesDeleted:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/wlf/filedownloader/DownloadFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadFilesNeedDelete:Ljava/util/List;
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

.field private mOnDeleteDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;

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
    .line 25
    const-class v0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZLjava/util/concurrent/ExecutorService;Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;Lorg/wlf/filedownloader/file_download/base/Pauseable;)V
    .locals 2
    .param p2, "deleteDownloadedFile"    # Z
    .param p3, "taskEngine"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "downloadFileDeleter"    # Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;
    .param p5, "downloadTaskPauseable"    # Lorg/wlf/filedownloader/file_download/base/Pauseable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/concurrent/ExecutorService;",
            "Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;",
            "Lorg/wlf/filedownloader/file_download/base/Pauseable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v1, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mIsStop:Z

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mIsNotifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesNeedDelete:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesDeleted:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesSkip:Ljava/util/List;

    .line 50
    iput-object p1, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mUrls:Ljava/util/List;

    .line 51
    iput-object p3, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mTaskEngine:Ljava/util/concurrent/ExecutorService;

    .line 52
    iput-boolean p2, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDeleteDownloadedFile:Z

    .line 53
    iput-object p4, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFileDeleter:Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;

    .line 54
    iput-object p5, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadTaskPauseable:Lorg/wlf/filedownloader/file_download/base/Pauseable;

    .line 55
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;)V
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->notifyDeleteDownloadFilesCompleted()V

    return-void
.end method

.method static synthetic access$300(Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;
    .param p3, "x3"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->runSingleDeleteTask(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;Z)V

    return-void
.end method

.method static synthetic access$400(Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesSkip:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;
    .param p1, "x1"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->notifyDeletingDownloadFiles(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    return-void
.end method

.method static synthetic access$800(Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesDeleted:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesNeedDelete:Ljava/util/List;

    return-object v0
.end method

.method private getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFileDeleter:Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;

    invoke-interface {v0, p1}, Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    return-object v0
.end method

.method private notifyDeleteDownloadFilesCompleted()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 331
    iget-object v3, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mIsNotifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v3, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mIsNotifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    iget-object v3, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesNeedDelete:Ljava/util/List;

    iget-object v4, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesDeleted:Ljava/util/List;

    iget-object v5, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mOnDeleteDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;

    invoke-static {v3, v4, v5}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper;->onDeleteDownloadFilesCompleted(Ljava/util/List;Ljava/util/List;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;)V

    .line 340
    iput-boolean v1, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mIsStop:Z

    .line 342
    iget-object v3, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesNeedDelete:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesDeleted:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int v0, v3, v4

    .line 344
    .local v0, "failedSize":I
    sget-object v3, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".run \u6279\u91cf\u5220\u9664\u6587\u4ef6\u4e3b\u4efb\u52a1\u548c\u5176\u5b83\u76f8\u5173\u4efb\u52a1\u5168\u90e8\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u603b\u5171\u9700\u8981\u5220\u9664\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesNeedDelete:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff0c\u5df2\u5220\u9664\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesDeleted:Ljava/util/List;

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

    iget-object v5, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesSkip:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff0c\u8df3\u8fc7\u6570\u91cf\u662f\u5426\u7b49\u4e8e\u5931\u8d25\u6570\u91cf\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesSkip:Ljava/util/List;

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

.method private notifyDeleteDownloadFilesPrepared()V
    .locals 3

    .prologue
    .line 305
    sget-object v0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".run \u51c6\u5907\u6279\u91cf\u5220\u9664\uff0c\u5927\u5c0f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesNeedDelete:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesNeedDelete:Ljava/util/List;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mOnDeleteDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper;->onDeleteDownloadFilesPrepared(Ljava/util/List;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;)V

    .line 309
    return-void
.end method

.method private notifyDeletingDownloadFiles(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 5
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 318
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 321
    :cond_0
    sget-object v1, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".run \u51c6\u5907\u5220\u9664\u5355\u4e2a\uff0curl\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesNeedDelete:Ljava/util/List;

    iget-object v2, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesDeleted:Ljava/util/List;

    iget-object v3, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesSkip:Ljava/util/List;

    iget-object v4, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mOnDeleteDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;

    invoke-static {v1, v2, v3, p1, v4}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper;->onDeletingDownloadFiles(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;)V

    .line 325
    return-void
.end method

.method private runSingleDeleteTask(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;Z)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "onDeleteEverySingleDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;
    .param p3, "sync"    # Z

    .prologue
    .line 221
    new-instance v0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;

    iget-boolean v1, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDeleteDownloadedFile:Z

    iget-object v2, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFileDeleter:Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;

    invoke-direct {v0, p1, v1, v2}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;-><init>(Ljava/lang/String;ZLorg/wlf/filedownloader/file_delete/DownloadFileDeleter;)V

    .line 223
    .local v0, "deleteSingleDownloadFileTask":Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;
    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->enableSyncCallback()V

    .line 224
    invoke-virtual {v0, p2}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->setOnDeleteDownloadFileListener(Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V

    .line 226
    if-eqz p3, :cond_0

    .line 228
    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->run()V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v1, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mTaskEngine:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public isStopped()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mIsStop:Z

    return v0
.end method

.method public run()V
    .locals 11

    .prologue
    .line 92
    :try_start_0
    iget-object v7, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesNeedDelete:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 93
    iget-object v7, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesDeleted:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 94
    iget-object v7, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesSkip:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 96
    iget-object v7, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mUrls:Ljava/util/List;

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

    .line 97
    .local v6, "url":Ljava/lang/String;
    invoke-static {v6}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 100
    invoke-direct {p0, v6}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    .line 101
    .local v0, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    if-eqz v0, :cond_0

    .line 103
    iget-object v7, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesNeedDelete:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 200
    .end local v0    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 205
    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->isStopped()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 207
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->notifyDeleteDownloadFilesCompleted()V

    .line 210
    :cond_1
    sget-object v7, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".run \u6279\u91cf\u5220\u9664\u6587\u4ef6\u4e3b\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u4f46\u662f\u901a\u8fc7\u6682\u505c\u4e0b\u8f7d\u4e2d\u7684\u6587\u4ef6\u5220\u9664\u4efb\u52a1\u53ef\u80fd\u8fd8\u6ca1\u6709\u7ed3\u675f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 109
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->notifyDeleteDownloadFilesPrepared()V

    .line 112
    new-instance v5, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$OnDeleteSingleDownloadFileListener;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$OnDeleteSingleDownloadFileListener;-><init>(Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$1;)V

    .line 116
    .local v5, "onDeleteEverySingleDownloadFileListener":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v7, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesNeedDelete:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_8

    .line 118
    iget-object v7, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesNeedDelete:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wlf/filedownloader/DownloadFileInfo;

    .line 119
    .restart local v0    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    if-nez v0, :cond_4

    .line 121
    iget-object v8, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    :try_start_3
    iget-object v7, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadFilesSkip:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    monitor-exit v8

    .line 116
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 123
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

    .line 205
    .end local v0    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "onDeleteEverySingleDownloadFileListener":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;
    :catchall_1
    move-exception v7

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->isStopped()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 207
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->notifyDeleteDownloadFilesCompleted()V

    .line 210
    :cond_3
    sget-object v8, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".run \u6279\u91cf\u5220\u9664\u6587\u4ef6\u4e3b\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u4f46\u662f\u901a\u8fc7\u6682\u505c\u4e0b\u8f7d\u4e2d\u7684\u6587\u4ef6\u5220\u9664\u4efb\u52a1\u53ef\u80fd\u8fd8\u6ca1\u6709\u7ed3\u675f"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v7

    .line 127
    .restart local v0    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "onDeleteEverySingleDownloadFileListener":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;
    :cond_4
    :try_start_5
    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "finalUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->isStopped()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 132
    sget-object v7, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".run \u6279\u91cf\u5220\u9664\u4efb\u52a1\u88ab\u53d6\u6d88\uff0c\u65e0\u6cd5\u7ee7\u7eed\u5220\u9664\uff0c\u4efb\u52a1\u5373\u5c06\u7ed3\u675f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 205
    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->isStopped()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 207
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->notifyDeleteDownloadFilesCompleted()V

    .line 210
    :cond_5
    sget-object v7, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".run \u6279\u91cf\u5220\u9664\u6587\u4ef6\u4e3b\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u4f46\u662f\u901a\u8fc7\u6682\u505c\u4e0b\u8f7d\u4e2d\u7684\u6587\u4ef6\u5220\u9664\u4efb\u52a1\u53ef\u80fd\u8fd8\u6ca1\u6709\u7ed3\u675f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 139
    :cond_6
    :try_start_6
    iget-object v7, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadTaskPauseable:Lorg/wlf/filedownloader/file_download/base/Pauseable;

    invoke-interface {v7, v2}, Lorg/wlf/filedownloader/file_download/base/Pauseable;->isDownloading(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 141
    sget-object v7, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".run \u9700\u8981\u5148\u6682\u505c\u5355\u4e2a\u4e0b\u8f7d\u4efb\u52a1\u540e\u5220\u9664\uff0curl:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v7, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mDownloadTaskPauseable:Lorg/wlf/filedownloader/file_download/base/Pauseable;

    new-instance v8, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$1;

    invoke-direct {v8, p0, v2, v5}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask$1;-><init>(Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V

    invoke-interface {v7, v2, v8}, Lorg/wlf/filedownloader/file_download/base/Pauseable;->pause(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V

    goto/16 :goto_3

    .line 197
    :cond_7
    const/4 v7, 0x1

    invoke-direct {p0, v2, v5, v7}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->runSingleDeleteTask(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_3

    .line 205
    .end local v0    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    .end local v2    # "finalUrl":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->isStopped()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 207
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->notifyDeleteDownloadFilesCompleted()V

    .line 210
    :cond_9
    sget-object v7, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".run \u6279\u91cf\u5220\u9664\u6587\u4ef6\u4e3b\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u4f46\u662f\u901a\u8fc7\u6682\u505c\u4e0b\u8f7d\u4e2d\u7684\u6587\u4ef6\u5220\u9664\u4efb\u52a1\u53ef\u80fd\u8fd8\u6ca1\u6709\u7ed3\u675f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public setOnDeleteDownloadFilesListener(Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;)V
    .locals 0
    .param p1, "onDeleteDownloadFilesListener"    # Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;

    .prologue
    .line 63
    iput-object p1, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mOnDeleteDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;

    .line 64
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFilesTask;->mIsStop:Z

    .line 79
    return-void
.end method
