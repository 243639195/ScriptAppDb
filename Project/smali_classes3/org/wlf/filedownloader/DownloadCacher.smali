.class public Lorg/wlf/filedownloader/DownloadCacher;
.super Ljava/lang/Object;
.source "DownloadCacher.java"

# interfaces
.implements Lorg/wlf/filedownloader/file_download/base/DownloadRecorder;
.implements Lorg/wlf/filedownloader/file_move/DownloadFileMover;
.implements Lorg/wlf/filedownloader/file_delete/DownloadFileDeleter;
.implements Lorg/wlf/filedownloader/file_rename/DownloadFileRenamer;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDownloadFileChangeObserver:Lorg/wlf/filedownloader/DownloadFileChangeObserver;

.field private mDownloadFileDbHelper:Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDbHelper;

.field private mDownloadFileInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/wlf/filedownloader/DownloadFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mModifyLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/wlf/filedownloader/DownloadCacher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/DownloadCacher;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileInfoMap:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadCacher;->mModifyLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDbHelper;

    invoke-direct {v0, p1}, Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileDbHelper:Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDbHelper;

    .line 68
    new-instance v0, Lorg/wlf/filedownloader/DownloadFileChangeObserver;

    invoke-direct {v0}, Lorg/wlf/filedownloader/DownloadFileChangeObserver;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileChangeObserver:Lorg/wlf/filedownloader/DownloadFileChangeObserver;

    .line 69
    invoke-direct {p0}, Lorg/wlf/filedownloader/DownloadCacher;->initDownloadFileInfoMapFromDb()V

    .line 70
    return-void
.end method

