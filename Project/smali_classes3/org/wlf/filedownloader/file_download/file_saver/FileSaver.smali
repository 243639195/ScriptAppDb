.class public Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;
.super Ljava/lang/Object;
.source "FileSaver.java"

# interfaces
.implements Lorg/wlf/filedownloader/file_download/file_saver/Save;
.implements Lorg/wlf/filedownloader/base/Stoppable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$1;,
        Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$OnFileSaveListener;,
        Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE_WRITE_TO_FILE:I = 0x8000

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBufferSizeWriteToFile:I

.field private mDownloadNoticeStrategy:Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;

.field private mFileTotalSize:J

.field private mIsNotifyEnd:Z

.field private mIsStopped:Z

.field private mOnFileSaveListener:Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$OnFileSaveListener;

.field private mSaveFilePath:Ljava/lang/String;

.field private mTempFilePath:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "tempFilePath"    # Ljava/lang/String;
    .param p3, "saveFilePath"    # Ljava/lang/String;
    .param p4, "fileTotalSize"    # J

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const v0, 0x8000

    iput v0, p0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mBufferSizeWriteToFile:I

    .line 38
    sget-object v0, Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;->NOTICE_AUTO:Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mDownloadNoticeStrategy:Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;

    .line 55
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mUrl:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mTempFilePath:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mSaveFilePath:Ljava/lang/String;

    .line 58
    iput-wide p4, p0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mFileTotalSize:J

    .line 60
    iput-boolean v1, p0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mIsStopped:Z

    .line 61
    iput-boolean v1, p0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mIsNotifyEnd:Z

    .line 62
    return-void
.end method

.method private checkIsStop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    sget-object v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".checkIsStop --\u5df2\u7ecf\u5904\u7406\u5b8c\u4e86/\u5f3a\u5236\u505c\u6b62\u4e86\uff0c\u4e0d\u80fd\u518d\u5904\u7406\u6570\u636e\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;

    const-string v1, "the file saver has been stopped,it can not handle data any more!"

    sget-object v2, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->TYPE_SAVER_HAS_BEEN_STOPPED:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_0
    return-void
.end method

.method private notifyEnd(IZ)V
    .locals 3
    .param p1, "increaseSize"    # I
    .param p2, "complete"    # Z

    .prologue
    .line 314
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mIsNotifyEnd:Z

    if-eqz v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mOnFileSaveListener:Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$OnFileSaveListener;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mOnFileSaveListener:Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$OnFileSaveListener;

    invoke-interface {v0, p1, p2}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$OnFileSaveListener;->onSaveDataEnd(IZ)V

    .line 321
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mIsNotifyEnd:Z

    .line 323
    sget-object v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file-downloader-save \u4fdd\u5b58\u6570\u636e\u5b8c\u6210\uff0c\u662f\u5426\u6574\u4e2a\u6587\u4ef6\u5168\u90e8\u4e0b\u8f7d\u5b8c\u6210\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifySaving(IJ)Z
    .locals 4
    .param p1, "needNotifySize"    # I
    .param p2, "needHandleSize"    # J

    .prologue
    .line 299
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mOnFileSaveListener:Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$OnFileSaveListener;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mOnFileSaveListener:Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$OnFileSaveListener;

    invoke-interface {v0, p1, p2, p3}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$OnFileSaveListener;->onSavingData(IJ)V

    .line 302
    sget-object v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file-downloader-save \u6b63\u5728\u4fdd\u5b58\u6570\u636e\uff0cneedNotifySize\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff0cneedHandleSize\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v0, 0x1

    .line 307
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyStart()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mOnFileSaveListener:Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$OnFileSaveListener;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mOnFileSaveListener:Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$OnFileSaveListener;

    invoke-interface {v0}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$OnFileSaveListener;->onSaveDataStart()V

    .line 292
    :cond_0
    sget-object v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->TAG:Ljava/lang/String;

    const-string v1, "file-downloader-save \u51c6\u5907\u5f00\u59cb\u4fdd\u5b58\u6570\u636e"

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void
.end method


