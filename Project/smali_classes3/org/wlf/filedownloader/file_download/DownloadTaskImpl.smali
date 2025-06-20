.class Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;
.super Ljava/lang/Object;
.source "DownloadTaskImpl.java"

# interfaces
.implements Lorg/wlf/filedownloader/file_download/base/DownloadTask;
.implements Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$OnHttpDownloadListener;
.implements Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$OnFileSaveListener;
.implements Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$OnRangeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

.field private mConnectTimeout:I

.field private mCurrentTaskThread:Ljava/lang/Thread;

.field private mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

.field private mDownloader:Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;

.field private mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

.field private mIsNotifyTaskFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsRunning:Z

.field private mIsTaskStop:Z

.field private mLastDownloadingTime:J

.field private mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

.field private mOnStopFileDownloadTaskListener:Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

.field private mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

.field private mSaver:Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;

.field private mTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 3
    .param p1, "taskParamInfo"    # Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;
    .param p2, "downloadRecorder"    # Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;
    .param p3, "onFileDownloadStatusListener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsTaskStop:Z

    .line 62
    iput-boolean v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsRunning:Z

    .line 65
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mLastDownloadingTime:J

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsNotifyTaskFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    const/16 v0, 0x3a98

    iput v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mConnectTimeout:I

    .line 84
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    .line 86
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->init()V

    .line 88
    iput-object p2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    .line 90
    iput-object p3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .line 95
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->checkTaskCanExecute()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stop()V

    .line 99
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyTaskFinish()V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyStatusWaiting()Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stop()V

    .line 108
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyTaskFinish()V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mSaver:Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mSaver:Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    :cond_3
    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stop()V

    .line 117
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyTaskFinish()V

    goto :goto_0

    .line 121
    :cond_4
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsTaskStop:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stopInternalImpl()V

    .line 125
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyTaskFinish()V

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    .prologue
    .line 42
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsTaskStop:Z

    return v0
.end method

.method static synthetic access$002(Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsTaskStop:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stopInternalImpl()V

    return-void
.end method

.method static synthetic access$300(Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;)Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mSaver:Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;

    return-object v0
.end method

.method static synthetic access$400(Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    .prologue
    .line 42
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$500(Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyTaskFinish()V

    return-void
.end method

.method static synthetic access$600(Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyStopTaskSucceedIfNecessary()V

    return-void
.end method

.method private checkTaskCanExecute()Z
    .locals 18

    .prologue
    .line 162
    const/4 v5, 0x0

    .line 164
    .local v5, "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    invoke-virtual/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v12

    .line 166
    .local v12, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    if-nez v13, :cond_0

    .line 168
    new-instance v5, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    .end local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    const-string v13, "init param is null pointer !"

    sget-object v14, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_NULL_POINTER:Ljava/lang/String;

    invoke-direct {v5, v12, v13, v14}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .restart local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    :cond_0
    if-nez v5, :cond_1

    invoke-static {v12}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 173
    new-instance v5, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    .end local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    const-string v13, "url illegal !"

    sget-object v14, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_URL_ILLEGAL:Ljava/lang/String;

    invoke-direct {v5, v12, v13, v14}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .restart local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    :cond_1
    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v13}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/wlf/filedownloader/util/FileUtil;->isFilePath(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 178
    new-instance v5, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    .end local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    const-string v13, "saveDir illegal !"

    sget-object v14, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_FILE_SAVE_PATH_ILLEGAL:Ljava/lang/String;

    invoke-direct {v5, v12, v13, v14}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .restart local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    :cond_2
    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v13}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getTempFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/wlf/filedownloader/util/FileUtil;->canWrite(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v13}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/wlf/filedownloader/util/FileUtil;->canWrite(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 184
    :cond_3
    new-instance v5, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    .end local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    const-string v13, "savePath can not write !"

    sget-object v14, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_STORAGE_SPACE_CAN_NOT_WRITE:Ljava/lang/String;

    invoke-direct {v5, v12, v13, v14}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .restart local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    :cond_4
    if-nez v5, :cond_6

    .line 190
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v3

    .line 191
    .local v3, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    if-eqz v3, :cond_6

    .line 193
    invoke-virtual {v3}, Lorg/wlf/filedownloader/DownloadFileInfo;->getStatus()I

    move-result v13

    const/4 v14, 0x5

    if-ne v13, v14, :cond_5

    .line 195
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x5

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    .line 196
    const/4 v13, 0x0

    .line 242
    .end local v3    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    :goto_0
    return v13

    .line 199
    .restart local v3    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    :cond_5
    invoke-virtual {v3}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v14

    invoke-virtual {v3}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileSizeLong()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-nez v13, :cond_6

    .line 200
    invoke-static {v3}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->tryToRenameTempFileToSaveFile(Lorg/wlf/filedownloader/DownloadFileInfo;)Z

    move-result v7

    .line 201
    .local v7, "isSucceed":Z
    if-eqz v7, :cond_6

    .line 202
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x5

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    .line 203
    const/4 v13, 0x0

    goto :goto_0

    .line 210
    .end local v3    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    .end local v7    # "isSucceed":Z
    :cond_6
    if-nez v5, :cond_8

    .line 212
    const/4 v2, 0x0

    .line 213
    .local v2, "checkPath":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v13}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v6, "file":Ljava/io/File;
    if-eqz v6, :cond_7

    .line 215
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 217
    :cond_7
    invoke-static {v2}, Lorg/wlf/filedownloader/util/FileUtil;->isFilePath(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 218
    new-instance v5, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    .end local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    const-string v13, "file save path illegal !"

    sget-object v14, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_FILE_SAVE_PATH_ILLEGAL:Ljava/lang/String;

    invoke-direct {v5, v12, v13, v14}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v2    # "checkPath":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    :cond_8
    :goto_1
    if-eqz v5, :cond_b

    .line 239
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x7

    invoke-direct {v13, v14, v5}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    .line 240
    const/4 v13, 0x0

    goto :goto_0

    .line 221
    .restart local v2    # "checkPath":Ljava/lang/String;
    .restart local v6    # "file":Ljava/io/File;
    :cond_9
    :try_start_1
    invoke-static {v2}, Lorg/wlf/filedownloader/util/FileUtil;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v8

    .line 222
    .local v8, "freeSize":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v13}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getFileTotalSize()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v13}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getStartPosInTotal()J

    move-result-wide v16

    sub-long v10, v14, v16

    .line 223
    .local v10, "needDownloadSize":J
    const-wide/16 v14, -0x1

    cmp-long v13, v8, v14

    if-eqz v13, :cond_a

    cmp-long v13, v10, v8

    if-lez v13, :cond_8

    .line 225
    :cond_a
    new-instance v5, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    .end local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    const-string v13, "storage space is full or storage can not write !"

    sget-object v14, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_STORAGE_SPACE_IS_FULL:Ljava/lang/String;

    invoke-direct {v5, v12, v13, v14}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    goto :goto_1

    .line 230
    .end local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "freeSize":J
    .end local v10    # "needDownloadSize":J
    :catch_0
    move-exception v4

    .line 231
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    new-instance v5, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    invoke-direct {v5, v12, v4}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v5    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    goto :goto_1

    .line 242
    .end local v2    # "checkPath":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_b
    const/4 v13, 0x1

    goto/16 :goto_0
.end method

.method private getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    if-nez v0, :cond_0

    .line 290
    const/4 v0, 0x0

    .line 292
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 10

    .prologue
    .line 134
    sget-object v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".init 1\u3001\u521d\u59cb\u5316\u65b0\u4e0b\u8f7d\u4efb\u52a1\uff0curl\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v2, Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getStartPosInTotal()J

    move-result-wide v0

    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v3}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getFileTotalSize()J

    move-result-wide v4

    invoke-direct {v2, v0, v1, v4, v5}, Lorg/wlf/filedownloader/file_download/http_downloader/Range;-><init>(JJ)V

    .line 138
    .local v2, "range":Lorg/wlf/filedownloader/file_download/http_downloader/Range;
    new-instance v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v3}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getAcceptRangeType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v4}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getETag()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v5}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getLastModified()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;-><init>(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/http_downloader/Range;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mDownloader:Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;

    .line 140
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mDownloader:Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;

    invoke-virtual {v0, p0}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->setOnHttpDownloadListener(Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$OnHttpDownloadListener;)V

    .line 141
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mDownloader:Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->setCloseConnectionEngine(Ljava/util/concurrent/ExecutorService;)V

    .line 142
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mDownloader:Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;

    iget v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mConnectTimeout:I

    invoke-virtual {v0, v1}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->setConnectTimeout(I)V

    .line 143
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mDownloader:Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;

    invoke-virtual {v0, p0}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->setOnRangeChangeListener(Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$OnRangeChangeListener;)V

    .line 144
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mDownloader:Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v1}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->setRequestMethod(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mDownloader:Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v1}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->setHeaders(Ljava/util/Map;)V

    .line 148
    new-instance v4, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getTempFilePath()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getFilePath()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getFileTotalSize()J

    move-result-wide v8

    invoke-direct/range {v4 .. v9}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v4, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mSaver:Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;

    .line 150
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mSaver:Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;

    invoke-virtual {v0, p0}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->setOnFileSaveListener(Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$OnFileSaveListener;)V

    .line 153
    return-void
