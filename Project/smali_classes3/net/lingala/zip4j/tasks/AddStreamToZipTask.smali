.class public Lnet/lingala/zip4j/tasks/AddStreamToZipTask;
.super Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;
.source "AddStreamToZipTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask",
        "<",
        "Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;[CLnet/lingala/zip4j/headers/HeaderWriter;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V
    .locals 0
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "password"    # [C
    .param p3, "headerWriter"    # Lnet/lingala/zip4j/headers/HeaderWriter;
    .param p4, "asyncTaskParameters"    # Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;-><init>(Lnet/lingala/zip4j/model/ZipModel;[CLnet/lingala/zip4j/headers/HeaderWriter;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    .line 26
    return-void
.end method

.method private removeFileIfExists(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/Zip4jConfig;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 1
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "zip4jConfig"    # Lnet/lingala/zip4j/model/Zip4jConfig;
    .param p3, "fileNameInZip"    # Ljava/lang/String;
    .param p4, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p1, p3}, Lnet/lingala/zip4j/headers/HeaderUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v0

    .line 86
    .local v0, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0, v0, p4, p2}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->removeFile(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic calculateTotalWork(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 22
    check-cast p1, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->calculateTotalWork(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected calculateTotalWork(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)J
    .locals 2
    .param p1, "taskParameters"    # Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;

    .prologue
    .line 79
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected bridge synthetic executeTask(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    check-cast p1, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;

    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->executeTask(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method protected executeTask(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 13
    .param p1, "taskParameters"    # Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;
    .param p2, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 32
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v6

    invoke-virtual {p0, v6}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->verifyZipParameters(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 34
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 35
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    const-string v7, "fileNameInZip has to be set in zipParameters when adding stream"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 38
    :cond_0
    invoke-virtual {p0}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->getZipModel()Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v6

    iget-object v7, p1, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v9

    invoke-virtual {v9}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v6, v7, v9, p2}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->removeFileIfExists(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/Zip4jConfig;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 46
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lnet/lingala/zip4j/model/ZipParameters;->setWriteExtendedLocalFileHeader(Z)V

    .line 48
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v6

    sget-object v7, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v6, v7}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 50
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v6

    const-wide/16 v10, 0x0

    invoke-virtual {v6, v10, v11}, Lnet/lingala/zip4j/model/ZipParameters;->setEntrySize(J)V

    .line 53
    :cond_1
    new-instance v3, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    invoke-virtual {p0}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->getZipModel()Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {p0}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->getZipModel()Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getSplitLength()J

    move-result-wide v10

    invoke-direct {v3, v6, v10, v11}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;-><init>(Ljava/io/File;J)V

    .line 54
    .local v3, "splitOutputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    :try_start_0
    iget-object v6, p1, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {p0, v3, v6}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->initializeOutputStream(Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;Lnet/lingala/zip4j/model/Zip4jConfig;)Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v4

    .line 53
    .local v4, "zipOutputStream":Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    const/4 v6, 0x0

    .line 56
    :try_start_1
    iget-object v7, p1, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v7

    new-array v1, v7, [B

    .line 59
    .local v1, "readBuff":[B
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v5

    .line 60
    .local v5, "zipParameters":Lnet/lingala/zip4j/model/ZipParameters;
    invoke-virtual {v4, v5}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->putNextEntry(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 62
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 63
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v7

    const-string v9, "\\"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 64
    :goto_0
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->access$100(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "readLen":I
    const/4 v7, -0x1

    if-eq v2, v7, :cond_4

    .line 65
    const/4 v7, 0x0

    invoke-virtual {v4, v1, v7, v2}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_0

    .line 53
    .end local v1    # "readBuff":[B
    .end local v2    # "readLen":I
    .end local v5    # "zipParameters":Lnet/lingala/zip4j/model/ZipParameters;
    :catch_0
    move-exception v6

    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :catchall_0
    move-exception v7

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    :goto_1
    if-eqz v4, :cond_2

    if-eqz v7, :cond_9

    :try_start_3
    invoke-virtual {v4}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    :goto_2
    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 53
    .end local v4    # "zipOutputStream":Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    :catch_1
    move-exception v6

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 74
    :catchall_1
    move-exception v7

    move-object v8, v6

    move-object v6, v7

    :goto_3
    if-eqz v3, :cond_3

    if-eqz v8, :cond_b

    :try_start_6
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    :cond_3
    :goto_4
    throw v6

    .line 69
    .restart local v1    # "readBuff":[B
    .restart local v4    # "zipOutputStream":Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    .restart local v5    # "zipParameters":Lnet/lingala/zip4j/model/ZipParameters;
    :cond_4
    :try_start_7
    invoke-virtual {v4}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->closeEntry()Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v0

    .line 71
    .local v0, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    sget-object v7, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->getCompressionMethod(Lnet/lingala/zip4j/model/AbstractFileHeader;)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v9

    invoke-virtual {v7, v9}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 72
    invoke-virtual {p0, v0, v3}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->updateLocalFileHeader(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 74
    :cond_5
    if-eqz v4, :cond_6

    if-eqz v8, :cond_8

    :try_start_8
    invoke-virtual {v4}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_6
    :goto_5
    if-eqz v3, :cond_7

    if-eqz v8, :cond_a

    :try_start_9
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    .line 75
    :cond_7
    :goto_6
    return-void

    .line 74
    :catch_2
    move-exception v7

    :try_start_a
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v0    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v1    # "readBuff":[B
    .end local v4    # "zipOutputStream":Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    .end local v5    # "zipParameters":Lnet/lingala/zip4j/model/ZipParameters;
    :catchall_2
    move-exception v6

    goto :goto_3

    .restart local v0    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .restart local v1    # "readBuff":[B
    .restart local v4    # "zipOutputStream":Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    .restart local v5    # "zipParameters":Lnet/lingala/zip4j/model/ZipParameters;
    :cond_8
    invoke-virtual {v4}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->close()V

    goto :goto_5

    .end local v0    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v1    # "readBuff":[B
    .end local v5    # "zipParameters":Lnet/lingala/zip4j/model/ZipParameters;
    :catch_3
    move-exception v9

    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_9
    invoke-virtual {v4}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_2

    .restart local v0    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .restart local v1    # "readBuff":[B
    .restart local v5    # "zipParameters":Lnet/lingala/zip4j/model/ZipParameters;
    :catch_4
    move-exception v6

    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_a
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V

    goto :goto_6

    .end local v0    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v1    # "readBuff":[B
    .end local v4    # "zipOutputStream":Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    .end local v5    # "zipParameters":Lnet/lingala/zip4j/model/ZipParameters;
    :catch_5
    move-exception v7

    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_b
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V

    goto :goto_4

    .restart local v4    # "zipOutputStream":Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
    :catchall_3
    move-exception v6

    move-object v7, v8

    goto :goto_1
.end method
