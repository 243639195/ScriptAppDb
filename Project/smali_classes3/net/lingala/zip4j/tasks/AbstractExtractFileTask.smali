.class public abstract Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;
.super Lnet/lingala/zip4j/tasks/AsyncZipTask;
.source "AbstractExtractFileTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/lingala/zip4j/tasks/AsyncZipTask",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final unzipParameters:Lnet/lingala/zip4j/model/UnzipParameters;

.field private final zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V
    .locals 0
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "unzipParameters"    # Lnet/lingala/zip4j/model/UnzipParameters;
    .param p3, "asyncTaskParameters"    # Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    .prologue
    .line 32
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    invoke-direct {p0, p3}, Lnet/lingala/zip4j/tasks/AsyncZipTask;-><init>(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    .line 33
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 34
    iput-object p2, p0, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->unzipParameters:Lnet/lingala/zip4j/model/UnzipParameters;

    .line 35
    return-void
.end method

.method private checkOutputDirectoryStructure(Ljava/io/File;)V
    .locals 3
    .param p1, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create parent directories: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    return-void
.end method

.method private createSymLink(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 8
    .param p1, "zipInputStream"    # Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "outputFile"    # Ljava/io/File;
    .param p4, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    new-instance v3, Ljava/lang/String;

    invoke-direct {p0, p1, p2, p4}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->readCompleteEntry(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 110
    .local v3, "symLinkPath":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 111
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    const-string v5, "Could not create parent directories"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 115
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 116
    .local v1, "linkTarget":Ljava/nio/file/Path;
    invoke-virtual {p3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v4, v1, v5}, Ljava/nio/file/Files;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1    # "linkTarget":Ljava/nio/file/Path;
    :cond_1
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "error":Ljava/lang/NoSuchMethodError;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v2, "outputStream":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 119
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    if-eqz v2, :cond_1

    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 118
    :catch_2
    move-exception v4

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    :catchall_0
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v5, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_2
    throw v4

    :catch_3
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method private determineOutputFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "outputPath"    # Ljava/lang/String;
    .param p3, "newFileName"    # Ljava/lang/String;

    .prologue
    .line 163
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    invoke-static {p3}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    move-object v0, p3

    .line 170
    .local v0, "outputFileName":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 167
    .end local v0    # "outputFileName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->getFileNameWithSystemFileSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "outputFileName":Ljava/lang/String;
    goto :goto_0
.end method

.method private getFileNameWithSystemFileSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fileNameToReplace"    # Ljava/lang/String;

    .prologue
    .line 174
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    const-string v0, "[/\\\\]"

    sget-object v1, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isSymbolicLink(Lnet/lingala/zip4j/model/FileHeader;)Z
    .locals 3
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;

    .prologue
    .line 78
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExternalFileAttributes()[B

    move-result-object v0

    .line 80
    .local v0, "externalFileAttributes":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 81
    :cond_0
    const/4 v1, 0x0

    .line 84
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x3

    aget-byte v1, v0, v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v1

    goto :goto_0
.end method

.method private readCompleteEntry(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)[B
    .locals 4
    .param p1, "zipInputStream"    # Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v0, v2, [B

    .line 127
    .local v0, "b":[B
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->read([B)I

    move-result v1

    .line 129
    .local v1, "readLength":I
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 130
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "Could not read complete entry"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    :cond_0
    array-length v2, v0

    int-to-long v2, v2

    invoke-virtual {p3, v2, v3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V

    .line 134
    return-object v0
.end method

.method private unzipFile(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;[B)V
    .locals 9
    .param p1, "inputStream"    # Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .param p2, "outputFile"    # Ljava/io/File;
    .param p3, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p4, "buff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "outputStream":Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 92
    :goto_0
    :try_start_1
    invoke-virtual {p1, p4}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->read([B)I

    move-result v2

    .local v2, "readLength":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 93
    const/4 v3, 0x0

    invoke-virtual {v1, p4, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 94
    int-to-long v6, v2

    invoke-virtual {p3, v6, v7}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V

    .line 95
    invoke-virtual {p0}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->verifyIfTaskIsCancelled()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 91
    .end local v2    # "readLength":I
    :catch_0
    move-exception v3

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    :catchall_0
    move-exception v4

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    :goto_1
    if-eqz v1, :cond_0

    if-eqz v4, :cond_5

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :goto_2
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 101
    :cond_1
    throw v0

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "readLength":I
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 103
    :cond_3
    :goto_3
    return-void

    .line 97
    :catch_2
    move-exception v3

    :try_start_6
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_3

    .end local v2    # "readLength":I
    :catch_3
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v3

    goto :goto_1
.end method

.method private verifyNextEntry(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 4
    .param p1, "zipInputStream"    # Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getGeneralPurposeFlag()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entry with name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is encrypted with Strong Encryption. Zip4j does not support Strong Encryption, as this is patented."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_0
    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->getNextEntry(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v0

    .line 145
    .local v0, "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    if-nez v0, :cond_1

    .line 146
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read corresponding local file header for file header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 147
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_1
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 151
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "File header and local file header mismatch"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_2
    return-void
.end method


# virtual methods
.method protected extractFile(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;[B)V
    .locals 6
    .param p1, "zipInputStream"    # Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "outputPath"    # Ljava/lang/String;
    .param p4, "newFileName"    # Ljava/lang/String;
    .param p5, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p6, "readBuff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->isSymbolicLink(Lnet/lingala/zip4j/model/FileHeader;)Z

    move-result v0

    .line 41
    .local v0, "isSymbolicLink":Z
    if-eqz v0, :cond_0

    iget-object v3, p0, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->unzipParameters:Lnet/lingala/zip4j/model/UnzipParameters;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/UnzipParameters;->isExtractSymbolicLinks()Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    :goto_0
    return-void

    .line 45
    :cond_0
    sget-object v3, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 49
    :cond_1
    invoke-direct {p0, p2, p3, p4}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->determineOutputFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 50
    .local v2, "outputFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "outputCanonicalPath":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 55
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal file name that breaks out of the target directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 56
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 59
    :cond_2
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->verifyNextEntry(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;)V

    .line 61
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 62
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 63
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_4

    .line 64
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 67
    :cond_3
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->isSymbolicLink(Lnet/lingala/zip4j/model/FileHeader;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 68
    invoke-direct {p0, p1, p2, v2, p5}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->createSymLink(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 74
    :cond_4
    :goto_1
    invoke-static {p2, v2}, Lnet/lingala/zip4j/util/UnzipUtil;->applyFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;)V

    goto/16 :goto_0

    .line 70
    :cond_5
    invoke-direct {p0, v2}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->checkOutputDirectoryStructure(Ljava/io/File;)V

    .line 71
    invoke-direct {p0, p1, v2, p5, p6}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->unzipFile(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;[B)V

    goto :goto_1
.end method

.method protected getTask()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .locals 1

    .prologue
    .line 179
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->EXTRACT_ENTRY:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-object v0
.end method

.method public getZipModel()Lnet/lingala/zip4j/model/ZipModel;
    .locals 1

    .prologue
    .line 183
    .local p0, "this":Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;, "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<TT;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    return-object v0
.end method
