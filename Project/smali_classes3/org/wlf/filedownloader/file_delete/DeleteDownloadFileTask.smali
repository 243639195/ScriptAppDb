.class Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;
.super Ljava/lang/Object;
.source "DeleteDownloadFileTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDeleteDownloadedFileInPath:Z

.field private mDownloadFileDeleter:Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;

.field private mIsNotifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsSyncCallback:Z

.field private mOnDeleteDownloadFileListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLorg/wlf/filedownloader/file_delete/DownloadFileDeleter;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "deleteDownloadedFileInPath"    # Z
    .param p3, "downloadFileDeleter"    # Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v1, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mIsSyncCallback:Z

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mIsNotifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    iput-object p1, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    .line 38
    iput-boolean p2, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mDeleteDownloadedFileInPath:Z

    .line 39
    iput-object p3, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mDownloadFileDeleter:Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;

    .line 40
    return-void
.end method

.method private notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;)V
    .locals 3
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "failReason"    # Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;

    .prologue
    .line 200
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mIsNotifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mIsNotifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mOnDeleteDownloadFileListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    if-eqz v0, :cond_0

    .line 206
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mIsSyncCallback:Z

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mOnDeleteDownloadFileListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    invoke-interface {v0, p1, p2}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;->onDeleteDownloadFileFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;)V

    goto :goto_0

    .line 209
    :cond_2
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mOnDeleteDownloadFileListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    invoke-static {p1, p2, v0}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$MainThreadHelper;->onDeleteDownloadFileFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V

    goto :goto_0
.end method