.method private addDownloadFile(Lorg/wlf/filedownloader/DownloadFileInfo;)Z
    .locals 14
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 281
    invoke-static {p1}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 282
    const/4 v9, 0x0

    .line 352
    :goto_0
    return v9

    .line 285
    :cond_0
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileDbHelper:Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDbHelper;

    const-string v10, "tb_download_file"

    invoke-virtual {v9, v10}, Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDbHelper;->getContentDbDao(Ljava/lang/String;)Lorg/wlf/filedownloader/db/ContentDbDao;

    move-result-object v1

    .line 286
    .local v1, "dao":Lorg/wlf/filedownloader/db/ContentDbDao;
    if-nez v1, :cond_1

    .line 287
    const/4 v9, 0x0

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getContentValues()Landroid/content/ContentValues;

    move-result-object v8

    .line 291
    .local v8, "values":Landroid/content/ContentValues;
    invoke-static {v8}, Lorg/wlf/filedownloader/util/ContentValuesUtil;->isEmpty(Landroid/content/ContentValues;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 292
    const/4 v9, 0x0

    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 297
    .local v7, "url":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lorg/wlf/filedownloader/DownloadCacher;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v2

    .line 299
    .local v2, "downloadFileInfoExist":Lorg/wlf/filedownloader/DownloadFileInfo;
    invoke-static {v2}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v9

    if-eqz v9, :cond_9

    if-eq v2, p1, :cond_9

    .line 301
    sget-object v6, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->OTHER:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    .line 302
    .local v6, "type":Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;
    const/4 v0, 0x0

    .line 304
    .local v0, "changeCount":I
    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getStatus()I

    move-result v9

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getStatus()I

    move-result v10

    if-eq v9, v10, :cond_3

    .line 305
    add-int/lit8 v0, v0, 0x1

    .line 306
    sget-object v6, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->DOWNLOAD_STATUS:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    .line 308
    :cond_3
    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v10

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-eqz v9, :cond_4

    .line 309
    add-int/lit8 v0, v0, 0x1

    .line 310
    sget-object v6, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->DOWNLOADED_SIZE:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    .line 312
    :cond_4
    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileDir()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileDir()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileDir()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 314
    add-int/lit8 v0, v0, 0x1

    .line 315
    sget-object v6, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->SAVE_DIR:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    .line 317
    :cond_5
    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 319
    add-int/lit8 v0, v0, 0x1

    .line 320
    sget-object v6, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->SAVE_FILE_NAME:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    .line 323
    :cond_6
    const/4 v9, 0x1

    if-le v0, v9, :cond_7

    .line 324
    sget-object v6, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->OTHER:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    .line 327
    :cond_7
    iget-object v10, p0, Lorg/wlf/filedownloader/DownloadCacher;->mModifyLock:Ljava/lang/Object;

    monitor-enter v10

    .line 329
    :try_start_0
    invoke-virtual {v2, p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->update(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 331
    const/4 v9, 0x0

    invoke-direct {p0, v2, v9, v6}, Lorg/wlf/filedownloader/DownloadCacher;->updateDownloadFileInternal(Lorg/wlf/filedownloader/DownloadFileInfo;ZLorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;)Z

    move-result v3

    .line 333
    .local v3, "isSucceed":Z
    if-nez v3, :cond_8

    .line 336
    :cond_8
    const/4 v9, 0x1

    monitor-exit v10

    goto/16 :goto_0

    .line 337
    .end local v3    # "isSucceed":Z
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 341
    .end local v0    # "changeCount":I
    .end local v6    # "type":Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;
    :cond_9
    iget-object v10, p0, Lorg/wlf/filedownloader/DownloadCacher;->mModifyLock:Ljava/lang/Object;

    monitor-enter v10

    .line 342
    :try_start_1
    invoke-interface {v1, v8}, Lorg/wlf/filedownloader/db/ContentDbDao;->insert(Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 343
    .local v4, "id":J
    const-wide/16 v12, -0x1

    cmp-long v9, v4, v12

    if-eqz v9, :cond_a

    .line 345
    new-instance v9, Ljava/lang/Integer;

    long-to-int v11, v4

    invoke-direct {v9, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v9}, Lorg/wlf/filedownloader/DownloadFileInfo;->setId(Ljava/lang/Integer;)V

    .line 346
    iget-object v9, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileInfoMap:Ljava/util/Map;

    invoke-interface {v9, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/DownloadCacher;->notifyDownloadFileCreated(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 349
    const/4 v9, 0x1

    monitor-exit v10

    goto/16 :goto_0

    .line 351
    .end local v4    # "id":J
    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v9

    .restart local v4    # "id":J
    :cond_a
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 352
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method private checkDownloadFileStatus(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 14
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    const/16 v10, 0x8

    const-wide/16 v12, 0x0

    .line 113
    :try_start_0
    invoke-static {p1}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v8

    cmp-long v7, v8, v12

    if-gtz v7, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "saveFilePath":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getTempFilePath()Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, "tempFilePath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 122
    .local v3, "saveFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 124
    .local v5, "tempFile":Ljava/io/File;
    invoke-static {v4}, Lorg/wlf/filedownloader/util/FileUtil;->isFilePath(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 125
    new-instance v3, Ljava/io/File;

    .end local v3    # "saveFile":Ljava/io/File;
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .restart local v3    # "saveFile":Ljava/io/File;
    :cond_2
    invoke-static {v6}, Lorg/wlf/filedownloader/util/FileUtil;->isFilePath(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 128
    new-instance v5, Ljava/io/File;

    .end local v5    # "tempFile":Ljava/io/File;
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .restart local v5    # "tempFile":Ljava/io/File;
    :cond_3
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getStatus()I

    move-result v7

    if-ne v7, v10, :cond_7

    .line 133
    const/4 v2, 0x0

    .line 135
    .local v2, "handled":Z
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v8

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileSizeLong()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    .line 138
    sget-object v7, Lorg/wlf/filedownloader/DownloadCacher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkDownloadFileStatus\uff0c\u6587\u4ef6\u5df2\u4e0b\u8f7d\u5b8c\uff0c\u4f46\u5f53\u524d\u72b6\u6001\u4e3a\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u9700\u8981\u66f4\u6539\u72b6\u6001\u4e3a\u5df2\u4e0b\u8f7d\u5b8c\u6210\uff0curl:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v7, 0x5

    invoke-direct {p0, p1, v7}, Lorg/wlf/filedownloader/DownloadCacher;->updateDownloadFileWithStatus(Lorg/wlf/filedownloader/DownloadFileInfo;I)Z

    move-result v2

    .line 144
    :cond_4
    if-nez v2, :cond_0

    .line 146
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v7, v8, v12

    if-gtz v7, :cond_6

    :cond_5
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v7, v8, v12

    if-lez v7, :cond_0

    .line 149
    :cond_6
    sget-object v7, Lorg/wlf/filedownloader/DownloadCacher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkDownloadFileStatus\uff0c\u6587\u4ef6\u672a\u4e0b\u8f7d\u5b8c/\u4e0b\u8f7d\u6587\u4ef6\u51fa\u73b0\u95ee\u9898\uff0c\u4f46\u5f53\u524d\u72b6\u6001\u4e3a\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u9700\u8981\u66f4\u6539\u72b6\u6001\u4e3a\u4e0b\u8f7d\u51fa\u9519\uff0curl:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v7, 0x7

    invoke-direct {p0, p1, v7}, Lorg/wlf/filedownloader/DownloadCacher;->updateDownloadFileWithStatus(Lorg/wlf/filedownloader/DownloadFileInfo;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 197
    .end local v2    # "handled":Z
    .end local v3    # "saveFile":Ljava/io/File;
    .end local v4    # "saveFilePath":Ljava/lang/String;
    .end local v5    # "tempFile":Ljava/io/File;
    .end local v6    # "tempFilePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 157
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "saveFile":Ljava/io/File;
    .restart local v4    # "saveFilePath":Ljava/lang/String;
    .restart local v5    # "tempFile":Ljava/io/File;
    .restart local v6    # "tempFilePath":Ljava/lang/String;
    :cond_7
    const/4 v1, 0x1

    .line 160
    .local v1, "fileExist":Z
    :try_start_1
    invoke-static {p1}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isCompleted(Lorg/wlf/filedownloader/DownloadFileInfo;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 161
    if-eqz v3, :cond_8

    .line 163
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_8

    .line 165
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_9

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v8

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileSizeLong()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_9

    .line 192
    :cond_8
    :goto_1
    if-nez v1, :cond_0

    .line 194
    const/16 v7, 0x8

    invoke-direct {p0, p1, v7}, Lorg/wlf/filedownloader/DownloadCacher;->updateDownloadFileWithStatus(Lorg/wlf/filedownloader/DownloadFileInfo;I)Z

    goto/16 :goto_0

    .line 171
    :cond_9
    sget-object v7, Lorg/wlf/filedownloader/DownloadCacher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkDownloadFileStatus\uff0c\u6587\u4ef6\u4e0b\u8f7d\u5b8c\u6210\uff0c\u4f46\u662f\u6587\u4ef6\u4e0d\u5b58\u5728\u4e86\uff0c\u9700\u8981\u66f4\u6539\u72b6\u6001\u4e3a\u6587\u4ef6\u4e0d\u5b58\u5728\uff0curl:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v1, 0x0

    goto :goto_1

    .line 181
    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v7, v8, v12

    if-gtz v7, :cond_8

    .line 185
    :cond_b
    sget-object v7, Lorg/wlf/filedownloader/DownloadCacher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkDownloadFileStatus\uff0c\u6587\u4ef6\u6ca1\u6709\u4e0b\u8f7d\u5b8c\u6210\uff0c\u4f46\u662f\u6587\u4ef6\u4e0d\u5b58\u5728\u4e86\uff0c\u9700\u8981\u66f4\u6539\u72b6\u6001\u4e3a\u6587\u4ef6\u4e0d\u5b58\u5728\uff0curl:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private deleteDownloadFile(Lorg/wlf/filedownloader/DownloadFileInfo;)Z
    .locals 11
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 436
    invoke-static {p1}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 468
    :cond_0
    :goto_0
    return v3

    .line 440
    :cond_1
    iget-object v5, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileDbHelper:Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDbHelper;

    const-string v6, "tb_download_file"

    invoke-virtual {v5, v6}, Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDbHelper;->getContentDbDao(Ljava/lang/String;)Lorg/wlf/filedownloader/db/ContentDbDao;

    move-result-object v0

    .line 441
    .local v0, "dao":Lorg/wlf/filedownloader/db/ContentDbDao;
    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, "url":Ljava/lang/String;
    iget-object v5, p0, Lorg/wlf/filedownloader/DownloadCacher;->mModifyLock:Ljava/lang/Object;

    monitor-enter v5

    .line 448
    :try_start_0
    const-string v6, "_id= ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getId()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v0, v6, v7}, Lorg/wlf/filedownloader/db/ContentDbDao;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 450
    .local v1, "result":I
    if-ne v1, v4, :cond_2

    .line 452
    iget-object v3, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileInfoMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/DownloadCacher;->notifyDownloadFileDeleted(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 455
    monitor-exit v5

    move v3, v4

    goto :goto_0

    .line 458
    :cond_2
    const-string v6, "url= ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v0, v6, v7}, Lorg/wlf/filedownloader/db/ContentDbDao;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 459
    if-ne v1, v4, :cond_3

    .line 461
    iget-object v3, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileInfoMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/DownloadCacher;->notifyDownloadFileDeleted(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 464
    monitor-exit v5

    move v3, v4

    goto :goto_0

    .line 467
    :cond_3
    monitor-exit v5

    goto :goto_0

    .end local v1    # "result":I
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getDownloadFileInternal(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 616
    const/4 v3, 0x0

    .line 618
    .local v3, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    iget-object v6, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileInfoMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 620
    iget-object v5, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileInfoMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    check-cast v3, Lorg/wlf/filedownloader/DownloadFileInfo;

    .line 654
    .restart local v3    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Lorg/wlf/filedownloader/DownloadCacher;->checkDownloadFileStatus(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    move-object v5, v3

    .line 656
    :cond_1
    return-object v5

    .line 623
    :cond_2
    iget-object v6, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileDbHelper:Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDbHelper;

    const-string v7, "tb_download_file"

    invoke-virtual {v6, v7}, Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDbHelper;->getContentDbDao(Ljava/lang/String;)Lorg/wlf/filedownloader/db/ContentDbDao;

    move-result-object v2

    .line 625
    .local v2, "dao":Lorg/wlf/filedownloader/db/ContentDbDao;
    if-eqz v2, :cond_1

    .line 629
    const-string v6, "url= ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-interface {v2, v5, v6, v7, v5}, Lorg/wlf/filedownloader/db/ContentDbDao;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 631
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 632
    new-instance v3, Lorg/wlf/filedownloader/DownloadFileInfo;

    .end local v3    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    invoke-direct {v3, v1}, Lorg/wlf/filedownloader/DownloadFileInfo;-><init>(Landroid/database/Cursor;)V

    .line 636
    .restart local v3    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_4

    .line 637
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 640
    :cond_4
    if-eqz v3, :cond_1

    .line 644
    invoke-virtual {v3}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 645
    .local v4, "downloadUrl":Ljava/lang/String;
    invoke-static {v4}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 646
    iget-object v6, p0, Lorg/wlf/filedownloader/DownloadCacher;->mModifyLock:Ljava/lang/Object;

    monitor-enter v6

    .line 648
    :try_start_0
    iget-object v5, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileInfoMap:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    iget-object v5, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileInfoMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/wlf/filedownloader/DownloadFileInfo;

    move-object v3, v0

    .line 650
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private getDownloadFilesFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/wlf/filedownloader/DownloadFileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 586
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v1, "downloadFileInfos":Ljava/util/List;, "Ljava/util/List<Lorg/wlf/filedownloader/DownloadFileInfo;>;"
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    new-instance v0, Lorg/wlf/filedownloader/DownloadFileInfo;

    invoke-direct {v0, p1}, Lorg/wlf/filedownloader/DownloadFileInfo;-><init>(Landroid/database/Cursor;)V

    .line 589
    .local v0, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    if-eqz v0, :cond_0

    .line 592
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 594
    .end local v0    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    :cond_1
    return-object v1
.end method

.method private initDownloadFileInfoMapFromDb()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 77
    iget-object v5, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileDbHelper:Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDbHelper;

    const-string v6, "tb_download_file"

    invoke-virtual {v5, v6}, Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDbHelper;->getContentDbDao(Ljava/lang/String;)Lorg/wlf/filedownloader/db/ContentDbDao;

    move-result-object v1

    .line 78
    .local v1, "dao":Lorg/wlf/filedownloader/db/ContentDbDao;
    if-nez v1, :cond_1

    .line 103
    :cond_0
    return-void

    .line 83
    :cond_1
    invoke-interface {v1, v7, v7, v7, v7}, Lorg/wlf/filedownloader/db/ContentDbDao;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 84
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lorg/wlf/filedownloader/DownloadCacher;->getDownloadFilesFromCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v3

    .line 86
    .local v3, "downloadFileInfos":Ljava/util/List;, "Ljava/util/List<Lorg/wlf/filedownloader/DownloadFileInfo;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 87
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_2
    invoke-static {v3}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 95
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wlf/filedownloader/DownloadFileInfo;

    .line 96
    .local v2, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    invoke-static {v2}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 99
    iget-object v6, p0, Lorg/wlf/filedownloader/DownloadCacher;->mModifyLock:Ljava/lang/Object;

    monitor-enter v6

    .line 100
    :try_start_0
    iget-object v5, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileInfoMap:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private notifyDownloadFileCreated(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 1
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 249
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileChangeObserver:Lorg/wlf/filedownloader/DownloadFileChangeObserver;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileChangeObserver:Lorg/wlf/filedownloader/DownloadFileChangeObserver;

    invoke-virtual {v0, p1}, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->onDownloadFileCreated(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 252
    :cond_0
    return-void
.end method

.method private notifyDownloadFileDeleted(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 1
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 269
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileChangeObserver:Lorg/wlf/filedownloader/DownloadFileChangeObserver;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileChangeObserver:Lorg/wlf/filedownloader/DownloadFileChangeObserver;

    invoke-virtual {v0, p1}, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->onDownloadFileDeleted(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 272
    :cond_0
    return-void
.end method

.method private notifyDownloadFileUpdated(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;)V
    .locals 1
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "type"    # Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    .prologue
    .line 259
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileChangeObserver:Lorg/wlf/filedownloader/DownloadFileChangeObserver;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileChangeObserver:Lorg/wlf/filedownloader/DownloadFileChangeObserver;

    invoke-virtual {v0, p1, p2}, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->onDownloadFileUpdated(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;)V

    .line 262
    :cond_0
    return-void
.end method

.method private updateDownloadFileInternal(Lorg/wlf/filedownloader/DownloadFileInfo;ZLorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;)Z
    .locals 11
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "lockInternal"    # Z
    .param p3, "notifyType"    # Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    .prologue
    .line 361
    invoke-static {p1}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 362
    const/4 v5, 0x0

    .line 410
    :goto_0
    return v5

    .line 365
    :cond_0
    iget-object v5, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileDbHelper:Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDbHelper;

    const-string v6, "tb_download_file"

    invoke-virtual {v5, v6}, Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDbHelper;->getContentDbDao(Ljava/lang/String;)Lorg/wlf/filedownloader/db/ContentDbDao;

    move-result-object v0

    .line 366
    .local v0, "dao":Lorg/wlf/filedownloader/db/ContentDbDao;
    if-nez v0, :cond_1

    .line 367
    const/4 v5, 0x0

    goto :goto_0

    .line 370
    :cond_1
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 371
    .local v4, "values":Landroid/content/ContentValues;
    invoke-static {v4}, Lorg/wlf/filedownloader/util/ContentValuesUtil;->isEmpty(Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 372
    const/4 v5, 0x0

    goto :goto_0

    .line 375
    :cond_2
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, "url":Ljava/lang/String;
    if-eqz p2, :cond_6

    .line 378
    iget-object v6, p0, Lorg/wlf/filedownloader/DownloadCacher;->mModifyLock:Ljava/lang/Object;

    monitor-enter v6

    .line 379
    :try_start_0
    const-string v5, "_id= ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getId()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v0, v4, v5, v7}, Lorg/wlf/filedownloader/db/ContentDbDao;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 381
    .local v2, "result":I
    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    .line 383
    iget-object v5, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileInfoMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 384
    iget-object v5, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileInfoMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wlf/filedownloader/DownloadFileInfo;

    .line 385
    .local v1, "downloadFileInfoInMap":Lorg/wlf/filedownloader/DownloadFileInfo;
    invoke-virtual {v1, p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->update(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 390
    .end local v1    # "downloadFileInfoInMap":Lorg/wlf/filedownloader/DownloadFileInfo;
    :goto_1
    invoke-direct {p0, p1, p3}, Lorg/wlf/filedownloader/DownloadCacher;->notifyDownloadFileUpdated(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;)V

    .line 391
    const/4 v5, 0x1

    monitor-exit v6

    goto :goto_0

    .line 393
    .end local v2    # "result":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 387
    .restart local v2    # "result":I
    :cond_3
    :try_start_1
    iget-object v5, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileInfoMap:Ljava/util/Map;

    invoke-interface {v5, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 393
    :cond_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 395
    .end local v2    # "result":I
    :cond_6
    const-string v5, "_id= ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getId()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v0, v4, v5, v6}, Lorg/wlf/filedownloader/db/ContentDbDao;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 397
    .restart local v2    # "result":I
    const/4 v5, 0x1

    if-ne v2, v5, :cond_5

    .line 399
    iget-object v5, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileInfoMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 400
    iget-object v5, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileInfoMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wlf/filedownloader/DownloadFileInfo;

    .line 401
    .restart local v1    # "downloadFileInfoInMap":Lorg/wlf/filedownloader/DownloadFileInfo;
    invoke-virtual {v1, p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->update(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    .line 406
    .end local v1    # "downloadFileInfoInMap":Lorg/wlf/filedownloader/DownloadFileInfo;
    :goto_2
    invoke-direct {p0, p1, p3}, Lorg/wlf/filedownloader/DownloadCacher;->notifyDownloadFileUpdated(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;)V

    .line 407
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 403
    :cond_7
    iget-object v5, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileInfoMap:Ljava/util/Map;

    invoke-interface {v5, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private updateDownloadFileWithStatus(Lorg/wlf/filedownloader/DownloadFileInfo;I)Z
    .locals 6
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;
    .param p2, "newStatus"    # I

    .prologue
    const/4 v2, 0x0

    .line 417
    iget-object v3, p0, Lorg/wlf/filedownloader/DownloadCacher;->mModifyLock:Ljava/lang/Object;

    monitor-enter v3

    .line 418
    :try_start_0
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getStatus()I

    move-result v1

    .line 419
    .local v1, "oldStatus":I
    invoke-virtual {p1, p2}, Lorg/wlf/filedownloader/DownloadFileInfo;->setStatus(I)V

    .line 420
    const/4 v4, 0x0

    sget-object v5, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->DOWNLOAD_STATUS:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    invoke-direct {p0, p1, v4, v5}, Lorg/wlf/filedownloader/DownloadCacher;->updateDownloadFileInternal(Lorg/wlf/filedownloader/DownloadFileInfo;ZLorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;)Z

    move-result v0

    .line 421
    .local v0, "isSucceed":Z
    if-nez v0, :cond_0

    .line 423
    invoke-virtual {p1, v1}, Lorg/wlf/filedownloader/DownloadFileInfo;->setStatus(I)V

    .line 427
    monitor-exit v3

    :goto_0
    return v2

    .line 425
    :cond_0
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 428
    .end local v0    # "isSucceed":Z
    .end local v1    # "oldStatus":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public createDownloadFileInfo(Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;)Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 4
    .param p1, "detectUrlFileInfo"    # Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;

    .prologue
    const/4 v2, 0x0

    .line 686
    invoke-static {p1}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    .line 695
    :cond_0
    :goto_0
    return-object v0

    .line 689
    :cond_1
    new-instance v0, Lorg/wlf/filedownloader/DownloadFileInfo;

    invoke-direct {v0, p1}, Lorg/wlf/filedownloader/DownloadFileInfo;-><init>(Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;)V

    .line 691
    .local v0, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    invoke-direct {p0, v0}, Lorg/wlf/filedownloader/DownloadCacher;->addDownloadFile(Lorg/wlf/filedownloader/DownloadFileInfo;)Z

    move-result v1

    .line 692
    .local v1, "isSucceed":Z
    if-nez v1, :cond_0

    move-object v0, v2

    .line 695
    goto :goto_0
.end method

.method public deleteDownloadFile(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 811
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/DownloadCacher;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v1

    .line 812
    .local v1, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    invoke-static {v1}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 813
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "download file doest not exist or illegal !"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 815
    :cond_0
    invoke-direct {p0, v1}, Lorg/wlf/filedownloader/DownloadCacher;->deleteDownloadFile(Lorg/wlf/filedownloader/DownloadFileInfo;)Z

    move-result v2

    .line 816
    .local v2, "isSucceed":Z
    if-nez v2, :cond_1

    .line 818
    invoke-virtual {v1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/wlf/filedownloader/DownloadCacher;->getDownloadFileInternal(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    .line 819
    .local v0, "DownloadFileInfoDeleted":Lorg/wlf/filedownloader/DownloadFileInfo;
    if-nez v0, :cond_2

    .line 826
    .end local v0    # "DownloadFileInfoDeleted":Lorg/wlf/filedownloader/DownloadFileInfo;
    :cond_1
    return-void

    .line 823
    .restart local v0    # "DownloadFileInfoDeleted":Lorg/wlf/filedownloader/DownloadFileInfo;
    :cond_2
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "delete failed !"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 602
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/DownloadCacher;->getDownloadFileInternal(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    .line 604
    .local v0, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/wlf/filedownloader/DownloadCacher;->getDownloadFileInternal(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    .line 608
    :cond_0
    return-object v0
.end method

.method public getDownloadFileBySavePath(Ljava/lang/String;Z)Lorg/wlf/filedownloader/DownloadFileInfo;
    .locals 17
    .param p1, "savePath"    # Ljava/lang/String;
    .param p2, "includeTempFilePath"    # Z

    .prologue
    .line 485
    invoke-static/range {p1 .. p1}, Lorg/wlf/filedownloader/util/FileUtil;->isFilePath(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 486
    const/4 v3, 0x0

    .line 576
    :goto_0
    return-object v3

    .line 489
    :cond_0
    const/4 v3, 0x0

    .line 492
    .local v3, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileInfoMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    .line 493
    .local v11, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;>;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 494
    .local v9, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;>;>;"
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 495
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 496
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;>;"
    if-eqz v4, :cond_1

    .line 499
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/wlf/filedownloader/DownloadFileInfo;

    .line 500
    .local v8, "info":Lorg/wlf/filedownloader/DownloadFileInfo;
    if-eqz v8, :cond_1

    .line 503
    invoke-virtual {v8}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v5

    .line 504
    .local v5, "filePath":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 508
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 509
    move-object v3, v8

    .line 515
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;>;"
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v8    # "info":Lorg/wlf/filedownloader/DownloadFileInfo;
    :cond_2
    if-nez v3, :cond_a

    .line 517
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileDbHelper:Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDbHelper;

    const-string v14, "tb_download_file"

    invoke-virtual {v13, v14}, Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDbHelper;->getContentDbDao(Ljava/lang/String;)Lorg/wlf/filedownloader/db/ContentDbDao;

    move-result-object v2

    .line 519
    .local v2, "dao":Lorg/wlf/filedownloader/db/ContentDbDao;
    if-nez v2, :cond_3

    .line 520
    const/4 v3, 0x0

    goto :goto_0

    .line 523
    :cond_3
    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 524
    .local v10, "separatorIndex":I
    const/4 v13, -0x1

    if-ne v10, v13, :cond_4

    .line 525
    const/4 v3, 0x0

    goto :goto_0

    .line 528
    :cond_4
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 529
    .local v6, "fileSaveDir":Ljava/lang/String;
    add-int/lit8 v13, v10, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 531
    .local v7, "fileSaveName":Ljava/lang/String;
    const/4 v13, 0x0

    const-string v14, "file_dir= ? AND file_name= ?"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    const/16 v16, 0x1

    aput-object v7, v15, v16

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v2, v13, v14, v15, v0}, Lorg/wlf/filedownloader/db/ContentDbDao;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 534
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 535
    new-instance v3, Lorg/wlf/filedownloader/DownloadFileInfo;

    .end local v3    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    invoke-direct {v3, v1}, Lorg/wlf/filedownloader/DownloadFileInfo;-><init>(Landroid/database/Cursor;)V

    .line 539
    .restart local v3    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_6

    .line 540
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 543
    :cond_6
    if-nez v3, :cond_8

    .line 544
    if-eqz p2, :cond_8

    .line 546
    const/4 v13, 0x0

    const-string v14, "file_dir= ? AND temp_file_name= ?"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    const/16 v16, 0x1

    aput-object v7, v15, v16

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v2, v13, v14, v15, v0}, Lorg/wlf/filedownloader/db/ContentDbDao;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 549
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 550
    new-instance v3, Lorg/wlf/filedownloader/DownloadFileInfo;

    .end local v3    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    invoke-direct {v3, v1}, Lorg/wlf/filedownloader/DownloadFileInfo;-><init>(Landroid/database/Cursor;)V

    .line 554
    .restart local v3    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    :cond_7
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_8

    .line 555
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 560
    :cond_8
    if-nez v3, :cond_9

    .line 561
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 564
    :cond_9
    invoke-virtual {v3}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v12

    .line 565
    .local v12, "url":Ljava/lang/String;
    invoke-static {v12}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 566
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/wlf/filedownloader/DownloadCacher;->mModifyLock:Ljava/lang/Object;

    monitor-enter v14

    .line 568
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileInfoMap:Ljava/util/Map;

    invoke-interface {v13, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileInfoMap:Ljava/util/Map;

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lorg/wlf/filedownloader/DownloadFileInfo;

    move-object v3, v0

    .line 570
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "dao":Lorg/wlf/filedownloader/db/ContentDbDao;
    .end local v6    # "fileSaveDir":Ljava/lang/String;
    .end local v7    # "fileSaveName":Ljava/lang/String;
    .end local v10    # "separatorIndex":I
    .end local v12    # "url":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/wlf/filedownloader/DownloadCacher;->checkDownloadFileStatus(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    goto/16 :goto_0

    .line 570
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "dao":Lorg/wlf/filedownloader/db/ContentDbDao;
    .restart local v6    # "fileSaveDir":Ljava/lang/String;
    .restart local v7    # "fileSaveName":Ljava/lang/String;
    .restart local v10    # "separatorIndex":I
    .restart local v12    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13
.end method

.method public getDownloadFiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/wlf/filedownloader/DownloadFileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 663
    iget-object v3, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileInfoMap:Ljava/util/Map;

    invoke-static {v3}, Lorg/wlf/filedownloader/util/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 664
    invoke-direct {p0}, Lorg/wlf/filedownloader/DownloadCacher;->initDownloadFileInfoMapFromDb()V

    .line 668
    :cond_0
    iget-object v3, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileInfoMap:Ljava/util/Map;

    invoke-static {v3}, Lorg/wlf/filedownloader/util/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 669
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 672
    .local v1, "downloadFileInfos":Ljava/util/List;, "Ljava/util/List<Lorg/wlf/filedownloader/DownloadFileInfo;>;"
    invoke-static {v1}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 673
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wlf/filedownloader/DownloadFileInfo;

    .line 674
    .local v0, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    invoke-direct {p0, v0}, Lorg/wlf/filedownloader/DownloadCacher;->checkDownloadFileStatus(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    goto :goto_0

    .line 681
    .end local v0    # "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    .end local v1    # "downloadFileInfos":Ljava/util/List;, "Ljava/util/List<Lorg/wlf/filedownloader/DownloadFileInfo;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    return-object v1
.end method

.method public moveDownloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "newDirPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 793
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/DownloadCacher;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    .line 794
    .local v0, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    invoke-static {v0}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 795
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "download file doest not exist or illegal !"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 797
    :cond_0
    iget-object v4, p0, Lorg/wlf/filedownloader/DownloadCacher;->mModifyLock:Ljava/lang/Object;

    monitor-enter v4

    .line 798
    :try_start_0
    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileDir()Ljava/lang/String;

    move-result-object v2

    .line 799
    .local v2, "oldFileDir":Ljava/lang/String;
    invoke-virtual {v0, p2}, Lorg/wlf/filedownloader/DownloadFileInfo;->setFileDir(Ljava/lang/String;)V

    .line 800
    const/4 v3, 0x0

    sget-object v5, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->SAVE_DIR:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    invoke-direct {p0, v0, v3, v5}, Lorg/wlf/filedownloader/DownloadCacher;->updateDownloadFileInternal(Lorg/wlf/filedownloader/DownloadFileInfo;ZLorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;)Z

    move-result v1

    .line 801
    .local v1, "isSucceed":Z
    if-nez v1, :cond_1

    .line 803
    invoke-virtual {v0, v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->setFileDir(Ljava/lang/String;)V

    .line 804
    new-instance v3, Ljava/lang/Exception;

    const-string v5, "move failed !"

    invoke-direct {v3, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 806
    .end local v1    # "isSucceed":Z
    .end local v2    # "oldFileDir":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "isSucceed":Z
    .restart local v2    # "oldFileDir":Ljava/lang/String;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 807
    return-void
.end method

.method public recordStatus(Ljava/lang/String;II)V
    .locals 16
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "increaseSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 701
    sget-object v10, Lorg/wlf/filedownloader/DownloadCacher;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lorg/wlf/filedownloader/DownloadCacher;->TAG:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".recordStatus \u8bb0\u5f55\u72b6\u6001\uff1astatus\uff1a"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\uff0cincreaseSize\uff1a"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\uff0curl\uff1a"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-virtual/range {p0 .. p1}, Lorg/wlf/filedownloader/DownloadCacher;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v3

    .line 704
    .local v3, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    invoke-static {v3}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 742
    :goto_0
    return-void

    .line 708
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/wlf/filedownloader/DownloadCacher;->mModifyLock:Ljava/lang/Object;

    monitor-enter v11

    .line 710
    :try_start_0
    invoke-virtual {v3}, Lorg/wlf/filedownloader/DownloadFileInfo;->getStatus()I

    move-result v8

    .line 711
    .local v8, "oldStatus":I
    invoke-virtual {v3}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v6

    .line 713
    .local v6, "oldDownloadedSize":J
    invoke-virtual {v3}, Lorg/wlf/filedownloader/DownloadFileInfo;->getStatus()I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_1

    const/4 v4, 0x1

    .line 714
    .local v4, "isStatusChange":Z
    :goto_1
    if-nez v4, :cond_2

    if-gtz p3, :cond_2

    .line 715
    monitor-exit v11

    goto :goto_0

    .line 741
    .end local v4    # "isStatusChange":Z
    .end local v6    # "oldDownloadedSize":J
    .end local v8    # "oldStatus":I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 713
    .restart local v6    # "oldDownloadedSize":J
    .restart local v8    # "oldStatus":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 718
    .restart local v4    # "isStatusChange":Z
    :cond_2
    :try_start_1
    sget-object v9, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->OTHER:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    .line 719
    .local v9, "type":Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;
    const/4 v2, 0x0

    .line 721
    .local v2, "changeCount":I
    if-eqz v4, :cond_3

    .line 722
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->setStatus(I)V

    .line 723
    add-int/lit8 v2, v2, 0x1

    .line 724
    sget-object v9, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->DOWNLOAD_STATUS:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    .line 726
    :cond_3
    if-lez p3, :cond_4

    .line 727
    invoke-virtual {v3}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v12

    move/from16 v0, p3

    int-to-long v14, v0

    add-long/2addr v12, v14

    invoke-virtual {v3, v12, v13}, Lorg/wlf/filedownloader/DownloadFileInfo;->setDownloadedSize(J)V

    .line 728
    add-int/lit8 v2, v2, 0x1

    .line 729
    sget-object v9, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->DOWNLOADED_SIZE:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    .line 731
    :cond_4
    const/4 v10, 0x1

    if-le v2, v10, :cond_5

    .line 732
    sget-object v9, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->OTHER:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    .line 734
    :cond_5
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10, v9}, Lorg/wlf/filedownloader/DownloadCacher;->updateDownloadFileInternal(Lorg/wlf/filedownloader/DownloadFileInfo;ZLorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;)Z

    move-result v5

    .line 735
    .local v5, "isSucceed":Z
    if-nez v5, :cond_6

    .line 736
    invoke-virtual {v3, v8}, Lorg/wlf/filedownloader/DownloadFileInfo;->setStatus(I)V

    .line 737
    invoke-virtual {v3, v6, v7}, Lorg/wlf/filedownloader/DownloadFileInfo;->setDownloadedSize(J)V

    .line 739
    new-instance v10, Ljava/lang/Exception;

    const-string v12, "record failed !"

    invoke-direct {v10, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 741
    :cond_6
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public registerDownloadFileChangeListener(Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;)V
    .locals 1
    .param p1, "onDownloadFileChangeListener"    # Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;
    .param p2, "downloadFileChangeConfiguration"    # Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    .prologue
    .line 229
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileChangeObserver:Lorg/wlf/filedownloader/DownloadFileChangeObserver;

    invoke-virtual {v0, p1, p2}, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->addOnDownloadFileChangeListener(Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;)V

    .line 231
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 207
    iget-object v1, p0, Lorg/wlf/filedownloader/DownloadCacher;->mModifyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_0
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 210
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileChangeObserver:Lorg/wlf/filedownloader/DownloadFileChangeObserver;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->release()V

    .line 212
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileDbHelper:Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDbHelper;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileDbHelper:Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDbHelper;

    invoke-virtual {v0}, Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDbHelper;->close()V

    .line 215
    :cond_0
    monitor-exit v1

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public renameDownloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "newFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 830
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/DownloadCacher;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    .line 831
    .local v0, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    if-nez v0, :cond_0

    .line 832
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "download file doest not exist or illegal !"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 834
    :cond_0
    iget-object v4, p0, Lorg/wlf/filedownloader/DownloadCacher;->mModifyLock:Ljava/lang/Object;

    monitor-enter v4

    .line 835
    :try_start_0
    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 836
    .local v2, "oldFileName":Ljava/lang/String;
    invoke-virtual {v0, p2}, Lorg/wlf/filedownloader/DownloadFileInfo;->setFileName(Ljava/lang/String;)V

    .line 837
    const/4 v3, 0x0

    sget-object v5, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->SAVE_FILE_NAME:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    invoke-direct {p0, v0, v3, v5}, Lorg/wlf/filedownloader/DownloadCacher;->updateDownloadFileInternal(Lorg/wlf/filedownloader/DownloadFileInfo;ZLorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;)Z

    move-result v1

    .line 838
    .local v1, "isSucceed":Z
    if-nez v1, :cond_1

    .line 840
    invoke-virtual {v0, v2}, Lorg/wlf/filedownloader/DownloadFileInfo;->setFileName(Ljava/lang/String;)V

    .line 841
    new-instance v3, Ljava/lang/Exception;

    const-string v5, "rename failed !"

    invoke-direct {v3, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 843
    .end local v1    # "isSucceed":Z
    .end local v2    # "oldFileName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "isSucceed":Z
    .restart local v2    # "oldFileName":Ljava/lang/String;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 844
    return-void
.end method

.method public resetDownloadFile(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "deleteMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 746
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/DownloadCacher;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    .line 747
    .local v0, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    invoke-static {v0}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 766
    :goto_0
    return-void

    .line 751
    :cond_0
    if-nez p2, :cond_2

    .line 752
    iget-object v5, p0, Lorg/wlf/filedownloader/DownloadCacher;->mModifyLock:Ljava/lang/Object;

    monitor-enter v5

    .line 753
    :try_start_0
    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v2

    .line 754
    .local v2, "oldDownloadedSize":J
    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/wlf/filedownloader/DownloadFileInfo;->setDownloadedSize(J)V

    .line 755
    const/4 v4, 0x0

    sget-object v6, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->DOWNLOADED_SIZE:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    invoke-direct {p0, v0, v4, v6}, Lorg/wlf/filedownloader/DownloadCacher;->updateDownloadFileInternal(Lorg/wlf/filedownloader/DownloadFileInfo;ZLorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;)Z

    move-result v1

    .line 756
    .local v1, "isSucceed":Z
    if-nez v1, :cond_1

    .line 758
    invoke-virtual {v0, v2, v3}, Lorg/wlf/filedownloader/DownloadFileInfo;->setDownloadedSize(J)V

    .line 759
    new-instance v4, Ljava/lang/Exception;

    const-string v6, "reset failed !"

    invoke-direct {v4, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 761
    .end local v1    # "isSucceed":Z
    .end local v2    # "oldDownloadedSize":J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "isSucceed":Z
    .restart local v2    # "oldDownloadedSize":J
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 764
    .end local v1    # "isSucceed":Z
    .end local v2    # "oldDownloadedSize":J
    :cond_2
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/DownloadCacher;->deleteDownloadFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetDownloadSize(Ljava/lang/String;J)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "downloadSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 770
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/DownloadCacher;->getDownloadFile(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadFileInfo;

    move-result-object v0

    .line 771
    .local v0, "downloadFileInfo":Lorg/wlf/filedownloader/DownloadFileInfo;
    invoke-static {v0}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 789
    :goto_0
    return-void

    .line 775
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-ltz v4, :cond_1

    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileSizeLong()J

    move-result-wide v4

    cmp-long v4, p2, v4

    if-lez v4, :cond_2

    .line 776
    :cond_1
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "the download size nee to set is illegal !"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 779
    :cond_2
    iget-object v5, p0, Lorg/wlf/filedownloader/DownloadCacher;->mModifyLock:Ljava/lang/Object;

    monitor-enter v5

    .line 780
    :try_start_0
    invoke-virtual {v0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v2

    .line 781
    .local v2, "oldDownloadedSize":J
    invoke-virtual {v0, p2, p3}, Lorg/wlf/filedownloader/DownloadFileInfo;->setDownloadedSize(J)V

    .line 782
    const/4 v4, 0x0

    sget-object v6, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->DOWNLOADED_SIZE:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    invoke-direct {p0, v0, v4, v6}, Lorg/wlf/filedownloader/DownloadCacher;->updateDownloadFileInternal(Lorg/wlf/filedownloader/DownloadFileInfo;ZLorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;)Z

    move-result v1

    .line 783
    .local v1, "isSucceed":Z
    if-nez v1, :cond_3

    .line 785
    invoke-virtual {v0, v2, v3}, Lorg/wlf/filedownloader/DownloadFileInfo;->setDownloadedSize(J)V

    .line 786
    new-instance v4, Ljava/lang/Exception;

    const-string v6, "reset downloadSize failed !"

    invoke-direct {v4, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 788
    .end local v1    # "isSucceed":Z
    .end local v2    # "oldDownloadedSize":J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "isSucceed":Z
    .restart local v2    # "oldDownloadedSize":J
    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public unregisterDownloadFileChangeListener(Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;)V
    .locals 1
    .param p1, "onDownloadFileChangeListener"    # Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    .prologue
    .line 239
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadCacher;->mDownloadFileChangeObserver:Lorg/wlf/filedownloader/DownloadFileChangeObserver;

    invoke-virtual {v0, p1}, Lorg/wlf/filedownloader/DownloadFileChangeObserver;->removeOnDownloadFileChangeListener(Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;)V

    .line 240
    return-void
.end method
