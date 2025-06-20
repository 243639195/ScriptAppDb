.class Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;
.super Ljava/lang/Object;
.source "RetryableDownloadTaskImpl.java"

# interfaces
.implements Lorg/wlf/filedownloader/file_download/base/RetryableDownloadTask;
.implements Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

.field private mConnectTimeout:I

.field private mCurrentTaskThread:Ljava/lang/Thread;

.field private mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

.field private mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

.field private mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

.field private mHasRetriedTimes:I

.field private mIsNotifyTaskFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsRunning:Z

.field private mIsTaskStop:Z

.field private mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

.field private mOnStopFileDownloadTaskListener:Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

.field private mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

.field private final mOriginalTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

.field private mRecordedRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

.field private mRetryDownloadTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 4
    .param p1, "taskParamInfo"    # Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;
    .param p2, "downloadRecorder"    # Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;
    .param p3, "onFileDownloadStatusListener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v2, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mRetryDownloadTimes:I

    .line 43
    iput v2, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mHasRetriedTimes:I

    .line 45
    iput-boolean v2, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsTaskStop:Z

    .line 46
    iput-boolean v2, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsRunning:Z

    .line 48
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsNotifyTaskFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    const/16 v1, 0x3a98

    iput v1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mConnectTimeout:I

    .line 72
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOriginalTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    .line 73
    iput-object p2, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    .line 75
    iput-object p3, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .line 77
    iput-boolean v2, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsTaskStop:Z

    .line 79
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->init()V

    .line 84
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    invoke-virtual {v1}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    :cond_0
    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->stop()V

    .line 87
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    invoke-virtual {v1}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->getFinishState()Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    move-result-object v0

    .line 88
    .local v0, "finishStateInternal":Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;
    if-eqz v0, :cond_1

    .line 89
    new-instance v1, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->getStatus()I

    move-result v2

    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->getFailReason()Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    iput-object v1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    .line 93
    :cond_1
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->notifyTaskFinish()V

    .line 98
    .end local v0    # "finishStateInternal":Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;

    .prologue
    .line 31
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsTaskStop:Z

    return v0
.end method

.method static synthetic access$002(Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsTaskStop:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->stopInternalImpl()V

    return-void
.end method

.method static synthetic access$300(Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;)Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    return-object v0
.end method

.method static synthetic access$400(Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;

    .prologue
    .line 31
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$500(Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->notifyTaskFinish()V

    return-void
.end method

.method static synthetic access$600(Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->notifyStopTaskSucceedIfNecessary()V

    return-void
.end method

.method private getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 11

    .prologue
    .line 101
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mRecordedRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOriginalTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v2}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getStartPosInTotal()J

    move-result-wide v2

    iget-object v4, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOriginalTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v4}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getStartPosInTotal()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/wlf/filedownloader/file_download/http_downloader/Range;-><init>(JJ)V

    iput-object v1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mRecordedRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    .line 106
    :cond_0
    new-instance v0, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOriginalTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v2}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getStartPosInTotal()J

    move-result-wide v2

    iget-object v4, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mRecordedRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    invoke-virtual {v4}, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->getLength()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOriginalTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v4}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getFileTotalSize()J

    move-result-wide v4

    iget-object v6, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOriginalTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v6}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getETag()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOriginalTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v7}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getLastModified()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOriginalTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v8}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getAcceptRangeType()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOriginalTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v9}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getTempFilePath()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOriginalTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v10}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .local v0, "taskParamInfo":Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOriginalTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v1}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->setRequestMethod(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOriginalTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v1}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->setHeaders(Ljava/util/Map;)V

    .line 113
    new-instance v1, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    invoke-direct {v1, v0, v2, p0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;-><init>(Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    iput-object v1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    .line 114
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v2}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->setCloseConnectionEngine(Ljava/util/concurrent/ExecutorService;)V

    .line 115
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    iget v2, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mConnectTimeout:I

    invoke-virtual {v1, v2}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->setConnectTimeout(I)V

    .line 116
    return-void
.end method

.method private notifyStatusRetrying()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 191
    :try_start_0
    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    instance-of v3, v3, Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener;

    if-eqz v3, :cond_1

    .line 192
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    check-cast v1, Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener;

    .line 194
    .local v1, "onRetryableFileDownloadStatusListener":Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener;
    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->recordStatus(Ljava/lang/String;II)V

    .line 195
    if-eqz v1, :cond_0

    .line 196
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v3

    iget v4, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mHasRetriedTimes:I

    invoke-interface {v1, v3, v4}, Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener;->onFileDownloadStatusRetrying(Lorg/wlf/filedownloader/DownloadFileInfo;I)V

    .line 200
    :cond_0
    sget-object v3, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file-downloader-status \u8bb0\u5f55\u3010\u91cd\u8bd5\u72b6\u6001\u3011\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v2, 0x1

    .line 212
    .end local v1    # "onRetryableFileDownloadStatusListener":Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener;
    :goto_0
    return v2

    .line 206
    :cond_1
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->notifyStatusWaiting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    new-instance v3, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v4, 0x7

    new-instance v5, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v3, v4, v5}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    iput-object v3, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto :goto_0
