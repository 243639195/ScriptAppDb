.class public Lnet/lingala/zip4j/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private bufferSize:I

.field private charset:Ljava/nio/charset/Charset;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

.field private isEncrypted:Z

.field private openInputStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private password:[C

.field private progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field private runInThread:Z

.field private threadFactory:Ljava/util/concurrent/ThreadFactory;

.field private zipFile:Ljava/io/File;

.field private zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "zipFile"    # Ljava/io/File;

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/io/File;[C)V

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/io/File;[C)V
    .locals 2
    .param p1, "zipFile"    # Ljava/io/File;
    .param p2, "password"    # [C

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderWriter;

    invoke-direct {v0}, Lnet/lingala/zip4j/headers/HeaderWriter;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/ZipFile;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/ZipFile;->charset:Ljava/nio/charset/Charset;

    .line 100
    const/16 v0, 0x1000

    iput v0, p0, Lnet/lingala/zip4j/ZipFile;->bufferSize:I

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/ZipFile;->openInputStreams:Ljava/util/List;

    .line 144
    if-nez p1, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input zip file parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iput-object p1, p0, Lnet/lingala/zip4j/ZipFile;->zipFile:Ljava/io/File;

    .line 149
    iput-object p2, p0, Lnet/lingala/zip4j/ZipFile;->password:[C

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/lingala/zip4j/ZipFile;->runInThread:Z

    .line 151
    new-instance v0, Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-direct {v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/ZipFile;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "zipFile"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/io/File;[C)V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 1
    .param p1, "zipFile"    # Ljava/lang/String;
    .param p2, "password"    # [C

    .prologue
    .line 121
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/io/File;[C)V

    .line 122
    return-void
.end method

.method private addFolder(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;Z)V
    .locals 5
    .param p1, "folderToAdd"    # Ljava/io/File;
    .param p2, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p3, "checkSplitArchive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->readZipInfo()V

    .line 380
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "internal error: zip model is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_0
    if-eqz p3, :cond_1

    .line 385
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "This is a split archive. Zip file format does not allow updating split/spanned files"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/tasks/AddFolderToZipTask;

    iget-object v1, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v2, p0, Lnet/lingala/zip4j/ZipFile;->password:[C

    iget-object v3, p0, Lnet/lingala/zip4j/ZipFile;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->buildAsyncParameters()Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask;-><init>(Lnet/lingala/zip4j/model/ZipModel;[CLnet/lingala/zip4j/headers/HeaderWriter;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    new-instance v1, Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;

    .line 391
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->buildConfig()Lnet/lingala/zip4j/model/Zip4jConfig;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;-><init>(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 390
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask;->execute(Ljava/lang/Object;)V

    .line 392
    return-void
.end method

.method private buildAsyncParameters()Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;
    .locals 4

    .prologue
    .line 1169
    iget-boolean v0, p0, Lnet/lingala/zip4j/ZipFile;->runInThread:Z

    if-eqz v0, :cond_1

    .line 1170
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_0

    .line 1171
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/ZipFile;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 1173
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/ZipFile;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 1176
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    iget-object v1, p0, Lnet/lingala/zip4j/ZipFile;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-boolean v2, p0, Lnet/lingala/zip4j/ZipFile;->runInThread:Z

    iget-object v3, p0, Lnet/lingala/zip4j/ZipFile;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-direct {v0, v1, v2, v3}, Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;-><init>(Ljava/util/concurrent/ExecutorService;ZLnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-object v0
.end method

.method private buildConfig()Lnet/lingala/zip4j/model/Zip4jConfig;
    .locals 3

    .prologue
    .line 1244
    new-instance v0, Lnet/lingala/zip4j/model/Zip4jConfig;

    iget-object v1, p0, Lnet/lingala/zip4j/ZipFile;->charset:Ljava/nio/charset/Charset;

    iget v2, p0, Lnet/lingala/zip4j/ZipFile;->bufferSize:I

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/model/Zip4jConfig;-><init>(Ljava/nio/charset/Charset;I)V

    return-object v0
.end method

.method private createNewZipModel()V
    .locals 2

    .prologue
    .line 1152
    new-instance v0, Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/ZipModel;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 1153
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v1, p0, Lnet/lingala/zip4j/ZipFile;->zipFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setZipFile(Ljava/io/File;)V

    .line 1154
    return-void
.end method

.method private initializeRandomAccessFileForHeaderReading()Ljava/io/RandomAccessFile;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1157
    iget-object v2, p0, Lnet/lingala/zip4j/ZipFile;->zipFile:Ljava/io/File;

    invoke-static {v2}, Lnet/lingala/zip4j/util/FileUtils;->isNumberedSplitFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1158
    iget-object v2, p0, Lnet/lingala/zip4j/ZipFile;->zipFile:Ljava/io/File;

    invoke-static {v2}, Lnet/lingala/zip4j/util/FileUtils;->getAllSortedNumberedSplitFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    .line 1159
    .local v0, "allSplitFiles":[Ljava/io/File;
    new-instance v1, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;

    iget-object v2, p0, Lnet/lingala/zip4j/ZipFile;->zipFile:Ljava/io/File;

    sget-object v3, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->READ:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    .line 1160
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;)V

    .line 1161
    .local v1, "numberedSplitRandomAccessFile":Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;
    invoke-virtual {v1}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->openLastSplitFileForReading()V

    .line 1165
    .end local v0    # "allSplitFiles":[Ljava/io/File;
    .end local v1    # "numberedSplitRandomAccessFile":Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lnet/lingala/zip4j/ZipFile;->zipFile:Ljava/io/File;

    sget-object v3, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->READ:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readZipInfo()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 1127
    iget-object v3, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v3, :cond_1

    .line 1149
    :cond_0
    :goto_0
    return-void

    .line 1131
    :cond_1
    iget-object v3, p0, Lnet/lingala/zip4j/ZipFile;->zipFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1132
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->createNewZipModel()V

    goto :goto_0

    .line 1136
    :cond_2
    iget-object v3, p0, Lnet/lingala/zip4j/ZipFile;->zipFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1137
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    const-string v4, "no read access for the input zip file"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1140
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->initializeRandomAccessFileForHeaderReading()Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .local v2, "randomAccessFile":Ljava/io/RandomAccessFile;
    const/4 v4, 0x0

    .line 1141
    :try_start_1
    new-instance v1, Lnet/lingala/zip4j/headers/HeaderReader;

    invoke-direct {v1}, Lnet/lingala/zip4j/headers/HeaderReader;-><init>()V

    .line 1142
    .local v1, "headerReader":Lnet/lingala/zip4j/headers/HeaderReader;
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->buildConfig()Lnet/lingala/zip4j/model/Zip4jConfig;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/headers/HeaderReader;->readAllHeaders(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/model/Zip4jConfig;)Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v3

    iput-object v3, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 1143
    iget-object v3, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v5, p0, Lnet/lingala/zip4j/ZipFile;->zipFile:Ljava/io/File;

    invoke-virtual {v3, v5}, Lnet/lingala/zip4j/model/ZipModel;->setZipFile(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1144
    if-eqz v2, :cond_0

    if-eqz v4, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .end local v1    # "headerReader":Lnet/lingala/zip4j/headers/HeaderReader;
    .end local v2    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    .line 1145
    .local v0, "e":Lnet/lingala/zip4j/exception/ZipException;
    throw v0

    .line 1144
    .end local v0    # "e":Lnet/lingala/zip4j/exception/ZipException;
    .restart local v1    # "headerReader":Lnet/lingala/zip4j/headers/HeaderReader;
    .restart local v2    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :cond_4
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1146
    .end local v1    # "headerReader":Lnet/lingala/zip4j/headers/HeaderReader;
    .end local v2    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v0

    .line 1147
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v3, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 1140
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v3

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1144
    :catchall_0
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_1
    if-eqz v2, :cond_5

    if-eqz v4, :cond_6

    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_5
    :goto_2
    :try_start_7
    throw v3

    :catch_4
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catchall_1
    move-exception v3

    goto :goto_1
.end method

.method private verifyAllSplitFilesOfZipExists(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1180
    .local p1, "allSplitFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1181
    .local v0, "splitFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1182
    const/4 v1, 0x0

    .line 1185
    .end local v0    # "splitFile":Ljava/io/File;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addFile(Ljava/io/File;)V
    .locals 2
    .param p1, "fileToAdd"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {v1}, Lnet/lingala/zip4j/model/ZipParameters;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/lingala/zip4j/ZipFile;->addFiles(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 263
    return-void
.end method

.method public addFile(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 1
    .param p1, "fileToAdd"    # Ljava/io/File;
    .param p2, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lnet/lingala/zip4j/ZipFile;->addFiles(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 276
    return-void
.end method

.method public addFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileToAdd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 235
    new-instance v0, Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/ZipParameters;-><init>()V

    invoke-virtual {p0, p1, v0}, Lnet/lingala/zip4j/ZipFile;->addFile(Ljava/lang/String;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 236
    return-void
.end method

.method public addFile(Ljava/lang/String;Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 2
    .param p1, "fileToAdd"    # Ljava/lang/String;
    .param p2, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "file to add is null or empty"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lnet/lingala/zip4j/ZipFile;->addFiles(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 252
    return-void
.end method

.method public addFiles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "filesToAdd":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v0, Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/ZipParameters;-><init>()V

    invoke-virtual {p0, p1, v0}, Lnet/lingala/zip4j/ZipFile;->addFiles(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 287
    return-void
.end method

.method public addFiles(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 5
    .param p2, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lnet/lingala/zip4j/model/ZipParameters;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "filesToAdd":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 301
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input file List is null or empty"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_1
    if-nez p2, :cond_2

    .line 305
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input parameters are null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_2
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->readZipInfo()V

    .line 310
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v0, :cond_3

    .line 311
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "internal error: zip model is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_3
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 315
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Zip file already exists. Zip file format does not allow updating split/spanned files"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_4
    new-instance v0, Lnet/lingala/zip4j/tasks/AddFilesToZipTask;

    iget-object v1, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v2, p0, Lnet/lingala/zip4j/ZipFile;->password:[C

    iget-object v3, p0, Lnet/lingala/zip4j/ZipFile;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->buildAsyncParameters()Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/lingala/zip4j/tasks/AddFilesToZipTask;-><init>(Lnet/lingala/zip4j/model/ZipModel;[CLnet/lingala/zip4j/headers/HeaderWriter;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    new-instance v1, Lnet/lingala/zip4j/tasks/AddFilesToZipTask$AddFilesToZipTaskParameters;

    .line 319
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->buildConfig()Lnet/lingala/zip4j/model/Zip4jConfig;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lnet/lingala/zip4j/tasks/AddFilesToZipTask$AddFilesToZipTaskParameters;-><init>(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 318
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/tasks/AddFilesToZipTask;->execute(Ljava/lang/Object;)V

    .line 320
    return-void
.end method

.method public addFolder(Ljava/io/File;)V
    .locals 1
    .param p1, "folderToAdd"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 331
    new-instance v0, Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/ZipParameters;-><init>()V

    invoke-virtual {p0, p1, v0}, Lnet/lingala/zip4j/ZipFile;->addFolder(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 332
    return-void
.end method

.method public addFolder(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 2
    .param p1, "folderToAdd"    # Ljava/io/File;
    .param p2, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 345
    if-nez p1, :cond_0

    .line 346
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input path is null, cannot add folder to zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "folder does not exist"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 354
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input folder is not a directory"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_3

    .line 358
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "cannot read input folder"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_3
    if-nez p2, :cond_4

    .line 362
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input parameters are null, cannot add folder to zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lnet/lingala/zip4j/ZipFile;->addFolder(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;Z)V

    .line 366
    return-void
.end method

.method public addStream(Ljava/io/InputStream;Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 407
    if-nez p1, :cond_0

    .line 408
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "inputstream is null, cannot add file to zip"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_0
    if-nez p2, :cond_1

    .line 412
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "zip parameters are null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/ZipFile;->setRunInThread(Z)V

    .line 417
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->readZipInfo()V

    .line 419
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v0, :cond_2

    .line 420
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "internal error: zip model is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_2
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 424
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Zip file already exists. Zip file format does not allow updating split/spanned files"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;

    iget-object v1, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v2, p0, Lnet/lingala/zip4j/ZipFile;->password:[C

    iget-object v3, p0, Lnet/lingala/zip4j/ZipFile;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->buildAsyncParameters()Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;-><init>(Lnet/lingala/zip4j/model/ZipModel;[CLnet/lingala/zip4j/headers/HeaderWriter;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    new-instance v1, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;

    .line 428
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->buildConfig()Lnet/lingala/zip4j/model/Zip4jConfig;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;-><init>(Ljava/io/InputStream;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 427
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->execute(Ljava/lang/Object;)V

    .line 429
    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1081
    iget-object v1, p0, Lnet/lingala/zip4j/ZipFile;->openInputStreams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 1082
    .local v0, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 1084
    .end local v0    # "inputStream":Ljava/io/InputStream;
    :cond_0
    iget-object v1, p0, Lnet/lingala/zip4j/ZipFile;->openInputStreams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1085
    return-void
.end method

.method public createSplitZipFile(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;ZJ)V
    .locals 6
    .param p2, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p3, "splitArchive"    # Z
    .param p4, "splitLength"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lnet/lingala/zip4j/model/ZipParameters;",
            "ZJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "filesToAdd":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zip file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/lingala/zip4j/ZipFile;->zipFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists. To add files to existing zip file use addFile method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 177
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input file List is null, cannot create zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_2
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->createNewZipModel()V

    .line 181
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0, p3}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    .line 182
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0, p4, p5}, Lnet/lingala/zip4j/model/ZipModel;->setSplitLength(J)V

    .line 184
    new-instance v0, Lnet/lingala/zip4j/tasks/AddFilesToZipTask;

    iget-object v1, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v2, p0, Lnet/lingala/zip4j/ZipFile;->password:[C

    iget-object v3, p0, Lnet/lingala/zip4j/ZipFile;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->buildAsyncParameters()Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/lingala/zip4j/tasks/AddFilesToZipTask;-><init>(Lnet/lingala/zip4j/model/ZipModel;[CLnet/lingala/zip4j/headers/HeaderWriter;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    new-instance v1, Lnet/lingala/zip4j/tasks/AddFilesToZipTask$AddFilesToZipTaskParameters;

    .line 185
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->buildConfig()Lnet/lingala/zip4j/model/Zip4jConfig;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lnet/lingala/zip4j/tasks/AddFilesToZipTask$AddFilesToZipTaskParameters;-><init>(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 184
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/tasks/AddFilesToZipTask;->execute(Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method public createSplitZipFileFromFolder(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;ZJ)V
    .locals 4
    .param p1, "folderToAdd"    # Ljava/io/File;
    .param p2, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p3, "splitArchive"    # Z
    .param p4, "splitLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 204
    if-nez p1, :cond_0

    .line 205
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "folderToAdd is null, cannot create zip file from folder"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    if-nez p2, :cond_1

    .line 209
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input parameters are null, cannot create zip file from folder"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zip file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/lingala/zip4j/ZipFile;->zipFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists. To add files to existing zip file use addFolder method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_2
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->createNewZipModel()V

    .line 218
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0, p3}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    .line 220
    if-eqz p3, :cond_3

    .line 221
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0, p4, p5}, Lnet/lingala/zip4j/model/ZipModel;->setSplitLength(J)V

    .line 224
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/lingala/zip4j/ZipFile;->addFolder(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;Z)V

    .line 225
    return-void
.end method

.method public extractAll(Ljava/lang/String;)V
    .locals 1
    .param p1, "destinationPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 440
    new-instance v0, Lnet/lingala/zip4j/model/UnzipParameters;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/UnzipParameters;-><init>()V

    invoke-virtual {p0, p1, v0}, Lnet/lingala/zip4j/ZipFile;->extractAll(Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V

    .line 441
    return-void
.end method

.method public extractAll(Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V
    .locals 4
    .param p1, "destinationPath"    # Ljava/lang/String;
    .param p2, "unzipParameters"    # Lnet/lingala/zip4j/model/UnzipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 452
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "output path is null or invalid"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->createDirectoryIfNotExists(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 457
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid output path"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v0, :cond_2

    .line 461
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->readZipInfo()V

    .line 465
    :cond_2
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v0, :cond_3

    .line 466
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Internal error occurred when extracting zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/tasks/ExtractAllFilesTask;

    iget-object v1, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v2, p0, Lnet/lingala/zip4j/ZipFile;->password:[C

    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->buildAsyncParameters()Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    move-result-object v3

    invoke-direct {v0, v1, v2, p2, v3}, Lnet/lingala/zip4j/tasks/ExtractAllFilesTask;-><init>(Lnet/lingala/zip4j/model/ZipModel;[CLnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    new-instance v1, Lnet/lingala/zip4j/tasks/ExtractAllFilesTask$ExtractAllFilesTaskParameters;

    .line 470
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->buildConfig()Lnet/lingala/zip4j/model/Zip4jConfig;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lnet/lingala/zip4j/tasks/ExtractAllFilesTask$ExtractAllFilesTaskParameters;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 469
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/tasks/ExtractAllFilesTask;->execute(Ljava/lang/Object;)V

    .line 471
    return-void
.end method

.method public extractFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "destinationPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 522
    const/4 v0, 0x0

    new-instance v1, Lnet/lingala/zip4j/model/UnzipParameters;

    invoke-direct {v1}, Lnet/lingala/zip4j/model/UnzipParameters;-><init>()V

    invoke-virtual {p0, p1, p2, v0, v1}, Lnet/lingala/zip4j/ZipFile;->extractFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V

    .line 523
    return-void
.end method

.method public extractFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "destinationPath"    # Ljava/lang/String;
    .param p3, "newFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 576
    new-instance v0, Lnet/lingala/zip4j/model/UnzipParameters;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/UnzipParameters;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/lingala/zip4j/ZipFile;->extractFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V

    .line 577
    return-void
.end method

.method public extractFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "destinationPath"    # Ljava/lang/String;
    .param p3, "newFileName"    # Ljava/lang/String;
    .param p4, "unzipParameters"    # Lnet/lingala/zip4j/model/UnzipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 630
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 631
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "file to extract is null or empty, cannot extract file"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 634
    :cond_0
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->readZipInfo()V

    .line 636
    iget-object v1, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-static {v1, p1}, Lnet/lingala/zip4j/headers/HeaderUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v0

    .line 638
    .local v0, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    if-nez v0, :cond_1

    .line 639
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No file found with name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in zip file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnet/lingala/zip4j/exception/ZipException$Type;->FILE_NOT_FOUND:Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-direct {v1, v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw v1

    .line 642
    :cond_1
    invoke-virtual {p0, v0, p2, p3, p4}, Lnet/lingala/zip4j/ZipFile;->extractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V

    .line 643
    return-void
.end method

.method public extractFile(Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "destinationPath"    # Ljava/lang/String;
    .param p3, "unzipParameters"    # Lnet/lingala/zip4j/model/UnzipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 548
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lnet/lingala/zip4j/ZipFile;->extractFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V

    .line 549
    return-void
.end method

.method public extractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;)V
    .locals 2
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "destinationPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 484
    const/4 v0, 0x0

    new-instance v1, Lnet/lingala/zip4j/model/UnzipParameters;

    invoke-direct {v1}, Lnet/lingala/zip4j/model/UnzipParameters;-><init>()V

    invoke-virtual {p0, p1, p2, v0, v1}, Lnet/lingala/zip4j/ZipFile;->extractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V

    .line 485
    return-void
.end method

.method public extractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "destinationPath"    # Ljava/lang/String;
    .param p3, "newFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 596
    new-instance v0, Lnet/lingala/zip4j/model/UnzipParameters;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/UnzipParameters;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/lingala/zip4j/ZipFile;->extractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V

    .line 597
    return-void
.end method

.method public extractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V
    .locals 4
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "destinationPath"    # Ljava/lang/String;
    .param p3, "newFileName"    # Ljava/lang/String;
    .param p4, "unzipParameters"    # Lnet/lingala/zip4j/model/UnzipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 666
    if-nez p1, :cond_0

    .line 667
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input file header is null, cannot extract file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :cond_0
    invoke-static {p2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 671
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "destination path is empty or null, cannot extract file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_1
    if-nez p4, :cond_2

    .line 675
    new-instance p4, Lnet/lingala/zip4j/model/UnzipParameters;

    .end local p4    # "unzipParameters":Lnet/lingala/zip4j/model/UnzipParameters;
    invoke-direct {p4}, Lnet/lingala/zip4j/model/UnzipParameters;-><init>()V

    .line 678
    .restart local p4    # "unzipParameters":Lnet/lingala/zip4j/model/UnzipParameters;
    :cond_2
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->readZipInfo()V

    .line 680
    new-instance v0, Lnet/lingala/zip4j/tasks/ExtractFileTask;

    iget-object v1, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v2, p0, Lnet/lingala/zip4j/ZipFile;->password:[C

    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->buildAsyncParameters()Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    move-result-object v3

    invoke-direct {v0, v1, v2, p4, v3}, Lnet/lingala/zip4j/tasks/ExtractFileTask;-><init>(Lnet/lingala/zip4j/model/ZipModel;[CLnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    new-instance v1, Lnet/lingala/zip4j/tasks/ExtractFileTask$ExtractFileTaskParameters;

    .line 681
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->buildConfig()Lnet/lingala/zip4j/model/Zip4jConfig;

    move-result-object v2

    invoke-direct {v1, p2, p1, p3, v2}, Lnet/lingala/zip4j/tasks/ExtractFileTask$ExtractFileTaskParameters;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 680
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/tasks/ExtractFileTask;->execute(Ljava/lang/Object;)V

    .line 682
    return-void
.end method

.method public extractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V
    .locals 1
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "destinationPath"    # Ljava/lang/String;
    .param p3, "unzipParameters"    # Lnet/lingala/zip4j/model/UnzipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 500
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lnet/lingala/zip4j/ZipFile;->extractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V

    .line 501
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 1101
    iget v0, p0, Lnet/lingala/zip4j/ZipFile;->bufferSize:I

    return v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->charset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    .line 1212
    sget-object v0, Lnet/lingala/zip4j/util/InternalZipConstants;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    .line 1214
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->charset:Ljava/nio/charset/Charset;

    goto :goto_0
.end method

.method public getComment()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 987
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 988
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "zip file does not exist, cannot read comment"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 991
    :cond_0
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->readZipInfo()V

    .line 993
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v0, :cond_1

    .line 994
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "zip model is null, cannot read comment"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 997
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v0

    if-nez v0, :cond_2

    .line 998
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "end of central directory record is null, cannot read comment"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1001
    :cond_2
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 1235
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipFile:Ljava/io/File;

    return-object v0
.end method

.method public getFileHeader(Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 707
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 708
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input file name is emtpy or null, cannot get FileHeader"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :cond_0
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->readZipInfo()V

    .line 712
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    if-nez v0, :cond_2

    .line 713
    :cond_1
    const/4 v0, 0x0

    .line 716
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-static {v0, p1}, Lnet/lingala/zip4j/headers/HeaderUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v0

    goto :goto_0
.end method

.method public getFileHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/lingala/zip4j/model/FileHeader;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 691
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->readZipInfo()V

    .line 692
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    if-nez v0, :cond_1

    .line 693
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 695
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputStream(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .locals 3
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1014
    if-nez p1, :cond_0

    .line 1015
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "FileHeader is null, cannot get InputStream"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1018
    :cond_0
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->readZipInfo()V

    .line 1020
    iget-object v1, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v1, :cond_1

    .line 1021
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "zip model is null, cannot get inputstream"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1024
    :cond_1
    iget-object v1, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v2, p0, Lnet/lingala/zip4j/ZipFile;->password:[C

    invoke-static {v1, p1, v2}, Lnet/lingala/zip4j/util/UnzipUtil;->createZipInputStream(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;[C)Lnet/lingala/zip4j/io/inputstream/ZipInputStream;

    move-result-object v0

    .line 1025
    .local v0, "zipInputStream":Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    iget-object v1, p0, Lnet/lingala/zip4j/ZipFile;->openInputStreams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
    return-object v0
.end method

.method public getProgressMonitor()Lnet/lingala/zip4j/progress/ProgressMonitor;
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    return-object v0
.end method

.method public getSplitZipFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 1070
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->readZipInfo()V

    .line 1071
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-static {v0}, Lnet/lingala/zip4j/util/FileUtils;->getSplitZipFiles(Lnet/lingala/zip4j/model/ZipModel;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isEncrypted()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 726
    iget-object v1, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v1, :cond_0

    .line 727
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->readZipInfo()V

    .line 728
    iget-object v1, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v1, :cond_0

    .line 729
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "Zip Model is null"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 733
    :cond_0
    iget-object v1, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    .line 734
    :cond_1
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "invalid zip file"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 737
    :cond_2
    iget-object v1, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/FileHeader;

    .line 738
    .local v0, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    if-eqz v0, :cond_3

    .line 739
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 740
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/lingala/zip4j/ZipFile;->isEncrypted:Z

    .line 746
    .end local v0    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    :cond_4
    iget-boolean v1, p0, Lnet/lingala/zip4j/ZipFile;->isEncrypted:Z

    return v1
.end method

.method public isRunInThread()Z
    .locals 1

    .prologue
    .line 1193
    iget-boolean v0, p0, Lnet/lingala/zip4j/ZipFile;->runInThread:Z

    return v0
.end method

.method public isSplitArchive()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 757
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v0, :cond_0

    .line 758
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->readZipInfo()V

    .line 759
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v0, :cond_0

    .line 760
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Zip Model is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 764
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v0

    return v0
.end method

.method public isValidZipFile()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1043
    iget-object v2, p0, Lnet/lingala/zip4j/ZipFile;->zipFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return v1

    .line 1048
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->readZipInfo()V

    .line 1050
    iget-object v2, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lnet/lingala/zip4j/ZipFile;->getSplitZipFiles()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/lingala/zip4j/ZipFile;->verifyAllSplitFilesOfZipExists(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 1054
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1055
    :catch_0
    move-exception v0

    .line 1056
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public mergeSplitFiles(Ljava/io/File;)V
    .locals 3
    .param p1, "outputZipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 933
    if-nez p1, :cond_0

    .line 934
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "outputZipFile is null, cannot merge split files"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 937
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 938
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "output Zip File already exists"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 941
    :cond_1
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->readZipInfo()V

    .line 943
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v0, :cond_2

    .line 944
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "zip model is null, corrupt zip file?"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 947
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;

    iget-object v1, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->buildAsyncParameters()Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;-><init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    new-instance v1, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask$MergeSplitZipFileTaskParameters;

    .line 948
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->buildConfig()Lnet/lingala/zip4j/model/Zip4jConfig;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask$MergeSplitZipFileTaskParameters;-><init>(Ljava/io/File;Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 947
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/tasks/MergeSplitZipFileTask;->execute(Ljava/lang/Object;)V

    .line 949
    return-void
.end method

.method public removeFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 803
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 804
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "file name is empty or null, cannot remove file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/ZipFile;->removeFiles(Ljava/util/List;)V

    .line 808
    return-void
.end method

.method public removeFile(Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 2
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 780
    if-nez p1, :cond_0

    .line 781
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input file header is null, cannot remove file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/ZipFile;->removeFile(Ljava/lang/String;)V

    .line 785
    return-void
.end method

.method public removeFiles(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 823
    .local p1, "fileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 824
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "fileNames list is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 827
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 841
    :goto_0
    return-void

    .line 831
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v0, :cond_2

    .line 832
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->readZipInfo()V

    .line 835
    :cond_2
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 836
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Zip file format does not allow updating split/spanned files"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;

    iget-object v1, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v2, p0, Lnet/lingala/zip4j/ZipFile;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->buildAsyncParameters()Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;-><init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/headers/HeaderWriter;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    new-instance v1, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;

    .line 840
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->buildConfig()Lnet/lingala/zip4j/model/Zip4jConfig;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;-><init>(Ljava/util/List;Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 839
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->execute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public renameFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fileNameToRename"    # Ljava/lang/String;
    .param p2, "newFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 881
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 882
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "file name to be changed is null or empty"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 885
    :cond_0
    invoke-static {p2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 886
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "newFileName is null or empty"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 889
    :cond_1
    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/ZipFile;->renameFiles(Ljava/util/Map;)V

    .line 890
    return-void
.end method

.method public renameFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;)V
    .locals 2
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "newFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 857
    if-nez p1, :cond_0

    .line 858
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "File header is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lnet/lingala/zip4j/ZipFile;->renameFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    return-void
.end method

.method public renameFiles(Ljava/util/Map;)V
    .locals 5
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 906
    .local p1, "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 907
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "fileNamesMap is null"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 910
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 923
    :goto_0
    return-void

    .line 914
    :cond_1
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->readZipInfo()V

    .line 916
    iget-object v1, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 917
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "Zip file format does not allow updating split/spanned files"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 920
    :cond_2
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->buildAsyncParameters()Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    move-result-object v0

    .line 921
    .local v0, "asyncTaskParameters":Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;
    new-instance v1, Lnet/lingala/zip4j/tasks/RenameFilesTask;

    iget-object v2, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v3, p0, Lnet/lingala/zip4j/ZipFile;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    new-instance v4, Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {v4}, Lnet/lingala/zip4j/util/RawIO;-><init>()V

    invoke-direct {v1, v2, v3, v4, v0}, Lnet/lingala/zip4j/tasks/RenameFilesTask;-><init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/headers/HeaderWriter;Lnet/lingala/zip4j/util/RawIO;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    new-instance v2, Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;

    .line 922
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->buildConfig()Lnet/lingala/zip4j/model/Zip4jConfig;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;-><init>(Ljava/util/Map;Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 921
    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->execute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setBufferSize(I)V
    .locals 2
    .param p1, "bufferSize"    # I

    .prologue
    .line 1112
    const/16 v0, 0x200

    if-ge p1, v0, :cond_0

    .line 1113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size cannot be less than 512 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1116
    :cond_0
    iput p1, p0, Lnet/lingala/zip4j/ZipFile;->bufferSize:I

    .line 1117
    return-void
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1224
    if-nez p1, :cond_0

    .line 1225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1227
    :cond_0
    iput-object p1, p0, Lnet/lingala/zip4j/ZipFile;->charset:Ljava/nio/charset/Charset;

    .line 1228
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 3
    .param p1, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 958
    if-nez p1, :cond_0

    .line 959
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input comment is null, cannot update zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 962
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 963
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "zip file does not exist, cannot set comment for zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 966
    :cond_1
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->readZipInfo()V

    .line 968
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v0, :cond_2

    .line 969
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "zipModel is null, cannot update zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 972
    :cond_2
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v0

    if-nez v0, :cond_3

    .line 973
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "end of central directory is null, cannot set comment"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 976
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/tasks/SetCommentTask;

    iget-object v1, p0, Lnet/lingala/zip4j/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->buildAsyncParameters()Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/tasks/SetCommentTask;-><init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    new-instance v1, Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;

    .line 977
    invoke-direct {p0}, Lnet/lingala/zip4j/ZipFile;->buildConfig()Lnet/lingala/zip4j/model/Zip4jConfig;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lnet/lingala/zip4j/tasks/SetCommentTask$SetCommentTaskTaskParameters;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 976
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/tasks/SetCommentTask;->execute(Ljava/lang/Object;)V

    .line 978
    return-void
.end method

.method public setPassword([C)V
    .locals 0
    .param p1, "password"    # [C

    .prologue
    .line 1092
    iput-object p1, p0, Lnet/lingala/zip4j/ZipFile;->password:[C

    .line 1093
    return-void
.end method

.method public setRunInThread(Z)V
    .locals 0
    .param p1, "runInThread"    # Z

    .prologue
    .line 1197
    iput-boolean p1, p0, Lnet/lingala/zip4j/ZipFile;->runInThread:Z

    .line 1198
    return-void
.end method

.method public setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 1231
    iput-object p1, p0, Lnet/lingala/zip4j/ZipFile;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 1232
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Lnet/lingala/zip4j/ZipFile;->zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
