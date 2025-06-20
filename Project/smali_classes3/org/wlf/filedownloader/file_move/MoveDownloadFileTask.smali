.class Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;
.super Ljava/lang/Object;
.source "MoveDownloadFileTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDownloadFileMover:Lorg/wlf/filedownloader/file_move/DownloadFileMover;

.field private mIsNotifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsSyncCallback:Z

.field private mNewDirPath:Ljava/lang/String;

.field private mOnMoveDownloadFileListener:Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/file_move/DownloadFileMover;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "newDirPath"    # Ljava/lang/String;
    .param p3, "downloadFileMover"    # Lorg/wlf/filedownloader/file_move/DownloadFileMover;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v1, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mIsSyncCallback:Z

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mIsNotifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    iput-object p1, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mNewDirPath:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mDownloadFileMover:Lorg/wlf/filedownloader/file_move/DownloadFileMover;

    .line 39
    return-void
.end method

.method private notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;)V
    .locals 3
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "failReason"    # Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;

    .prologue
    .line 233
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mIsNotifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mIsNotifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mOnMoveDownloadFileListener:Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;

    if-eqz v0, :cond_0

    .line 238
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mIsSyncCallback:Z

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mOnMoveDownloadFileListener:Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;

    invoke-interface {v0, p1, p2}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;->onMoveDownloadFileFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;)V

    goto :goto_0

    .line 241
    :cond_2
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mOnMoveDownloadFileListener:Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;

    invoke-static {p1, p2, v0}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MainThreadHelper;->onMoveDownloadFileFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;)V

    goto :goto_0
.end method