.end method

.method private notifyStatusDownloading(I)Z
    .locals 24
    .param p1, "increaseSize"    # I

    .prologue
    .line 649
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    invoke-virtual/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, p1

    invoke-interface {v11, v0, v1, v2}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->recordStatus(Ljava/lang/String;II)V

    .line 651
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v6

    .line 652
    .local v6, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    if-nez v6, :cond_0

    .line 654
    const/16 p1, 0x0

    .line 655
    new-instance v10, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    invoke-virtual/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v11

    const-string v20, "the DownloadFile is null!"

    sget-object v21, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_NULL_POINTER:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v10, v11, v0, v1}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    .local v10, "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    new-instance v11, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/16 v20, 0x7

    move/from16 v0, v20

    move/from16 v1, p1

    invoke-direct {v11, v0, v1, v10}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(IILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    .line 659
    const/4 v11, 0x0

    .line 696
    .end local v6    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    .end local v10    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    :goto_0
    return v11

    .line 662
    .restart local v6    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v11, :cond_3

    .line 663
    const-wide/16 v8, 0x0

    .line 664
    .local v8, "downloadSpeed":D
    const-wide/16 v18, -0x1

    .line 665
    .local v18, "remainingTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 667
    .local v4, "curDownloadingTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mLastDownloadingTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v11, v20, v22

    if-eqz v11, :cond_1

    .line 668
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4090000000000000L    # 1024.0

    div-double v12, v20, v22

    .line 669
    .local v12, "increaseKbs":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mLastDownloadingTime:J

    move-wide/from16 v20, v0

    sub-long v20, v4, v20

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x408f400000000000L    # 1000.0

    div-double v14, v20, v22

    .line 670
    .local v14, "increaseSeconds":D
    div-double v8, v12, v14

    .line 673
    .end local v12    # "increaseKbs":D
    .end local v14    # "increaseSeconds":D
    :cond_1
    const-wide/16 v20, 0x0

    cmpl-double v11, v8, v20

    if-lez v11, :cond_2

    .line 674
    invoke-virtual {v6}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileSizeLong()J

    move-result-wide v20

    invoke-virtual {v6}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v22

    sub-long v16, v20, v22

    .line 675
    .local v16, "remainingSize":J
    const-wide/16 v20, 0x0

    cmp-long v11, v16, v20

    if-lez v11, :cond_2

    .line 676
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4090000000000000L    # 1024.0

    div-double v20, v20, v22

    div-double v20, v20, v8

    move-wide/from16 v0, v20

    double-to-long v0, v0

    move-wide/from16 v18, v0

    .line 679
    .end local v16    # "remainingSize":J
    :cond_2
    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mLastDownloadingTime:J

    .line 681
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v11, :cond_3

    .line 682
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    double-to-float v0, v8

    move/from16 v20, v0

    move/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-interface {v11, v6, v0, v1, v2}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusDownloading(Lorg/wlf/filedownloader/DownloadFileInfo;FJ)V

    .line 687
    .end local v4    # "curDownloadingTime":J
    .end local v8    # "downloadSpeed":D
    .end local v18    # "remainingTime":J
    :cond_3
    sget-object v11, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "file-downloader-status \u8bb0\u5f55\u3010\u6b63\u5728\u4e0b\u8f7d\u72b6\u6001\u3011\u6210\u529f\uff0curl\uff1a"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v11, v0}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 690
    .end local v6    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    :catch_0
    move-exception v7

    .line 691
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 693
    const/16 p1, 0x0

    .line 694
    new-instance v11, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/16 v20, 0x7

    new-instance v21, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    invoke-virtual/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v7}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v11, v0, v1, v2}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(IILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    .line 696
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private notifyStatusPrepared()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 626
    :try_start_0
    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->recordStatus(Ljava/lang/String;II)V

    .line 627
    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v2, :cond_0

    .line 628
    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusPrepared(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 631
    :cond_0
    sget-object v2, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file-downloader-status \u8bb0\u5f55\u3010\u5df2\u51c6\u5907\u72b6\u6001\u3011\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    const/4 v1, 0x1

    .line 638
    :goto_0
    return v1

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 636
    new-instance v2, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v3, 0x7

    new-instance v4, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v2, v3, v4}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    iput-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto :goto_0
.end method

.method private notifyStatusPreparing()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 603
    :try_start_0
    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->recordStatus(Ljava/lang/String;II)V

    .line 604
    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v2, :cond_0

    .line 605
    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusPreparing(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 608
    :cond_0
    sget-object v2, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file-downloader-status \u8bb0\u5f55\u3010\u6b63\u5728\u51c6\u5907\u72b6\u6001\u3011\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    const/4 v1, 0x1

    .line 615
    :goto_0
    return v1

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 613
    new-instance v2, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v3, 0x7

    new-instance v4, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v2, v3, v4}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    iput-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto :goto_0
.end method

.method private notifyStatusWaiting()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 580
    :try_start_0
    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->recordStatus(Ljava/lang/String;II)V

    .line 581
    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v3, :cond_0

    .line 582
    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusWaiting(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 585
    :cond_0
    sget-object v3, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file-downloader-status \u8bb0\u5f55\u3010\u7b49\u5f85\u72b6\u6001\u3011\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :goto_0
    return v1

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 590
    new-instance v1, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v3, 0x7

    new-instance v4, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v3, v4}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    iput-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    move v1, v2

    .line 592
    goto :goto_0
.end method

.method private notifyStopTaskFailedIfNecessary(Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;)V
    .locals 3
    .param p1, "failReason"    # Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;

    .prologue
    .line 817
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnStopFileDownloadTaskListener:Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnStopFileDownloadTaskListener:Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;->onStopFileDownloadTaskFailed(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;)V

    .line 820
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnStopFileDownloadTaskListener:Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    .line 822
    sget-object v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file-downloader-status \u901a\u77e5\u3010\u6682\u505c\u4efb\u52a1\u3011\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_0
    return-void
.end method

.method private notifyStopTaskSucceedIfNecessary()V
    .locals 3

    .prologue
    .line 804
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnStopFileDownloadTaskListener:Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnStopFileDownloadTaskListener:Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;->onStopFileDownloadTaskSucceed(Ljava/lang/String;)V

    .line 807
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnStopFileDownloadTaskListener:Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    .line 809
    sget-object v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file-downloader-status \u901a\u77e5\u3010\u6682\u505c\u4efb\u52a1\u3011\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_0
    return-void
.end method

.method private notifyTaskFinish()V
    .locals 12

    .prologue
    const/4 v6, 0x6

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 705
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-nez v5, :cond_0

    .line 706
    new-instance v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    invoke-direct {v5, v6}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    iput-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    .line 709
    :cond_0
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v4, v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    .line 710
    .local v4, "status":I
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v3, v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->increaseSize:I

    .line 711
    .local v3, "increaseSize":I
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget-object v2, v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    .line 713
    .local v2, "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    packed-switch v4, :pswitch_data_0

    .line 798
    :cond_1
    :goto_0
    return-void

    .line 719
    :pswitch_0
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsNotifyTaskFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_1

    .line 723
    :try_start_0
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4, v3}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->recordStatus(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    packed-switch v4, :pswitch_data_1

    .line 782
    :cond_2
    :goto_1
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsNotifyTaskFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 785
    :try_start_1
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->recordStatus(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 789
    :goto_2
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v5, :cond_3

    .line 790
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusPaused(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 793
    :cond_3
    sget-object v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file-downloader-status \u8bb0\u5f55\u3010\u6682\u505c\u72b6\u6001\u3011\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 726
    :pswitch_1
    :try_start_2
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v5, :cond_2

    .line 727
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsNotifyTaskFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 728
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusPaused(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 730
    sget-object v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file-downloader-status \u8bb0\u5f55\u3010\u6682\u505c\u72b6\u6001\u3011\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 766
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsNotifyTaskFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    if-eqz v5, :cond_4

    .line 769
    :try_start_4
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->recordStatus(Ljava/lang/String;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 773
    :goto_3
    :try_start_5
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v5, :cond_4

    .line 774
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v7

    new-instance v8, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v5, v6, v7, v8}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    .line 777
    sget-object v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file-downloader-status \u8bb0\u5f55\u3010\u6682\u505c/\u5b8c\u6210/\u51fa\u9519\u72b6\u6001\u3011\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/wlf/filedownloader/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 782
    :cond_4
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsNotifyTaskFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 785
    :try_start_6
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->recordStatus(Ljava/lang/String;II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 789
    :goto_4
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v5, :cond_5

    .line 790
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusPaused(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 793
    :cond_5
    sget-object v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file-downloader-status \u8bb0\u5f55\u3010\u6682\u505c\u72b6\u6001\u3011\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 735
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_7
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v5, :cond_2

    .line 736
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsNotifyTaskFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 737
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusCompleted(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 739
    sget-object v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file-downloader-status \u8bb0\u5f55\u3010\u5b8c\u6210\u72b6\u6001\u3011\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 782
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsNotifyTaskFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 785
    :try_start_8
    iget-object v6, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->recordStatus(Ljava/lang/String;II)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 789
    :goto_5
    iget-object v6, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v6, :cond_6

    .line 790
    iget-object v6, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusPaused(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 793
    :cond_6
    sget-object v6, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file-downloader-status \u8bb0\u5f55\u3010\u6682\u505c\u72b6\u6001\u3011\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    throw v5

    .line 744
    :pswitch_3
    :try_start_9
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v5, :cond_2

    .line 745
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsNotifyTaskFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 746
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v7

    invoke-interface {v5, v6, v7, v2}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    .line 749
    sget-object v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file-downloader-status \u8bb0\u5f55\u3010\u9519\u8bef\u72b6\u6001\u3011\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 754
    :pswitch_4
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v5, :cond_2

    .line 755
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsNotifyTaskFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 756
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v7

    invoke-interface {v5, v6, v7, v2}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    .line 759
    sget-object v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file-downloader-status \u8bb0\u5f55\u3010\u6587\u4ef6\u4e0d\u5b58\u5728\u72b6\u6001\u3011\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 786
    :catch_1
    move-exception v0

    .line 787
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 770
    :catch_2
    move-exception v1

    .line 771
    .local v1, "e1":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    .line 786
    .end local v1    # "e1":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 787
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 786
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 787
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 713
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 724
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private stopInternalImpl()V
    .locals 3

    .prologue
    .line 880
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mCurrentTaskThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_1

    .line 881
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 882
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$2;

    invoke-direct {v1, p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$2;-><init>(Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 905
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mSaver:Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;

    invoke-virtual {v1}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->isStopped()Z

    move-result v1

    if-nez v1, :cond_2

    .line 897
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mSaver:Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;

    invoke-virtual {v1}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->stop()V

    .line 899
    :cond_2
    iget-boolean v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsRunning:Z

    if-nez v1, :cond_0

    .line 901
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyTaskFinish()V

    .line 902
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyStopTaskSucceedIfNecessary()V

    goto :goto_0
.end method


# virtual methods
.method public getFinishState()Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 300
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 831
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsTaskStop:Z

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mSaver:Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 834
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stopInternalImpl()V

    .line 837
    :cond_0
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsTaskStop:Z

    return v0
.end method

.method public onDownloadConnected(Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;J)V
    .locals 6
    .param p1, "inputStream"    # Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;
    .param p2, "startPosInTotal"    # J

    .prologue
    .line 485
    iget-boolean v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsTaskStop:Z

    if-eqz v1, :cond_0

    .line 487
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stopInternalImpl()V

    .line 510
    :goto_0
    return-void

    .line 492
    :cond_0
    sget-object v1, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".run 3\u3001\u5df2\u7ecf\u8fde\u63a5\u5230\u8d44\u6e90\uff0curl\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyStatusPrepared()Z

    move-result v1

    if-nez v1, :cond_1

    .line 496
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stopInternalImpl()V

    goto :goto_0

    .line 503
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mSaver:Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;

    invoke-virtual {v1, p1, p2, p3}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->saveData(Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;J)V
    :try_end_0
    .catch Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;
    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->printStackTrace()V

    .line 507
    new-instance v1, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v2, 0x7

    new-instance v3, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v3}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    iput-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto :goto_0
.end method

.method public onRangeChanged(Lorg/wlf/filedownloader/file_download/http_downloader/Range;Lorg/wlf/filedownloader/file_download/http_downloader/Range;)Z
    .locals 8
    .param p1, "oldRange"    # Lorg/wlf/filedownloader/file_download/http_downloader/Range;
    .param p2, "newRange"    # Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 456
    invoke-static {p2}, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->isLegal(Lorg/wlf/filedownloader/file_download/http_downloader/Range;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 463
    iget-wide v4, p2, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->startPos:J

    iget-wide v6, p1, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->startPos:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    iget-wide v4, p1, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->startPos:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 478
    :goto_0
    return v1

    .line 469
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget-wide v6, p2, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->startPos:J

    invoke-interface {v3, v4, v6, v7}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->resetDownloadSize(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 475
    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v1, v2

    .line 478
    goto :goto_0
.end method

.method public onSaveDataEnd(IZ)V
    .locals 3
    .param p1, "increaseSize"    # I
    .param p2, "complete"    # Z

    .prologue
    .line 558
    if-nez p2, :cond_0

    .line 559
    new-instance v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(II)V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    .line 561
    sget-object v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".run 6\u3001\u6682\u505c\u4e0b\u8f7d\uff0curl\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :goto_0
    return-void

    .line 563
    :cond_0
    new-instance v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(II)V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    .line 565
    sget-object v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".run 6\u3001\u4e0b\u8f7d\u5b8c\u6210\uff0curl\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSaveDataStart()V
    .locals 3

    .prologue
    .line 516
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsTaskStop:Z

    if-eqz v0, :cond_1

    .line 518
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stopInternalImpl()V

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    sget-object v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".run 4\u3001\u51c6\u5907\u4e0b\u8f7d\uff0curl\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyStatusDownloading(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stopInternalImpl()V

    goto :goto_0
.end method

.method public onSavingData(IJ)V
    .locals 3
    .param p1, "increaseSize"    # I
    .param p2, "totalSize"    # J

    .prologue
    .line 537
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsTaskStop:Z

    if-eqz v0, :cond_1

    .line 539
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stopInternalImpl()V

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    sget-object v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".run 5\u3001\u4e0b\u8f7d\u4e2d\uff0curl\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyStatusDownloading(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stopInternalImpl()V

    goto :goto_0
.end method

.method public run()V
    .locals 17

    .prologue
    .line 311
    invoke-virtual/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v12

    .line 314
    .local v12, "url":Ljava/lang/String;
    const/4 v13, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsRunning:Z

    .line 315
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mCurrentTaskThread:Ljava/lang/Thread;

    .line 319
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsTaskStop:Z

    if-eqz v13, :cond_8

    .line 321
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stopInternalImpl()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v2

    .line 383
    .local v2, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    if-nez v2, :cond_2

    .line 384
    new-instance v6, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    const-string v13, "the DownloadFile is null, may be not deleted ?"

    sget-object v14, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_NULL_POINTER:Ljava/lang/String;

    invoke-direct {v6, v12, v13, v14}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .local v6, "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x7

    invoke-direct {v13, v14, v6}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    .line 425
    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stopInternalImpl()V

    .line 428
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsTaskStop:Z

    .line 429
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsRunning:Z

    .line 434
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyTaskFinish()V

    .line 435
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyStopTaskSucceedIfNecessary()V

    .line 439
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    if-eqz v13, :cond_1

    .line 440
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    invoke-interface {v13}, Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;->onTaskRunFinish()V

    .line 443
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget-object v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    invoke-static {v13}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->hasException(I)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v10, 0x1

    .line 446
    .local v10, "hasException":Z
    :goto_1
    sget-object v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".run 7\u3001\u6587\u4ef6\u4e0b\u8f7d\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\uff0curl\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :goto_2
    return-void

    .line 390
    .end local v10    # "hasException":Z
    :cond_2
    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v4

    .line 391
    .local v4, "downloadedSize":J
    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileSizeLong()J

    move-result-wide v8

    .line 393
    .local v8, "fileSize":J
    cmp-long v13, v4, v8

    if-nez v13, :cond_4

    .line 395
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v13, :cond_3

    .line 396
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    const/4 v14, 0x5

    if-eq v13, v14, :cond_0

    .line 397
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x5

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_0

    .line 400
    :cond_3
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x5

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_0

    .line 402
    :cond_4
    cmp-long v13, v4, v8

    if-gez v13, :cond_6

    .line 404
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v13, :cond_5

    .line 405
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget-object v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    if-nez v13, :cond_0

    .line 406
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    invoke-static {v13}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->hasException(I)Z

    move-result v13

    if-nez v13, :cond_0

    .line 407
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x6

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_0

    .line 411
    :cond_5
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x6

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_0

    .line 415
    :cond_6
    new-instance v6, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    const-string v13, "the download file size error !"

    sget-object v14, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_DOWNLOAD_FILE_ERROR:Ljava/lang/String;

    invoke-direct {v6, v12, v13, v14}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x7

    invoke-direct {v13, v14, v6}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_0

    .line 443
    .end local v4    # "downloadedSize":J
    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    .end local v8    # "fileSize":J
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 325
    .end local v2    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mSaver:Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mSaver:Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;

    invoke-virtual {v13}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->isStopped()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 326
    :cond_9
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->init()V

    .line 331
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mSaver:Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mSaver:Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;

    invoke-virtual {v13}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->isStopped()Z

    move-result v13

    if-eqz v13, :cond_14

    .line 333
    :cond_b
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stopInternalImpl()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v2

    .line 383
    .restart local v2    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    if-nez v2, :cond_e

    .line 384
    new-instance v6, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    const-string v13, "the DownloadFile is null, may be not deleted ?"

    sget-object v14, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_NULL_POINTER:Ljava/lang/String;

    invoke-direct {v6, v12, v13, v14}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x7

    invoke-direct {v13, v14, v6}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    .line 425
    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    :cond_c
    :goto_3
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stopInternalImpl()V

    .line 428
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsTaskStop:Z

    .line 429
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsRunning:Z

    .line 434
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyTaskFinish()V

    .line 435
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyStopTaskSucceedIfNecessary()V

    .line 439
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    if-eqz v13, :cond_d

    .line 440
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    invoke-interface {v13}, Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;->onTaskRunFinish()V

    .line 443
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v13, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget-object v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    if-eqz v13, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    invoke-static {v13}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->hasException(I)Z

    move-result v13

    if-eqz v13, :cond_13

    const/4 v10, 0x1

    .line 446
    .restart local v10    # "hasException":Z
    :goto_4
    sget-object v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".run 7\u3001\u6587\u4ef6\u4e0b\u8f7d\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\uff0curl\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 390
    .end local v10    # "hasException":Z
    :cond_e
    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v4

    .line 391
    .restart local v4    # "downloadedSize":J
    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileSizeLong()J

    move-result-wide v8

    .line 393
    .restart local v8    # "fileSize":J
    cmp-long v13, v4, v8

    if-nez v13, :cond_10

    .line 395
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v13, :cond_f

    .line 396
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    const/4 v14, 0x5

    if-eq v13, v14, :cond_c

    .line 397
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x5

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_3

    .line 400
    :cond_f
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x5

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_3

    .line 402
    :cond_10
    cmp-long v13, v4, v8

    if-gez v13, :cond_12

    .line 404
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v13, :cond_11

    .line 405
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget-object v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    if-nez v13, :cond_c

    .line 406
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    invoke-static {v13}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->hasException(I)Z

    move-result v13

    if-nez v13, :cond_c

    .line 407
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x6

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_3

    .line 411
    :cond_11
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x6

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_3

    .line 415
    :cond_12
    new-instance v6, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    const-string v13, "the download file size error !"

    sget-object v14, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_DOWNLOAD_FILE_ERROR:Ljava/lang/String;

    invoke-direct {v6, v12, v13, v14}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x7

    invoke-direct {v13, v14, v6}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_3

    .line 443
    .end local v4    # "downloadedSize":J
    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    .end local v8    # "fileSize":J
    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 338
    .end local v2    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    :cond_14
    :try_start_2
    sget-object v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".run 2\u3001\u4efb\u52a1\u5f00\u59cb\u6267\u884c\uff0c\u6b63\u5728\u83b7\u53d6\u8d44\u6e90\uff0curl\uff1a\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {v12}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1d

    .line 343
    new-instance v6, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    const-string v13, "url illegal !"

    sget-object v14, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_URL_ILLEGAL:Ljava/lang/String;

    invoke-direct {v6, v12, v13, v14}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x7

    invoke-direct {v13, v14, v6}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 382
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v2

    .line 383
    .restart local v2    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    if-nez v2, :cond_17

    .line 384
    new-instance v6, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    const-string v13, "the DownloadFile is null, may be not deleted ?"

    sget-object v14, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_NULL_POINTER:Ljava/lang/String;

    invoke-direct {v6, v12, v13, v14}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x7

    invoke-direct {v13, v14, v6}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    .line 425
    :cond_15
    :goto_5
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stopInternalImpl()V

    .line 428
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsTaskStop:Z

    .line 429
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsRunning:Z

    .line 434
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyTaskFinish()V

    .line 435
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyStopTaskSucceedIfNecessary()V

    .line 439
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    if-eqz v13, :cond_16

    .line 440
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    invoke-interface {v13}, Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;->onTaskRunFinish()V

    .line 443
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v13, :cond_1c

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget-object v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    if-eqz v13, :cond_1c

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    invoke-static {v13}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->hasException(I)Z

    move-result v13

    if-eqz v13, :cond_1c

    const/4 v10, 0x1

    .line 446
    .restart local v10    # "hasException":Z
    :goto_6
    sget-object v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".run 7\u3001\u6587\u4ef6\u4e0b\u8f7d\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\uff0curl\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 390
    .end local v10    # "hasException":Z
    :cond_17
    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v4

    .line 391
    .restart local v4    # "downloadedSize":J
    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileSizeLong()J

    move-result-wide v8

    .line 393
    .restart local v8    # "fileSize":J
    cmp-long v13, v4, v8

    if-nez v13, :cond_19

    .line 395
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v13, :cond_18

    .line 396
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    const/4 v14, 0x5

    if-eq v13, v14, :cond_15

    .line 397
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x5

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_5

    .line 400
    :cond_18
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x5

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_5

    .line 402
    :cond_19
    cmp-long v13, v4, v8

    if-gez v13, :cond_1b

    .line 404
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v13, :cond_1a

    .line 405
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget-object v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    if-nez v13, :cond_15

    .line 406
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    invoke-static {v13}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->hasException(I)Z

    move-result v13

    if-nez v13, :cond_15

    .line 407
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x6

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_5

    .line 411
    :cond_1a
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x6

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_5

    .line 415
    :cond_1b
    new-instance v6, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    const-string v13, "the download file size error !"

    sget-object v14, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_DOWNLOAD_FILE_ERROR:Ljava/lang/String;

    invoke-direct {v6, v12, v13, v14}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x7

    invoke-direct {v13, v14, v6}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_5

    .line 443
    .end local v4    # "downloadedSize":J
    .end local v8    # "fileSize":J
    :cond_1c
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 351
    .end local v2    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    :cond_1d
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyStatusPreparing()Z

    move-result v13

    if-nez v13, :cond_26

    .line 353
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stopInternalImpl()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 382
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v2

    .line 383
    .restart local v2    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    if-nez v2, :cond_20

    .line 384
    new-instance v6, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    const-string v13, "the DownloadFile is null, may be not deleted ?"

    sget-object v14, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_NULL_POINTER:Ljava/lang/String;

    invoke-direct {v6, v12, v13, v14}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x7

    invoke-direct {v13, v14, v6}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    .line 425
    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    :cond_1e
    :goto_7
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stopInternalImpl()V

    .line 428
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsTaskStop:Z

    .line 429
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsRunning:Z

    .line 434
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyTaskFinish()V

    .line 435
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyStopTaskSucceedIfNecessary()V

    .line 439
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    if-eqz v13, :cond_1f

    .line 440
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    invoke-interface {v13}, Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;->onTaskRunFinish()V

    .line 443
    :cond_1f
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v13, :cond_25

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget-object v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    if-eqz v13, :cond_25

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    invoke-static {v13}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->hasException(I)Z

    move-result v13

    if-eqz v13, :cond_25

    const/4 v10, 0x1

    .line 446
    .restart local v10    # "hasException":Z
    :goto_8
    sget-object v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".run 7\u3001\u6587\u4ef6\u4e0b\u8f7d\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\uff0curl\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 390
    .end local v10    # "hasException":Z
    :cond_20
    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v4

    .line 391
    .restart local v4    # "downloadedSize":J
    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileSizeLong()J

    move-result-wide v8

    .line 393
    .restart local v8    # "fileSize":J
    cmp-long v13, v4, v8

    if-nez v13, :cond_22

    .line 395
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v13, :cond_21

    .line 396
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    const/4 v14, 0x5

    if-eq v13, v14, :cond_1e

    .line 397
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x5

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_7

    .line 400
    :cond_21
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x5

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_7

    .line 402
    :cond_22
    cmp-long v13, v4, v8

    if-gez v13, :cond_24

    .line 404
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v13, :cond_23

    .line 405
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget-object v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    if-nez v13, :cond_1e

    .line 406
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    invoke-static {v13}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->hasException(I)Z

    move-result v13

    if-nez v13, :cond_1e

    .line 407
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x6

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_7

    .line 411
    :cond_23
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x6

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_7

    .line 415
    :cond_24
    new-instance v6, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    const-string v13, "the download file size error !"

    sget-object v14, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_DOWNLOAD_FILE_ERROR:Ljava/lang/String;

    invoke-direct {v6, v12, v13, v14}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x7

    invoke-direct {v13, v14, v6}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_7

    .line 443
    .end local v4    # "downloadedSize":J
    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    .end local v8    # "fileSize":J
    :cond_25
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 360
    .end local v2    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    :cond_26
    const/4 v13, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    .line 362
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mDownloader:Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;

    invoke-virtual {v13}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->download()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 382
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v2

    .line 383
    .restart local v2    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    if-nez v2, :cond_29

    .line 384
    new-instance v6, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    const-string v13, "the DownloadFile is null, may be not deleted ?"

    sget-object v14, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_NULL_POINTER:Ljava/lang/String;

    invoke-direct {v6, v12, v13, v14}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x7

    invoke-direct {v13, v14, v6}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    .line 425
    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    :cond_27
    :goto_9
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stopInternalImpl()V

    .line 428
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsTaskStop:Z

    .line 429
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsRunning:Z

    .line 434
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyTaskFinish()V

    .line 435
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyStopTaskSucceedIfNecessary()V

    .line 439
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    if-eqz v13, :cond_28

    .line 440
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    invoke-interface {v13}, Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;->onTaskRunFinish()V

    .line 443
    :cond_28
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v13, :cond_2e

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget-object v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    if-eqz v13, :cond_2e

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    invoke-static {v13}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->hasException(I)Z

    move-result v13

    if-eqz v13, :cond_2e

    const/4 v10, 0x1

    .line 446
    .restart local v10    # "hasException":Z
    :goto_a
    sget-object v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".run 7\u3001\u6587\u4ef6\u4e0b\u8f7d\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\uff0curl\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 390
    .end local v10    # "hasException":Z
    :cond_29
    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v4

    .line 391
    .restart local v4    # "downloadedSize":J
    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileSizeLong()J

    move-result-wide v8

    .line 393
    .restart local v8    # "fileSize":J
    cmp-long v13, v4, v8

    if-nez v13, :cond_2b

    .line 395
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v13, :cond_2a

    .line 396
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    const/4 v14, 0x5

    if-eq v13, v14, :cond_27

    .line 397
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x5

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_9

    .line 400
    :cond_2a
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x5

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_9

    .line 402
    :cond_2b
    cmp-long v13, v4, v8

    if-gez v13, :cond_2d

    .line 404
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v13, :cond_2c

    .line 405
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget-object v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    if-nez v13, :cond_27

    .line 406
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    invoke-static {v13}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->hasException(I)Z

    move-result v13

    if-nez v13, :cond_27

    .line 407
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x6

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_9

    .line 411
    :cond_2c
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x6

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_9

    .line 415
    :cond_2d
    new-instance v6, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    const-string v13, "the download file size error !"

    sget-object v14, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_DOWNLOAD_FILE_ERROR:Ljava/lang/String;

    invoke-direct {v6, v12, v13, v14}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x7

    invoke-direct {v13, v14, v6}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_9

    .line 443
    .end local v4    # "downloadedSize":J
    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    .end local v8    # "fileSize":J
    :cond_2e
    const/4 v10, 0x0

    goto/16 :goto_a

    .line 364
    .end local v2    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    :catch_0
    move-exception v3

    .line 365
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 367
    const/4 v11, 0x7

    .line 370
    .local v11, "status":I
    instance-of v13, v3, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;

    if-eqz v13, :cond_2f

    .line 371
    move-object v0, v3

    check-cast v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;

    move-object v7, v0

    .line 372
    .local v7, "fileSaveException":Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;
    sget-object v13, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->TYPE_TEMP_FILE_DOES_NOT_EXIST:Ljava/lang/String;

    invoke-virtual {v7}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2f

    .line 373
    const/16 v11, 0x8

    .line 376
    .end local v7    # "fileSaveException":Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;
    :cond_2f
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    new-instance v14, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    invoke-direct {v14, v12, v3}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v13, v11, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 382
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v2

    .line 383
    .restart local v2    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    if-nez v2, :cond_32

    .line 384
    new-instance v6, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    const-string v13, "the DownloadFile is null, may be not deleted ?"

    sget-object v14, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_NULL_POINTER:Ljava/lang/String;

    invoke-direct {v6, v12, v13, v14}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x7

    invoke-direct {v13, v14, v6}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    .line 425
    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    :cond_30
    :goto_b
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stopInternalImpl()V

    .line 428
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsTaskStop:Z

    .line 429
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsRunning:Z

    .line 434
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyTaskFinish()V

    .line 435
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyStopTaskSucceedIfNecessary()V

    .line 439
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    if-eqz v13, :cond_31

    .line 440
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    invoke-interface {v13}, Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;->onTaskRunFinish()V

    .line 443
    :cond_31
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v13, :cond_37

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget-object v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    if-eqz v13, :cond_37

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    invoke-static {v13}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->hasException(I)Z

    move-result v13

    if-eqz v13, :cond_37

    const/4 v10, 0x1

    .line 446
    .restart local v10    # "hasException":Z
    :goto_c
    sget-object v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".run 7\u3001\u6587\u4ef6\u4e0b\u8f7d\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\uff0curl\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 390
    .end local v10    # "hasException":Z
    :cond_32
    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v4

    .line 391
    .restart local v4    # "downloadedSize":J
    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileSizeLong()J

    move-result-wide v8

    .line 393
    .restart local v8    # "fileSize":J
    cmp-long v13, v4, v8

    if-nez v13, :cond_34

    .line 395
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v13, :cond_33

    .line 396
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    const/4 v14, 0x5

    if-eq v13, v14, :cond_30

    .line 397
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x5

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_b

    .line 400
    :cond_33
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x5

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_b

    .line 402
    :cond_34
    cmp-long v13, v4, v8

    if-gez v13, :cond_36

    .line 404
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v13, :cond_35

    .line 405
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget-object v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    if-nez v13, :cond_30

    .line 406
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v13, v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    invoke-static {v13}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->hasException(I)Z

    move-result v13

    if-nez v13, :cond_30

    .line 407
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x6

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_b

    .line 411
    :cond_35
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x6

    invoke-direct {v13, v14}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_b

    .line 415
    :cond_36
    new-instance v6, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    const-string v13, "the download file size error !"

    sget-object v14, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_DOWNLOAD_FILE_ERROR:Ljava/lang/String;

    invoke-direct {v6, v12, v13, v14}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    new-instance v13, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v14, 0x7

    invoke-direct {v13, v14, v6}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_b

    .line 443
    .end local v4    # "downloadedSize":J
    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    .end local v8    # "fileSize":J
    :cond_37
    const/4 v10, 0x0

    goto/16 :goto_c

    .line 381
    .end local v2    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v11    # "status":I
    :catchall_0
    move-exception v13

    .line 382
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v2

    .line 383
    .restart local v2    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    if-nez v2, :cond_3a

    .line 384
    new-instance v6, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    const-string v14, "the DownloadFile is null, may be not deleted ?"

    sget-object v15, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_NULL_POINTER:Ljava/lang/String;

    invoke-direct {v6, v12, v14, v15}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    new-instance v14, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v15, 0x7

    invoke-direct {v14, v15, v6}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    .line 425
    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    :cond_38
    :goto_d
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stopInternalImpl()V

    .line 428
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsTaskStop:Z

    .line 429
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsRunning:Z

    .line 434
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyTaskFinish()V

    .line 435
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyStopTaskSucceedIfNecessary()V

    .line 439
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    if-eqz v14, :cond_39

    .line 440
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    invoke-interface {v14}, Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;->onTaskRunFinish()V

    .line 443
    :cond_39
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v14, :cond_3f

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget-object v14, v14, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    if-eqz v14, :cond_3f

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v14, v14, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    invoke-static {v14}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->hasException(I)Z

    move-result v14

    if-eqz v14, :cond_3f

    const/4 v10, 0x1

    .line 446
    .restart local v10    # "hasException":Z
    :goto_e
    sget-object v14, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".run 7\u3001\u6587\u4ef6\u4e0b\u8f7d\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\uff0curl\uff1a"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    throw v13

    .line 390
    .end local v10    # "hasException":Z
    :cond_3a
    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v4

    .line 391
    .restart local v4    # "downloadedSize":J
    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileSizeLong()J

    move-result-wide v8

    .line 393
    .restart local v8    # "fileSize":J
    cmp-long v14, v4, v8

    if-nez v14, :cond_3c

    .line 395
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v14, :cond_3b

    .line 396
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v14, v14, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    const/4 v15, 0x5

    if-eq v14, v15, :cond_38

    .line 397
    new-instance v14, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v15, 0x5

    invoke-direct {v14, v15}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_d

    .line 400
    :cond_3b
    new-instance v14, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v15, 0x5

    invoke-direct {v14, v15}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_d

    .line 402
    :cond_3c
    cmp-long v14, v4, v8

    if-gez v14, :cond_3e

    .line 404
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v14, :cond_3d

    .line 405
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget-object v14, v14, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    if-nez v14, :cond_38

    .line 406
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v14, v14, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    invoke-static {v14}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->hasException(I)Z

    move-result v14

    if-nez v14, :cond_38

    .line 407
    new-instance v14, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v15, 0x6

    invoke-direct {v14, v15}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_d

    .line 411
    :cond_3d
    new-instance v14, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v15, 0x6

    invoke-direct {v14, v15}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_d

    .line 415
    :cond_3e
    new-instance v6, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    const-string v14, "the download file size error !"

    sget-object v15, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;->TYPE_DOWNLOAD_FILE_ERROR:Ljava/lang/String;

    invoke-direct {v6, v12, v14, v15}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .restart local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    new-instance v14, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v15, 0x7

    invoke-direct {v14, v15, v6}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto/16 :goto_d

    .line 443
    .end local v4    # "downloadedSize":J
    .end local v6    # "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    .end local v8    # "fileSize":J
    :cond_3f
    const/4 v10, 0x0

    goto/16 :goto_e
.end method

.method public setCloseConnectionEngine(Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p1, "closeConnectionEngine"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 263
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    .line 264
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mDownloader:Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mDownloader:Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->setCloseConnectionEngine(Ljava/util/concurrent/ExecutorService;)V

    .line 267
    :cond_0
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 2
    .param p1, "connectTimeout"    # I

    .prologue
    .line 275
    iput p1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mConnectTimeout:I

    .line 276
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mDownloader:Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mDownloader:Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;

    iget v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mConnectTimeout:I

    invoke-virtual {v0, v1}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->setConnectTimeout(I)V

    .line 279
    :cond_0
    return-void
.end method

.method public setOnStopFileDownloadTaskListener(Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V
    .locals 0
    .param p1, "onStopFileDownloadTaskListener"    # Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    .prologue
    .line 249
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnStopFileDownloadTaskListener:Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    .line 250
    return-void
.end method

.method public setOnTaskRunFinishListener(Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;)V
    .locals 0
    .param p1, "onTaskRunFinishListener"    # Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    .prologue
    .line 254
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    .line 255
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    .line 846
    sget-object v1, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".stop \u7ed3\u675f\u4efb\u52a1\u6267\u884c\uff0curl\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\u662f\u5426\u5df2\u7ecf\u6682\u505c\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsTaskStop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 850
    new-instance v1, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "the task has been stopped!"

    sget-object v4, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;->TYPE_TASK_HAS_BEEN_STOPPED:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->notifyStopTaskFailedIfNecessary(Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;)V

    .line 876
    :goto_0
    return-void

    .line 856
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mCurrentTaskThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_1

    .line 857
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 858
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$1;

    invoke-direct {v1, p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$1;-><init>(Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 870
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsTaskStop:Z

    .line 872
    sget-object v1, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".stop \u7ed3\u675f\u4efb\u52a1\u6267\u884c(\u5176\u5b83\u7ebf\u7a0b\u53d1\u8d77)\uff0curl\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\u662f\u5426\u5df2\u7ecf\u6682\u505c\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->mIsTaskStop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stopInternalImpl()V

    goto :goto_0
.end method
