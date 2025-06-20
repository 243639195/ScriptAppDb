.class Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;
.super Ljava/lang/Object;
.source "DetectUrlFileTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final DEFAULT_CONNECT_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_REQUEST_METHOD:Ljava/lang/String; = "GET"

.field private static final MAX_REDIRECT_TIMES:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCharset:Ljava/lang/String;

.field private mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

.field private mConnectTimeout:I

.field private mDetectUrlFileCacher:Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;

.field private mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

.field private mDownloadSaveDir:Ljava/lang/String;

.field private mHeaders:Ljava/util/Map;
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

.field private mIsForceDetect:Z

.field private mOnDetectBigUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

.field private mRequestMethod:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "downloadSaveDir"    # Ljava/lang/String;
    .param p3, "detectUrlFileCacher"    # Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;
    .param p4, "downloadRecorder"    # Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x3a98

    iput v0, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mConnectTimeout:I

    .line 38
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mCharset:Ljava/lang/String;

    .line 39
    const-string v0, "GET"

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mRequestMethod:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mIsForceDetect:Z

    .line 54
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mDownloadSaveDir:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mDetectUrlFileCacher:Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;

    .line 57
    iput-object p4, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    .line 58
    return-void
.end method

.method private notifyDetectNewDownloadFile(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "saveDir"    # Ljava/lang/String;
    .param p3, "fileSize"    # J

    .prologue
    .line 312
    sget-object v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u63a2\u6d4b\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u9700\u8981\u521b\u5efa\uff0curl\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mOnDetectBigUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

    if-eqz v0, :cond_0

    .line 316
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    iget-object v6, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mOnDetectBigUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper;->onDetectNewDownloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;)V

    .line 321
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private notifyDetectUrlFileExist()Z
    .locals 3

    .prologue
    .line 296
    sget-object v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u63a2\u6d4b\u6587\u4ef6\u5df2\u5b58\u5728\uff0curl\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mOnDetectBigUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mOnDetectBigUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper;->onDetectUrlFileExist(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;)V

    .line 304
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private notifyDetectUrlFileFailed(Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;)Z
    .locals 3
    .param p1, "failReason"    # Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;

    .prologue
    .line 329
    sget-object v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u63a2\u6d4b\u6587\u4ef6\u5931\u8d25\uff0curl\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mOnDetectBigUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mOnDetectBigUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

    invoke-static {v0, p1, v1}, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper;->onDetectUrlFileFailed(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;)V

    .line 338
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public enableForceDetect()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mIsForceDetect:Z

    .line 110
    return-void
.end method