.end method

.method private notifyStatusWaiting()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 223
    :try_start_0
    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->recordStatus(Ljava/lang/String;II)V

    .line 224
    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v3, :cond_0

    .line 225
    iget-object v3, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusWaiting(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 228
    :cond_0
    sget-object v3, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file-downloader-status \u8bb0\u5f55\u3010\u7b49\u5f85\u72b6\u6001\u3011\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return v1

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    new-instance v1, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v3, 0x7

    new-instance v4, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v3, v4}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    iput-object v1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    move v1, v2

    .line 235
    goto :goto_0
.end method

.method private notifyStopTaskFailedIfNecessary(Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;)V
    .locals 3
    .param p1, "failReason"    # Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;

    .prologue
    .line 356
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnStopFileDownloadTaskListener:Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnStopFileDownloadTaskListener:Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;->onStopFileDownloadTaskFailed(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;)V

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnStopFileDownloadTaskListener:Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    .line 361
    sget-object v0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file-downloader-status \u901a\u77e5\u3010\u6682\u505c\u4efb\u52a1\u3011\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    return-void
.end method

.method private notifyStopTaskSucceedIfNecessary()V
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnStopFileDownloadTaskListener:Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnStopFileDownloadTaskListener:Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;->onStopFileDownloadTaskSucceed(Ljava/lang/String;)V

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnStopFileDownloadTaskListener:Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    .line 348
    sget-object v0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file-downloader-status \u901a\u77e5\u3010\u6682\u505c\u4efb\u52a1\u3011\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    return-void
.end method

