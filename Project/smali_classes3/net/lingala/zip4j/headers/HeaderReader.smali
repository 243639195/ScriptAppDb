.class public Lnet/lingala/zip4j/headers/HeaderReader;
.super Ljava/lang/Object;
.source "HeaderReader.java"


# instance fields
.field private final intBuff:[B

.field private final rawIO:Lnet/lingala/zip4j/util/RawIO;

.field private zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {v0}, Lnet/lingala/zip4j/util/RawIO;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->intBuff:[B

    return-void
.end method

.method private getNumberOfEntriesInCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)J
    .locals 2
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;

    .prologue
    .line 689
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectory()J

    move-result-wide v0

    .line 693
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectory()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method private locateOffsetOfEndOfCentralDirectory(Ljava/io/RandomAccessFile;)J
    .locals 8
    .param p1, "randomAccessFile"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x16

    .line 697
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 698
    .local v0, "zipFileSize":J
    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    .line 699
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "Zip file size less than size of zip headers. Probably not a zip file."

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 702
    :cond_0
    sub-long v2, v0, v6

    invoke-direct {p0, p1, v2, v3}, Lnet/lingala/zip4j/headers/HeaderReader;->seekInCurrentPart(Ljava/io/RandomAccessFile;J)V

    .line 703
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v4}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 704
    sub-long v2, v0, v6

    .line 707
    :goto_0
    return-wide v2

    :cond_1
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/headers/HeaderReader;->locateOffsetOfEndOfCentralDirectoryByReverseSeek(Ljava/io/RandomAccessFile;)J

    move-result-wide v2

    goto :goto_0
.end method

