.class public Lnet/lingala/zip4j/util/UnzipUtil;
.super Ljava/lang/Object;
.source "UnzipUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;)V
    .locals 4
    .param p0, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 46
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 47
    .local v1, "path":Ljava/nio/file/Path;
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/FileHeader;->getExternalFileAttributes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lnet/lingala/zip4j/util/FileUtils;->setFileAttributes(Ljava/nio/file/Path;[B)V

    .line 48
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/FileHeader;->getLastModifiedTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lnet/lingala/zip4j/util/FileUtils;->setFileLastModifiedTime(Ljava/nio/file/Path;J)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v1    # "path":Ljava/nio/file/Path;
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/FileHeader;->getLastModifiedTime()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lnet/lingala/zip4j/util/FileUtils;->setFileLastModifiedTimeWithoutNio(Ljava/io/File;J)V

    goto :goto_0
.end method

.method public static createSplitInputStream(Lnet/lingala/zip4j/model/ZipModel;)Lnet/lingala/zip4j/io/inputstream/SplitInputStream;
    .locals 5
    .param p0, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v0

    .line 57
    .local v0, "zipFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".zip.001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Lnet/lingala/zip4j/io/inputstream/NumberedSplitInputStream;

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    .line 59
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitInputStream;-><init>(Ljava/io/File;ZI)V

    .line 62
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitInputStream;

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v3

    .line 63
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitInputStream;-><init>(Ljava/io/File;ZI)V

    goto :goto_0
.end method

.method public static createZipInputStream(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;[C)Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .locals 5
    .param p0, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    const/4 v1, 0x0

    .line 26
    .local v1, "splitInputStream":Lnet/lingala/zip4j/io/inputstream/SplitInputStream;
    :try_start_0
    invoke-static {p0}, Lnet/lingala/zip4j/util/UnzipUtil;->createSplitInputStream(Lnet/lingala/zip4j/model/ZipModel;)Lnet/lingala/zip4j/io/inputstream/SplitInputStream;

    move-result-object v1

    .line 27
    invoke-virtual {v1, p1}, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->prepareExtractionForFileHeader(Lnet/lingala/zip4j/model/FileHeader;)V

    .line 29
    new-instance v2, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;

    invoke-direct {v2, v1, p2}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;-><init>(Ljava/io/InputStream;[C)V

    .line 30
    .local v2, "zipInputStream":Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    invoke-virtual {v2, p1}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->getNextEntry(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v3

    if-nez v3, :cond_1

    .line 31
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    const-string v4, "Could not locate local file header for corresponding file header"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v2    # "zipInputStream":Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v1}, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->close()V

    .line 39
    :cond_0
    throw v0

    .line 34
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "zipInputStream":Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    :cond_1
    return-object v2
.end method
