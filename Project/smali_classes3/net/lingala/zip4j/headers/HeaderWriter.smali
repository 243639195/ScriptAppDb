.class public Lnet/lingala/zip4j/headers/HeaderWriter;
.super Ljava/lang/Object;
.source "HeaderWriter.java"


# static fields
.field private static final AES_EXTRA_DATA_RECORD_SIZE:S = 0xbs

.field private static final ZIP64_EXTRA_DATA_RECORD_SIZE_FH:S = 0x1cs

.field private static final ZIP64_EXTRA_DATA_RECORD_SIZE_LFH:S = 0x10s


# instance fields
.field private final intBuff:[B

.field private final longBuff:[B

.field private final rawIO:Lnet/lingala/zip4j/util/RawIO;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {v0}, Lnet/lingala/zip4j/util/RawIO;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->intBuff:[B

    return-void
.end method

.method private buildZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/ZipModel;IJ)Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;
    .locals 9
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "sizeOfCentralDir"    # I
    .param p3, "offsetCentralDir"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 673
    new-instance v1, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    invoke-direct {v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;-><init>()V

    .line 675
    .local v1, "zip64EndOfCentralDirectoryRecord":Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;
    sget-object v6, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v1, v6}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 676
    const-wide/16 v6, 0x2c

    invoke-virtual {v1, v6, v7}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setSizeOfZip64EndCentralDirectoryRecord(J)V

    .line 678
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 679
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 680
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 681
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/FileHeader;

    .line 682
    .local v0, "firstFileHeader":Lnet/lingala/zip4j/model/FileHeader;
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getVersionMadeBy()I

    move-result v6

    invoke-virtual {v1, v6}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setVersionMadeBy(I)V

    .line 683
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getVersionNeededToExtract()I

    move-result v6

    invoke-virtual {v1, v6}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setVersionNeededToExtract(I)V

    .line 686
    .end local v0    # "firstFileHeader":Lnet/lingala/zip4j/model/FileHeader;
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result v6

    invoke-virtual {v1, v6}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setNumberOfThisDisk(I)V

    .line 687
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v6

    .line 688
    invoke-virtual {v6}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDiskStartOfCentralDir()I

    move-result v6

    .line 687
    invoke-virtual {v1, v6}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setNumberOfThisDiskStartOfCentralDirectory(I)V

    .line 690
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-long v2, v6

    .line 691
    .local v2, "numEntries":J
    move-wide v4, v2

    .line 692
    .local v4, "numEntriesOnThisDisk":J
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 693
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v6

    .line 694
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result v7

    .line 693
    invoke-direct {p0, v6, v7}, Lnet/lingala/zip4j/headers/HeaderWriter;->countNumberOfFileHeaderEntriesOnDisk(Ljava/util/List;I)J

    move-result-wide v4

    .line 697
    :cond_1
    invoke-virtual {v1, v4, v5}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectoryOnThisDisk(J)V

    .line 698
    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectory(J)V

    .line 699
    int-to-long v6, p2

    invoke-virtual {v1, v6, v7}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setSizeOfCentralDirectory(J)V

    .line 700
    invoke-virtual {v1, p3, p4}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setOffsetStartCentralDirectoryWRTStartDiskNumber(J)V

    .line 702
    return-object v1
.end method

.method private calculateExtraDataRecordsSize(Lnet/lingala/zip4j/model/FileHeader;Z)I
    .locals 8
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "writeZip64ExtendedInfo"    # Z

    .prologue
    .line 519
    const/4 v1, 0x0

    .line 521
    .local v1, "extraFieldLength":I
    if-eqz p2, :cond_0

    .line 522
    add-int/lit8 v1, v1, 0x20

    .line 525
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 526
    add-int/lit8 v1, v1, 0xb

    .line 529
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 530
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/ExtraDataRecord;

    .line 531
    .local v0, "extraDataRecord":Lnet/lingala/zip4j/model/ExtraDataRecord;
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v4

    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v3}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 532
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v4

    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v3}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 536
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v1, v3

    .line 537
    goto :goto_0

    .line 540
    .end local v0    # "extraDataRecord":Lnet/lingala/zip4j/model/ExtraDataRecord;
    :cond_3
    return v1
.end method

.method private countNumberOfFileHeaderEntriesOnDisk(Ljava/util/List;I)J
    .locals 4
    .param p2, "numOfDisk"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/lingala/zip4j/model/FileHeader;",
            ">;I)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 640
    .local p1, "fileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    if-nez p1, :cond_0

    .line 641
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "file headers are null, cannot calculate number of entries on this disk"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 644
    :cond_0
    const/4 v1, 0x0

    .line 645
    .local v1, "noEntries":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/FileHeader;

    .line 646
    .local v0, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v3

    if-ne v3, p2, :cond_1

    .line 647
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 650
    .end local v0    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    :cond_2
    int-to-long v2, v1

    return-wide v2
.end method