.method public run()V
    .locals 28

    .prologue
    .line 127
    const/4 v14, 0x0

    .line 128
    .local v14, "conn":Ljava/net/HttpURLConnection;
    const/16 v22, 0x0

    .line 130
    .local v22, "inputStream":Ljava/io/InputStream;
    const/16 v17, 0x0

    .line 131
    .local v17, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    const/16 v16, 0x0

    .line 132
    .local v16, "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    const/16 v19, 0x0

    .line 138
    .local v19, "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    invoke-static {v5}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 140
    new-instance v20, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    const-string v11, "url illegal !"

    sget-object v25, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;->TYPE_URL_ILLEGAL:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v5, v11, v1}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    .end local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    .local v20, "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    new-instance v13, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;

    move-object/from16 v0, v22

    invoke-direct {v13, v14, v0}, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;-><init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V

    .line 242
    .local v13, "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    if-eqz v5, :cond_3

    .line 243
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v13}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 248
    :goto_0
    const/16 v23, 0x0

    .line 253
    .local v23, "isNotify":Z
    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mIsForceDetect:Z

    if-nez v5, :cond_0

    .line 255
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->notifyDetectUrlFileExist()Z

    move-result v23

    .line 259
    :cond_0
    if-nez v23, :cond_31

    if-eqz v16, :cond_31

    .line 262
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-interface {v5, v11, v0}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->resetDownloadFile(Ljava/lang/String;Z)V

    .line 263
    invoke-virtual/range {v16 .. v16}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFileDir()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v16 .. v16}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFileSizeLong()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v5, v11, v1, v2}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->notifyDetectNewDownloadFile(Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v23

    move-object/from16 v19, v20

    .line 271
    .end local v20    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    .restart local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    :goto_1
    if-nez v23, :cond_2

    .line 272
    if-nez v19, :cond_1

    .line 273
    new-instance v19, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;

    .end local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    const-string v11, "the file need to download may not access !"

    sget-object v25, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;->TYPE_UNKNOWN:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v5, v11, v1}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .restart local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->notifyDetectUrlFileFailed(Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;)Z

    move-result v23

    .line 282
    :cond_2
    if-nez v19, :cond_4

    const/16 v21, 0x1

    .line 284
    .local v21, "hasException":Z
    :goto_2
    sget-object v5, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->TAG:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, ".run \u63a2\u6d4b\u6587\u4ef6\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, "\uff0c\u662f\u5426\u5f3a\u5236\u63a2\u6d4b\u6a21\u5f0f\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mIsForceDetect:Z

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, "\uff0c\u662f\u5426\u6210\u529f\u901a\u77e5\u4e86\u8c03\u7528\u8005\uff08\u5982\u679c\u6ca1\u6709\u8bbe\u7f6e\u76d1\u542c\u8005\u8ba4\u4e3a\u6ca1\u6709\u901a\u77e5\u6210\u529f\uff09\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, "\uff0curl\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, v16

    .line 287
    .end local v16    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    .local v4, "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    :goto_3
    return-void

    .line 245
    .end local v4    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    .end local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    .end local v21    # "hasException":Z
    .end local v23    # "isNotify":Z
    .restart local v16    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    .restart local v20    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    :cond_3
    invoke-virtual {v13}, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;->run()V

    goto/16 :goto_0

    .line 265
    .restart local v23    # "isNotify":Z
    :catch_0
    move-exception v18

    .line 266
    .local v18, "e":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    new-instance v19, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v20    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    .restart local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    goto/16 :goto_1

    .line 282
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_4
    const/16 v21, 0x0

    goto :goto_2

    .line 148
    .end local v13    # "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    .end local v23    # "isNotify":Z
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    invoke-interface {v5, v11}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v17

    .line 149
    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mIsForceDetect:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_c

    .line 241
    new-instance v13, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;

    move-object/from16 v0, v22

    invoke-direct {v13, v14, v0}, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;-><init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V

    .line 242
    .restart local v13    # "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    if-eqz v5, :cond_a

    .line 243
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v13}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 248
    :goto_4
    const/16 v23, 0x0

    .line 253
    .restart local v23    # "isNotify":Z
    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mIsForceDetect:Z

    if-nez v5, :cond_6

    .line 255
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->notifyDetectUrlFileExist()Z

    move-result v23

    .line 259
    :cond_6
    if-nez v23, :cond_7

    if-eqz v16, :cond_7

    .line 262
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-interface {v5, v11, v0}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->resetDownloadFile(Ljava/lang/String;Z)V

    .line 263
    invoke-virtual/range {v16 .. v16}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFileDir()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v16 .. v16}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFileSizeLong()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v5, v11, v1, v2}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->notifyDetectNewDownloadFile(Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v23

    .line 271
    :cond_7
    :goto_5
    if-nez v23, :cond_9

    .line 272
    if-nez v19, :cond_8

    .line 273
    new-instance v19, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;

    .end local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    const-string v11, "the file need to download may not access !"

    sget-object v25, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;->TYPE_UNKNOWN:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v5, v11, v1}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .restart local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->notifyDetectUrlFileFailed(Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;)Z

    move-result v23

    .line 282
    :cond_9
    if-nez v19, :cond_b

    const/16 v21, 0x1

    .line 284
    .restart local v21    # "hasException":Z
    :goto_6
    sget-object v5, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->TAG:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, ".run \u63a2\u6d4b\u6587\u4ef6\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, "\uff0c\u662f\u5426\u5f3a\u5236\u63a2\u6d4b\u6a21\u5f0f\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mIsForceDetect:Z

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, "\uff0c\u662f\u5426\u6210\u529f\u901a\u77e5\u4e86\u8c03\u7528\u8005\uff08\u5982\u679c\u6ca1\u6709\u8bbe\u7f6e\u76d1\u542c\u8005\u8ba4\u4e3a\u6ca1\u6709\u901a\u77e5\u6210\u529f\uff09\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, "\uff0curl\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, v16

    .line 286
    .end local v16    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    .restart local v4    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    goto/16 :goto_3

    .line 245
    .end local v4    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    .end local v21    # "hasException":Z
    .end local v23    # "isNotify":Z
    .restart local v16    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    :cond_a
    invoke-virtual {v13}, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;->run()V

    goto/16 :goto_4

    .line 265
    .restart local v23    # "isNotify":Z
    :catch_1
    move-exception v18

    .line 266
    .restart local v18    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    new-instance v19, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;

    .end local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    goto/16 :goto_5

    .line 282
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_b
    const/16 v21, 0x0

    goto :goto_6

    .line 156
    .end local v13    # "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    .end local v23    # "isNotify":Z
    :cond_c
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    .line 158
    .local v15, "connectUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mConnectTimeout:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mCharset:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mRequestMethod:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mHeaders:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v15, v5, v11, v0, v1}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper;->createDetectConnection(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v14

    .line 161
    const/16 v24, 0x0

    .line 162
    .local v24, "redirectCount":I
    :goto_7
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    div-int/lit8 v5, v5, 0x64

    const/4 v11, 0x3

    if-ne v5, v11, :cond_d

    const/4 v5, 0x5

    move/from16 v0, v24

    if-ge v0, v5, :cond_d

    .line 163
    const-string v5, "Location"

    invoke-virtual {v14, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 164
    move-object/from16 v0, p0

    iget v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mConnectTimeout:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mCharset:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mRequestMethod:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mHeaders:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v15, v5, v11, v0, v1}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper;->createDetectConnection(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v14

    .line 165
    add-int/lit8 v24, v24, 0x1

    goto :goto_7

    .line 168
    :cond_d
    sget-object v5, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->TAG:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, ".run \u63a2\u6d4b\u6587\u4ef6\uff0c\u91cd\u5b9a\u5411\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, "\u6b21"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, "\uff0c\u6700\u5927\u91cd\u5b9a\u5411\u6b21\u6570\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v25, 0x5

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, "\uff0curl\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v5, 0x5

    move/from16 v0, v24

    if-le v0, v5, :cond_13

    .line 173
    new-instance v20, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    const-string v11, "over max redirect:5!"

    sget-object v25, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;->TYPE_URL_OVER_REDIRECT_COUNT:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v5, v11, v1}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 241
    .end local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    .restart local v20    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    new-instance v13, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;

    move-object/from16 v0, v22

    invoke-direct {v13, v14, v0}, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;-><init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V

    .line 242
    .restart local v13    # "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    if-eqz v5, :cond_11

    .line 243
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v13}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 248
    :goto_8
    const/16 v23, 0x0

    .line 253
    .restart local v23    # "isNotify":Z
    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mIsForceDetect:Z

    if-nez v5, :cond_e

    .line 255
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->notifyDetectUrlFileExist()Z

    move-result v23

    .line 259
    :cond_e
    if-nez v23, :cond_30

    if-eqz v16, :cond_30

    .line 262
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-interface {v5, v11, v0}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->resetDownloadFile(Ljava/lang/String;Z)V

    .line 263
    invoke-virtual/range {v16 .. v16}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFileDir()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v16 .. v16}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFileSizeLong()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v5, v11, v1, v2}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->notifyDetectNewDownloadFile(Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result v23

    move-object/from16 v19, v20

    .line 271
    .end local v20    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    .restart local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    :goto_9
    if-nez v23, :cond_10

    .line 272
    if-nez v19, :cond_f

    .line 273
    new-instance v19, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;

    .end local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    const-string v11, "the file need to download may not access !"

    sget-object v25, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;->TYPE_UNKNOWN:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v5, v11, v1}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .restart local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->notifyDetectUrlFileFailed(Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;)Z

    move-result v23

    .line 282
    :cond_10
    if-nez v19, :cond_12

    const/16 v21, 0x1

    .line 284
    .restart local v21    # "hasException":Z
    :goto_a
    sget-object v5, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->TAG:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, ".run \u63a2\u6d4b\u6587\u4ef6\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, "\uff0c\u662f\u5426\u5f3a\u5236\u63a2\u6d4b\u6a21\u5f0f\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mIsForceDetect:Z

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, "\uff0c\u662f\u5426\u6210\u529f\u901a\u77e5\u4e86\u8c03\u7528\u8005\uff08\u5982\u679c\u6ca1\u6709\u8bbe\u7f6e\u76d1\u542c\u8005\u8ba4\u4e3a\u6ca1\u6709\u901a\u77e5\u6210\u529f\uff09\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, "\uff0curl\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, v16

    .line 286
    .end local v16    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    .restart local v4    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    goto/16 :goto_3

    .line 245
    .end local v4    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    .end local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    .end local v21    # "hasException":Z
    .end local v23    # "isNotify":Z
    .restart local v16    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    .restart local v20    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    :cond_11
    invoke-virtual {v13}, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;->run()V

    goto/16 :goto_8

    .line 265
    .restart local v23    # "isNotify":Z
    :catch_2
    move-exception v18

    .line 266
    .restart local v18    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    new-instance v19, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v20    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    .restart local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    goto/16 :goto_9

    .line 282
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_12
    const/16 v21, 0x0

    goto :goto_a

    .line 179
    .end local v13    # "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    .end local v23    # "isNotify":Z
    :cond_13
    :try_start_6
    sget-object v5, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->TAG:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, ".run Response Headers:"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper;->getStringHeaders(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 231
    new-instance v20, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ResponseCode:"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, " "

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, "error, can not read data !"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v25, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;->TYPE_BAD_HTTP_RESPONSE_CODE:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v5, v11, v1}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    .restart local v20    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    move-object/from16 v19, v20

    .line 241
    .end local v20    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    .restart local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    :cond_14
    :goto_b
    new-instance v13, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;

    move-object/from16 v0, v22

    invoke-direct {v13, v14, v0}, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;-><init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V

    .line 242
    .restart local v13    # "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    if-eqz v5, :cond_22

    .line 243
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v13}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 248
    :goto_c
    const/16 v23, 0x0

    .line 253
    .restart local v23    # "isNotify":Z
    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mIsForceDetect:Z

    if-nez v5, :cond_15

    .line 255
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->notifyDetectUrlFileExist()Z

    move-result v23

    .line 259
    :cond_15
    if-nez v23, :cond_16

    if-eqz v16, :cond_16

    .line 262
    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-interface {v5, v11, v0}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->resetDownloadFile(Ljava/lang/String;Z)V

    .line 263
    invoke-virtual/range {v16 .. v16}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFileDir()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v16 .. v16}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFileSizeLong()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v5, v11, v1, v2}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->notifyDetectNewDownloadFile(Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-result v23

    .line 271
    :cond_16
    :goto_d
    if-nez v23, :cond_18

    .line 272
    if-nez v19, :cond_17

    .line 273
    new-instance v19, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;

    .end local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    const-string v11, "the file need to download may not access !"

    sget-object v25, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;->TYPE_UNKNOWN:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v5, v11, v1}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .restart local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->notifyDetectUrlFileFailed(Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;)Z

    move-result v23

    .line 282
    :cond_18
    if-nez v19, :cond_23

    const/16 v21, 0x1

    .line 284
    .restart local v21    # "hasException":Z
    :goto_e
    sget-object v5, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->TAG:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, ".run \u63a2\u6d4b\u6587\u4ef6\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, "\uff0c\u662f\u5426\u5f3a\u5236\u63a2\u6d4b\u6a21\u5f0f\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mIsForceDetect:Z

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, "\uff0c\u662f\u5426\u6210\u529f\u901a\u77e5\u4e86\u8c03\u7528\u8005\uff08\u5982\u679c\u6ca1\u6709\u8bbe\u7f6e\u76d1\u542c\u8005\u8ba4\u4e3a\u6ca1\u6709\u901a\u77e5\u6210\u529f\uff09\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, "\uff0curl\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, v16

    .line 286
    .end local v16    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    .restart local v4    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    goto/16 :goto_3

    .line 186
    .end local v4    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    .end local v13    # "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    .end local v21    # "hasException":Z
    .end local v23    # "isNotify":Z
    .restart local v16    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    :sswitch_0
    :try_start_8
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper;->getFileNameFromResponseHeader(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 187
    .local v12, "fileName":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 189
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mCharset:Ljava/lang/String;

    invoke-static {v15, v5}, Lorg/wlf/filedownloader/util/UrlUtil;->getFileNameByUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 198
    :cond_19
    :goto_f
    const-string v5, "ETag"

    invoke-virtual {v14, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 201
    .local v8, "eTag":Ljava/lang/String;
    const-string v5, "Accept-Ranges"

    invoke-virtual {v14, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 204
    .local v10, "acceptRangeType":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper;->getLastModifiedFromResponseHeader(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 208
    .local v9, "lastModified":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    int-to-long v6, v5

    .line 209
    .local v6, "fileSize":J
    const-wide/16 v26, 0x0

    cmp-long v5, v6, v26

    if-gtz v5, :cond_1a

    .line 210
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper;->getFileSizeFromResponseHeader(Ljava/util/Map;)J

    move-result-wide v6

    .line 213
    :cond_1a
    const-wide/16 v26, 0x0

    cmp-long v5, v6, v26

    if-lez v5, :cond_14

    .line 214
    new-instance v4, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mDownloadSaveDir:Ljava/lang/String;

    invoke-direct/range {v4 .. v12}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 217
    .end local v16    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    .restart local v4    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mDetectUrlFileCacher:Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;

    invoke-virtual {v5, v4}, Lorg/wlf/filedownloader/file_download/DetectUrlFileCacher;->addOrUpdateDetectUrlFile(Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 241
    new-instance v13, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;

    move-object/from16 v0, v22

    invoke-direct {v13, v14, v0}, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;-><init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V

    .line 242
    .restart local v13    # "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    if-eqz v5, :cond_20

    .line 243
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v13}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 248
    :goto_10
    const/16 v23, 0x0

    .line 253
    .restart local v23    # "isNotify":Z
    if-eqz v17, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mIsForceDetect:Z

    if-nez v5, :cond_1b

    .line 255
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->notifyDetectUrlFileExist()Z

    move-result v23

    .line 259
    :cond_1b
    if-nez v23, :cond_1c

    if-eqz v4, :cond_1c

    .line 262
    :try_start_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-interface {v5, v11, v0}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->resetDownloadFile(Ljava/lang/String;Z)V

    .line 263
    invoke-virtual {v4}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFileDir()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFileSizeLong()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v5, v11, v1, v2}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->notifyDetectNewDownloadFile(Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    move-result v23

    .line 271
    :cond_1c
    :goto_11
    if-nez v23, :cond_1e

    .line 272
    if-nez v19, :cond_1d

    .line 273
    new-instance v19, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;

    .end local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    const-string v11, "the file need to download may not access !"

    sget-object v25, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;->TYPE_UNKNOWN:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v5, v11, v1}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .restart local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->notifyDetectUrlFileFailed(Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;)Z

    move-result v23

    .line 282
    :cond_1e
    if-nez v19, :cond_21

    const/16 v21, 0x1

    .line 284
    .restart local v21    # "hasException":Z
    :goto_12
    sget-object v5, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->TAG:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, ".run \u63a2\u6d4b\u6587\u4ef6\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, "\uff0c\u662f\u5426\u5f3a\u5236\u63a2\u6d4b\u6a21\u5f0f\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mIsForceDetect:Z

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, "\uff0c\u662f\u5426\u6210\u529f\u901a\u77e5\u4e86\u8c03\u7528\u8005\uff08\u5982\u679c\u6ca1\u6709\u8bbe\u7f6e\u76d1\u542c\u8005\u8ba4\u4e3a\u6ca1\u6709\u901a\u77e5\u6210\u529f\uff09\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, "\uff0curl\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 192
    .end local v4    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    .end local v6    # "fileSize":J
    .end local v8    # "eTag":Ljava/lang/String;
    .end local v9    # "lastModified":Ljava/lang/String;
    .end local v10    # "acceptRangeType":Ljava/lang/String;
    .end local v13    # "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    .end local v21    # "hasException":Z
    .end local v23    # "isNotify":Z
    .restart local v16    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    :cond_1f
    :try_start_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mCharset:Ljava/lang/String;

    invoke-static {v12, v5}, Lorg/wlf/filedownloader/util/UrlUtil;->isEncoded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 193
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mCharset:Ljava/lang/String;

    invoke-static {v12, v5}, Lorg/wlf/filedownloader/util/UrlUtil;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v12

    goto/16 :goto_f

    .line 245
    .end local v16    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    .restart local v4    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    .restart local v6    # "fileSize":J
    .restart local v8    # "eTag":Ljava/lang/String;
    .restart local v9    # "lastModified":Ljava/lang/String;
    .restart local v10    # "acceptRangeType":Ljava/lang/String;
    .restart local v13    # "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    :cond_20
    invoke-virtual {v13}, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;->run()V

    goto/16 :goto_10

    .line 265
    .restart local v23    # "isNotify":Z
    :catch_3
    move-exception v18

    .line 266
    .restart local v18    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    new-instance v19, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;

    .end local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    goto/16 :goto_11

    .line 282
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_21
    const/16 v21, 0x0

    goto/16 :goto_12

    .line 225
    .end local v4    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    .end local v6    # "fileSize":J
    .end local v8    # "eTag":Ljava/lang/String;
    .end local v9    # "lastModified":Ljava/lang/String;
    .end local v10    # "acceptRangeType":Ljava/lang/String;
    .end local v12    # "fileName":Ljava/lang/String;
    .end local v13    # "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    .end local v23    # "isNotify":Z
    .restart local v16    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    :sswitch_1
    :try_start_c
    new-instance v20, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    const-string v11, "url file does not exist !"

    sget-object v25, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;->TYPE_HTTP_FILE_NOT_EXIST:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v5, v11, v1}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .end local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    .restart local v20    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    move-object/from16 v19, v20

    .line 227
    .end local v20    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    .restart local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    goto/16 :goto_b

    .line 245
    .restart local v13    # "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    :cond_22
    invoke-virtual {v13}, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;->run()V

    goto/16 :goto_c

    .line 265
    .restart local v23    # "isNotify":Z
    :catch_4
    move-exception v18

    .line 266
    .restart local v18    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    new-instance v19, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;

    .end local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    goto/16 :goto_d

    .line 282
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_23
    const/16 v21, 0x0

    goto/16 :goto_e

    .line 235
    .end local v13    # "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    .end local v15    # "connectUrl":Ljava/lang/String;
    .end local v23    # "isNotify":Z
    .end local v24    # "redirectCount":I
    :catch_5
    move-exception v18

    move-object/from16 v4, v16

    .line 236
    .end local v16    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    .restart local v4    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    .restart local v18    # "e":Ljava/lang/Exception;
    :goto_13
    :try_start_d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    new-instance v20, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 241
    .end local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    .restart local v20    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    new-instance v13, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;

    move-object/from16 v0, v22

    invoke-direct {v13, v14, v0}, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;-><init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V

    .line 242
    .restart local v13    # "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    if-eqz v5, :cond_27

    .line 243
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v13}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 248
    :goto_14
    const/16 v23, 0x0

    .line 253
    .restart local v23    # "isNotify":Z
    if-eqz v17, :cond_24

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mIsForceDetect:Z

    if-nez v5, :cond_24

    .line 255
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->notifyDetectUrlFileExist()Z

    move-result v23

    .line 259
    :cond_24
    if-nez v23, :cond_2f

    if-eqz v4, :cond_2f

    .line 262
    :try_start_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-interface {v5, v11, v0}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->resetDownloadFile(Ljava/lang/String;Z)V

    .line 263
    invoke-virtual {v4}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFileDir()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFileSizeLong()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v5, v11, v1, v2}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->notifyDetectNewDownloadFile(Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    move-result v23

    move-object/from16 v19, v20

    .line 271
    .end local v20    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    .restart local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    :goto_15
    if-nez v23, :cond_26

    .line 272
    if-nez v19, :cond_25

    .line 273
    new-instance v19, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;

    .end local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    const-string v11, "the file need to download may not access !"

    sget-object v25, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;->TYPE_UNKNOWN:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v5, v11, v1}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .restart local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    :cond_25
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->notifyDetectUrlFileFailed(Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;)Z

    move-result v23

    .line 282
    :cond_26
    if-nez v19, :cond_28

    const/16 v21, 0x1

    .line 284
    .restart local v21    # "hasException":Z
    :goto_16
    sget-object v5, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->TAG:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, ".run \u63a2\u6d4b\u6587\u4ef6\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, "\uff0c\u662f\u5426\u5f3a\u5236\u63a2\u6d4b\u6a21\u5f0f\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mIsForceDetect:Z

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, "\uff0c\u662f\u5426\u6210\u529f\u901a\u77e5\u4e86\u8c03\u7528\u8005\uff08\u5982\u679c\u6ca1\u6709\u8bbe\u7f6e\u76d1\u542c\u8005\u8ba4\u4e3a\u6ca1\u6709\u901a\u77e5\u6210\u529f\uff09\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, "\uff0curl\uff1a"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 245
    .end local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    .end local v21    # "hasException":Z
    .end local v23    # "isNotify":Z
    .restart local v20    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    :cond_27
    invoke-virtual {v13}, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;->run()V

    goto/16 :goto_14

    .line 265
    .restart local v23    # "isNotify":Z
    :catch_6
    move-exception v18

    .line 266
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    new-instance v19, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v20    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    .restart local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    goto/16 :goto_15

    .line 282
    :cond_28
    const/16 v21, 0x0

    goto :goto_16

    .line 241
    .end local v4    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    .end local v13    # "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v23    # "isNotify":Z
    .restart local v16    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    :catchall_0
    move-exception v5

    move-object/from16 v4, v16

    .end local v16    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    .restart local v4    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    :goto_17
    new-instance v13, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;

    move-object/from16 v0, v22

    invoke-direct {v13, v14, v0}, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;-><init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V

    .line 242
    .restart local v13    # "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    if-eqz v11, :cond_2d

    .line 243
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v11, v13}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 248
    :goto_18
    const/16 v23, 0x0

    .line 253
    .restart local v23    # "isNotify":Z
    if-eqz v17, :cond_29

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mIsForceDetect:Z

    if-nez v11, :cond_29

    .line 255
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->notifyDetectUrlFileExist()Z

    move-result v23

    .line 259
    :cond_29
    if-nez v23, :cond_2a

    if-eqz v4, :cond_2a

    .line 262
    :try_start_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mDownloadRecorder:Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v11, v0, v1}, Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;->resetDownloadFile(Ljava/lang/String;Z)V

    .line 263
    invoke-virtual {v4}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFileDir()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v4}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFileSizeLong()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-direct {v0, v11, v1, v2, v3}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->notifyDetectNewDownloadFile(Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    move-result v23

    .line 271
    :cond_2a
    :goto_19
    if-nez v23, :cond_2c

    .line 272
    if-nez v19, :cond_2b

    .line 273
    new-instance v19, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;

    .end local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    const-string v25, "the file need to download may not access !"

    sget-object v26, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;->TYPE_UNKNOWN:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v11, v1, v2}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .restart local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    :cond_2b
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->notifyDetectUrlFileFailed(Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;)Z

    move-result v23

    .line 282
    :cond_2c
    if-nez v19, :cond_2e

    const/16 v21, 0x1

    .line 284
    .restart local v21    # "hasException":Z
    :goto_1a
    sget-object v11, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->TAG:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ".run \u63a2\u6d4b\u6587\u4ef6\u4efb\u52a1\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\uff0c\u662f\u5426\u5f3a\u5236\u63a2\u6d4b\u6a21\u5f0f\uff1a"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mIsForceDetect:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\uff0c\u662f\u5426\u6210\u529f\u901a\u77e5\u4e86\u8c03\u7528\u8005\uff08\u5982\u679c\u6ca1\u6709\u8bbe\u7f6e\u76d1\u542c\u8005\u8ba4\u4e3a\u6ca1\u6709\u901a\u77e5\u6210\u529f\uff09\uff1a"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\uff0curl\uff1a"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    throw v5

    .line 245
    .end local v21    # "hasException":Z
    .end local v23    # "isNotify":Z
    :cond_2d
    invoke-virtual {v13}, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;->run()V

    goto/16 :goto_18

    .line 265
    .restart local v23    # "isNotify":Z
    :catch_7
    move-exception v18

    .line 266
    .restart local v18    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    new-instance v19, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;

    .end local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v11, v1}, Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    goto/16 :goto_19

    .line 282
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_2e
    const/16 v21, 0x0

    goto :goto_1a

    .line 241
    .end local v13    # "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    .end local v23    # "isNotify":Z
    :catchall_1
    move-exception v5

    goto/16 :goto_17

    .line 235
    .restart local v6    # "fileSize":J
    .restart local v8    # "eTag":Ljava/lang/String;
    .restart local v9    # "lastModified":Ljava/lang/String;
    .restart local v10    # "acceptRangeType":Ljava/lang/String;
    .restart local v12    # "fileName":Ljava/lang/String;
    .restart local v15    # "connectUrl":Ljava/lang/String;
    .restart local v24    # "redirectCount":I
    :catch_8
    move-exception v18

    goto/16 :goto_13

    .end local v6    # "fileSize":J
    .end local v8    # "eTag":Ljava/lang/String;
    .end local v9    # "lastModified":Ljava/lang/String;
    .end local v10    # "acceptRangeType":Ljava/lang/String;
    .end local v12    # "fileName":Ljava/lang/String;
    .end local v15    # "connectUrl":Ljava/lang/String;
    .end local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    .end local v24    # "redirectCount":I
    .restart local v13    # "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    .restart local v18    # "e":Ljava/lang/Exception;
    .restart local v20    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    .restart local v23    # "isNotify":Z
    :cond_2f
    move-object/from16 v19, v20

    .end local v20    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    .restart local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    goto/16 :goto_15

    .end local v4    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    .restart local v15    # "connectUrl":Ljava/lang/String;
    .restart local v16    # "detectUrlFileInfo":Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;
    .restart local v20    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    .restart local v24    # "redirectCount":I
    :cond_30
    move-object/from16 v19, v20

    .end local v20    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    .restart local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    goto/16 :goto_9

    .end local v15    # "connectUrl":Ljava/lang/String;
    .end local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    .end local v24    # "redirectCount":I
    .restart local v20    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    :cond_31
    move-object/from16 v19, v20

    .end local v20    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    .restart local v19    # "failReason":Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    goto/16 :goto_1

    .line 181
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x194 -> :sswitch_1
    .end sparse-switch
.end method

.method public setCloseConnectionEngine(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "closeConnectionEngine"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    .line 76
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0
    .param p1, "connectTimeout"    # I

    .prologue
    .line 84
    iput p1, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mConnectTimeout:I

    .line 85
    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mHeaders:Ljava/util/Map;

    .line 103
    return-void
.end method

.method public setOnDetectBigUrlFileListener(Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;)V
    .locals 0
    .param p1, "onDetectBigUrlFileListener"    # Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

    .prologue
    .line 66
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mOnDetectBigUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

    .line 67
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestMethod"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/DetectUrlFileTask;->mRequestMethod:Ljava/lang/String;

    .line 94
    return-void
.end method
