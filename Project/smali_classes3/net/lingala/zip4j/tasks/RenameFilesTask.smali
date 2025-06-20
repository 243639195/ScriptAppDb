.class public Lnet/lingala/zip4j/tasks/RenameFilesTask;
.super Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;
.source "RenameFilesTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/tasks/AbstractModifyFileTask",
        "<",
        "Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private final headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

.field private final rawIO:Lnet/lingala/zip4j/util/RawIO;

.field private final zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/headers/HeaderWriter;Lnet/lingala/zip4j/util/RawIO;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V
    .locals 0
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "headerWriter"    # Lnet/lingala/zip4j/headers/HeaderWriter;
    .param p3, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .param p4, "asyncTaskParameters"    # Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    .prologue
    .line 32
    invoke-direct {p0, p4}, Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;-><init>(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    .line 33
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 34
    iput-object p2, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    .line 35
    iput-object p3, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    .line 36
    return-void
.end method

.method private copyEntryAndChangeFileName([BLnet/lingala/zip4j/model/FileHeader;JJLjava/io/RandomAccessFile;Ljava/io/OutputStream;Lnet/lingala/zip4j/progress/ProgressMonitor;I)J
    .locals 13
    .param p1, "newFileNameBytes"    # [B
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "start"    # J
    .param p5, "totalLengthOfEntry"    # J
    .param p7, "inputStream"    # Ljava/io/RandomAccessFile;
    .param p8, "outputStream"    # Ljava/io/OutputStream;
    .param p9, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p10, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    move-wide/from16 v6, p3

    .line 106
    .local v6, "currentFileCopyPointer":J
    const-wide/16 v8, 0x1a

    move-object v3, p0

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v3 .. v11}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)J

    move-result-wide v2

    add-long/2addr v6, v2

    .line 108
    iget-object v2, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    array-length v3, p1

    move-object/from16 v0, p8

    invoke-virtual {v2, v0, v3}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 110
    const-wide/16 v2, 0x2

    add-long/2addr v6, v2

    .line 111
    const-wide/16 v8, 0x2

    move-object v3, p0

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v3 .. v11}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)J

    move-result-wide v2

    add-long/2addr v6, v2

    .line 113
    move-object/from16 v0, p8

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 114
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileNameLength()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v6, v2

    .line 116
    sub-long v2, v6, p3

    sub-long v8, p5, v2

    .local v8, "remainingLengthToCopy":J
    move-object v3, p0

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    .line 118
    invoke-virtual/range {v3 .. v11}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)J

    move-result-wide v2

    add-long/2addr v6, v2

    .line 121
    return-wide v6
.end method

.method private filterNonExistingEntriesAndAddSeparatorIfNeeded(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
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
    .line 167
    .local p1, "inputFileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 168
    .local v2, "fileNamesMapToBeChanged":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 169
    .local v0, "allNamesToBeChanged":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    iget-object v5, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v5, v3}, Lnet/lingala/zip4j/headers/HeaderUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v1

    .line 174
    .local v1, "fileHeaderToBeChanged":Lnet/lingala/zip4j/model/FileHeader;
    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 176
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 178
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 182
    .end local v0    # "allNamesToBeChanged":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "fileHeaderToBeChanged":Lnet/lingala/zip4j/model/FileHeader;
    :cond_2
    return-object v2
.end method

