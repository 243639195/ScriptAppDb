.class Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;
.super Ljava/lang/Object;
.source "RenameDownloadFileTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private includedSuffix:Z

.field private mDownloadFileRenamer:Lorg/wlf/filedownloader/file_rename/DownloadFileRenamer;

.field private mIsNotifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mNewFileName:Ljava/lang/String;

.field private mOnRenameDownloadFileListener:Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/wlf/filedownloader/file_rename/DownloadFileRenamer;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "newFileName"    # Ljava/lang/String;
    .param p3, "includedSuffix"    # Z
    .param p4, "downloadFileRenamer"    # Lorg/wlf/filedownloader/file_rename/DownloadFileRenamer;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mIsNotifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    iput-object p1, p0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mNewFileName:Ljava/lang/String;

    .line 43
    iput-boolean p3, p0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->includedSuffix:Z

    .line 44
    iput-object p4, p0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mDownloadFileRenamer:Lorg/wlf/filedownloader/file_rename/DownloadFileRenamer;

    .line 45
    return-void
.end method

.method private checkNewFileExist(Ljava/io/File;)Z
    .locals 6
    .param p1, "newFile"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x1

    .line 222
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 241
    :goto_0
    return v4

    .line 226
    :cond_0
    iget-object v5, p0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mDownloadFileRenamer:Lorg/wlf/filedownloader/file_rename/DownloadFileRenamer;

    invoke-interface {v5}, Lorg/wlf/filedownloader/file_rename/DownloadFileRenamer;->getDownloadFiles()Ljava/util/List;

    move-result-object v0

    .line 227
    .local v0, "downloadFileInfos":Ljava/util/List;, "Ljava/util/List<Lorg/wlf/filedownloader/DownloadFileInfo;>;"
    invoke-static {v0}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 228
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wlf/filedownloader/DownloadFileInfo;

    .line 229
    .local v2, "info":Lorg/wlf/filedownloader/DownloadFileInfo;
    if-eqz v2, :cond_1

    .line 232
    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 236
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 241
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lorg/wlf/filedownloader/DownloadFileInfo;
    .end local v3    # "path":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;)V
    .locals 3
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "failReason"    # Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;

    .prologue
    .line 276
    iget-object v0, p0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mIsNotifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mIsNotifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mOnRenameDownloadFileListener:Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mOnRenameDownloadFileListener:Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    invoke-static {p1, p2, v0}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper;->onRenameDownloadFileFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V

    goto :goto_0
.end method