.method private notifyPrepared(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 1
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 199
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mOnMoveDownloadFileListener:Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mIsSyncCallback:Z

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mOnMoveDownloadFileListener:Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;

    invoke-interface {v0, p1}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;->onMoveDownloadFilePrepared(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mOnMoveDownloadFileListener:Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;

    invoke-static {p1, v0}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MainThreadHelper;->onMoveDownloadFilePrepared(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;)V

    goto :goto_0
.end method

.method private notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 3
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 214
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mIsNotifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mIsNotifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mOnMoveDownloadFileListener:Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;

    if-eqz v0, :cond_0

    .line 219
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mIsSyncCallback:Z

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mOnMoveDownloadFileListener:Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;

    invoke-interface {v0, p1}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;->onMoveDownloadFileSuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    goto :goto_0

    .line 222
    :cond_2
    iget-object v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mOnMoveDownloadFileListener:Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;

    invoke-static {p1, v0}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MainThreadHelper;->onMoveDownloadFileSuccess(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;)V

    goto :goto_0
.end method


# virtual methods
.method public enableSyncCallback()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mIsSyncCallback:Z

    .line 55
    return-void
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    const/4 v3, 0x0

    .line 67
    .local v3, "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    :try_start_0
    iget-object v11, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mDownloadFileMover:Lorg/wlf/filedownloader/file_move/DownloadFileMover;

    iget-object v12, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-interface {v11, v12}, Lorg/wlf/filedownloader/file_move/DownloadFileMover;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 72
    new-instance v4, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$OnMoveDownloadFileFailReason;

    iget-object v11, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    const-string v12, "the DownloadFile is empty !"

    sget-object v13, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$OnMoveDownloadFileFailReason;->TYPE_NULL_POINTER:Ljava/lang/String;

    invoke-direct {v4, v11, v12, v13}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$OnMoveDownloadFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .end local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .local v4, "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    if-nez v4, :cond_0

    .line 177
    invoke-direct {p0, v0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 179
    sget-object v11, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".run \u79fb\u52a8\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_0
    sget-object v11, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".run \u6587\u4ef6\u79fb\u52a8\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v4, :cond_1

    :goto_1
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\uff0curl\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 191
    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    :goto_2
    return-void

    .line 182
    .end local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    :cond_0
    invoke-direct {p0, v0, v4}, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;)V

    .line 184
    sget-object v11, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".run \u79fb\u52a8\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",failReason:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v9, v10

    .line 189
    goto :goto_1

    .line 79
    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    :cond_2
    :try_start_1
    invoke-direct {p0, v0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->notifyPrepared(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 82
    invoke-static {v0}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->canMove(Lorg/wlf/filedownloader/DownloadFileInfo;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 83
    new-instance v4, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$OnMoveDownloadFileFailReason;

    iget-object v11, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    const-string v12, "the download file status error !"

    sget-object v13, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$OnMoveDownloadFileFailReason;->TYPE_FILE_STATUS_ERROR:Ljava/lang/String;

    invoke-direct {v4, v11, v12, v13}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$OnMoveDownloadFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .end local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    if-nez v4, :cond_3

    .line 177
    invoke-direct {p0, v0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 179
    sget-object v11, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".run \u79fb\u52a8\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_3
    sget-object v11, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".run \u6587\u4ef6\u79fb\u52a8\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v4, :cond_4

    :goto_4
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\uff0curl\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    goto/16 :goto_2

    .line 182
    .end local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    :cond_3
    invoke-direct {p0, v0, v4}, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;)V

    .line 184
    sget-object v11, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".run \u79fb\u52a8\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",failReason:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    move v9, v10

    .line 189
    goto :goto_4

    .line 90
    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    :cond_5
    const/4 v8, 0x0

    .line 91
    .local v8, "oldFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 93
    .local v6, "newFile":Ljava/io/File;
    :try_start_2
    invoke-static {v0}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isCompleted(Lorg/wlf/filedownloader/DownloadFileInfo;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 94
    new-instance v8, Ljava/io/File;

    .end local v8    # "oldFile":Ljava/io/File;
    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileDir()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .restart local v8    # "oldFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    .end local v6    # "newFile":Ljava/io/File;
    iget-object v11, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mNewDirPath:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .restart local v6    # "newFile":Ljava/io/File;
    :goto_5
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_a

    .line 103
    :cond_6
    new-instance v4, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$OnMoveDownloadFileFailReason;

    iget-object v11, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    const-string v12, "the original file does not exist !"

    sget-object v13, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$OnMoveDownloadFileFailReason;->TYPE_ORIGINAL_FILE_NOT_EXIST:Ljava/lang/String;

    invoke-direct {v4, v11, v12, v13}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$OnMoveDownloadFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    .end local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    if-nez v4, :cond_8

    .line 177
    invoke-direct {p0, v0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 179
    sget-object v11, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".run \u79fb\u52a8\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_6
    sget-object v11, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".run \u6587\u4ef6\u79fb\u52a8\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v4, :cond_9

    :goto_7
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\uff0curl\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    goto/16 :goto_2

    .line 97
    :cond_7
    :try_start_3
    new-instance v8, Ljava/io/File;

    .end local v8    # "oldFile":Ljava/io/File;
    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileDir()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getTempFileName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .restart local v8    # "oldFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    .end local v6    # "newFile":Ljava/io/File;
    iget-object v11, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mNewDirPath:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getTempFileName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v6    # "newFile":Ljava/io/File;
    goto :goto_5

    .line 182
    .end local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    :cond_8
    invoke-direct {p0, v0, v4}, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;)V

    .line 184
    sget-object v11, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".run \u79fb\u52a8\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",failReason:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_9
    move v9, v10

    .line 189
    goto :goto_7

    .line 110
    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    :cond_a
    if-eqz v6, :cond_d

    :try_start_4
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 111
    new-instance v4, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$OnMoveDownloadFileFailReason;

    iget-object v11, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    const-string v12, "the target file exist !"

    sget-object v13, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$OnMoveDownloadFileFailReason;->TYPE_TARGET_FILE_EXIST:Ljava/lang/String;

    invoke-direct {v4, v11, v12, v13}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$OnMoveDownloadFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 175
    .end local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    if-nez v4, :cond_b

    .line 177
    invoke-direct {p0, v0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 179
    sget-object v11, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".run \u79fb\u52a8\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_8
    sget-object v11, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".run \u6587\u4ef6\u79fb\u52a8\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v4, :cond_c

    :goto_9
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\uff0curl\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    goto/16 :goto_2

    .line 182
    .end local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    :cond_b
    invoke-direct {p0, v0, v4}, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;)V

    .line 184
    sget-object v11, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".run \u79fb\u52a8\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",failReason:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_c
    move v9, v10

    .line 189
    goto :goto_9

    .line 118
    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    :cond_d
    if-eqz v6, :cond_e

    :try_start_5
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    if-eqz v11, :cond_e

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_e

    .line 119
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/wlf/filedownloader/util/FileUtil;->createFileParentDir(Ljava/lang/String;)Z

    .line 124
    :cond_e
    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileDir()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v7

    .line 127
    .local v7, "oldDirPath":Ljava/lang/String;
    const/4 v5, 0x0

    .line 130
    .local v5, "moveResult":Z
    :try_start_6
    iget-object v11, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mDownloadFileMover:Lorg/wlf/filedownloader/file_move/DownloadFileMover;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mNewDirPath:Ljava/lang/String;

    invoke-interface {v11, v12, v13}, Lorg/wlf/filedownloader/file_move/DownloadFileMover;->moveDownloadFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 131
    const/4 v5, 0x1

    .line 136
    :goto_a
    if-nez v5, :cond_11

    .line 138
    :try_start_7
    new-instance v4, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$OnMoveDownloadFileFailReason;

    iget-object v11, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    const-string v12, "update record error !"

    sget-object v13, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$OnMoveDownloadFileFailReason;->TYPE_UPDATE_RECORD_ERROR:Ljava/lang/String;

    invoke-direct {v4, v11, v12, v13}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$OnMoveDownloadFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 175
    .end local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    if-nez v4, :cond_f

    .line 177
    invoke-direct {p0, v0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 179
    sget-object v11, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".run \u79fb\u52a8\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_b
    sget-object v11, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".run \u6587\u4ef6\u79fb\u52a8\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v4, :cond_10

    :goto_c
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\uff0curl\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    goto/16 :goto_2

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_a

    .line 168
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "moveResult":Z
    .end local v6    # "newFile":Ljava/io/File;
    .end local v7    # "oldDirPath":Ljava/lang/String;
    .end local v8    # "oldFile":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 169
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    new-instance v4, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$OnMoveDownloadFileFailReason;

    iget-object v11, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-direct {v4, v11, v1}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$OnMoveDownloadFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 175
    .end local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    if-nez v4, :cond_17

    .line 177
    invoke-direct {p0, v0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 179
    sget-object v11, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".run \u79fb\u52a8\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_d
    sget-object v11, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".run \u6587\u4ef6\u79fb\u52a8\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v4, :cond_18

    :goto_e
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\uff0curl\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 190
    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    goto/16 :goto_2

    .line 182
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v5    # "moveResult":Z
    .restart local v6    # "newFile":Ljava/io/File;
    .restart local v7    # "oldDirPath":Ljava/lang/String;
    .restart local v8    # "oldFile":Ljava/io/File;
    :cond_f
    invoke-direct {p0, v0, v4}, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;)V

    .line 184
    sget-object v11, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".run \u79fb\u52a8\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",failReason:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_10
    move v9, v10

    .line 189
    goto/16 :goto_c

    .line 145
    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    :cond_11
    :try_start_a
    invoke-virtual {v8, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v5

    .line 147
    if-nez v5, :cond_14

    .line 150
    :try_start_b
    iget-object v11, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mDownloadFileMover:Lorg/wlf/filedownloader/file_move/DownloadFileMover;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v7}, Lorg/wlf/filedownloader/file_move/DownloadFileMover;->moveDownloadFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 161
    :goto_f
    :try_start_c
    new-instance v4, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$OnMoveDownloadFileFailReason;

    iget-object v11, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    const-string v12, "update record error !"

    sget-object v13, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$OnMoveDownloadFileFailReason;->TYPE_UPDATE_RECORD_ERROR:Ljava/lang/String;

    invoke-direct {v4, v11, v12, v13}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$OnMoveDownloadFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 175
    .end local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    if-nez v4, :cond_12

    .line 177
    invoke-direct {p0, v0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 179
    sget-object v11, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".run \u79fb\u52a8\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_10
    sget-object v11, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".run \u6587\u4ef6\u79fb\u52a8\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v4, :cond_13

    :goto_11
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\uff0curl\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    goto/16 :goto_2

    .line 151
    :catch_2
    move-exception v1

    .line 152
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 155
    :try_start_e
    iget-object v11, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mDownloadFileMover:Lorg/wlf/filedownloader/file_move/DownloadFileMover;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v7}, Lorg/wlf/filedownloader/file_move/DownloadFileMover;->moveDownloadFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_f

    .line 156
    :catch_3
    move-exception v2

    .line 157
    .local v2, "e1":Ljava/lang/Exception;
    :try_start_f
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_f

    .line 173
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e1":Ljava/lang/Exception;
    .end local v5    # "moveResult":Z
    .end local v6    # "newFile":Ljava/io/File;
    .end local v7    # "oldDirPath":Ljava/lang/String;
    .end local v8    # "oldFile":Ljava/io/File;
    :catchall_0
    move-exception v11

    .line 175
    if-nez v3, :cond_19

    .line 177
    invoke-direct {p0, v0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 179
    sget-object v12, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".run \u79fb\u52a8\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_12
    sget-object v12, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".run \u6587\u4ef6\u79fb\u52a8\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v3, :cond_1a

    :goto_13
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\uff0curl\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v11

    .line 182
    .end local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v5    # "moveResult":Z
    .restart local v6    # "newFile":Ljava/io/File;
    .restart local v7    # "oldDirPath":Ljava/lang/String;
    .restart local v8    # "oldFile":Ljava/io/File;
    :cond_12
    invoke-direct {p0, v0, v4}, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;)V

    .line 184
    sget-object v11, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".run \u79fb\u52a8\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",failReason:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_13
    move v9, v10

    .line 189
    goto/16 :goto_11

    .line 175
    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    :cond_14
    if-nez v3, :cond_15

    .line 177
    invoke-direct {p0, v0}, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 179
    sget-object v11, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".run \u79fb\u52a8\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_14
    sget-object v11, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".run \u6587\u4ef6\u79fb\u52a8\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v3, :cond_16

    :goto_15
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\uff0curl\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 182
    :cond_15
    invoke-direct {p0, v0, v3}, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;)V

    .line 184
    sget-object v11, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".run \u79fb\u52a8\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",failReason:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_16
    move v9, v10

    .line 189
    goto :goto_15

    .line 182
    .end local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .end local v5    # "moveResult":Z
    .end local v6    # "newFile":Ljava/io/File;
    .end local v7    # "oldDirPath":Ljava/lang/String;
    .end local v8    # "oldFile":Ljava/io/File;
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    :cond_17
    invoke-direct {p0, v0, v4}, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;)V

    .line 184
    sget-object v11, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".run \u79fb\u52a8\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",failReason:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_18
    move v9, v10

    .line 189
    goto/16 :goto_e

    .line 182
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    .restart local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
    :cond_19
    invoke-direct {p0, v0, v3}, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;)V

    .line 184
    sget-object v12, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".run \u79fb\u52a8\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",failReason:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_1a
    move v9, v10

    .line 189
    goto/16 :goto_13
.end method

.method public setOnMoveDownloadFileListener(Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;)V
    .locals 0
    .param p1, "onMoveDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/wlf/filedownloader/file_move/MoveDownloadFileTask;->mOnMoveDownloadFileListener:Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;

    .line 48
    return-void
.end method