.method private getCorrespondingEntryFromMap(Lnet/lingala/zip4j/model/FileHeader;Ljava/util/Map;)Ljava/util/Map$Entry;
    .locals 4
    .param p1, "fileHeaderToBeChecked"    # Lnet/lingala/zip4j/model/FileHeader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/lingala/zip4j/model/FileHeader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    .local p2, "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 128
    .local v0, "fileHeaderToBeRenamed":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    .end local v0    # "fileHeaderToBeRenamed":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "newFileName"    # Ljava/lang/String;
    .param p2, "oldFileName"    # Ljava/lang/String;
    .param p3, "fileNameFromHeaderToBeChanged"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    .end local p1    # "newFileName":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 188
    .restart local p1    # "newFileName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "fileNameWithoutOldName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 196
    .end local v0    # "fileNameWithoutOldName":Ljava/lang/String;
    :cond_1
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "old file name was neither an exact match nor a partial match"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private updateHeadersInZipModel(Ljava/util/List;Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;[BI)V
    .locals 8
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "newFileName"    # Ljava/lang/String;
    .param p4, "newFileNameBytes"    # [B
    .param p5, "headersOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/lingala/zip4j/model/FileHeader;",
            ">;",
            "Lnet/lingala/zip4j/model/FileHeader;",
            "Ljava/lang/String;",
            "[BI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/lingala/zip4j/headers/HeaderUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v3

    .line 141
    .local v3, "fileHeaderToBeChanged":Lnet/lingala/zip4j/model/FileHeader;
    if-nez v3, :cond_0

    .line 144
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not find any header with name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    invoke-virtual {v3, p3}, Lnet/lingala/zip4j/model/FileHeader;->setFileName(Ljava/lang/String;)V

    .line 148
    array-length v0, p4

    invoke-virtual {v3, v0}, Lnet/lingala/zip4j/model/FileHeader;->setFileNameLength(I)V

    .line 150
    iget-object v2, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    int-to-long v4, p5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->updateOffsetsForAllSubsequentFileHeaders(Ljava/util/List;Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;J)V

    .line 152
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 153
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getOffsetOfStartOfCentralDirectory()J

    move-result-wide v4

    int-to-long v6, p5

    add-long/2addr v4, v6

    .line 152
    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setOffsetOfStartOfCentralDirectory(J)V

    .line 155
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 157
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getOffsetStartCentralDirectoryWRTStartDiskNumber()J

    move-result-wide v4

    int-to-long v6, p5

    add-long/2addr v4, v6

    .line 156
    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setOffsetStartCentralDirectoryWRTStartDiskNumber(J)V

    .line 160
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 161
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->getOffsetZip64EndOfCentralDirectoryRecord()J

    move-result-wide v4

    int-to-long v6, p5

    add-long/2addr v4, v6

    .line 160
    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setOffsetZip64EndOfCentralDirectoryRecord(J)V

    .line 164
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
    .line 25
    check-cast p1, Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->calculateTotalWork(Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected calculateTotalWork(Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;)J
    .locals 2
    .param p1, "taskParameters"    # Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;

    .prologue
    .line 93
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

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
    .line 25
    check-cast p1, Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;

    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->executeTask(Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method protected executeTask(Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 35
    .param p1, "taskParameters"    # Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;
    .param p2, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-static/range {p1 .. p1}, Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;)Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->filterNonExistingEntriesAndAddSeparatorIfNeeded(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v25

    .line 41
    .local v25, "fileNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 89
    :goto_0
    return-void

    .line 45
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->getTemporaryFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v30

    .line 46
    .local v30, "temporaryFile":Ljava/io/File;
    const/16 v29, 0x0

    .line 47
    .local v29, "successFlag":Z
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v5

    sget-object v12, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->WRITE:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v5, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .local v6, "inputStream":Ljava/io/RandomAccessFile;
    const/16 v32, 0x0

    .line 48
    :try_start_1
    new-instance v7, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    move-object/from16 v0, v30

    invoke-direct {v7, v0}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 47
    .local v7, "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    const/16 v31, 0x0

    .line 50
    const-wide/16 v8, 0x0

    .line 51
    .local v8, "currentFileCopyPointer":J
    :try_start_2
    move-object/from16 v0, p1

    iget-object v5, v0, Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    .line 58
    .local v4, "charset":Ljava/nio/charset/Charset;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->cloneAndSortFileHeadersByOffset(Ljava/util/List;)Ljava/util/List;

    move-result-object v28

    .line 60
    .local v28, "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :goto_1
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lnet/lingala/zip4j/model/FileHeader;

    .line 61
    .local v15, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v15, v1}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->getCorrespondingEntryFromMap(Lnet/lingala/zip4j/model/FileHeader;Ljava/util/Map;)Ljava/util/Map$Entry;

    move-result-object v24

    .line 62
    .local v24, "fileNameMapForThisEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v15}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 64
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v15, v5}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->getOffsetOfNextEntry(Ljava/util/List;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/model/ZipModel;)J

    move-result-wide v12

    invoke-virtual {v7}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->getFilePointer()J

    move-result-wide v16

    sub-long v10, v12, v16

    .line 65
    .local v10, "lengthToCopy":J
    if-nez v24, :cond_3

    .line 67
    move-object/from16 v0, p1

    iget-object v5, v0, Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    .line 68
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v13

    move-object/from16 v5, p0

    move-object/from16 v12, p2

    .line 67
    invoke-virtual/range {v5 .. v13}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)J

    move-result-wide v12

    add-long/2addr v8, v12

    .line 80
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->verifyIfTaskIsCancelled()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_1

    .line 47
    .end local v4    # "charset":Ljava/nio/charset/Charset;
    .end local v10    # "lengthToCopy":J
    .end local v15    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v24    # "fileNameMapForThisEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v28    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    :catch_0
    move-exception v5

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    :catchall_0
    move-exception v12

    move-object/from16 v34, v12

    move-object v12, v5

    move-object/from16 v5, v34

    :goto_3
    if-eqz v7, :cond_1

    if-eqz v12, :cond_8

    :try_start_4
    invoke-virtual {v7}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_1
    :goto_4
    :try_start_5
    throw v5
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 47
    .end local v7    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v8    # "currentFileCopyPointer":J
    :catch_1
    move-exception v5

    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 85
    :catchall_1
    move-exception v12

    move-object/from16 v34, v12

    move-object v12, v5

    move-object/from16 v5, v34

    :goto_5
    if-eqz v6, :cond_2

    if-eqz v12, :cond_a

    :try_start_7
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_2
    :goto_6
    :try_start_8
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 86
    .end local v6    # "inputStream":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v12

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v12, v2}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->cleanupFile(ZLjava/io/File;Ljava/io/File;)V

    .line 87
    throw v5

    .line 70
    .restart local v4    # "charset":Ljava/nio/charset/Charset;
    .restart local v6    # "inputStream":Ljava/io/RandomAccessFile;
    .restart local v7    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v8    # "currentFileCopyPointer":J
    .restart local v10    # "lengthToCopy":J
    .restart local v15    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .restart local v24    # "fileNameMapForThisEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v28    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    :cond_3
    :try_start_9
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v15}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v13}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->getNewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 71
    .local v27, "newFileName":Ljava/lang/String;
    move-object/from16 v0, v27

    invoke-static {v0, v4}, Lnet/lingala/zip4j/headers/HeaderUtil;->getBytesFromString(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v14

    .line 72
    .local v14, "newFileNameBytes":[B
    array-length v5, v14

    invoke-virtual {v15}, Lnet/lingala/zip4j/model/FileHeader;->getFileNameLength()I

    move-result v12

    sub-int v26, v5, v12

    .line 74
    .local v26, "headersOffset":I
    move-object/from16 v0, p1

    iget-object v5, v0, Lnet/lingala/zip4j/tasks/RenameFilesTask$RenameFilesTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    .line 75
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v23

    move-object/from16 v13, p0

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, p2

    .line 74
    invoke-direct/range {v13 .. v23}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->copyEntryAndChangeFileName([BLnet/lingala/zip4j/model/FileHeader;JJLjava/io/RandomAccessFile;Ljava/io/OutputStream;Lnet/lingala/zip4j/progress/ProgressMonitor;I)J

    move-result-wide v8

    move-object/from16 v16, p0

    move-object/from16 v17, v28

    move-object/from16 v18, v15

    move-object/from16 v19, v27

    move-object/from16 v20, v14

    move/from16 v21, v26

    .line 77
    invoke-direct/range {v16 .. v21}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->updateHeadersInZipModel(Ljava/util/List;Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;[BI)V

    goto/16 :goto_2

    .line 85
    .end local v4    # "charset":Ljava/nio/charset/Charset;
    .end local v10    # "lengthToCopy":J
    .end local v14    # "newFileNameBytes":[B
    .end local v15    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v24    # "fileNameMapForThisEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v26    # "headersOffset":I
    .end local v27    # "newFileName":Ljava/lang/String;
    .end local v28    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    :catchall_3
    move-exception v5

    move-object/from16 v12, v31

    goto :goto_3

    .line 83
    .restart local v4    # "charset":Ljava/nio/charset/Charset;
    .restart local v28    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v5, v12, v7, v4}, Lnet/lingala/zip4j/headers/HeaderWriter;->finalizeZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 84
    const/16 v29, 0x1

    .line 85
    if-eqz v7, :cond_5

    if-eqz v31, :cond_7

    :try_start_a
    invoke-virtual {v7}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :cond_5
    :goto_7
    if-eqz v6, :cond_6

    if-eqz v32, :cond_9

    :try_start_b
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 86
    :cond_6
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/lingala/zip4j/tasks/RenameFilesTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v5, v2}, Lnet/lingala/zip4j/tasks/RenameFilesTask;->cleanupFile(ZLjava/io/File;Ljava/io/File;)V

    goto/16 :goto_0

    .line 85
    :catch_2
    move-exception v5

    :try_start_c
    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    .end local v4    # "charset":Ljava/nio/charset/Charset;
    .end local v7    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v8    # "currentFileCopyPointer":J
    .end local v28    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    :catchall_4
    move-exception v5

    move-object/from16 v12, v32

    goto/16 :goto_5

    .restart local v4    # "charset":Ljava/nio/charset/Charset;
    .restart local v7    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .restart local v8    # "currentFileCopyPointer":J
    .restart local v28    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    :cond_7
    invoke-virtual {v7}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V

    goto :goto_7

    .end local v4    # "charset":Ljava/nio/charset/Charset;
    .end local v28    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    :catch_3
    move-exception v13

    invoke-virtual {v12, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v7}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto/16 :goto_4

    .restart local v4    # "charset":Ljava/nio/charset/Charset;
    .restart local v28    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    :catch_4
    move-exception v5

    :try_start_d
    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_9
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_8

    .end local v4    # "charset":Ljava/nio/charset/Charset;
    .end local v7    # "outputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v8    # "currentFileCopyPointer":J
    .end local v28    # "sortedFileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    :catch_5
    move-exception v13

    invoke-virtual {v12, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_a
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/16 :goto_6
.end method

.method protected getTask()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->RENAME_FILE:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-object v0
.end method