.method private getCurrentSplitFileCounter(Ljava/io/OutputStream;)I
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 337
    instance-of v0, p1, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    if-eqz v0, :cond_0

    .line 338
    check-cast p1, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    .end local p1    # "outputStream":Ljava/io/OutputStream;
    invoke-virtual {p1}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->getCurrentSplitFileCounter()I

    move-result v0

    .line 340
    :goto_0
    return v0

    .restart local p1    # "outputStream":Ljava/io/OutputStream;
    :cond_0
    check-cast p1, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    .end local p1    # "outputStream":Ljava/io/OutputStream;
    invoke-virtual {p1}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->getCurrentSplitFileCounter()I

    move-result v0

    goto :goto_0
.end method

.method private getOffsetOfCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)J
    .locals 4
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;

    .prologue
    .line 661
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getOffsetStartCentralDirectoryWRTStartDiskNumber()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getOffsetStartCentralDirectoryWRTStartDiskNumber()J

    move-result-wide v0

    .line 667
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getOffsetOfStartOfCentralDirectory()J

    move-result-wide v0

    goto :goto_0
.end method

.method private isSplitZipFile(Ljava/io/OutputStream;)Z
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 327
    instance-of v0, p1, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    if-eqz v0, :cond_0

    .line 328
    check-cast p1, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    .end local p1    # "outputStream":Ljava/io/OutputStream;
    invoke-virtual {p1}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->isSplitZipFile()Z

    move-result v0

    .line 333
    :goto_0
    return v0

    .line 329
    .restart local p1    # "outputStream":Ljava/io/OutputStream;
    :cond_0
    instance-of v0, p1, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    if-eqz v0, :cond_1

    .line 330
    check-cast p1, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    .end local p1    # "outputStream":Ljava/io/OutputStream;
    invoke-virtual {p1}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->isSplitZipFile()Z

    move-result v0

    goto :goto_0

    .line 333
    .restart local p1    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZip64Entry(Lnet/lingala/zip4j/model/FileHeader;)Z
    .locals 4
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;

    .prologue
    const-wide v2, 0xffffffffL

    .line 654
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 655
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 656
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 657
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v0

    const v1, 0xffff

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 654
    :goto_0
    return v0

    .line 657
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processHeaderData(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "currentSplitFileCounter":I
    instance-of v1, p2, Lnet/lingala/zip4j/io/outputstream/OutputStreamWithSplitZipSupport;

    if-eqz v1, :cond_0

    .line 363
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v2

    move-object v1, p2

    check-cast v1, Lnet/lingala/zip4j/io/outputstream/OutputStreamWithSplitZipSupport;

    .line 364
    invoke-interface {v1}, Lnet/lingala/zip4j/io/outputstream/OutputStreamWithSplitZipSupport;->getFilePointer()J

    move-result-wide v4

    .line 363
    invoke-virtual {v2, v4, v5}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setOffsetOfStartOfCentralDirectory(J)V

    .line 365
    check-cast p2, Lnet/lingala/zip4j/io/outputstream/OutputStreamWithSplitZipSupport;

    .end local p2    # "outputStream":Ljava/io/OutputStream;
    invoke-interface {p2}, Lnet/lingala/zip4j/io/outputstream/OutputStreamWithSplitZipSupport;->getCurrentSplitFileCounter()I

    move-result v0

    .line 368
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 369
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v1

    if-nez v1, :cond_1

    .line 370
    new-instance v1, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    invoke-direct {v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;-><init>()V

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;)V

    .line 372
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v1

    if-nez v1, :cond_2

    .line 373
    new-instance v1, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    invoke-direct {v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;-><init>()V

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndOfCentralDirectoryLocator(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;)V

    .line 376
    :cond_2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v1

    .line 377
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getOffsetOfStartOfCentralDirectory()J

    move-result-wide v2

    .line 376
    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setOffsetStartCentralDirectoryWRTStartDiskNumber(J)V

    .line 378
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setNumberOfDiskStartOfZip64EndOfCentralDirectoryRecord(I)V

    .line 380
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setTotalNumberOfDiscs(I)V

    .line 382
    :cond_3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setNumberOfThisDisk(I)V

    .line 383
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setNumberOfThisDiskStartOfCentralDir(I)V

    .line 384
    return-void
.end method

.method private updateFileSizesInLocalFileHeader(Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 8
    .param p1, "outputStream"    # Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v4, 0xffffffffL

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 299
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 300
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {v1, v2, v6, v4, v5}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 301
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {p1, v1, v6, v7}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->write([BII)V

    .line 302
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {p1, v1, v6, v7}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->write([BII)V

    .line 311
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileNameLength()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x2

    .line 312
    .local v0, "zip64CompressedSizeOffset":I
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->skipBytes(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 313
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to skip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes to update LFH"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 315
    :cond_0
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 316
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 324
    .end local v0    # "zip64CompressedSizeOffset":I
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v4

    invoke-virtual {v1, v2, v6, v4, v5}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 319
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {p1, v1, v6, v7}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->write([BII)V

    .line 321
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v4

    invoke-virtual {v1, v2, v6, v4, v5}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 322
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {p1, v1, v6, v7}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->write([BII)V

    goto :goto_0
.end method

.method private writeCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;Ljava/nio/charset/Charset;)V
    .locals 7
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "byteArrayOutputStream"    # Ljava/io/ByteArrayOutputStream;
    .param p3, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 389
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 397
    :cond_0
    return-void

    .line 394
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/lingala/zip4j/model/FileHeader;

    .local v2, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 395
    invoke-direct/range {v0 .. v5}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeFileHeader(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;Ljava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method private writeEndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/ZipModel;IJLjava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;Ljava/nio/charset/Charset;)V
    .locals 15
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "sizeOfCentralDir"    # I
    .param p3, "offsetCentralDir"    # J
    .param p5, "byteArrayOutputStream"    # Ljava/io/ByteArrayOutputStream;
    .param p6, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .param p7, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 596
    const/16 v7, 0x8

    new-array v6, v7, [B

    .line 597
    .local v6, "longByte":[B
    sget-object v7, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v7}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v12

    long-to-int v7, v12

    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v7}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    .line 599
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result v7

    .line 598
    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v7}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 601
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDiskStartOfCentralDir()I

    move-result v7

    .line 600
    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v7}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 603
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    int-to-long v8, v7

    .line 604
    .local v8, "numEntries":J
    move-wide v10, v8

    .line 605
    .local v10, "numEntriesOnThisDisk":J
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 606
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v7

    .line 607
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v12

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result v12

    .line 606
    invoke-direct {p0, v7, v12}, Lnet/lingala/zip4j/headers/HeaderWriter;->countNumberOfFileHeaderEntriesOnDisk(Ljava/util/List;I)J

    move-result-wide v10

    .line 610
    :cond_0
    const-wide/32 v12, 0xffff

    cmp-long v7, v10, v12

    if-lez v7, :cond_1

    .line 611
    const-wide/32 v10, 0xffff

    .line 613
    :cond_1
    long-to-int v7, v10

    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v7}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 615
    const-wide/32 v12, 0xffff

    cmp-long v7, v8, v12

    if-lez v7, :cond_2

    .line 616
    const-wide/32 v8, 0xffff

    .line 618
    :cond_2
    long-to-int v7, v8

    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v7}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 620
    move-object/from16 v0, p6

    move-object/from16 v1, p5

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    .line 621
    const-wide v12, 0xffffffffL

    cmp-long v7, p3, v12

    if-lez v7, :cond_3

    .line 622
    const/4 v7, 0x0

    const-wide v12, 0xffffffffL

    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v7, v12, v13}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 623
    const/4 v7, 0x0

    const/4 v12, 0x4

    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v7, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 629
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getComment()Ljava/lang/String;

    move-result-object v4

    .line 630
    .local v4, "comment":Ljava/lang/String;
    invoke-static {v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 631
    move-object/from16 v0, p7

    invoke-static {v4, v0}, Lnet/lingala/zip4j/headers/HeaderUtil;->getBytesFromString(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 632
    .local v5, "commentBytes":[B
    array-length v7, v5

    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v7}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 633
    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 637
    .end local v5    # "commentBytes":[B
    :goto_1
    return-void

    .line 625
    .end local v4    # "comment":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    move-object/from16 v0, p6

    move-wide/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1, v2}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 626
    const/4 v7, 0x0

    const/4 v12, 0x4

    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v7, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 635
    .restart local v4    # "comment":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v7}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    goto :goto_1
.end method

.method private writeFileHeader(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;Ljava/nio/charset/Charset;)V
    .locals 18
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p3, "byteArrayOutputStream"    # Ljava/io/ByteArrayOutputStream;
    .param p4, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .param p5, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 401
    if-nez p2, :cond_0

    .line 402
    new-instance v14, Lnet/lingala/zip4j/exception/ZipException;

    const-string v15, "input parameters is null, cannot write local file header"

    invoke-direct {v14, v15}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 406
    :cond_0
    const/4 v14, 0x2

    :try_start_0
    new-array v7, v14, [B

    fill-array-data v7, :array_0

    .line 407
    .local v7, "emptyShortByte":[B
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/headers/HeaderWriter;->isZip64Entry(Lnet/lingala/zip4j/model/FileHeader;)Z

    move-result v13

    .line 409
    .local v13, "writeZip64ExtendedInfo":Z
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getSignature()Lnet/lingala/zip4j/headers/HeaderSignature;

    move-result-object v14

    invoke-virtual {v14}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v14

    long-to-int v14, v14

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getVersionMadeBy()I

    move-result v14

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 411
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getVersionNeededToExtract()I

    move-result v14

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 412
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getGeneralPurposeFlag()[B

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v14

    invoke-virtual {v14}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCode()I

    move-result v14

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 415
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v15, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getLastModifiedTime()J

    move-result-wide v16

    move-object/from16 v0, p4

    move-wide/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1, v2}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 416
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v15, 0x0

    const/16 v16, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 418
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v15, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getCrc()J

    move-result-wide v16

    move-object/from16 v0, p4

    move-wide/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1, v2}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 419
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v15, 0x0

    const/16 v16, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 421
    if-eqz v13, :cond_7

    .line 422
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v15, 0x0

    const-wide v16, 0xffffffffL

    move-object/from16 v0, p4

    move-wide/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1, v2}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 423
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v15, 0x0

    const/16 v16, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 424
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v15, 0x0

    const/16 v16, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 425
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lnet/lingala/zip4j/model/ZipModel;->setZip64Format(Z)V

    .line 433
    :goto_0
    const/4 v14, 0x0

    new-array v11, v14, [B

    .line 434
    .local v11, "fileNameBytes":[B
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 435
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p5

    invoke-static {v14, v0}, Lnet/lingala/zip4j/headers/HeaderUtil;->getBytesFromString(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v11

    .line 437
    :cond_1
    array-length v14, v11

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 441
    const/4 v14, 0x4

    new-array v12, v14, [B

    .line 442
    .local v12, "offsetLocalHeaderBytes":[B
    if-eqz v13, :cond_8

    .line 443
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v15, 0x0

    const-wide v16, 0xffffffffL

    move-object/from16 v0, p4

    move-wide/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1, v2}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 444
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v15, v12, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lnet/lingala/zip4j/headers/HeaderWriter;->calculateExtraDataRecordsSize(Lnet/lingala/zip4j/model/FileHeader;Z)I

    move-result v8

    .line 451
    .local v8, "extraFieldLength":I
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v8}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 453
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileComment()Ljava/lang/String;

    move-result-object v9

    .line 454
    .local v9, "fileComment":Ljava/lang/String;
    const/4 v14, 0x0

    new-array v10, v14, [B

    .line 455
    .local v10, "fileCommentBytes":[B
    invoke-static {v9}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 456
    move-object/from16 v0, p5

    invoke-static {v9, v0}, Lnet/lingala/zip4j/headers/HeaderUtil;->getBytesFromString(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v10

    .line 458
    :cond_2
    array-length v14, v10

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 460
    if-eqz v13, :cond_9

    .line 461
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/headers/HeaderWriter;->intBuff:[B

    const/4 v15, 0x0

    const v16, 0xffff

    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian([BII)V

    .line 462
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/headers/HeaderWriter;->intBuff:[B

    const/4 v15, 0x0

    const/16 v16, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 467
    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getExternalFileAttributes()[B

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 473
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 475
    array-length v14, v11

    if-lez v14, :cond_3

    .line 476
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 479
    :cond_3
    if-eqz v13, :cond_4

    .line 480
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lnet/lingala/zip4j/model/ZipModel;->setZip64Format(Z)V

    .line 483
    sget-object v14, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 484
    invoke-virtual {v14}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v14

    long-to-int v14, v14

    .line 483
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 487
    const/16 v14, 0x1c

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 488
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v14

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14, v15}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 489
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v14

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14, v15}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 490
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v14

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14, v15}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 491
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v14

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    .line 494
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 495
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v4

    .line 496
    .local v4, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    invoke-virtual {v4}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getSignature()Lnet/lingala/zip4j/headers/HeaderSignature;

    move-result-object v14

    invoke-virtual {v14}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v14

    long-to-int v14, v14

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 497
    invoke-virtual {v4}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getDataSize()I

    move-result v14

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 498
    invoke-virtual {v4}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesVersion()Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object v14

    invoke-virtual {v14}, Lnet/lingala/zip4j/model/enums/AesVersion;->getVersionNumber()I

    move-result v14

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 499
    invoke-virtual {v4}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getVendorID()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 501
    const/4 v14, 0x1

    new-array v5, v14, [B

    .line 502
    .local v5, "aesStrengthBytes":[B
    const/4 v14, 0x0

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesKeyStrength()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v15

    invoke-virtual {v15}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getRawCode()I

    move-result v15

    int-to-byte v15, v15

    aput-byte v15, v5, v14

    .line 503
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 505
    invoke-virtual {v4}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v14

    invoke-virtual {v14}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCode()I

    move-result v14

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 508
    .end local v4    # "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .end local v5    # "aesStrengthBytes":[B
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeRemainingExtraDataRecordsIfPresent(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/OutputStream;)V

    .line 510
    array-length v14, v10

    if-lez v14, :cond_6

    .line 511
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 516
    :cond_6
    return-void

    .line 427
    .end local v8    # "extraFieldLength":I
    .end local v9    # "fileComment":Ljava/lang/String;
    .end local v10    # "fileCommentBytes":[B
    .end local v11    # "fileNameBytes":[B
    .end local v12    # "offsetLocalHeaderBytes":[B
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v15, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v16

    move-object/from16 v0, p4

    move-wide/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1, v2}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 428
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v15, 0x0

    const/16 v16, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 429
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v15, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v16

    move-object/from16 v0, p4

    move-wide/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1, v2}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 430
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v15, 0x0

    const/16 v16, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 513
    .end local v7    # "emptyShortByte":[B
    .end local v13    # "writeZip64ExtendedInfo":Z
    :catch_0
    move-exception v6

    .line 514
    .local v6, "e":Ljava/lang/Exception;
    new-instance v14, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v14, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v14

    .line 446
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v7    # "emptyShortByte":[B
    .restart local v11    # "fileNameBytes":[B
    .restart local v12    # "offsetLocalHeaderBytes":[B
    .restart local v13    # "writeZip64ExtendedInfo":Z
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v15, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v16

    move-object/from16 v0, p4

    move-wide/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1, v2}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 447
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v15, v12, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    .line 464
    .restart local v8    # "extraFieldLength":I
    .restart local v9    # "fileComment":Ljava/lang/String;
    .restart local v10    # "fileCommentBytes":[B
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v14

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 406
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private writeRemainingExtraDataRecordsIfPresent(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 562
    :cond_0
    return-void

    .line 549
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/ExtraDataRecord;

    .line 550
    .local v0, "extraDataRecord":Lnet/lingala/zip4j/model/ExtraDataRecord;
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v2

    sget-object v4, Lnet/lingala/zip4j/headers/HeaderSignature;->AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v4}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 551
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v2

    sget-object v4, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v4}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 555
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v2, p2, v3}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 556
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v3

    invoke-virtual {v2, p2, v3}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 558
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v2

    if-eqz v2, :cond_2

    .line 559
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method private writeZip64EndOfCentralDirectoryLocator(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;)V
    .locals 2
    .param p1, "zip64EndOfCentralDirectoryLocator"    # Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;
    .param p2, "byteArrayOutputStream"    # Ljava/io/ByteArrayOutputStream;
    .param p3, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v0}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p3, p2, v0}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    .line 583
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->getNumberOfDiskStartOfZip64EndOfCentralDirectoryRecord()I

    move-result v0

    .line 582
    invoke-virtual {p3, p2, v0}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    .line 585
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->getOffsetZip64EndOfCentralDirectoryRecord()J

    move-result-wide v0

    .line 584
    invoke-virtual {p3, p2, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 587
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->getTotalNumberOfDiscs()I

    move-result v0

    .line 586
    invoke-virtual {p3, p2, v0}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    .line 589
    return-void
.end method

.method private writeZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;)V
    .locals 2
    .param p1, "zip64EndOfCentralDirectoryRecord"    # Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;
    .param p2, "byteArrayOutputStream"    # Ljava/io/ByteArrayOutputStream;
    .param p3, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 566
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getSignature()Lnet/lingala/zip4j/headers/HeaderSignature;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p3, p2, v0}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    .line 567
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getSizeOfZip64EndCentralDirectoryRecord()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 568
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getVersionMadeBy()I

    move-result v0

    invoke-virtual {p3, p2, v0}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 569
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getVersionNeededToExtract()I

    move-result v0

    invoke-virtual {p3, p2, v0}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 570
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result v0

    invoke-virtual {p3, p2, v0}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    .line 571
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getNumberOfThisDiskStartOfCentralDirectory()I

    move-result v0

    invoke-virtual {p3, p2, v0}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    .line 572
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectoryOnThisDisk()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 573
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectory()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 574
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getSizeOfCentralDirectory()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 575
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getOffsetStartCentralDirectoryWRTStartDiskNumber()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 576
    return-void
.end method

.method private writeZipHeaderBytes(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;[BLjava/nio/charset/Charset;)V
    .locals 2
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "buff"    # [B
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    if-nez p3, :cond_0

    .line 347
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid buff to write as zip headers"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    instance-of v0, p2, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 351
    check-cast v0, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    array-length v1, p3

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->checkBuffSizeAndStartNextSplitFile(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {p0, p1, p2, p4}, Lnet/lingala/zip4j/headers/HeaderWriter;->finalizeZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 358
    :goto_0
    return-void

    .line 357
    :cond_1
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method


# virtual methods
.method public finalizeZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 19
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 173
    :cond_0
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    const-string v6, "input parameters is null, cannot finalize zip file"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 176
    :cond_1
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v10, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v14, 0x0

    .line 177
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lnet/lingala/zip4j/headers/HeaderWriter;->processHeaderData(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V

    .line 178
    invoke-direct/range {p0 .. p1}, Lnet/lingala/zip4j/headers/HeaderWriter;->getOffsetOfCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)J

    move-result-wide v8

    .line 179
    .local v8, "offsetCentralDir":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v10, v5, v2}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;Ljava/nio/charset/Charset;)V

    .line 180
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    .line 182
    .local v7, "sizeOfCentralDir":I
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v5

    if-nez v5, :cond_2

    const-wide v16, 0xffffffffL

    cmp-long v5, v8, v16

    if-gez v5, :cond_2

    .line 183
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const v6, 0xffff

    if-lt v5, v6, :cond_5

    .line 185
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v5

    if-nez v5, :cond_3

    .line 186
    new-instance v5, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    invoke-direct {v5}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;)V

    .line 188
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v5

    if-nez v5, :cond_4

    .line 189
    new-instance v5, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    invoke-direct {v5}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndOfCentralDirectoryLocator(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;)V

    .line 192
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v5

    int-to-long v0, v7

    move-wide/from16 v16, v0

    add-long v16, v16, v8

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setOffsetZip64EndOfCentralDirectoryRecord(J)V

    .line 195
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/headers/HeaderWriter;->isSplitZipFile(Ljava/io/OutputStream;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 196
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/headers/HeaderWriter;->getCurrentSplitFileCounter(Ljava/io/OutputStream;)I

    move-result v4

    .line 197
    .local v4, "currentSplitFileCounter":I
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v5

    invoke-virtual {v5, v4}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setNumberOfDiskStartOfZip64EndOfCentralDirectoryRecord(I)V

    .line 199
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setTotalNumberOfDiscs(I)V

    .line 205
    .end local v4    # "currentSplitFileCounter":I
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v8, v9}, Lnet/lingala/zip4j/headers/HeaderWriter;->buildZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/ZipModel;IJ)Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v13

    .line 207
    .local v13, "zip64EndOfCentralDirectoryRecord":Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10, v5}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;)V

    .line 209
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10, v6}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeZip64EndOfCentralDirectoryLocator(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;)V

    .line 212
    .end local v13    # "zip64EndOfCentralDirectoryRecord":Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v12, p3

    invoke-direct/range {v5 .. v12}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeEndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/ZipModel;IJLjava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;Ljava/nio/charset/Charset;)V

    .line 213
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v5, v3}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeZipHeaderBytes(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;[BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 214
    if-eqz v10, :cond_6

    if-eqz v14, :cond_9

    :try_start_1
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    :cond_6
    :goto_1
    return-void

    .line 201
    :cond_7
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setNumberOfDiskStartOfZip64EndOfCentralDirectoryRecord(I)V

    .line 202
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setTotalNumberOfDiscs(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 176
    .end local v7    # "sizeOfCentralDir":I
    .end local v8    # "offsetCentralDir":J
    :catch_0
    move-exception v5

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    :catchall_0
    move-exception v6

    move-object/from16 v18, v6

    move-object v6, v5

    move-object/from16 v5, v18

    :goto_2
    if-eqz v10, :cond_8

    if-eqz v6, :cond_a

    :try_start_4
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_8
    :goto_3
    throw v5

    .restart local v7    # "sizeOfCentralDir":I
    .restart local v8    # "offsetCentralDir":J
    :catch_1
    move-exception v5

    invoke-virtual {v14, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_9
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_1

    .end local v7    # "sizeOfCentralDir":I
    .end local v8    # "offsetCentralDir":J
    :catch_2
    move-exception v11

    invoke-virtual {v6, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_a
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_3

    :catchall_1
    move-exception v5

    move-object v6, v14

    goto :goto_2
.end method

.method public finalizeZipFileWithoutValidations(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 17
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 220
    :cond_0
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    const-string v6, "input parameters is null, cannot finalize zip file without validations"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 223
    :cond_1
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v10, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v13, 0x0

    .line 224
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getOffsetOfStartOfCentralDirectory()J

    move-result-wide v8

    .line 225
    .local v8, "offsetCentralDir":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v10, v5, v2}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;Ljava/nio/charset/Charset;)V

    .line 226
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    .line 228
    .local v7, "sizeOfCentralDir":I
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v5

    if-nez v5, :cond_2

    const-wide v14, 0xffffffffL

    cmp-long v5, v8, v14

    if-gez v5, :cond_2

    .line 229
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const v6, 0xffff

    if-lt v5, v6, :cond_5

    .line 231
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v5

    if-nez v5, :cond_3

    .line 232
    new-instance v5, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    invoke-direct {v5}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;)V

    .line 234
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v5

    if-nez v5, :cond_4

    .line 235
    new-instance v5, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    invoke-direct {v5}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndOfCentralDirectoryLocator(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;)V

    .line 238
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v5

    int-to-long v14, v7

    add-long/2addr v14, v8

    invoke-virtual {v5, v14, v15}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setOffsetZip64EndOfCentralDirectoryRecord(J)V

    .line 241
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v8, v9}, Lnet/lingala/zip4j/headers/HeaderWriter;->buildZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/ZipModel;IJ)Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v4

    .line 243
    .local v4, "zip64EndOfCentralDirectoryRecord":Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10, v5}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;)V

    .line 245
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10, v6}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeZip64EndOfCentralDirectoryLocator(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;)V

    .line 248
    .end local v4    # "zip64EndOfCentralDirectoryRecord":Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v12, p3

    invoke-direct/range {v5 .. v12}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeEndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/ZipModel;IJLjava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;Ljava/nio/charset/Charset;)V

    .line 249
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v5, v3}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeZipHeaderBytes(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;[BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 250
    if-eqz v10, :cond_6

    if-eqz v13, :cond_7

    :try_start_1
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 251
    :cond_6
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v5

    invoke-virtual {v13, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_0

    .line 223
    .end local v7    # "sizeOfCentralDir":I
    .end local v8    # "offsetCentralDir":J
    :catch_1
    move-exception v5

    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    :catchall_0
    move-exception v6

    move-object/from16 v16, v6

    move-object v6, v5

    move-object/from16 v5, v16

    :goto_1
    if-eqz v10, :cond_8

    if-eqz v6, :cond_9

    :try_start_3
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_8
    :goto_2
    throw v5

    :catch_2
    move-exception v11

    invoke-virtual {v6, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_9
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception v5

    move-object v6, v13

    goto :goto_1
.end method

.method public updateLocalFileHeader(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;)V
    .locals 12
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p3, "outputStream"    # Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 257
    :cond_0
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "invalid input parameters, cannot update local file header"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 260
    :cond_1
    const/4 v0, 0x0

    .line 263
    .local v0, "closeFlag":Z
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v7

    invoke-virtual {p3}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->getCurrentSplitFileCounter()I

    move-result v8

    if-eq v7, v8, :cond_4

    .line 264
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    .line 265
    .local v6, "parentFile":Ljava/lang/String;
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnet/lingala/zip4j/util/FileUtils;->getZipFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, "fileNameWithoutExt":Ljava/lang/String;
    const-string v4, ""

    .line 267
    .local v4, "fileName":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 268
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "file.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 270
    :cond_2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v7

    const/16 v8, 0x9

    if-ge v7, v8, :cond_3

    .line 271
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".z0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 275
    :goto_0
    new-instance v1, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;-><init>(Ljava/io/File;)V

    .line 276
    .local v1, "currOutputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    const/4 v0, 0x1

    .line 281
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "fileNameWithoutExt":Ljava/lang/String;
    .end local v6    # "parentFile":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->getFilePointer()J

    move-result-wide v2

    .line 283
    .local v2, "currOffset":J
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v8

    const-wide/16 v10, 0xe

    add-long/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->seek(J)V

    .line 284
    iget-object v7, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v9, 0x0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getCrc()J

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 285
    iget-object v7, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v1, v7, v8, v9}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->write([BII)V

    .line 287
    invoke-direct {p0, v1, p1}, Lnet/lingala/zip4j/headers/HeaderWriter;->updateFileSizesInLocalFileHeader(Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;Lnet/lingala/zip4j/model/FileHeader;)V

    .line 289
    if-eqz v0, :cond_5

    .line 290
    invoke-virtual {v1}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V

    .line 294
    :goto_2
    return-void

    .line 273
    .end local v1    # "currOutputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    .end local v2    # "currOffset":J
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v5    # "fileNameWithoutExt":Ljava/lang/String;
    .restart local v6    # "parentFile":Ljava/lang/String;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".z"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 278
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "fileNameWithoutExt":Ljava/lang/String;
    .end local v6    # "parentFile":Ljava/lang/String;
    :cond_4
    move-object v1, p3

    .restart local v1    # "currOutputStream":Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;
    goto :goto_1

    .line 292
    .restart local v2    # "currOffset":J
    :cond_5
    invoke-virtual {p3, v2, v3}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->seek(J)V

    goto :goto_2
.end method

.method public writeExtendedLocalHeader(Lnet/lingala/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 147
    :cond_0
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "input parameters is null, cannot write extended local header"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 151
    :try_start_0
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v3}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v1, v0, v3}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    .line 153
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v3, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v4, 0x0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCrc()J

    move-result-wide v6

    invoke-virtual {v1, v3, v4, v6, v7}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 154
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 156
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->isWriteCompressedSizeInZip64ExtraRecord()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 157
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 158
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 167
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 168
    if-eqz v0, :cond_2

    if-eqz v2, :cond_5

    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    :cond_2
    :goto_1
    return-void

    .line 160
    :cond_3
    :try_start_2
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v3, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v4, 0x0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v6

    invoke-virtual {v1, v3, v4, v6, v7}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 161
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 163
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v3, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v4, 0x0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v6

    invoke-virtual {v1, v3, v4, v6, v7}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 164
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    :catchall_0
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_2
    if-eqz v0, :cond_4

    if-eqz v2, :cond_6

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_3
    throw v1

    :catch_1
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_1

    :catch_2
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_2
.end method

.method public writeLocalFileHeader(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 15
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .param p3, "outputStream"    # Ljava/io/OutputStream;
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v4, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x0

    .line 60
    :try_start_0
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getSignature()Lnet/lingala/zip4j/headers/HeaderSignature;

    move-result-object v10

    invoke-virtual {v10}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual {v8, v4, v10}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    .line 61
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getVersionNeededToExtract()I

    move-result v10

    invoke-virtual {v8, v4, v10}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getGeneralPurposeFlag()[B

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 63
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v10

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCode()I

    move-result v10

    invoke-virtual {v8, v4, v10}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 65
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v10, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v11, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getLastModifiedTime()J

    move-result-wide v12

    invoke-virtual {v8, v10, v11, v12, v13}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 66
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {v4, v8, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 68
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v10, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v11, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCrc()J

    move-result-wide v12

    invoke-virtual {v8, v10, v11, v12, v13}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 69
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {v4, v8, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v10

    const-wide v12, 0xffffffffL

    cmp-long v8, v10, v12

    if-gez v8, :cond_0

    .line 72
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v10

    const-wide v12, 0xffffffffL

    cmp-long v8, v10, v12

    if-ltz v8, :cond_8

    :cond_0
    const/4 v7, 0x1

    .line 74
    .local v7, "writeZip64Header":Z
    :goto_0
    if-eqz v7, :cond_9

    .line 75
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v10, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v11, 0x0

    const-wide v12, 0xffffffffL

    invoke-virtual {v8, v10, v11, v12, v13}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 79
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {v4, v8, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 80
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {v4, v8, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 82
    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lnet/lingala/zip4j/model/ZipModel;->setZip64Format(Z)V

    .line 83
    const/4 v8, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lnet/lingala/zip4j/model/LocalFileHeader;->setWriteCompressedSizeInZip64ExtraRecord(Z)V

    .line 94
    :goto_1
    const/4 v8, 0x0

    new-array v6, v8, [B

    .line 95
    .local v6, "fileNameBytes":[B
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 96
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-static {v8, v0}, Lnet/lingala/zip4j/headers/HeaderUtil;->getBytesFromString(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .line 98
    :cond_1
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    array-length v10, v6

    invoke-virtual {v8, v4, v10}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 100
    const/4 v5, 0x0

    .line 101
    .local v5, "extraFieldLength":I
    if-eqz v7, :cond_2

    .line 102
    add-int/lit8 v5, v5, 0x14

    .line 104
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 105
    add-int/lit8 v5, v5, 0xb

    .line 107
    :cond_3
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v8, v4, v5}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 109
    array-length v8, v6

    if-lez v8, :cond_4

    .line 110
    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 117
    :cond_4
    if-eqz v7, :cond_5

    .line 118
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    sget-object v10, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 119
    invoke-virtual {v10}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v10

    long-to-int v10, v10

    .line 118
    invoke-virtual {v8, v4, v10}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 120
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    const/16 v10, 0x10

    invoke-virtual {v8, v4, v10}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 121
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v10

    invoke-virtual {v8, v4, v10, v11}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 122
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v10

    invoke-virtual {v8, v4, v10, v11}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 125
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 126
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v2

    .line 127
    .local v2, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getSignature()Lnet/lingala/zip4j/headers/HeaderSignature;

    move-result-object v10

    invoke-virtual {v10}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual {v8, v4, v10}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 128
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getDataSize()I

    move-result v10

    invoke-virtual {v8, v4, v10}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 129
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesVersion()Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object v10

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/enums/AesVersion;->getVersionNumber()I

    move-result v10

    invoke-virtual {v8, v4, v10}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 130
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getVendorID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 132
    const/4 v8, 0x1

    new-array v3, v8, [B

    .line 133
    .local v3, "aesStrengthBytes":[B
    const/4 v8, 0x0

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesKeyStrength()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v10

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getRawCode()I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v3, v8

    .line 134
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 136
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v10

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCode()I

    move-result v10

    invoke-virtual {v8, v4, v10}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 139
    .end local v2    # "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .end local v3    # "aesStrengthBytes":[B
    :cond_6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 140
    if-eqz v4, :cond_7

    if-eqz v9, :cond_b

    :try_start_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    :cond_7
    :goto_2
    return-void

    .line 72
    .end local v5    # "extraFieldLength":I
    .end local v6    # "fileNameBytes":[B
    .end local v7    # "writeZip64Header":Z
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 85
    .restart local v7    # "writeZip64Header":Z
    :cond_9
    :try_start_2
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v10, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v11, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v12

    invoke-virtual {v8, v10, v11, v12, v13}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 86
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {v4, v8, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 88
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v10, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v11, 0x0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v12

    invoke-virtual {v8, v10, v11, v12, v13}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 89
    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {v4, v8, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 91
    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lnet/lingala/zip4j/model/LocalFileHeader;->setWriteCompressedSizeInZip64ExtraRecord(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_1

    .line 59
    .end local v7    # "writeZip64Header":Z
    :catch_0
    move-exception v8

    :try_start_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    :catchall_0
    move-exception v9

    move-object v14, v9

    move-object v9, v8

    move-object v8, v14

    :goto_3
    if-eqz v4, :cond_a

    if-eqz v9, :cond_c

    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_a
    :goto_4
    throw v8

    .restart local v5    # "extraFieldLength":I
    .restart local v6    # "fileNameBytes":[B
    .restart local v7    # "writeZip64Header":Z
    :catch_1
    move-exception v8

    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_b
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_2

    .end local v5    # "extraFieldLength":I
    .end local v6    # "fileNameBytes":[B
    .end local v7    # "writeZip64Header":Z
    :catch_2
    move-exception v10

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_c
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_4

    :catchall_1
    move-exception v8

    goto :goto_3
.end method
