.class public Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;
.super Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;
.source "RemoveFilesFromZipTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/tasks/AbstractModifyFileTask",
        "<",
        "Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private final headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

.field private final zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/headers/HeaderWriter;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V
    .locals 0
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "headerWriter"    # Lnet/lingala/zip4j/headers/HeaderWriter;
    .param p3, "asyncTaskParameters"    # Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    .prologue
    .line 28
    invoke-direct {p0, p3}, Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;-><init>(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    .line 29
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 30
    iput-object p2, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    .line 31
    return-void
.end method

.method private filterNonExistingEntries(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "filesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v1, "filteredFilesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    .local v0, "fileToRemove":Ljava/lang/String;
    iget-object v3, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-static {v3, v0}, Lnet/lingala/zip4j/headers/HeaderUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 90
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    .end local v0    # "fileToRemove":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private negate(J)J
    .locals 3
    .param p1, "val"    # J

    .prologue
    .line 140
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "long overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    neg-long v0, p1

    return-wide v0
.end method

.method private shouldEntryBeRemoved(Lnet/lingala/zip4j/model/FileHeader;Ljava/util/List;)Z
    .locals 4
    .param p1, "fileHeaderToBeChecked"    # Lnet/lingala/zip4j/model/FileHeader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/lingala/zip4j/model/FileHeader;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "fileNamesToBeRemoved":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 98
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    .local v0, "fileNameToBeRemoved":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    .end local v0    # "fileNameToBeRemoved":Ljava/lang/String;
    :goto_0
    return v1

    .line 104
    .restart local v0    # "fileNameToBeRemoved":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 109
    .end local v0    # "fileNameToBeRemoved":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateHeaders(Ljava/util/List;Lnet/lingala/zip4j/model/FileHeader;J)V
    .locals 7
    .param p2, "fileHeaderThatWasRemoved"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "offsetToSubtract"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/lingala/zip4j/model/FileHeader;",
            ">;",
            "Lnet/lingala/zip4j/model/FileHeader;",
            "J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    iget-object v2, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p0, p3, p4}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->negate(J)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->updateOffsetsForAllSubsequentFileHeaders(Ljava/util/List;Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;J)V

    .line 116
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v6

    .line 118
    .local v6, "endOfCentralDirectoryRecord":Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;
    invoke-virtual {v6}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getOffsetOfStartOfCentralDirectory()J

    move-result-wide v0

    sub-long/2addr v0, p3

    .line 117
    invoke-virtual {v6, v0, v1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setOffsetOfStartOfCentralDirectory(J)V

    .line 120
    invoke-virtual {v6}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectory()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 119
    invoke-virtual {v6, v0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectory(I)V

    .line 122
    invoke-virtual {v6}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectoryOnThisDisk()I

    move-result v0

    if-lez v0, :cond_0

    .line 124
    invoke-virtual {v6}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectoryOnThisDisk()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 123
    invoke-virtual {v6, v0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectoryOnThisDisk(I)V

    .line 127
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 129
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getOffsetStartCentralDirectoryWRTStartDiskNumber()J

    move-result-wide v2

    sub-long/2addr v2, p3

    .line 128
    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setOffsetStartCentralDirectoryWRTStartDiskNumber(J)V

    .line 131
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 132
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectory()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 131
    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectoryOnThisDisk(J)V

    .line 134
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 135
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->getOffsetZip64EndOfCentralDirectoryRecord()J

    move-result-wide v2

    sub-long/2addr v2, p3

    .line 134
    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setOffsetZip64EndOfCentralDirectoryRecord(J)V

    .line 137
    :cond_1
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
    check-cast p1, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->calculateTotalWork(Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected calculateTotalWork(Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;)J
    .locals 2
    .param p1, "taskParameters"    # Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;

    .prologue
    .line 82
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

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
    check-cast p1, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;

    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->executeTask(Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method protected executeTask(Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 23
    .param p1, "taskParameters"    # Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;
    .param p2, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    const-string v10, "This is a split archive. Zip file format does not allow updating split/spanned files"

    invoke-direct {v3, v10}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 40
    :cond_0
    invoke-static/range {p1 .. p1}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->filterNonExistingEntries(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 42
    .local v2, "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    :goto_0
    return-void

    .line 46
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->getTemporaryFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 47
    .local v15, "temporaryZipFile":Ljava/io/File;
    const/4 v14, 0x0

    .line 49
    .local v14, "successFlag":Z
    :try_start_0
    new-instance v5, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    invoke-direct {v5, v15}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .local v5, "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    const/16 v17, 0x0

    .line 50
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v3

    sget-object v10, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->READ:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v3, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 49
    .local v4, "inputStream":Ljava/io/RandomAccessFile;
    const/16 v16, 0x0

    .line 52
    const-wide/16 v6, 0x0

    .line 53
    .local v6, "currentFileCopyPointer":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->cloneAndSortFileHeadersByOffset(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    .line 55
    .local v13, "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/lingala/zip4j/model/FileHeader;

    .line 56
    .local v12, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12, v3}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->getOffsetOfNextEntry(Ljava/util/List;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/model/ZipModel;)J

    move-result-wide v10

    invoke-virtual {v5}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->getFilePointer()J

    move-result-wide v20

    sub-long v8, v10, v20

    .line 57
    .local v8, "lengthOfCurrentEntry":J
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->shouldEntryBeRemoved(Lnet/lingala/zip4j/model/FileHeader;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 58
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12, v8, v9}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->updateHeaders(Ljava/util/List;Lnet/lingala/zip4j/model/FileHeader;J)V

    .line 60
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 61
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    const-string v10, "Could not remove entry from list of central directory headers"

    invoke-direct {v3, v10}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 49
    .end local v8    # "lengthOfCurrentEntry":J
    .end local v12    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v13    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    :catch_0
    move-exception v3

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    :catchall_0
    move-exception v10

    move-object/from16 v22, v10

    move-object v10, v3

    move-object/from16 v3, v22

    :goto_2
    if-eqz v4, :cond_2

    if-eqz v10, :cond_a

    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_2
    :goto_3
    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 49
    .end local v4    # "inputStream":Ljava/io/RandomAccessFile;
    .end local v6    # "currentFileCopyPointer":J
    :catch_1
    move-exception v3

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 75
    :catchall_1
    move-exception v10

    move-object/from16 v22, v10

    move-object v10, v3

    move-object/from16 v3, v22

    :goto_4
    if-eqz v5, :cond_3

    if-eqz v10, :cond_c

    :try_start_7
    invoke-virtual {v5}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_3
    :goto_5
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 76
    .end local v5    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    :catchall_2
    move-exception v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10, v15}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->cleanupFile(ZLjava/io/File;Ljava/io/File;)V

    .line 77
    throw v3

    .line 64
    .restart local v4    # "inputStream":Ljava/io/RandomAccessFile;
    .restart local v5    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v6    # "currentFileCopyPointer":J
    .restart local v8    # "lengthOfCurrentEntry":J
    .restart local v12    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .restart local v13    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    :cond_4
    add-long/2addr v6, v8

    .line 70
    :goto_6
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->verifyIfTaskIsCancelled()V

    goto :goto_1

    .line 75
    .end local v8    # "lengthOfCurrentEntry":J
    .end local v12    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v13    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    :catchall_3
    move-exception v3

    move-object/from16 v10, v16

    goto :goto_2

    .line 67
    .restart local v8    # "lengthOfCurrentEntry":J
    .restart local v12    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .restart local v13    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    :cond_5
    move-object/from16 v0, p1

    iget-object v3, v0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    .line 68
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v11

    move-object/from16 v3, p0

    move-object/from16 v10, p2

    .line 67
    invoke-super/range {v3 .. v11}, Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)J

    move-result-wide v10

    add-long/2addr v6, v10

    goto :goto_6

    .line 73
    .end local v8    # "lengthOfCurrentEntry":J
    .end local v12    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v0, p1

    iget-object v11, v0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v11}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-virtual {v3, v10, v5, v11}, Lnet/lingala/zip4j/headers/HeaderWriter;->finalizeZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 74
    const/4 v14, 0x1

    .line 75
    if-eqz v4, :cond_7

    if-eqz v16, :cond_9

    :try_start_a
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :cond_7
    :goto_7
    if-eqz v5, :cond_8

    if-eqz v17, :cond_b

    :try_start_b
    invoke-virtual {v5}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 76
    :cond_8
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3, v15}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->cleanupFile(ZLjava/io/File;Ljava/io/File;)V

    goto/16 :goto_0

    .line 75
    :catch_2
    move-exception v3

    :try_start_c
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    .end local v4    # "inputStream":Ljava/io/RandomAccessFile;
    .end local v6    # "currentFileCopyPointer":J
    .end local v13    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    :catchall_4
    move-exception v3

    move-object/from16 v10, v17

    goto :goto_4

    .restart local v4    # "inputStream":Ljava/io/RandomAccessFile;
    .restart local v6    # "currentFileCopyPointer":J
    .restart local v13    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    :cond_9
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_7

    .end local v13    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    :catch_3
    move-exception v11

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_a
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto/16 :goto_3

    .restart local v13    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    :catch_4
    move-exception v3

    :try_start_d
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_b
    invoke-virtual {v5}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V

    goto :goto_8

    .end local v4    # "inputStream":Ljava/io/RandomAccessFile;
    .end local v6    # "currentFileCopyPointer":J
    .end local v13    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    :catch_5
    move-exception v11

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_c
    invoke-virtual {v5}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/16 :goto_5
.end method

.method protected getTask()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->REMOVE_ENTRY:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-object v0
.end method