# virtual methods
.method public isStopped()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mIsStopped:Z

    return v0
.end method

.method public saveData(Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;J)V
    .locals 38
    .param p1, "inputStream"    # Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;
    .param p2, "startPosInTotal"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v14, 0x1

    .line 80
    .local v14, "hasException":Z
    const/4 v11, 0x0

    .line 82
    .local v11, "filePath":Ljava/lang/String;
    const/16 v16, 0x0

    .line 84
    .local v16, "isCompleted":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mUrl:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 86
    .local v30, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mBufferSizeWriteToFile:I

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v4, v0, [B

    .line 87
    .local v4, "buffer":[B
    const/16 v28, 0x0

    .line 90
    .local v28, "startIndex":I
    const/16 v24, 0x0

    .line 93
    .local v24, "randomAccessFile":Ljava/io/RandomAccessFile;
    const/16 v17, 0x0

    .line 99
    .local v17, "needNotifySize":I
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->checkIsStop()V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mTempFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/wlf/filedownloader/util/FileUtil;->createFileParentDir(Ljava/lang/String;)Z

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mSaveFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/wlf/filedownloader/util/FileUtil;->createFileParentDir(Ljava/lang/String;)Z

    .line 106
    new-instance v29, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mTempFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v29, "tempFile":Ljava/io/File;
    new-instance v27, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mSaveFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v27, "saveFile":Ljava/io/File;
    const-wide/16 v12, 0x0

    .line 110
    .local v12, "handledFileSize":J
    invoke-virtual/range {p1 .. p1}, Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;->getLength()J

    move-result-wide v22

    .line 113
    .local v22, "needHandleSize":J
    new-instance v25, Ljava/io/RandomAccessFile;

    const-string v31, "rwd"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .end local v24    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v25, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_1
    move-object/from16 v0, v25

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 116
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 119
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->notifyStart()V

    .line 121
    sget-object v31, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->TAG:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v33, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->TAG:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".saveData 1\u3001\u51c6\u5907\u5199\u6587\u4ef6\u7f13\u5b58\uff0c\u8def\u5f84\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\uff0curl\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 124
    .local v18, "lastNotifyTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 126
    .local v6, "curTime":J
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mIsStopped:Z

    move/from16 v31, v0

    if-nez v31, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mBufferSizeWriteToFile:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v31

    invoke-virtual {v0, v4, v1, v2}, Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;->read([BII)I

    move-result v26

    .local v26, "readSize":I
    const/16 v31, -0x1

    move/from16 v0, v26

    move/from16 v1, v31

    if-eq v0, v1, :cond_5

    .line 128
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->exists()Z

    move-result v31

    if-nez v31, :cond_3

    .line 129
    new-instance v31, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;

    const-string v32, "temp file not exist!"

    sget-object v33, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->TYPE_TEMP_FILE_DOES_NOT_EXIST:Ljava/lang/String;

    invoke-direct/range {v31 .. v33}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v31
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    .end local v6    # "curTime":J
    .end local v18    # "lastNotifyTime":J
    .end local v26    # "readSize":I
    :catch_0
    move-exception v10

    move-object/from16 v24, v25

    .line 255
    .end local v12    # "handledFileSize":J
    .end local v22    # "needHandleSize":J
    .end local v25    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v27    # "saveFile":Ljava/io/File;
    .end local v29    # "tempFile":Ljava/io/File;
    .local v10, "e":Ljava/lang/Exception;
    .restart local v24    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    const/4 v14, 0x0

    .line 257
    instance-of v0, v10, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;

    move/from16 v31, v0

    if-eqz v31, :cond_e

    .line 258
    check-cast v10, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;

    .end local v10    # "e":Ljava/lang/Exception;
    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    :catchall_0
    move-exception v31

    :goto_2
    if-eqz v24, :cond_1

    .line 266
    :try_start_3
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 273
    :cond_1
    :goto_3
    if-nez v14, :cond_2

    .line 274
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->notifyEnd(IZ)V

    .line 278
    :cond_2
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mIsStopped:Z

    .line 280
    sget-object v32, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v34, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->TAG:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ".saveData 3\u3001\u6587\u4ef6\u4fdd\u5b58\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\uff0c\u4fdd\u5b58\u8def\u5f84\uff1a"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\uff0curl\uff1a"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v31

    .line 133
    .end local v24    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "curTime":J
    .restart local v12    # "handledFileSize":J
    .restart local v18    # "lastNotifyTime":J
    .restart local v22    # "needHandleSize":J
    .restart local v25    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v26    # "readSize":I
    .restart local v27    # "saveFile":Ljava/io/File;
    .restart local v29    # "tempFile":Ljava/io/File;
    :cond_3
    :try_start_4
    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v26

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 135
    sub-int v15, v26, v28

    .line 137
    .local v15, "increaseSize":I
    int-to-long v0, v15

    move-wide/from16 v32, v0

    add-long v12, v12, v32

    .line 139
    add-int v17, v17, v15

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 142
    sub-long v8, v6, v18

    .line 145
    .local v8, "dTime":J
    sget-object v31, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$1;->$SwitchMap$org$wlf$filedownloader$file_download$file_saver$DownloadNoticeStrategy:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mDownloadNoticeStrategy:Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;->ordinal()I

    move-result v32

    aget v31, v31, v32

    packed-switch v31, :pswitch_data_0

    goto/16 :goto_0

    .line 147
    :pswitch_0
    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x3fe0000000000000L    # 0.5

    mul-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-long v0, v0

    move-wide/from16 v20, v0

    .line 149
    .local v20, "maxNotifySize":J
    sget-object v31, Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;->NOTICE_BY_TIME:Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;

    invoke-virtual/range {v31 .. v31}, Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;->getValue()J

    move-result-wide v32

    cmp-long v31, v8, v32

    if-ltz v31, :cond_4

    .line 151
    sget-object v31, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->TAG:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v33, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->TAG:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".saveData 2\u3001\u6b63\u5728\u5199\u6587\u4ef6\u7f13\u5b58\uff0c\u5df2\u5904\u7406\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\uff0c\u603b\u5171\u9700\u8981\u5904\u7406\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\uff0c\u5b8c\u6210\uff08\u767e\u5206\u6bd4\uff09\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    long-to-double v0, v12

    move-wide/from16 v34, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v36, v0

    div-double v34, v34, v36

    const-wide/high16 v36, 0x4059000000000000L    # 100.0

    mul-double v34, v34, v36

    invoke-static/range {v34 .. v35}, Lorg/wlf/filedownloader/util/MathUtil;->formatNumber(D)D

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "%\uff0curl\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->notifySaving(IJ)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 156
    const/16 v17, 0x0

    .line 157
    move-wide/from16 v18, v6

    goto/16 :goto_0

    .line 161
    :cond_4
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v32, v0

    cmp-long v31, v32, v20

    if-ltz v31, :cond_0

    .line 163
    sget-object v31, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->TAG:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v33, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->TAG:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".saveData 2\u3001\u6b63\u5728\u5199\u6587\u4ef6\u7f13\u5b58\uff0c\u5df2\u5904\u7406\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\uff0c\u603b\u5171\u9700\u8981\u5904\u7406\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\uff0c\u5b8c\u6210\uff08\u767e\u5206\u6bd4\uff09\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    long-to-double v0, v12

    move-wide/from16 v34, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v36, v0

    div-double v34, v34, v36

    const-wide/high16 v36, 0x4059000000000000L    # 100.0

    mul-double v34, v34, v36

    invoke-static/range {v34 .. v35}, Lorg/wlf/filedownloader/util/MathUtil;->formatNumber(D)D

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "%\uff0curl\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->notifySaving(IJ)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 168
    const/16 v17, 0x0

    .line 169
    move-wide/from16 v18, v6

    goto/16 :goto_0

    .line 176
    .end local v20    # "maxNotifySize":J
    :pswitch_1
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mDownloadNoticeStrategy:Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;->getValue()J

    move-result-wide v34

    cmp-long v31, v32, v34

    if-ltz v31, :cond_0

    .line 178
    sget-object v31, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->TAG:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v33, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->TAG:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".saveData 2\u3001\u6b63\u5728\u5199\u6587\u4ef6\u7f13\u5b58\uff0c\u5df2\u5904\u7406\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\uff0c\u603b\u5171\u9700\u8981\u5904\u7406\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\uff0c\u5b8c\u6210\uff08\u767e\u5206\u6bd4\uff09\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    long-to-double v0, v12

    move-wide/from16 v34, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v36, v0

    div-double v34, v34, v36

    const-wide/high16 v36, 0x4059000000000000L    # 100.0

    mul-double v34, v34, v36

    invoke-static/range {v34 .. v35}, Lorg/wlf/filedownloader/util/MathUtil;->formatNumber(D)D

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "%\uff0curl\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->notifySaving(IJ)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 183
    const/16 v17, 0x0

    .line 184
    move-wide/from16 v18, v6

    goto/16 :goto_0

    .line 190
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mDownloadNoticeStrategy:Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;->getValue()J

    move-result-wide v32

    cmp-long v31, v8, v32

    if-ltz v31, :cond_0

    .line 192
    sget-object v31, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->TAG:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v33, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->TAG:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".saveData 2\u3001\u6b63\u5728\u5199\u6587\u4ef6\u7f13\u5b58\uff0c\u5df2\u5904\u7406\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\uff0c\u603b\u5171\u9700\u8981\u5904\u7406\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\uff0c\u5b8c\u6210\uff08\u767e\u5206\u6bd4\uff09\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    long-to-double v0, v12

    move-wide/from16 v34, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v36, v0

    div-double v34, v34, v36

    const-wide/high16 v36, 0x4059000000000000L    # 100.0

    mul-double v34, v34, v36

    invoke-static/range {v34 .. v35}, Lorg/wlf/filedownloader/util/MathUtil;->formatNumber(D)D

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "%\uff0curl\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->notifySaving(IJ)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 197
    const/16 v17, 0x0

    .line 198
    move-wide/from16 v18, v6

    goto/16 :goto_0

    .line 206
    .end local v8    # "dTime":J
    .end local v15    # "increaseSize":I
    .end local v26    # "readSize":I
    :cond_5
    if-lez v17, :cond_6

    .line 208
    sget-object v31, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->TAG:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v33, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->TAG:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".saveData 2\u3001\u6b63\u5728\u5199\u6587\u4ef6\u7f13\u5b58\uff0c\u5df2\u5904\u7406\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\uff0c\u603b\u5171\u9700\u8981\u5904\u7406\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\uff0c\u5b8c\u6210\uff08\u767e\u5206\u6bd4\uff09\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    long-to-double v0, v12

    move-wide/from16 v34, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v36, v0

    div-double v34, v34, v36

    const-wide/high16 v36, 0x4059000000000000L    # 100.0

    mul-double v34, v34, v36

    invoke-static/range {v34 .. v35}, Lorg/wlf/filedownloader/util/MathUtil;->formatNumber(D)D

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "%\uff0curl\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->notifySaving(IJ)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 213
    const/16 v17, 0x0

    .line 214
    move-wide/from16 v18, v6

    .line 219
    :cond_6
    cmp-long v31, v22, v12

    if-nez v31, :cond_d

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->length()J

    move-result-wide v32

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mFileTotalSize:J

    move-wide/from16 v34, v0

    cmp-long v31, v32, v34

    if-nez v31, :cond_d

    .line 220
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->exists()Z

    move-result v31

    if-eqz v31, :cond_7

    .line 221
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->delete()Z

    move-result v5

    .line 222
    .local v5, "deleteResult":Z
    if-nez v5, :cond_7

    .line 223
    new-instance v31, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "delete old file:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " failed!"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    sget-object v33, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->TYPE_FILE_CAN_NOT_STORAGE:Ljava/lang/String;

    invoke-direct/range {v31 .. v33}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v31

    .line 264
    .end local v5    # "deleteResult":Z
    .end local v6    # "curTime":J
    .end local v18    # "lastNotifyTime":J
    :catchall_1
    move-exception v31

    move-object/from16 v24, v25

    .end local v25    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v24    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_2

    .line 227
    .end local v24    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "curTime":J
    .restart local v18    # "lastNotifyTime":J
    .restart local v25    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :cond_7
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v16

    .line 229
    if-nez v16, :cond_8

    .line 231
    const/16 v31, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lorg/wlf/filedownloader/util/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;Z)Z

    move-result v16

    .line 234
    :cond_8
    if-nez v16, :cond_9

    .line 236
    new-instance v31, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "rename temp file:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " to save "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " failed!"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    sget-object v33, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->TYPE_RENAME_TEMP_FILE_ERROR:Ljava/lang/String;

    invoke-direct/range {v31 .. v33}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v31

    .line 240
    :cond_9
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 242
    sget-object v31, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->TAG:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v33, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->TAG:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".saveData 3\u3001\u6587\u4ef6\u4fdd\u5b58\u5b8c\u6210\uff0c\u8def\u5f84\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\uff0curl\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 253
    :cond_a
    const/4 v14, 0x0

    .line 264
    if-eqz v25, :cond_b

    .line 266
    :try_start_5
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 273
    :cond_b
    :goto_4
    if-nez v14, :cond_c

    .line 274
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->notifyEnd(IZ)V

    .line 278
    :cond_c
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mIsStopped:Z

    .line 280
    sget-object v31, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->TAG:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v33, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->TAG:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".saveData 3\u3001\u6587\u4ef6\u4fdd\u5b58\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\uff0c\u4fdd\u5b58\u8def\u5f84\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\uff0curl\uff1a"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void

    .line 247
    :cond_d
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mIsStopped:Z

    move/from16 v31, v0

    if-nez v31, :cond_a

    .line 249
    new-instance v31, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;

    const-string v32, "saving data error!"

    sget-object v33, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->TYPE_UNKNOWN:Ljava/lang/String;

    invoke-direct/range {v31 .. v33}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v31
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 267
    :catch_1
    move-exception v10

    .line 268
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 260
    .end local v6    # "curTime":J
    .end local v12    # "handledFileSize":J
    .end local v18    # "lastNotifyTime":J
    .end local v22    # "needHandleSize":J
    .end local v25    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v27    # "saveFile":Ljava/io/File;
    .end local v29    # "tempFile":Ljava/io/File;
    .local v10, "e":Ljava/lang/Exception;
    .restart local v24    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :cond_e
    :try_start_7
    new-instance v31, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;

    move-object/from16 v0, v31

    invoke-direct {v0, v10}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;-><init>(Ljava/lang/Throwable;)V

    throw v31
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 267
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v10

    .line 268
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 254
    .end local v10    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v10

    goto/16 :goto_1

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOnFileSaveListener(Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$OnFileSaveListener;)V
    .locals 0
    .param p1, "onFileSaveListener"    # Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$OnFileSaveListener;

    .prologue
    .line 70
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mOnFileSaveListener:Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$OnFileSaveListener;

    .line 71
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;->mIsStopped:Z

    .line 346
    return-void
.end method