.method private notifyPrepared(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 1
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 165
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mOnDeleteDownloadFileListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mIsSyncCallback:Z

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mOnDeleteDownloadFileListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    invoke-interface {v0, p1}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;->onDeleteDownloadFilePrepared(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mOnDeleteDownloadFileListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    invoke-static {p1, v0}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$MainThreadHelper;->onDeleteDownloadFilePrepared(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V

    goto :goto_0
.end method

.method private notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 3
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 180
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mIsNotifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mIsNotifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mOnDeleteDownloadFileListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    if-eqz v0, :cond_0

    .line 186
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mIsSyncCallback:Z

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mOnDeleteDownloadFileListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    invoke-interface {v0, p1}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;->onDeleteDownloadFileSuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    goto :goto_0

    .line 189
    :cond_2
    iget-object v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mOnDeleteDownloadFileListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    invoke-static {p1, v0}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$MainThreadHelper;->onDeleteDownloadFileSuccess(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V

    goto :goto_0
.end method


# virtual methods
.method public enableSyncCallback()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mIsSyncCallback:Z

    .line 56
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    const/4 v3, 0x0

    .line 68
    .local v3, "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    :try_start_0
    iget-object v8, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mDownloadFileDeleter:Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;

    iget-object v9, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-interface {v8, v9}, Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v1

    .line 72
    invoke-static {v1}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 73
    new-instance v4, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$OnDeleteDownloadFileFailReason;

    iget-object v8, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    const-string v9, "the download file not exist !"

    sget-object v10, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$OnDeleteDownloadFileFailReason;->TYPE_FILE_RECORD_IS_NOT_EXIST:Ljava/lang/String;

    invoke-direct {v4, v8, v9, v10}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$OnDeleteDownloadFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .end local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    .local v4, "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    if-nez v4, :cond_0

    .line 143
    invoke-direct {p0, v1}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 145
    sget-object v8, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".run \u5220\u9664\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_0
    sget-object v8, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".run \u6587\u4ef6\u5220\u9664\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v4, :cond_1

    :goto_1
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\uff0curl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 157
    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    .restart local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    :goto_2
    return-void

    .line 148
    .end local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    :cond_0
    invoke-direct {p0, v1, v4}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;)V

    .line 150
    sget-object v8, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".run \u5220\u9664\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\uff0cfailReason:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v6, v7

    .line 155
    goto :goto_1

    .line 81
    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    .restart local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    :cond_2
    :try_start_1
    invoke-direct {p0, v1}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->notifyPrepared(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 84
    invoke-static {v1}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->canDelete(Lorg/wlf/filedownloader/DownloadFileInfo;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 85
    new-instance v4, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$OnDeleteDownloadFileFailReason;

    iget-object v8, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    const-string v9, "the download file status error !"

    sget-object v10, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$OnDeleteDownloadFileFailReason;->TYPE_FILE_STATUS_ERROR:Ljava/lang/String;

    invoke-direct {v4, v8, v9, v10}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$OnDeleteDownloadFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .end local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    if-nez v4, :cond_3

    .line 143
    invoke-direct {p0, v1}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 145
    sget-object v8, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".run \u5220\u9664\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_3
    sget-object v8, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".run \u6587\u4ef6\u5220\u9664\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v4, :cond_4

    :goto_4
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\uff0curl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    .restart local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    goto/16 :goto_2

    .line 148
    .end local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    :cond_3
    invoke-direct {p0, v1, v4}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;)V

    .line 150
    sget-object v8, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".run \u5220\u9664\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\uff0cfailReason:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    move v6, v7

    .line 155
    goto :goto_4

    .line 94
    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    .restart local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    :cond_5
    const/4 v0, 0x0

    .line 96
    .local v0, "deleteResult":Z
    :try_start_2
    iget-object v8, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mDownloadFileDeleter:Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;

    iget-object v9, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-interface {v8, v9}, Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;->deleteDownloadFile(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    const/4 v0, 0x1

    .line 102
    :goto_5
    if-nez v0, :cond_8

    .line 103
    :try_start_3
    new-instance v4, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$OnDeleteDownloadFileFailReason;

    iget-object v8, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    const-string v9, "delete file in record failed !"

    sget-object v10, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$OnDeleteDownloadFileFailReason;->TYPE_UNKNOWN:Ljava/lang/String;

    invoke-direct {v4, v8, v9, v10}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$OnDeleteDownloadFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    .end local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    if-nez v4, :cond_6

    .line 143
    invoke-direct {p0, v1}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 145
    sget-object v8, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".run \u5220\u9664\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_6
    sget-object v8, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".run \u6587\u4ef6\u5220\u9664\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v4, :cond_7

    :goto_7
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\uff0curl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    .restart local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    goto/16 :goto_2

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 134
    .end local v0    # "deleteResult":Z
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 135
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    new-instance v4, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$OnDeleteDownloadFileFailReason;

    iget-object v8, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-direct {v4, v8, v2}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$OnDeleteDownloadFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 141
    .end local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    if-nez v4, :cond_10

    .line 143
    invoke-direct {p0, v1}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 145
    sget-object v8, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".run \u5220\u9664\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_8
    sget-object v8, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".run \u6587\u4ef6\u5220\u9664\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v4, :cond_11

    :goto_9
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\uff0curl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 156
    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    .restart local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    goto/16 :goto_2

    .line 148
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    .restart local v0    # "deleteResult":Z
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    :cond_6
    invoke-direct {p0, v1, v4}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;)V

    .line 150
    sget-object v8, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".run \u5220\u9664\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\uff0cfailReason:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_7
    move v6, v7

    .line 155
    goto/16 :goto_7

    .line 109
    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    .restart local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    :cond_8
    :try_start_6
    sget-object v8, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".run \u6570\u636e\u5e93\u5220\u9664\u6210\u529furl\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-boolean v8, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mDeleteDownloadedFileInPath:Z

    if-eqz v8, :cond_9

    .line 113
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileDir()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .local v5, "file":Ljava/io/File;
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 115
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    .line 126
    .end local v5    # "file":Ljava/io/File;
    :cond_9
    :goto_a
    if-nez v0, :cond_d

    .line 127
    new-instance v4, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$OnDeleteDownloadFileFailReason;

    iget-object v8, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    const-string v9, "delete file in path failed !"

    sget-object v10, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$OnDeleteDownloadFileFailReason;->TYPE_UNKNOWN:Ljava/lang/String;

    invoke-direct {v4, v8, v9, v10}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$OnDeleteDownloadFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 141
    .end local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    if-nez v4, :cond_b

    .line 143
    invoke-direct {p0, v1}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 145
    sget-object v8, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".run \u5220\u9664\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_b
    sget-object v8, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".run \u6587\u4ef6\u5220\u9664\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v4, :cond_c

    :goto_c
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\uff0curl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    .restart local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    goto/16 :goto_2

    .line 119
    .restart local v5    # "file":Ljava/io/File;
    :cond_a
    :try_start_7
    new-instance v5, Ljava/io/File;

    .end local v5    # "file":Ljava/io/File;
    invoke-virtual {v1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileDir()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getTempFileName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .restart local v5    # "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 121
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v0

    goto :goto_a

    .line 148
    .end local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    :cond_b
    invoke-direct {p0, v1, v4}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;)V

    .line 150
    sget-object v8, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".run \u5220\u9664\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\uff0cfailReason:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_c
    move v6, v7

    .line 155
    goto :goto_c

    .line 133
    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    .restart local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    :cond_d
    :try_start_8
    sget-object v8, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".run \u6587\u4ef6\u5220\u9664\u6210\u529furl\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 141
    if-nez v3, :cond_e

    .line 143
    invoke-direct {p0, v1}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 145
    sget-object v8, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".run \u5220\u9664\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_d
    sget-object v8, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".run \u6587\u4ef6\u5220\u9664\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v3, :cond_f

    :goto_e
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\uff0curl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 148
    :cond_e
    invoke-direct {p0, v1, v3}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;)V

    .line 150
    sget-object v8, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".run \u5220\u9664\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\uff0cfailReason:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_f
    move v6, v7

    .line 155
    goto :goto_e

    .line 148
    .end local v0    # "deleteResult":Z
    .end local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    :cond_10
    invoke-direct {p0, v1, v4}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;)V

    .line 150
    sget-object v8, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".run \u5220\u9664\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\uff0cfailReason:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_11
    move v6, v7

    .line 155
    goto/16 :goto_9

    .line 139
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    .restart local v3    # "failReason":Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;
    :catchall_0
    move-exception v8

    .line 141
    if-nez v3, :cond_12

    .line 143
    invoke-direct {p0, v1}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 145
    sget-object v9, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".run \u5220\u9664\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_f
    sget-object v9, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".run \u6587\u4ef6\u5220\u9664\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v3, :cond_13

    :goto_10
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\uff0curl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v8

    .line 148
    :cond_12
    invoke-direct {p0, v1, v3}, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;)V

    .line 150
    sget-object v9, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".run \u5220\u9664\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\uff0cfailReason:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_13
    move v6, v7

    .line 155
    goto :goto_10
.end method

.method public setOnDeleteDownloadFileListener(Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V
    .locals 0
    .param p1, "onDeleteDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    .prologue
    .line 48
    iput-object p1, p0, Lorg/wlf/filedownloader/file_delete/DeleteDownloadFileTask;->mOnDeleteDownloadFileListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    .line 49
    return-void
.end method
