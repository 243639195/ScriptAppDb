.class public Lorg/wlf/filedownloader/util/DownloadFileUtil;
.super Ljava/lang/Object;
.source "DownloadFileUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canDelete(Lorg/wlf/filedownloader/DownloadFileInfo;)Z
    .locals 2
    .param p0, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-static {p0}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    invoke-static {p0}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isDownloadingStatus(Lorg/wlf/filedownloader/DownloadFileInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static canMove(Lorg/wlf/filedownloader/DownloadFileInfo;)Z
    .locals 2
    .param p0, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-static {p0}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    invoke-static {p0}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isDownloadingStatus(Lorg/wlf/filedownloader/DownloadFileInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static canRename(Lorg/wlf/filedownloader/DownloadFileInfo;)Z
    .locals 2
    .param p0, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-static {p0}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    invoke-static {p0}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isDownloadingStatus(Lorg/wlf/filedownloader/DownloadFileInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasException(I)Z
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 145
    packed-switch p0, :pswitch_data_0

    .line 151
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 148
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isCompleted(Lorg/wlf/filedownloader/DownloadFileInfo;)Z
    .locals 2
    .param p0, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-static {p0}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    :goto_0
    return v0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 116
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public static isDownloadingStatus(Lorg/wlf/filedownloader/DownloadFileInfo;)Z
    .locals 2
    .param p0, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-static {p0}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    :goto_0
    return v0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 37
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z
    .locals 1
    .param p0, "baseUrlFileInfo"    # Lorg/wlf/filedownloader/base/BaseUrlFileInfo;

    .prologue
    .line 130
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/wlf/filedownloader/base/BaseUrlFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    :cond_0
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isTempFileExist(Lorg/wlf/filedownloader/DownloadFileInfo;)Z
    .locals 6
    .param p0, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-static {p0}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 166
    :cond_1
    invoke-virtual {p0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 167
    invoke-virtual {p0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getTempFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wlf/filedownloader/util/FileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static recoveryExceptionStatus(Lorg/wlf/filedownloader/file_download/db_recorder/Record;Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 4
    .param p0, "record"    # Lorg/wlf/filedownloader/file_download/db_recorder/Record;
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    .line 216
    invoke-static {p1}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    :goto_0
    :pswitch_0
    return-void

    .line 220
    :cond_0
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/wlf/filedownloader/DownloadFileInfo;->getStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 248
    const/4 v2, 0x7

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p0, v1, v2, v3}, Lorg/wlf/filedownloader/file_download/db_recorder/Record;->recordStatus(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    const/4 v2, 0x6

    const/4 v3, 0x0

    :try_start_1
    invoke-interface {p0, v1, v2, v3}, Lorg/wlf/filedownloader/file_download/db_recorder/Record;->recordStatus(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 232
    :catch_1
    move-exception v0

    .line 233
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static tryToRenameTempFileToSaveFile(Lorg/wlf/filedownloader/DownloadFileInfo;)Z
    .locals 8
    .param p0, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-static {p0}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isLegal(Lorg/wlf/filedownloader/base/BaseUrlFileInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v0

    .line 184
    :cond_1
    invoke-static {p0}, Lorg/wlf/filedownloader/util/DownloadFileUtil;->isCompleted(Lorg/wlf/filedownloader/DownloadFileInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v1, "saveFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileSizeLong()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 188
    const/4 v0, 0x1

    goto :goto_0

    .line 191
    .end local v1    # "saveFile":Ljava/io/File;
    :cond_2
    invoke-virtual {p0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileSizeLong()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 192
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getTempFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v2, "tempFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .restart local v1    # "saveFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getDownloadedSizeLong()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 199
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 200
    .local v0, "isSucceed":Z
    goto :goto_0
.end method