.method private notifyTaskFinish()V
    .locals 12

    .prologue
    const/4 v6, 0x6

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 244
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-nez v5, :cond_0

    .line 245
    new-instance v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    invoke-direct {v5, v6}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    iput-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    .line 248
    :cond_0
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v4, v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    .line 249
    .local v4, "status":I
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v3, v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->increaseSize:I

    .line 250
    .local v3, "increaseSize":I
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget-object v2, v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    .line 252
    .local v2, "failReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    packed-switch v4, :pswitch_data_0

    .line 337
    :cond_1
    :goto_0
    return-void

    .line 258
    :pswitch_0
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsNotifyTaskFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_1

    .line 262
    :try_start_0
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4, v3}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->recordStatus(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    packed-switch v4, :pswitch_data_1

    .line 321
    :cond_2
    :goto_1
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsNotifyTaskFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 324
    :try_start_1
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->recordStatus(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 328
    :goto_2
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v5, :cond_3

    .line 329
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusPaused(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 332
    :cond_3
    sget-object v5, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file-downloader-status \u8bb0\u5f55\u3010\u6682\u505c\u72b6\u6001\u3011\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    :pswitch_1
    :try_start_2
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v5, :cond_2

    .line 266
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsNotifyTaskFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 267
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusPaused(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 269
    sget-object v5, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file-downloader-status \u8bb0\u5f55\u3010\u6682\u505c\u72b6\u6001\u3011\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

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

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 305
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsNotifyTaskFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    if-eqz v5, :cond_4

    .line 308
    :try_start_4
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->recordStatus(Ljava/lang/String;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 312
    :goto_3
    :try_start_5
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v5, :cond_4

    .line 313
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v7

    new-instance v8, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v5, v6, v7, v8}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    .line 316
    sget-object v5, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file-downloader-status \u8bb0\u5f55\u3010\u6682\u505c/\u5b8c\u6210/\u51fa\u9519\u72b6\u6001\u3011\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/wlf/filedownloader/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 321
    :cond_4
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsNotifyTaskFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 324
    :try_start_6
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->recordStatus(Ljava/lang/String;II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 328
    :goto_4
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v5, :cond_5

    .line 329
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusPaused(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 332
    :cond_5
    sget-object v5, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file-downloader-status \u8bb0\u5f55\u3010\u6682\u505c\u72b6\u6001\u3011\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 274
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_7
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v5, :cond_2

    .line 275
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsNotifyTaskFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 276
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusCompleted(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 278
    sget-object v5, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file-downloader-status \u8bb0\u5f55\u3010\u5b8c\u6210\u72b6\u6001\u3011\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

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

    .line 321
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsNotifyTaskFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 324
    :try_start_8
    iget-object v6, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->recordStatus(Ljava/lang/String;II)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 328
    :goto_5
    iget-object v6, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v6, :cond_6

    .line 329
    iget-object v6, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusPaused(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 332
    :cond_6
    sget-object v6, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file-downloader-status \u8bb0\u5f55\u3010\u6682\u505c\u72b6\u6001\u3011\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    throw v5

    .line 283
    :pswitch_3
    :try_start_9
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v5, :cond_2

    .line 284
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsNotifyTaskFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 285
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v7

    invoke-interface {v5, v6, v7, v2}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    .line 288
    sget-object v5, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file-downloader-status \u8bb0\u5f55\u3010\u9519\u8bef\u72b6\u6001\u3011\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 293
    :pswitch_4
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v5, :cond_2

    .line 294
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsNotifyTaskFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 295
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v7

    invoke-interface {v5, v6, v7, v2}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    .line 298
    sget-object v5, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file-downloader-status \u8bb0\u5f55\u3010\u6587\u4ef6\u4e0d\u5b58\u5728\u72b6\u6001\u3011\u6210\u529f\uff0curl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

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

    .line 325
    :catch_1
    move-exception v0

    .line 326
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 309
    :catch_2
    move-exception v1

    .line 310
    .local v1, "e1":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    .line 325
    .end local v1    # "e1":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 326
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 326
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 263
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
    .line 548
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mCurrentTaskThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_1

    .line 549
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 550
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl$2;

    invoke-direct {v1, p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl$2;-><init>(Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 573
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    invoke-virtual {v1}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->isStopped()Z

    move-result v1

    if-nez v1, :cond_2

    .line 565
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    invoke-virtual {v1}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->stop()V

    .line 567
    :cond_2
    iget-boolean v1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsRunning:Z

    if-nez v1, :cond_0

    .line 569
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->notifyTaskFinish()V

    .line 570
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->notifyStopTaskSucceedIfNecessary()V

    goto :goto_0
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOriginalTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 178
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOriginalTaskParamInfo:Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_download/FileDownloadTaskParam;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsTaskStop:Z

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->stopInternalImpl()V

    .line 507
    :cond_0
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsTaskStop:Z

    return v0
.end method

.method public onFileDownloadStatusCompleted(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 6
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 654
    new-instance v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    .line 656
    invoke-static {p1}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    new-instance v0, Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mRecordedRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    iget-wide v2, v1, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->startPos:J

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/wlf/filedownloader/file_download/http_downloader/Range;-><init>(JJ)V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mRecordedRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    .line 660
    :cond_0
    return-void
.end method

.method public onFileDownloadStatusDownloading(Lorg/wlf/filedownloader/DownloadFileInfo;FJ)V
    .locals 1
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "downloadSpeed"    # F
    .param p3, "remainingTime"    # J

    .prologue
    .line 628
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsTaskStop:Z

    if-eqz v0, :cond_1

    .line 630
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->stopInternalImpl()V

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusDownloading(Lorg/wlf/filedownloader/DownloadFileInfo;FJ)V

    goto :goto_0
.end method

.method public onFileDownloadStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p3, "failReason"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    .prologue
    const/16 v1, 0x8

    .line 665
    invoke-static {p2}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {p2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 668
    new-instance v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    invoke-direct {v0, v1, p3}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    .line 674
    :goto_0
    new-instance v0, Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mRecordedRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    iget-wide v2, v1, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->startPos:J

    invoke-virtual {p2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/wlf/filedownloader/file_download/http_downloader/Range;-><init>(JJ)V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mRecordedRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    .line 676
    :cond_0
    return-void

    .line 671
    :cond_1
    new-instance v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p3}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    goto :goto_0
.end method

.method public onFileDownloadStatusPaused(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 6
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 643
    new-instance v0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    .line 645
    invoke-static {p1}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    new-instance v0, Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mRecordedRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    iget-wide v2, v1, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->startPos:J

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/wlf/filedownloader/file_download/http_downloader/Range;-><init>(JJ)V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mRecordedRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    .line 649
    :cond_0
    return-void
.end method

.method public onFileDownloadStatusPrepared(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 6
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 608
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsTaskStop:Z

    if-eqz v0, :cond_1

    .line 610
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->stopInternalImpl()V

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v0, :cond_2

    .line 615
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    invoke-interface {v0, p1}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusPrepared(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 618
    :cond_2
    invoke-static {p1}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    new-instance v0, Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v2

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mRecordedRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    iget-wide v4, v1, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->endPos:J

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/wlf/filedownloader/file_download/http_downloader/Range;-><init>(JJ)V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mRecordedRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    goto :goto_0
.end method

.method public onFileDownloadStatusPreparing(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 1
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 594
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsTaskStop:Z

    if-eqz v0, :cond_1

    .line 596
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->stopInternalImpl()V

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    invoke-interface {v0, p1}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusPreparing(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    goto :goto_0
.end method

.method public onFileDownloadStatusWaiting(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 1
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 580
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsTaskStop:Z

    if-eqz v0, :cond_1

    .line 582
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->stopInternalImpl()V

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    invoke-interface {v0, p1}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusWaiting(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x7

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 371
    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsRunning:Z

    .line 372
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iput-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mCurrentTaskThread:Ljava/lang/Thread;

    .line 374
    iget-boolean v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsTaskStop:Z

    if-eqz v5, :cond_2

    .line 376
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->stopInternalImpl()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->stopInternalImpl()V

    .line 478
    iput-boolean v2, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsTaskStop:Z

    .line 479
    iput-boolean v4, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsRunning:Z

    .line 482
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->notifyTaskFinish()V

    .line 483
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->notifyStopTaskSucceedIfNecessary()V

    .line 485
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    if-eqz v5, :cond_0

    .line 486
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    invoke-interface {v5}, Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;->onTaskRunFinish()V

    .line 489
    :cond_0
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget-object v5, v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v5, v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    invoke-static {v5}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->hasException(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 492
    .local v2, "hasException":Z
    :goto_0
    sget-object v4, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".run \u6587\u4ef6\u4e0b\u8f7d\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff0curl\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :goto_1
    return-void

    .end local v2    # "hasException":Z
    :cond_1
    move v2, v4

    .line 489
    goto :goto_0

    .line 380
    :cond_2
    :try_start_1
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    invoke-virtual {v5}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->isStopped()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 381
    :cond_3
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->init()V

    .line 386
    :cond_4
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    invoke-virtual {v5}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->isStopped()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 388
    :cond_5
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->stopInternalImpl()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->stopInternalImpl()V

    .line 478
    iput-boolean v2, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsTaskStop:Z

    .line 479
    iput-boolean v4, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsRunning:Z

    .line 482
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->notifyTaskFinish()V

    .line 483
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->notifyStopTaskSucceedIfNecessary()V

    .line 485
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    if-eqz v5, :cond_6

    .line 486
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    invoke-interface {v5}, Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;->onTaskRunFinish()V

    .line 489
    :cond_6
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget-object v5, v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v5, v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    invoke-static {v5}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->hasException(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 492
    .restart local v2    # "hasException":Z
    :goto_2
    sget-object v4, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".run \u6587\u4ef6\u4e0b\u8f7d\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff0curl\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2    # "hasException":Z
    :cond_7
    move v2, v4

    .line 489
    goto :goto_2

    .line 393
    :cond_8
    const/4 v5, 0x0

    :try_start_2
    iput-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    .line 395
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    invoke-virtual {v5}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->run()V

    .line 399
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 402
    .local v3, "isInternalStop":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getDownloadFile()Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    .line 405
    .local v0, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    :goto_3
    invoke-static {v0}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isTempFileExist(Lorg/wlf/filedownloader/DownloadFileInfo;)Z

    move-result v5

    if-eqz v5, :cond_18

    iget-boolean v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsTaskStop:Z

    if-nez v5, :cond_18

    iget v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mHasRetriedTimes:I

    iget v6, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mRetryDownloadTimes:I

    if-ge v5, v6, :cond_18

    iget v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mRetryDownloadTimes:I

    if-lez v5, :cond_18

    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v5, v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    if-ne v5, v8, :cond_18

    .line 408
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    invoke-virtual {v5}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->isStopped()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 410
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_a

    .line 412
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->stopInternalImpl()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 414
    const-wide/16 v6, 0x7d0

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 415
    :catch_0
    move-exception v1

    .line 416
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 469
    .end local v0    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "isInternalStop":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catch_1
    move-exception v1

    .line 470
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 471
    new-instance v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v6, 0x7

    new-instance v7, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$OnFileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v5, v6, v7}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    iput-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 475
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->stopInternalImpl()V

    .line 478
    iput-boolean v2, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsTaskStop:Z

    .line 479
    iput-boolean v4, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsRunning:Z

    .line 482
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->notifyTaskFinish()V

    .line 483
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->notifyStopTaskSucceedIfNecessary()V

    .line 485
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    if-eqz v5, :cond_9

    .line 486
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    invoke-interface {v5}, Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;->onTaskRunFinish()V

    .line 489
    :cond_9
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget-object v5, v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v5, v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    invoke-static {v5}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->hasException(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 492
    .restart local v2    # "hasException":Z
    :goto_4
    sget-object v4, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".run \u6587\u4ef6\u4e0b\u8f7d\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff0curl\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 422
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "hasException":Z
    .restart local v0    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    .restart local v3    # "isInternalStop":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_a
    :try_start_6
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->init()V

    .line 425
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    invoke-virtual {v5}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->isStopped()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 427
    :cond_b
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->stopInternalImpl()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 475
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->stopInternalImpl()V

    .line 478
    iput-boolean v2, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsTaskStop:Z

    .line 479
    iput-boolean v4, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsRunning:Z

    .line 482
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->notifyTaskFinish()V

    .line 483
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->notifyStopTaskSucceedIfNecessary()V

    .line 485
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    if-eqz v5, :cond_c

    .line 486
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    invoke-interface {v5}, Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;->onTaskRunFinish()V

    .line 489
    :cond_c
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget-object v5, v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v5, v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    invoke-static {v5}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->hasException(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 492
    .restart local v2    # "hasException":Z
    :goto_5
    sget-object v4, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".run \u6587\u4ef6\u4e0b\u8f7d\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff0curl\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v2    # "hasException":Z
    :cond_d
    move v2, v4

    .line 489
    goto :goto_5

    .line 432
    :cond_e
    const/4 v5, 0x0

    :try_start_7
    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 433
    iget v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mHasRetriedTimes:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mHasRetriedTimes:I

    .line 436
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->notifyStatusRetrying()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v5

    if-nez v5, :cond_11

    .line 475
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->stopInternalImpl()V

    .line 478
    iput-boolean v2, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsTaskStop:Z

    .line 479
    iput-boolean v4, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsRunning:Z

    .line 482
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->notifyTaskFinish()V

    .line 483
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->notifyStopTaskSucceedIfNecessary()V

    .line 485
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    if-eqz v5, :cond_f

    .line 486
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    invoke-interface {v5}, Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;->onTaskRunFinish()V

    .line 489
    :cond_f
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget-object v5, v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v5, v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    invoke-static {v5}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->hasException(I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 492
    .restart local v2    # "hasException":Z
    :goto_6
    sget-object v4, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".run \u6587\u4ef6\u4e0b\u8f7d\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff0curl\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v2    # "hasException":Z
    :cond_10
    move v2, v4

    .line 489
    goto :goto_6

    .line 441
    :cond_11
    :try_start_8
    sget-object v5, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".run \u6b63\u5728\u91cd\u8bd5\uff0curl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 444
    const-wide/16 v6, 0x7d0

    :try_start_9
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 449
    :goto_7
    :try_start_a
    iget-boolean v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsTaskStop:Z

    if-eqz v5, :cond_15

    .line 451
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->stopInternalImpl()V

    .line 453
    new-instance v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    const/4 v6, 0x6

    invoke-direct {v5, v6}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;-><init>(I)V

    iput-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 475
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->stopInternalImpl()V

    .line 478
    iput-boolean v2, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsTaskStop:Z

    .line 479
    iput-boolean v4, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsRunning:Z

    .line 482
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->notifyTaskFinish()V

    .line 483
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->notifyStopTaskSucceedIfNecessary()V

    .line 485
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    if-eqz v5, :cond_12

    .line 486
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    invoke-interface {v5}, Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;->onTaskRunFinish()V

    .line 489
    :cond_12
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v5, :cond_14

    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget-object v5, v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    if-eqz v5, :cond_14

    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v5, v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    invoke-static {v5}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->hasException(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 492
    .restart local v2    # "hasException":Z
    :goto_8
    sget-object v4, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".run \u6587\u4ef6\u4e0b\u8f7d\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff0curl\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 445
    .end local v2    # "hasException":Z
    :catch_2
    move-exception v1

    .line 446
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_7

    .line 475
    .end local v0    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "isInternalStop":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v5

    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->stopInternalImpl()V

    .line 478
    iput-boolean v2, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsTaskStop:Z

    .line 479
    iput-boolean v4, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsRunning:Z

    .line 482
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->notifyTaskFinish()V

    .line 483
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->notifyStopTaskSucceedIfNecessary()V

    .line 485
    iget-object v6, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    if-eqz v6, :cond_13

    .line 486
    iget-object v6, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    invoke-interface {v6}, Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;->onTaskRunFinish()V

    .line 489
    :cond_13
    iget-object v6, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v6, :cond_1c

    iget-object v6, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget-object v6, v6, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    if-eqz v6, :cond_1c

    iget-object v6, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v6, v6, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    invoke-static {v6}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->hasException(I)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 492
    .restart local v2    # "hasException":Z
    :goto_9
    sget-object v4, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".run \u6587\u4ef6\u4e0b\u8f7d\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\uff0curl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    throw v5

    .end local v2    # "hasException":Z
    .restart local v0    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    .restart local v3    # "isInternalStop":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_14
    move v2, v4

    .line 489
    goto/16 :goto_8

    .line 457
    :cond_15
    :try_start_c
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    if-eqz v5, :cond_16

    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    invoke-virtual {v5}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->isStopped()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 458
    :cond_16
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->init()V

    .line 462
    :cond_17
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    .line 465
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    invoke-virtual {v5}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->run()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3

    .line 475
    :cond_18
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->stopInternalImpl()V

    .line 478
    iput-boolean v2, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsTaskStop:Z

    .line 479
    iput-boolean v4, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsRunning:Z

    .line 482
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->notifyTaskFinish()V

    .line 483
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->notifyStopTaskSucceedIfNecessary()V

    .line 485
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    if-eqz v5, :cond_19

    .line 486
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    invoke-interface {v5}, Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;->onTaskRunFinish()V

    .line 489
    :cond_19
    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    if-eqz v5, :cond_1a

    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget-object v5, v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    if-eqz v5, :cond_1a

    iget-object v5, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFinishState:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;

    iget v5, v5, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    invoke-static {v5}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->hasException(I)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 492
    .restart local v2    # "hasException":Z
    :goto_a
    sget-object v4, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".run \u6587\u4ef6\u4e0b\u8f7d\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff0curl\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v2    # "hasException":Z
    :cond_1a
    move v2, v4

    .line 489
    goto :goto_a

    .end local v0    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    .end local v3    # "isInternalStop":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_1b
    move v2, v4

    goto/16 :goto_4

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1c
    move v2, v4

    goto/16 :goto_9
.end method

.method public setCloseConnectionEngine(Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p1, "closeConnectionEngine"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 136
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    .line 137
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->setCloseConnectionEngine(Ljava/util/concurrent/ExecutorService;)V

    .line 140
    :cond_0
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 2
    .param p1, "connectTimeout"    # I

    .prologue
    .line 148
    iput p1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mConnectTimeout:I

    .line 149
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mFileDownloadTaskImpl:Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;

    iget v1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mConnectTimeout:I

    invoke-virtual {v0, v1}, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;->setConnectTimeout(I)V

    .line 152
    :cond_0
    return-void
.end method

.method public setOnStopFileDownloadTaskListener(Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;)V
    .locals 0
    .param p1, "onStopFileDownloadTaskListener"    # Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    .prologue
    .line 122
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnStopFileDownloadTaskListener:Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;

    .line 123
    return-void
.end method

.method public setOnTaskRunFinishListener(Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;)V
    .locals 0
    .param p1, "onTaskRunFinishListener"    # Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mOnTaskRunFinishListener:Lorg/wlf/filedownloader/file_download/base/OnTaskRunFinishListener;

    .line 128
    return-void
.end method

.method public setRetryDownloadTimes(I)V
    .locals 0
    .param p1, "retryDownloadTimes"    # I

    .prologue
    .line 156
    iput p1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mRetryDownloadTimes:I

    .line 157
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    .line 516
    sget-object v1, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".stop \u7ed3\u675f\u4efb\u52a1\u6267\u884c\uff0curl\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\u662f\u5426\u5df2\u7ecf\u6682\u505c\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsTaskStop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    new-instance v1, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "the task has been stopped!"

    sget-object v4, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;->TYPE_TASK_HAS_BEEN_STOPPED:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->notifyStopTaskFailedIfNecessary(Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;)V

    .line 544
    :goto_0
    return-void

    .line 525
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mCurrentTaskThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_1

    .line 526
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 527
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl$1;

    invoke-direct {v1, p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl$1;-><init>(Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 538
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsTaskStop:Z

    .line 540
    sget-object v1, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".stop \u7ed3\u675f\u4efb\u52a1\u6267\u884c(\u5176\u5b83\u7ebf\u7a0b\u53d1\u8d77)\uff0curl\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\u662f\u5426\u5df2\u7ecf\u6682\u505c\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->mIsTaskStop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-direct {p0}, Lorg/wlf/filedownloader/file_download/RetryableDownloadTaskImpl;->stopInternalImpl()V

    goto :goto_0
.end method