.method private locateOffsetOfEndOfCentralDirectoryByReverseSeek(Ljava/io/RandomAccessFile;)J
    .locals 12
    .param p1, "randomAccessFile"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/32 v2, 0x10000

    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    .line 711
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x16

    sub-long v0, v4, v6

    .line 713
    .local v0, "currentFilePointer":J
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 715
    .local v2, "numberOfBytesToRead":J
    :cond_0
    :goto_0
    cmp-long v4, v2, v8

    if-lez v4, :cond_2

    cmp-long v4, v0, v8

    if-lez v4, :cond_2

    .line 716
    sub-long/2addr v0, v10

    invoke-direct {p0, p1, v0, v1}, Lnet/lingala/zip4j/headers/HeaderReader;->seekInCurrentPart(Ljava/io/RandomAccessFile;J)V

    .line 717
    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v4, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v6}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 718
    return-wide v0

    .line 720
    :cond_1
    sub-long/2addr v2, v10

    goto :goto_0

    .line 723
    :cond_2
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    const-string v5, "Zip headers not found. Probably not a zip file"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private parseExtraDataRecords([BI)Ljava/util/List;
    .locals 8
    .param p1, "extraFieldBuf"    # [B
    .param p2, "extraFieldLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, "counter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v3, "extraDataRecords":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/ExtraDataRecord;>;"
    :goto_0
    if-ge v0, p2, :cond_1

    .line 312
    new-instance v2, Lnet/lingala/zip4j/model/ExtraDataRecord;

    invoke-direct {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;-><init>()V

    .line 313
    .local v2, "extraDataRecord":Lnet/lingala/zip4j/model/ExtraDataRecord;
    iget-object v6, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v6, p1, v0}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian([BI)I

    move-result v4

    .line 314
    .local v4, "header":I
    int-to-long v6, v4

    invoke-virtual {v2, v6, v7}, Lnet/lingala/zip4j/model/ExtraDataRecord;->setHeader(J)V

    .line 315
    add-int/lit8 v0, v0, 0x2

    .line 317
    iget-object v6, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v6, p1, v0}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian([BI)I

    move-result v5

    .line 318
    .local v5, "sizeOfRec":I
    invoke-virtual {v2, v5}, Lnet/lingala/zip4j/model/ExtraDataRecord;->setSizeOfData(I)V

    .line 319
    add-int/lit8 v0, v0, 0x2

    .line 321
    if-lez v5, :cond_0

    .line 322
    new-array v1, v5, [B

    .line 323
    .local v1, "data":[B
    const/4 v6, 0x0

    invoke-static {p1, v0, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/model/ExtraDataRecord;->setData([B)V

    .line 326
    .end local v1    # "data":[B
    :cond_0
    add-int/2addr v0, v5

    .line 327
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    .end local v2    # "extraDataRecord":Lnet/lingala/zip4j/model/ExtraDataRecord;
    .end local v4    # "header":I
    .end local v5    # "sizeOfRec":I
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .end local v3    # "extraDataRecords":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/ExtraDataRecord;>;"
    :goto_1
    return-object v3

    .restart local v3    # "extraDataRecords":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/ExtraDataRecord;>;"
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private readAesExtraDataRecord(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;)Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .locals 12
    .param p2, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;",
            "Lnet/lingala/zip4j/util/RawIO;",
            ")",
            "Lnet/lingala/zip4j/model/AESExtraDataRecord;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .local p1, "extraDataRecords":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/ExtraDataRecord;>;"
    const/4 v1, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 652
    if-nez p1, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-object v1

    .line 656
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/lingala/zip4j/model/ExtraDataRecord;

    .line 657
    .local v2, "extraDataRecord":Lnet/lingala/zip4j/model/ExtraDataRecord;
    if-eqz v2, :cond_2

    .line 661
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v6

    sget-object v5, Lnet/lingala/zip4j/headers/HeaderSignature;->AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v5}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 663
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v4

    if-nez v4, :cond_3

    .line 664
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    const-string v5, "corrupt AES extra data records"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 667
    :cond_3
    new-instance v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;

    invoke-direct {v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;-><init>()V

    .line 669
    .local v1, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    sget-object v4, Lnet/lingala/zip4j/headers/HeaderSignature;->AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v1, v4}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 670
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v4

    invoke-virtual {v1, v4}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setDataSize(I)V

    .line 672
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v0

    .line 673
    .local v0, "aesData":[B
    invoke-virtual {p2, v0, v11}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian([BI)I

    move-result v4

    invoke-static {v4}, Lnet/lingala/zip4j/model/enums/AesVersion;->getFromVersionNumber(I)Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setAesVersion(Lnet/lingala/zip4j/model/enums/AesVersion;)V

    .line 674
    new-array v3, v10, [B

    .line 675
    .local v3, "vendorIDBytes":[B
    invoke-static {v0, v10, v3, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 676
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v4}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setVendorID(Ljava/lang/String;)V

    .line 677
    const/4 v4, 0x4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getAesKeyStrengthFromRawCode(I)Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setAesKeyStrength(Lnet/lingala/zip4j/model/enums/AesKeyStrength;)V

    .line 678
    const/4 v4, 0x5

    .line 679
    invoke-virtual {p2, v0, v4}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian([BI)I

    move-result v4

    invoke-static {v4}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCompressionMethodFromCode(I)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v4

    .line 678
    invoke-virtual {v1, v4}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    goto :goto_0
.end method

.method private readAesExtraDataRecord(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/util/RawIO;)V
    .locals 2
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 626
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lnet/lingala/zip4j/headers/HeaderReader;->readAesExtraDataRecord(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;)Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    .line 631
    .local v0, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/FileHeader;->setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V

    .line 633
    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/FileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    goto :goto_0
.end method

.method private readAesExtraDataRecord(Lnet/lingala/zip4j/model/LocalFileHeader;Lnet/lingala/zip4j/util/RawIO;)V
    .locals 2
    .param p1, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .param p2, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 638
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lnet/lingala/zip4j/headers/HeaderReader;->readAesExtraDataRecord(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;)Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    .line 643
    .local v0, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V

    .line 645
    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    goto :goto_0
.end method

.method private readCentralDirectory(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;Ljava/nio/charset/Charset;)Lnet/lingala/zip4j/model/CentralDirectory;
    .locals 26
    .param p1, "zip4jRaf"    # Ljava/io/RandomAccessFile;
    .param p2, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v6, Lnet/lingala/zip4j/model/CentralDirectory;

    invoke-direct {v6}, Lnet/lingala/zip4j/model/CentralDirectory;-><init>()V

    .line 135
    .local v6, "centralDirectory":Lnet/lingala/zip4j/model/CentralDirectory;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v11, "fileHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/FileHeader;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lnet/lingala/zip4j/headers/HeaderUtil;->getOffsetStartOfCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)J

    move-result-wide v18

    .line 138
    .local v18, "offSetStartCentralDir":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/headers/HeaderReader;->getNumberOfEntriesInCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)J

    move-result-wide v4

    .line 140
    .local v4, "centralDirEntryCount":J
    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 142
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 143
    .local v20, "shortBuff":[B
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 145
    .local v17, "intBuff":[B
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v22, v22, v4

    if-gez v22, :cond_6

    .line 146
    new-instance v10, Lnet/lingala/zip4j/model/FileHeader;

    invoke-direct {v10}, Lnet/lingala/zip4j/model/FileHeader;-><init>()V

    .line 147
    .local v10, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sget-object v24, Lnet/lingala/zip4j/headers/HeaderSignature;->CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual/range {v24 .. v24}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-eqz v22, :cond_0

    .line 148
    new-instance v22, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Expected central directory entry not found (#"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    add-int/lit8 v24, v16, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 150
    :cond_0
    sget-object v22, Lnet/lingala/zip4j/headers/HeaderSignature;->CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/model/FileHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 151
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/model/FileHeader;->setVersionMadeBy(I)V

    .line 152
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/model/FileHeader;->setVersionNeededToExtract(I)V

    .line 154
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v15, v0, [B

    .line 155
    .local v15, "generalPurposeFlags":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 156
    const/16 v22, 0x0

    aget-byte v22, v15, v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/model/FileHeader;->setEncrypted(Z)V

    .line 157
    const/16 v22, 0x0

    aget-byte v22, v15, v22

    const/16 v23, 0x3

    invoke-static/range {v22 .. v23}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/model/FileHeader;->setDataDescriptorExists(Z)V

    .line 158
    const/16 v22, 0x1

    aget-byte v22, v15, v22

    const/16 v23, 0x3

    invoke-static/range {v22 .. v23}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/model/FileHeader;->setFileNameUTF8Encoded(Z)V

    .line 159
    invoke-virtual {v15}, [B->clone()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/model/FileHeader;->setGeneralPurposeFlag([B)V

    .line 161
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCompressionMethodFromCode(I)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/model/FileHeader;->setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 163
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v10, v0, v1}, Lnet/lingala/zip4j/model/FileHeader;->setLastModifiedTime(J)V

    .line 165
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 166
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v10, v0, v1}, Lnet/lingala/zip4j/model/FileHeader;->setCrc(J)V

    .line 168
    const/16 v22, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v10, v0, v1}, Lnet/lingala/zip4j/model/FileHeader;->setCompressedSize(J)V

    .line 169
    const/16 v22, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v10, v0, v1}, Lnet/lingala/zip4j/model/FileHeader;->setUncompressedSize(J)V

    .line 171
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v14

    .line 172
    .local v14, "fileNameLength":I
    invoke-virtual {v10, v14}, Lnet/lingala/zip4j/model/FileHeader;->setFileNameLength(I)V

    .line 174
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/model/FileHeader;->setExtraFieldLength(I)V

    .line 176
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v9

    .line 177
    .local v9, "fileCommentLength":I
    invoke-virtual {v10, v9}, Lnet/lingala/zip4j/model/FileHeader;->setFileCommentLength(I)V

    .line 179
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    .line 181
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 182
    invoke-virtual/range {v20 .. v20}, [B->clone()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/model/FileHeader;->setInternalFileAttributes([B)V

    .line 184
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 185
    invoke-virtual/range {v17 .. v17}, [B->clone()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/model/FileHeader;->setExternalFileAttributes([B)V

    .line 187
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 188
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v10, v0, v1}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    .line 190
    if-lez v14, :cond_4

    .line 191
    new-array v13, v14, [B

    .line 192
    .local v13, "fileNameBuff":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 193
    invoke-virtual {v10}, Lnet/lingala/zip4j/model/FileHeader;->isFileNameUTF8Encoded()Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p3

    invoke-static {v13, v0, v1}, Lnet/lingala/zip4j/headers/HeaderUtil;->decodeStringWithCharset([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v12

    .line 195
    .local v12, "fileName":Ljava/lang/String;
    const-string v22, ":\\"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 196
    const-string v22, ":\\"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    add-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 199
    :cond_1
    invoke-virtual {v10, v12}, Lnet/lingala/zip4j/model/FileHeader;->setFileName(Ljava/lang/String;)V

    .line 204
    .end local v12    # "fileName":Ljava/lang/String;
    .end local v13    # "fileNameBuff":[B
    :goto_1
    invoke-virtual {v10}, Lnet/lingala/zip4j/model/FileHeader;->getExternalFileAttributes()[B

    move-result-object v22

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/headers/HeaderReader;->isDirectory([BLjava/lang/String;)Z

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/model/FileHeader;->setDirectory(Z)V

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lnet/lingala/zip4j/headers/HeaderReader;->readExtraDataRecords(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/model/FileHeader;)V

    .line 206
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v1}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64ExtendedInfo(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/util/RawIO;)V

    .line 207
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v1}, Lnet/lingala/zip4j/headers/HeaderReader;->readAesExtraDataRecord(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/util/RawIO;)V

    .line 209
    if-lez v9, :cond_2

    .line 210
    new-array v8, v9, [B

    .line 211
    .local v8, "fileCommentBuff":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 212
    invoke-virtual {v10}, Lnet/lingala/zip4j/model/FileHeader;->isFileNameUTF8Encoded()Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p3

    invoke-static {v8, v0, v1}, Lnet/lingala/zip4j/headers/HeaderUtil;->decodeStringWithCharset([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/model/FileHeader;->setFileComment(Ljava/lang/String;)V

    .line 215
    .end local v8    # "fileCommentBuff":[B
    :cond_2
    invoke-virtual {v10}, Lnet/lingala/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 216
    invoke-virtual {v10}, Lnet/lingala/zip4j/model/FileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v22

    if-eqz v22, :cond_5

    .line 217
    sget-object v22, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/model/FileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    .line 223
    :cond_3
    :goto_2
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 201
    :cond_4
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/model/FileHeader;->setFileName(Ljava/lang/String;)V

    goto :goto_1

    .line 219
    :cond_5
    sget-object v22, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/model/FileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    goto :goto_2

    .line 226
    .end local v9    # "fileCommentLength":I
    .end local v10    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v14    # "fileNameLength":I
    .end local v15    # "generalPurposeFlags":[B
    :cond_6
    invoke-virtual {v6, v11}, Lnet/lingala/zip4j/model/CentralDirectory;->setFileHeaders(Ljava/util/List;)V

    .line 228
    new-instance v7, Lnet/lingala/zip4j/model/DigitalSignature;

    invoke-direct {v7}, Lnet/lingala/zip4j/model/DigitalSignature;-><init>()V

    .line 229
    .local v7, "digitalSignature":Lnet/lingala/zip4j/model/DigitalSignature;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sget-object v24, Lnet/lingala/zip4j/headers/HeaderSignature;->DIGITAL_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual/range {v24 .. v24}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-nez v22, :cond_7

    .line 230
    sget-object v22, Lnet/lingala/zip4j/headers/HeaderSignature;->DIGITAL_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lnet/lingala/zip4j/model/DigitalSignature;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 231
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Lnet/lingala/zip4j/model/DigitalSignature;->setSizeOfData(I)V

    .line 233
    invoke-virtual {v7}, Lnet/lingala/zip4j/model/DigitalSignature;->getSizeOfData()I

    move-result v22

    if-lez v22, :cond_7

    .line 234
    invoke-virtual {v7}, Lnet/lingala/zip4j/model/DigitalSignature;->getSizeOfData()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 235
    .local v21, "signatureDataBuff":[B
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 236
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lnet/lingala/zip4j/model/DigitalSignature;->setSignatureData(Ljava/lang/String;)V

    .line 240
    .end local v21    # "signatureDataBuff":[B
    :cond_7
    return-object v6
.end method

.method private readEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;Lnet/lingala/zip4j/model/Zip4jConfig;)Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;
    .locals 8
    .param p1, "zip4jRaf"    # Ljava/io/RandomAccessFile;
    .param p2, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .param p3, "zip4jConfig"    # Lnet/lingala/zip4j/model/Zip4jConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 110
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/headers/HeaderReader;->locateOffsetOfEndOfCentralDirectory(Ljava/io/RandomAccessFile;)J

    move-result-wide v2

    .line 111
    .local v2, "offsetEndOfCentralDirectory":J
    const-wide/16 v6, 0x4

    add-long/2addr v6, v2

    invoke-direct {p0, p1, v6, v7}, Lnet/lingala/zip4j/headers/HeaderReader;->seekInCurrentPart(Ljava/io/RandomAccessFile;J)V

    .line 113
    new-instance v1, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    invoke-direct {v1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;-><init>()V

    .line 114
    .local v1, "endOfCentralDirectoryRecord":Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;
    sget-object v5, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v1, v5}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 115
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v5

    invoke-virtual {v1, v5}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setNumberOfThisDisk(I)V

    .line 116
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v5

    invoke-virtual {v1, v5}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setNumberOfThisDiskStartOfCentralDir(I)V

    .line 118
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v5

    .line 117
    invoke-virtual {v1, v5}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectoryOnThisDisk(I)V

    .line 119
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v5

    invoke-virtual {v1, v5}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectory(I)V

    .line 120
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v5

    invoke-virtual {v1, v5}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setSizeOfCentralDirectory(I)V

    .line 121
    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setOffsetOfEndOfCentralDirectory(J)V

    .line 123
    iget-object v5, p0, Lnet/lingala/zip4j/headers/HeaderReader;->intBuff:[B

    invoke-virtual {p1, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 124
    iget-object v5, p0, Lnet/lingala/zip4j/headers/HeaderReader;->intBuff:[B

    invoke-virtual {p2, v5, v4}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setOffsetOfStartOfCentralDirectory(J)V

    .line 126
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v0

    .line 127
    .local v0, "commentLength":I
    invoke-virtual {p3}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {p0, p1, v0, v5}, Lnet/lingala/zip4j/headers/HeaderReader;->readZipComment(Ljava/io/RandomAccessFile;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setComment(Ljava/lang/String;)V

    .line 129
    iget-object v5, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v5, v4}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    .line 130
    return-object v1
.end method

.method private readExtraDataRecords(Ljava/io/InputStream;I)Ljava/util/List;
    .locals 4
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "extraFieldLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    const/4 v2, 0x4

    if-ge p2, v2, :cond_1

    .line 290
    if-lez p2, :cond_0

    .line 291
    int-to-long v2, p2

    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 294
    :cond_0
    const/4 v2, 0x0

    .line 304
    :goto_0
    return-object v2

    .line 297
    :cond_1
    new-array v1, p2, [B

    .line 298
    .local v1, "extraFieldBuf":[B
    invoke-static {p1, v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    .line 301
    :try_start_0
    invoke-direct {p0, v1, p2}, Lnet/lingala/zip4j/headers/HeaderReader;->parseExtraDataRecords([BI)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method private readExtraDataRecords(Ljava/io/RandomAccessFile;I)Ljava/util/List;
    .locals 3
    .param p1, "zip4jRaf"    # Ljava/io/RandomAccessFile;
    .param p2, "extraFieldLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    const/4 v2, 0x4

    if-ge p2, v2, :cond_1

    .line 268
    if-lez p2, :cond_0

    .line 269
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 272
    :cond_0
    const/4 v2, 0x0

    .line 282
    :goto_0
    return-object v2

    .line 275
    :cond_1
    new-array v1, p2, [B

    .line 276
    .local v1, "extraFieldBuf":[B
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 279
    :try_start_0
    invoke-direct {p0, v1, p2}, Lnet/lingala/zip4j/headers/HeaderReader;->parseExtraDataRecords([BI)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method private readExtraDataRecords(Ljava/io/InputStream;Lnet/lingala/zip4j/model/LocalFileHeader;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraFieldLength()I

    move-result v0

    .line 256
    .local v0, "extraFieldLength":I
    if-gtz v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/headers/HeaderReader;->readExtraDataRecords(Ljava/io/InputStream;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setExtraDataRecords(Ljava/util/List;)V

    goto :goto_0
.end method

.method private readExtraDataRecords(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 2
    .param p1, "zip4jRaf"    # Ljava/io/RandomAccessFile;
    .param p2, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->getExtraFieldLength()I

    move-result v0

    .line 246
    .local v0, "extraFieldLength":I
    if-gtz v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/headers/HeaderReader;->readExtraDataRecords(Ljava/io/RandomAccessFile;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Lnet/lingala/zip4j/model/FileHeader;->setExtraDataRecords(Ljava/util/List;)V

    goto :goto_0
.end method

.method private readZip64EndCentralDirRec(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;)Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;
    .locals 12
    .param p1, "zip4jRaf"    # Ljava/io/RandomAccessFile;
    .param p2, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    iget-object v7, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v7

    if-nez v7, :cond_0

    .line 361
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "invalid zip64 end of central directory locator"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 364
    :cond_0
    iget-object v7, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v7

    .line 365
    invoke-virtual {v7}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->getOffsetZip64EndOfCentralDirectoryRecord()J

    move-result-wide v4

    .line 367
    .local v4, "offSetStartOfZip64CentralDir":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-gez v7, :cond_1

    .line 368
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "invalid offset for start of end of central directory record"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 371
    :cond_1
    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 373
    new-instance v6, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    invoke-direct {v6}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;-><init>()V

    .line 375
    .local v6, "zip64EndOfCentralDirectoryRecord":Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v1

    .line 376
    .local v1, "signature":I
    int-to-long v8, v1

    sget-object v7, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v7}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    .line 377
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "invalid signature for zip64 end of central directory record"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 379
    :cond_2
    sget-object v7, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v6, v7}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 380
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setSizeOfZip64EndCentralDirectoryRecord(J)V

    .line 381
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v7

    invoke-virtual {v6, v7}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setVersionMadeBy(I)V

    .line 382
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v7

    invoke-virtual {v6, v7}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setVersionNeededToExtract(I)V

    .line 383
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v7

    invoke-virtual {v6, v7}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setNumberOfThisDisk(I)V

    .line 384
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v7

    invoke-virtual {v6, v7}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setNumberOfThisDiskStartOfCentralDirectory(I)V

    .line 386
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;)J

    move-result-wide v8

    .line 385
    invoke-virtual {v6, v8, v9}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectoryOnThisDisk(J)V

    .line 387
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectory(J)V

    .line 388
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setSizeOfCentralDirectory(J)V

    .line 390
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;)J

    move-result-wide v8

    .line 389
    invoke-virtual {v6, v8, v9}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setOffsetStartCentralDirectoryWRTStartDiskNumber(J)V

    .line 394
    invoke-virtual {v6}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getSizeOfZip64EndCentralDirectoryRecord()J

    move-result-wide v8

    const-wide/16 v10, 0x2c

    sub-long v2, v8, v10

    .line 395
    .local v2, "extDataSecSize":J
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_3

    .line 396
    long-to-int v7, v2

    new-array v0, v7, [B

    .line 397
    .local v0, "extDataSecRecBuf":[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 398
    invoke-virtual {v6, v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setExtensibleDataSector([B)V

    .line 401
    .end local v0    # "extDataSecRecBuf":[B
    :cond_3
    return-object v6
.end method

.method private readZip64EndOfCentralDirectoryLocator(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;J)Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;
    .locals 7
    .param p1, "zip4jRaf"    # Ljava/io/RandomAccessFile;
    .param p2, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .param p3, "offsetEndOfCentralDirectoryRecord"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    new-instance v1, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    invoke-direct {v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;-><init>()V

    .line 337
    .local v1, "zip64EndOfCentralDirectoryLocator":Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;
    invoke-direct {p0, p1, p3, p4}, Lnet/lingala/zip4j/headers/HeaderReader;->setFilePointerToReadZip64EndCentralDirLoc(Ljava/io/RandomAccessFile;J)V

    .line 339
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v0

    .line 340
    .local v0, "signature":I
    int-to-long v2, v0

    sget-object v4, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v4}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 341
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/ZipModel;->setZip64Format(Z)V

    .line 342
    sget-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 349
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v2

    .line 348
    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setNumberOfDiskStartOfZip64EndOfCentralDirectoryRecord(I)V

    .line 351
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;)J

    move-result-wide v2

    .line 350
    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setOffsetZip64EndOfCentralDirectoryRecord(J)V

    .line 352
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setTotalNumberOfDiscs(I)V

    .line 354
    .end local v1    # "zip64EndOfCentralDirectoryLocator":Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;
    :goto_0
    return-object v1

    .line 344
    .restart local v1    # "zip64EndOfCentralDirectoryLocator":Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;
    :cond_0
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/ZipModel;->setZip64Format(Z)V

    .line 345
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readZip64ExtendedInfo(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    .locals 13
    .param p2, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .param p3, "uncompressedSize"    # J
    .param p5, "compressedSize"    # J
    .param p7, "offsetLocalHeader"    # J
    .param p9, "diskNumberStart"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;",
            "Lnet/lingala/zip4j/util/RawIO;",
            "JJJI)",
            "Lnet/lingala/zip4j/model/Zip64ExtendedInfo;"
        }
    .end annotation

    .prologue
    .line 467
    .local p1, "extraDataRecords":Ljava/util/List;, "Ljava/util/List<Lnet/lingala/zip4j/model/ExtraDataRecord;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/lingala/zip4j/model/ExtraDataRecord;

    .line 468
    .local v4, "extraDataRecord":Lnet/lingala/zip4j/model/ExtraDataRecord;
    if-eqz v4, :cond_0

    .line 472
    sget-object v7, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v7}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v8

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 474
    new-instance v5, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    invoke-direct {v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;-><init>()V

    .line 475
    .local v5, "zip64ExtendedInfo":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v3

    .line 477
    .local v3, "extraData":[B
    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v6

    if-gtz v6, :cond_2

    .line 478
    const/4 v5, 0x0

    .line 504
    .end local v3    # "extraData":[B
    .end local v4    # "extraDataRecord":Lnet/lingala/zip4j/model/ExtraDataRecord;
    .end local v5    # "zip64ExtendedInfo":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    :cond_1
    :goto_0
    return-object v5

    .line 481
    .restart local v3    # "extraData":[B
    .restart local v4    # "extraDataRecord":Lnet/lingala/zip4j/model/ExtraDataRecord;
    .restart local v5    # "zip64ExtendedInfo":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    :cond_2
    const/4 v2, 0x0

    .line 482
    .local v2, "counter":I
    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v6

    if-ge v2, v6, :cond_3

    const-wide v6, 0xffffffffL

    cmp-long v6, p3, v6

    if-nez v6, :cond_3

    .line 483
    invoke-virtual {p2, v3, v2}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setUncompressedSize(J)V

    .line 484
    add-int/lit8 v2, v2, 0x8

    .line 487
    :cond_3
    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v6

    if-ge v2, v6, :cond_4

    const-wide v6, 0xffffffffL

    cmp-long v6, p5, v6

    if-nez v6, :cond_4

    .line 488
    invoke-virtual {p2, v3, v2}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setCompressedSize(J)V

    .line 489
    add-int/lit8 v2, v2, 0x8

    .line 492
    :cond_4
    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v6

    if-ge v2, v6, :cond_5

    const-wide v6, 0xffffffffL

    cmp-long v6, p7, v6

    if-nez v6, :cond_5

    .line 493
    invoke-virtual {p2, v3, v2}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setOffsetLocalHeader(J)V

    .line 494
    add-int/lit8 v2, v2, 0x8

    .line 497
    :cond_5
    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v6

    if-ge v2, v6, :cond_1

    const v6, 0xffff

    move/from16 v0, p9

    if-ne v0, v6, :cond_1

    .line 498
    invoke-virtual {p2, v3, v2}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian([BI)I

    move-result v6

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setDiskNumberStart(I)V

    goto :goto_0

    .line 504
    .end local v2    # "counter":I
    .end local v3    # "extraData":[B
    .end local v4    # "extraDataRecord":Lnet/lingala/zip4j/model/ExtraDataRecord;
    .end local v5    # "zip64ExtendedInfo":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    :cond_6
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private readZip64ExtendedInfo(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/util/RawIO;)V
    .locals 11
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p2, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;

    .prologue
    .line 405
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v2

    .line 410
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v6

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v8

    .line 411
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v10

    move-object v1, p0

    move-object v3, p2

    .line 409
    invoke-direct/range {v1 .. v10}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64ExtendedInfo(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v0

    .line 413
    .local v0, "zip64ExtendedInfo":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/FileHeader;->setZip64ExtendedInfo(Lnet/lingala/zip4j/model/Zip64ExtendedInfo;)V

    .line 419
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUncompressedSize()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 420
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUncompressedSize()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lnet/lingala/zip4j/model/FileHeader;->setUncompressedSize(J)V

    .line 423
    :cond_2
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 424
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lnet/lingala/zip4j/model/FileHeader;->setCompressedSize(J)V

    .line 427
    :cond_3
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 428
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    .line 431
    :cond_4
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getDiskNumberStart()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 432
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getDiskNumberStart()I

    move-result v1

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    goto :goto_0
.end method

.method private readZip64ExtendedInfo(Lnet/lingala/zip4j/model/LocalFileHeader;Lnet/lingala/zip4j/util/RawIO;)V
    .locals 11
    .param p1, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .param p2, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 437
    if-nez p1, :cond_0

    .line 438
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "file header is null in reading Zip64 Extended Info"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 441
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 461
    :cond_1
    :goto_0
    return-void

    .line 445
    :cond_2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v2

    .line 446
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    .line 445
    invoke-direct/range {v1 .. v10}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64ExtendedInfo(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v0

    .line 448
    .local v0, "zip64ExtendedInfo":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->setZip64ExtendedInfo(Lnet/lingala/zip4j/model/Zip64ExtendedInfo;)V

    .line 454
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUncompressedSize()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 455
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUncompressedSize()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    .line 458
    :cond_3
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 459
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    goto :goto_0
.end method

.method private readZipComment(Ljava/io/RandomAccessFile;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .param p2, "commentLength"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    const/4 v2, 0x0

    .line 735
    if-gtz p2, :cond_0

    .line 745
    .end local p3    # "charset":Ljava/nio/charset/Charset;
    :goto_0
    return-object v2

    .line 740
    .restart local p3    # "charset":Ljava/nio/charset/Charset;
    :cond_0
    :try_start_0
    new-array v0, p2, [B

    .line 741
    .local v0, "commentBuf":[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 742
    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .end local p3    # "charset":Ljava/nio/charset/Charset;
    :goto_1
    invoke-static {v0, v3, p3}, Lnet/lingala/zip4j/headers/HeaderUtil;->decodeStringWithCharset([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .restart local p3    # "charset":Ljava/nio/charset/Charset;
    :cond_1
    sget-object p3, Lnet/lingala/zip4j/util/InternalZipConstants;->ZIP4J_DEFAULT_CHARSET:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 743
    .end local v0    # "commentBuf":[B
    .end local p3    # "charset":Ljava/nio/charset/Charset;
    :catch_0
    move-exception v1

    .line 745
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private seekInCurrentPart(Ljava/io/RandomAccessFile;J)V
    .locals 2
    .param p1, "randomAccessFile"    # Ljava/io/RandomAccessFile;
    .param p2, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    instance-of v0, p1, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;

    if-eqz v0, :cond_0

    .line 728
    check-cast p1, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;

    .end local p1    # "randomAccessFile":Ljava/io/RandomAccessFile;
    invoke-virtual {p1, p2, p3}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->seekInCurrentPart(J)V

    .line 732
    :goto_0
    return-void

    .line 730
    .restart local p1    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0
.end method

.method private setFilePointerToReadZip64EndCentralDirLoc(Ljava/io/RandomAccessFile;J)V
    .locals 6
    .param p1, "zip4jRaf"    # Ljava/io/RandomAccessFile;
    .param p2, "offsetEndOfCentralDirectoryRecord"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x4

    .line 516
    sub-long v0, p2, v4

    const-wide/16 v2, 0x8

    sub-long/2addr v0, v2

    sub-long/2addr v0, v4

    sub-long/2addr v0, v4

    invoke-direct {p0, p1, v0, v1}, Lnet/lingala/zip4j/headers/HeaderReader;->seekInCurrentPart(Ljava/io/RandomAccessFile;J)V

    .line 517
    return-void
.end method


# virtual methods
.method public isDirectory([BLjava/lang/String;)Z
    .locals 5
    .param p1, "externalFileAttributes"    # [B
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 753
    aget-byte v2, p1, v1

    if-eqz v2, :cond_1

    aget-byte v2, p1, v1

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 759
    :cond_0
    :goto_0
    return v0

    .line 755
    :cond_1
    aget-byte v2, p1, v4

    if-eqz v2, :cond_2

    aget-byte v2, p1, v4

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v2

    if-nez v2, :cond_0

    .line 759
    :cond_2
    if-eqz p2, :cond_3

    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\\"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public readAllHeaders(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/model/Zip4jConfig;)Lnet/lingala/zip4j/model/ZipModel;
    .locals 6
    .param p1, "zip4jRaf"    # Ljava/io/RandomAccessFile;
    .param p2, "zip4jConfig"    # Lnet/lingala/zip4j/model/Zip4jConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x16

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 69
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "Zip file size less than minimum expected zip file size. Probably not a zip file or a corrupted zip file"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_0
    new-instance v1, Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v1}, Lnet/lingala/zip4j/model/ZipModel;-><init>()V

    iput-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 76
    :try_start_0
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {p0, p1, v2, p2}, Lnet/lingala/zip4j/headers/HeaderReader;->readEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;Lnet/lingala/zip4j/model/Zip4jConfig;)Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/ZipModel;->setEndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectory()I

    move-result v1

    if-nez v1, :cond_1

    .line 85
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 104
    :goto_0
    return-object v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Lnet/lingala/zip4j/exception/ZipException;
    throw v0

    .line 79
    .end local v0    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :catch_1
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 81
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "Zip headers not found. Probably not a zip file or a corrupted zip file"

    invoke-direct {v1, v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 89
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v3, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 90
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getOffsetOfEndOfCentralDirectory()J

    move-result-wide v4

    .line 89
    invoke-direct {p0, p1, v2, v4, v5}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64EndOfCentralDirectoryLocator(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;J)Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndOfCentralDirectoryLocator(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;)V

    .line 92
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {p0, p1, v2}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64EndCentralDirRec(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;)Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;)V

    .line 94
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 95
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result v1

    if-lez v1, :cond_3

    .line 96
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    .line 102
    :cond_2
    :goto_1
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lnet/lingala/zip4j/headers/HeaderReader;->readCentralDirectory(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;Ljava/nio/charset/Charset;)Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/ZipModel;->setCentralDirectory(Lnet/lingala/zip4j/model/CentralDirectory;)V

    .line 104
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    goto :goto_0

    .line 98
    :cond_3
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    goto :goto_1
.end method

.method public readDataDescriptor(Ljava/io/InputStream;Z)Lnet/lingala/zip4j/model/DataDescriptor;
    .locals 7
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "isZip64Format"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 597
    new-instance v0, Lnet/lingala/zip4j/model/DataDescriptor;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/DataDescriptor;-><init>()V

    .line 599
    .local v0, "dataDescriptor":Lnet/lingala/zip4j/model/DataDescriptor;
    const/4 v4, 0x4

    new-array v1, v4, [B

    .line 600
    .local v1, "intBuff":[B
    invoke-static {p1, v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    .line 601
    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v4, v1, v6}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v2

    .line 606
    .local v2, "sigOrCrc":J
    sget-object v4, Lnet/lingala/zip4j/headers/HeaderSignature;->EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v4}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 607
    sget-object v4, Lnet/lingala/zip4j/headers/HeaderSignature;->EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/DataDescriptor;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 608
    invoke-static {p1, v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    .line 609
    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v4, v1, v6}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/DataDescriptor;->setCrc(J)V

    .line 614
    :goto_0
    if-eqz p2, :cond_1

    .line 615
    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v4, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/InputStream;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/DataDescriptor;->setCompressedSize(J)V

    .line 616
    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v4, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/InputStream;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/DataDescriptor;->setUncompressedSize(J)V

    .line 622
    :goto_1
    return-object v0

    .line 611
    :cond_0
    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/DataDescriptor;->setCrc(J)V

    goto :goto_0

    .line 618
    :cond_1
    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v4, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/DataDescriptor;->setCompressedSize(J)V

    .line 619
    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v4, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/DataDescriptor;->setUncompressedSize(J)V

    goto :goto_1
.end method

.method public readLocalFileHeader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lnet/lingala/zip4j/model/LocalFileHeader;
    .locals 12
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    new-instance v5, Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-direct {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;-><init>()V

    .line 521
    .local v5, "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    const/4 v7, 0x4

    new-array v4, v7, [B

    .line 524
    .local v4, "intBuff":[B
    iget-object v7, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v7, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/InputStream;)I

    move-result v6

    .line 525
    .local v6, "sig":I
    int-to-long v8, v6

    sget-object v7, Lnet/lingala/zip4j/headers/HeaderSignature;->TEMPORARY_SPANNING_MARKER:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v7}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 526
    iget-object v7, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v7, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/InputStream;)I

    move-result v6

    .line 528
    :cond_0
    int-to-long v8, v6

    sget-object v7, Lnet/lingala/zip4j/headers/HeaderSignature;->LOCAL_FILE_HEADER:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v7}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    .line 529
    const/4 v5, 0x0

    .line 592
    .end local v5    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    :cond_1
    :goto_0
    return-object v5

    .line 531
    .restart local v5    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    :cond_2
    sget-object v7, Lnet/lingala/zip4j/headers/HeaderSignature;->LOCAL_FILE_HEADER:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v5, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 532
    iget-object v7, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v7, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v7

    invoke-virtual {v5, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->setVersionNeededToExtract(I)V

    .line 534
    const/4 v7, 0x2

    new-array v3, v7, [B

    .line 535
    .local v3, "generalPurposeFlags":[B
    invoke-static {p1, v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    .line 536
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    const-string v8, "Could not read enough bytes for generalPurposeFlags"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 538
    :cond_3
    const/4 v7, 0x0

    aget-byte v7, v3, v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v7

    invoke-virtual {v5, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncrypted(Z)V

    .line 539
    const/4 v7, 0x0

    aget-byte v7, v3, v7

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v7

    invoke-virtual {v5, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->setDataDescriptorExists(Z)V

    .line 540
    const/4 v7, 0x1

    aget-byte v7, v3, v7

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v7

    invoke-virtual {v5, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileNameUTF8Encoded(Z)V

    .line 541
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-virtual {v5, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->setGeneralPurposeFlag([B)V

    .line 543
    iget-object v7, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    .line 544
    invoke-virtual {v7, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v7

    .line 543
    invoke-static {v7}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCompressionMethodFromCode(I)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v7

    invoke-virtual {v5, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 545
    iget-object v7, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v7, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/InputStream;)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v5, v8, v9}, Lnet/lingala/zip4j/model/LocalFileHeader;->setLastModifiedTime(J)V

    .line 547
    invoke-static {p1, v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    .line 548
    iget-object v7, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrc(J)V

    .line 550
    iget-object v7, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    const/4 v8, 0x4

    invoke-virtual {v7, p1, v8}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/InputStream;I)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    .line 551
    iget-object v7, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    const/4 v8, 0x4

    invoke-virtual {v7, p1, v8}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/InputStream;I)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lnet/lingala/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    .line 553
    iget-object v7, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v7, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v2

    .line 554
    .local v2, "fileNameLength":I
    invoke-virtual {v5, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileNameLength(I)V

    .line 556
    iget-object v7, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v7, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v7

    invoke-virtual {v5, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->setExtraFieldLength(I)V

    .line 558
    if-lez v2, :cond_7

    .line 559
    new-array v1, v2, [B

    .line 560
    .local v1, "fileNameBuf":[B
    invoke-static {p1, v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    .line 562
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->isFileNameUTF8Encoded()Z

    move-result v7

    invoke-static {v1, v7, p2}, Lnet/lingala/zip4j/headers/HeaderUtil;->decodeStringWithCharset([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "fileName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "file.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 565
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "file.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 568
    :cond_4
    invoke-virtual {v5, v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileName(Ljava/lang/String;)V

    .line 569
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "\\"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v5, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->setDirectory(Z)V

    .line 574
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "fileNameBuf":[B
    :goto_2
    invoke-direct {p0, p1, v5}, Lnet/lingala/zip4j/headers/HeaderReader;->readExtraDataRecords(Ljava/io/InputStream;Lnet/lingala/zip4j/model/LocalFileHeader;)V

    .line 575
    iget-object v7, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {p0, v5, v7}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64ExtendedInfo(Lnet/lingala/zip4j/model/LocalFileHeader;Lnet/lingala/zip4j/util/RawIO;)V

    .line 576
    iget-object v7, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {p0, v5, v7}, Lnet/lingala/zip4j/headers/HeaderReader;->readAesExtraDataRecord(Lnet/lingala/zip4j/model/LocalFileHeader;Lnet/lingala/zip4j/util/RawIO;)V

    .line 578
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 580
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v7

    sget-object v8, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-eq v7, v8, :cond_1

    .line 583
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->getGeneralPurposeFlag()[B

    move-result-object v7

    const/4 v8, 0x0

    aget-byte v7, v7, v8

    const/4 v8, 0x6

    invoke-static {v7, v8}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 584
    sget-object v7, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD_VARIANT_STRONG:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v5, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    goto/16 :goto_0

    .line 569
    .restart local v0    # "fileName":Ljava/lang/String;
    .restart local v1    # "fileNameBuf":[B
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 571
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "fileNameBuf":[B
    :cond_7
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileName(Ljava/lang/String;)V

    goto :goto_2

    .line 586
    :cond_8
    sget-object v7, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v5, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    goto/16 :goto_0
.end method