.method private notifyPrepared(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 1
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 250
    iget-object v0, p0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mOnRenameDownloadFileListener:Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mOnRenameDownloadFileListener:Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    invoke-static {p1, v0}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper;->onRenameDownloadFilePrepared(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V

    goto :goto_0
.end method

.method private notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 3
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 261
    iget-object v0, p0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mIsNotifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mIsNotifyFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mOnRenameDownloadFileListener:Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mOnRenameDownloadFileListener:Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    invoke-static {p1, v0}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper;->onRenameDownloadFileSuccess(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 73
    const/4 v2, 0x0

    .line 74
    .local v2, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    const/4 v5, 0x0

    .line 78
    .local v5, "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mDownloadFileRenamer:Lorg/wlf/filedownloader/file_rename/DownloadFileRenamer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-interface {v13, v14}, Lorg/wlf/filedownloader/file_rename/DownloadFileRenamer;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v2

    .line 82
    invoke-static {v2}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 83
    new-instance v6, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    const-string v14, "the download file is not exist !"

    sget-object v15, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;->TYPE_FILE_RECORD_IS_NOT_EXIST:Ljava/lang/String;

    invoke-direct {v6, v13, v14, v15}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .end local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .local v6, "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    if-nez v6, :cond_0

    .line 202
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 204
    sget-object v13, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".run \u91cd\u547d\u540d\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_0
    sget-object v14, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ".run \u91cd\u547d\u540d\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-nez v6, :cond_1

    const/4 v13, 0x1

    :goto_1
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "\uff0curl\uff1a"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 216
    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    :goto_2
    return-void

    .line 207
    .end local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;)V

    .line 209
    sget-object v13, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".run \u91cd\u547d\u540d\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",failReason:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 90
    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->notifyPrepared(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 93
    invoke-static {v2}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->canRename(Lorg/wlf/filedownloader/DownloadFileInfo;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 95
    new-instance v6, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    const-string v14, "the download file status error !"

    sget-object v15, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;->TYPE_FILE_STATUS_ERROR:Ljava/lang/String;

    invoke-direct {v6, v13, v14, v15}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    .end local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    if-nez v6, :cond_3

    .line 202
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 204
    sget-object v13, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".run \u91cd\u547d\u540d\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_3
    sget-object v14, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ".run \u91cd\u547d\u540d\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-nez v6, :cond_4

    const/4 v13, 0x1

    :goto_4
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "\uff0curl\uff1a"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    goto/16 :goto_2

    .line 207
    .end local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;)V

    .line 209
    sget-object v13, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".run \u91cd\u547d\u540d\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",failReason:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 214
    :cond_4
    const/4 v13, 0x0

    goto :goto_4

    .line 101
    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    :cond_5
    :try_start_2
    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileDir()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "dirPath":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v9

    .line 104
    .local v9, "oldFileName":Ljava/lang/String;
    const-string v12, ""

    .line 105
    .local v12, "suffix":Ljava/lang/String;
    if-eqz v9, :cond_6

    const-string v13, "."

    invoke-virtual {v9, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 106
    const-string v13, "."

    invoke-virtual {v9, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 107
    .local v7, "index":I
    const/4 v13, -0x1

    if-eq v7, v13, :cond_6

    .line 108
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v9, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 112
    .end local v7    # "index":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->includedSuffix:Z

    if-nez v13, :cond_7

    .line 113
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mNewFileName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mNewFileName:Ljava/lang/String;

    .line 117
    :cond_7
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mNewFileName:Ljava/lang/String;

    invoke-direct {v8, v1, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .local v8, "newFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mNewFileName:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 120
    new-instance v6, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    const-string v14, "new file name is empty !"

    sget-object v15, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;->TYPE_NEW_FILE_NAME_IS_EMPTY:Ljava/lang/String;

    invoke-direct {v6, v13, v14, v15}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    .end local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    if-nez v6, :cond_8

    .line 202
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 204
    sget-object v13, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".run \u91cd\u547d\u540d\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_5
    sget-object v14, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ".run \u91cd\u547d\u540d\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-nez v6, :cond_9

    const/4 v13, 0x1

    :goto_6
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "\uff0curl\uff1a"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    goto/16 :goto_2

    .line 207
    .end local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;)V

    .line 209
    sget-object v13, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".run \u91cd\u547d\u540d\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",failReason:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 214
    :cond_9
    const/4 v13, 0x0

    goto :goto_6

    .line 126
    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->checkNewFileExist(Ljava/io/File;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 127
    new-instance v6, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    const-string v14, "the new file has been exist !"

    sget-object v15, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;->TYPE_NEW_FILE_HAS_BEEN_EXIST:Ljava/lang/String;

    invoke-direct {v6, v13, v14, v15}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    .end local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    if-nez v6, :cond_b

    .line 202
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 204
    sget-object v13, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".run \u91cd\u547d\u540d\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_7
    sget-object v14, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ".run \u91cd\u547d\u540d\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-nez v6, :cond_c

    const/4 v13, 0x1

    :goto_8
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "\uff0curl\uff1a"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    goto/16 :goto_2

    .line 207
    .end local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;)V

    .line 209
    sget-object v13, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".run \u91cd\u547d\u540d\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",failReason:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 214
    :cond_c
    const/4 v13, 0x0

    goto :goto_8

    .line 134
    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    :cond_d
    const/4 v11, 0x0

    .line 138
    .local v11, "renameResult":Z
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mDownloadFileRenamer:Lorg/wlf/filedownloader/file_rename/DownloadFileRenamer;

    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mNewFileName:Ljava/lang/String;

    invoke-interface {v13, v14, v15}, Lorg/wlf/filedownloader/file_rename/DownloadFileRenamer;->renameDownloadFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 139
    const/4 v11, 0x1

    .line 144
    :goto_9
    if-nez v11, :cond_10

    .line 145
    :try_start_5
    new-instance v6, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    const-string v14, "rename file in db failed !"

    sget-object v15, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;->TYPE_UNKNOWN:Ljava/lang/String;

    invoke-direct {v6, v13, v14, v15}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 200
    .end local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    if-nez v6, :cond_e

    .line 202
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 204
    sget-object v13, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".run \u91cd\u547d\u540d\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_a
    sget-object v14, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ".run \u91cd\u547d\u540d\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-nez v6, :cond_f

    const/4 v13, 0x1

    :goto_b
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "\uff0curl\uff1a"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    goto/16 :goto_2

    .line 140
    :catch_0
    move-exception v3

    .line 141
    .local v3, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_9

    .line 193
    .end local v1    # "dirPath":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "newFile":Ljava/io/File;
    .end local v9    # "oldFileName":Ljava/lang/String;
    .end local v11    # "renameResult":Z
    .end local v12    # "suffix":Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v6, v5

    .line 194
    .end local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v3    # "e":Ljava/lang/Exception;
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    :goto_c
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    new-instance v5, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-direct {v5, v13, v3}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 200
    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    if-nez v5, :cond_18

    .line 202
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 204
    sget-object v13, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".run \u91cd\u547d\u540d\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_d
    sget-object v14, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ".run \u91cd\u547d\u540d\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-nez v5, :cond_19

    const/4 v13, 0x1

    :goto_e
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "\uff0curl\uff1a"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 207
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v1    # "dirPath":Ljava/lang/String;
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v8    # "newFile":Ljava/io/File;
    .restart local v9    # "oldFileName":Ljava/lang/String;
    .restart local v11    # "renameResult":Z
    .restart local v12    # "suffix":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;)V

    .line 209
    sget-object v13, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".run \u91cd\u547d\u540d\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",failReason:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 214
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_b

    .line 154
    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    :cond_10
    :try_start_8
    invoke-static {v2}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isCompleted(Lorg/wlf/filedownloader/DownloadFileInfo;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 155
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .local v10, "oldSaveFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 159
    invoke-virtual {v10, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v11

    move-object v6, v5

    .line 166
    .end local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    :goto_f
    if-nez v11, :cond_14

    .line 169
    :try_start_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mDownloadFileRenamer:Lorg/wlf/filedownloader/file_rename/DownloadFileRenamer;

    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14, v9}, Lorg/wlf/filedownloader/file_rename/DownloadFileRenamer;->renameDownloadFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 181
    :goto_10
    if-nez v6, :cond_1c

    .line 182
    :try_start_a
    new-instance v5, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    const-string v14, "rename file in file system failed !"

    sget-object v15, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;->TYPE_UNKNOWN:Ljava/lang/String;

    invoke-direct {v5, v13, v14, v15}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 200
    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    :goto_11
    if-nez v5, :cond_12

    .line 202
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 204
    sget-object v13, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".run \u91cd\u547d\u540d\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_12
    sget-object v14, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ".run \u91cd\u547d\u540d\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-nez v5, :cond_13

    const/4 v13, 0x1

    :goto_13
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "\uff0curl\uff1a"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 161
    :cond_11
    const/4 v11, 0x0

    .line 162
    :try_start_b
    new-instance v6, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    const-string v14, "the original file not exist !"

    sget-object v15, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;->TYPE_ORIGINAL_FILE_NOT_EXIST:Ljava/lang/String;

    invoke-direct {v6, v13, v14, v15}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .end local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    goto/16 :goto_f

    .line 170
    :catch_2
    move-exception v3

    .line 171
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_c
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 174
    :try_start_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mDownloadFileRenamer:Lorg/wlf/filedownloader/file_rename/DownloadFileRenamer;

    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14, v9}, Lorg/wlf/filedownloader/file_rename/DownloadFileRenamer;->renameDownloadFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_10

    .line 175
    :catch_3
    move-exception v4

    .line 176
    .local v4, "e1":Ljava/lang/Exception;
    :try_start_e
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_10

    .line 193
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "e1":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    goto/16 :goto_c

    .line 207
    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;)V

    .line 209
    sget-object v13, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".run \u91cd\u547d\u540d\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",failReason:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 214
    :cond_13
    const/4 v13, 0x0

    goto :goto_13

    .end local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    :cond_14
    move-object v5, v6

    .line 200
    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .end local v10    # "oldSaveFile":Ljava/io/File;
    .restart local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    :cond_15
    if-nez v5, :cond_16

    .line 202
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 204
    sget-object v13, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".run \u91cd\u547d\u540d\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_14
    sget-object v14, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ".run \u91cd\u547d\u540d\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-nez v5, :cond_17

    const/4 v13, 0x1

    :goto_15
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "\uff0curl\uff1a"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 207
    :cond_16
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;)V

    .line 209
    sget-object v13, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".run \u91cd\u547d\u540d\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",failReason:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 214
    :cond_17
    const/4 v13, 0x0

    goto :goto_15

    .line 207
    .end local v1    # "dirPath":Ljava/lang/String;
    .end local v8    # "newFile":Ljava/io/File;
    .end local v9    # "oldFileName":Ljava/lang/String;
    .end local v11    # "renameResult":Z
    .end local v12    # "suffix":Ljava/lang/String;
    .restart local v3    # "e":Ljava/lang/Exception;
    :cond_18
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;)V

    .line 209
    sget-object v13, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".run \u91cd\u547d\u540d\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",failReason:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 214
    :cond_19
    const/4 v13, 0x0

    goto/16 :goto_e

    .line 198
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    move-object v14, v13

    .line 200
    :goto_16
    if-nez v5, :cond_1a

    .line 202
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->notifySuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 204
    sget-object v13, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".run \u91cd\u547d\u540d\u6210\u529f\uff0curl\uff1a"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_17
    sget-object v15, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, ".run \u91cd\u547d\u540d\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-nez v5, :cond_1b

    const/4 v13, 0x1

    :goto_18
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, "\uff0curl\uff1a"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v15, v13}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v14

    .line 207
    :cond_1a
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->notifyFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;)V

    .line 209
    sget-object v13, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->TAG:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".run \u91cd\u547d\u540d\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",failReason:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;->getType()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 214
    :cond_1b
    const/4 v13, 0x0

    goto :goto_18

    .line 198
    .end local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    :catchall_1
    move-exception v13

    move-object v14, v13

    move-object v5, v6

    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    goto/16 :goto_16

    .end local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v1    # "dirPath":Ljava/lang/String;
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v8    # "newFile":Ljava/io/File;
    .restart local v9    # "oldFileName":Ljava/lang/String;
    .restart local v10    # "oldSaveFile":Ljava/io/File;
    .restart local v11    # "renameResult":Z
    .restart local v12    # "suffix":Ljava/lang/String;
    :cond_1c
    move-object v5, v6

    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    .restart local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
    goto/16 :goto_11
.end method

.method public setOnRenameDownloadFileListener(Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V
    .locals 0
    .param p1, "onRenameDownloadFileListener"    # Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    .prologue
    .line 53
    iput-object p1, p0, Lorg/wlf/filedownloader/file_rename/RenameDownloadFileTask;->mOnRenameDownloadFileListener:Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    .line 54
    return-void
.end method
