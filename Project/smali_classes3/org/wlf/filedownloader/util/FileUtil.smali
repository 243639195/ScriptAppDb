.class public Lorg/wlf/filedownloader/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final canWrite(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 87
    invoke-static {p0}, Lorg/wlf/filedownloader/util/FileUtil;->isSDCardPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;Z)Z
    .locals 9
    .param p0, "fromFile"    # Ljava/io/File;
    .param p1, "toFile"    # Ljava/io/File;
    .param p2, "forceOverwrite"    # Z

    .prologue
    const/4 v7, 0x0

    .line 148
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    if-nez p1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v7

    .line 152
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz p2, :cond_0

    .line 157
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 158
    .local v2, "fosFrom":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 159
    .local v3, "fosTo":Ljava/io/OutputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 161
    .local v0, "bytes":[B
    const/4 v6, 0x0

    .line 162
    .local v6, "writeSize":I
    const/4 v5, 0x0

    .line 163
    .local v5, "startIndex":I
    const/4 v4, 0x0

    .line 165
    .local v4, "readCount":I
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_3

    .line 166
    invoke-virtual {v3, v0, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 167
    sub-int v8, v4, v5

    add-int/2addr v6, v8

    goto :goto_1

    .line 169
    :cond_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 170
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    if-lez v6, :cond_0

    .line 173
    const/4 v7, 0x1

    goto :goto_0

    .line 177
    .end local v0    # "bytes":[B
    .end local v2    # "fosFrom":Ljava/io/InputStream;
    .end local v3    # "fosTo":Ljava/io/OutputStream;
    .end local v4    # "readCount":I
    .end local v5    # "startIndex":I
    .end local v6    # "writeSize":I
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final createFileParentDir(Ljava/lang/String;)Z
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 29
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v2

    .line 34
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 35
    .local v1, "parentFile":Ljava/io/File;
    if-eqz v1, :cond_2

    .line 36
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    goto :goto_0

    .line 44
    .end local v1    # "parentFile":Ljava/io/File;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getAvailableSpace(Ljava/lang/String;)J
    .locals 10
    .param p0, "fileDirPath"    # Ljava/lang/String;

    .prologue
    .line 124
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 126
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 128
    :cond_0
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 129
    .local v4, "stats":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    int-to-long v8, v5

    mul-long v2, v6, v8

    .line 133
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "stats":Landroid/os/StatFs;
    :goto_0
    return-wide v2

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static getFileSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 56
    .local v0, "start":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 57
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    .end local v0    # "start":I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-static {p0}, Lorg/wlf/filedownloader/util/FileUtil;->isFilePath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v1

    .line 195
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isFilePath(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final isSDCardPath(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v1

    .line 109
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "sdRootPath":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    const/4 v1, 0x1

    goto :goto_0
.end method
