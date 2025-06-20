.class public Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
.super Ljava/io/OutputStream;
.source "ZipOutputStream.java"


# instance fields
.field private compressedOutputStream:Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;

.field private countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

.field private crc32:Ljava/util/zip/CRC32;

.field private entryClosed:Z

.field private fileHeader:Lnet/lingala/zip4j/model/FileHeader;

.field private fileHeaderFactory:Lnet/lingala/zip4j/headers/FileHeaderFactory;

.field private headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

.field private localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

.field private password:[C

.field private rawIO:Lnet/lingala/zip4j/util/RawIO;

.field private streamClosed:Z

.field private uncompressedSizeForThisEntry:J

.field private zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

.field private zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0, v0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;-><init>(Ljava/io/OutputStream;[CLjava/nio/charset/Charset;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;-><init>(Ljava/io/OutputStream;[CLjava/nio/charset/Charset;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[C)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;-><init>(Ljava/io/OutputStream;[CLjava/nio/charset/Charset;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[CLjava/nio/charset/Charset;)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lnet/lingala/zip4j/model/Zip4jConfig;

    const/16 v1, 0x1000

    invoke-direct {v0, p3, v1}, Lnet/lingala/zip4j/model/Zip4jConfig;-><init>(Ljava/nio/charset/Charset;I)V

    new-instance v1, Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v1}, Lnet/lingala/zip4j/model/ZipModel;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;-><init>(Ljava/io/OutputStream;[CLnet/lingala/zip4j/model/Zip4jConfig;Lnet/lingala/zip4j/model/ZipModel;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[CLnet/lingala/zip4j/model/Zip4jConfig;Lnet/lingala/zip4j/model/ZipModel;)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .param p3, "zip4jConfig"    # Lnet/lingala/zip4j/model/Zip4jConfig;
    .param p4, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 34
    new-instance v0, Lnet/lingala/zip4j/headers/FileHeaderFactory;

    invoke-direct {v0}, Lnet/lingala/zip4j/headers/FileHeaderFactory;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeaderFactory:Lnet/lingala/zip4j/headers/FileHeaderFactory;

    .line 35
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderWriter;

    invoke-direct {v0}, Lnet/lingala/zip4j/headers/HeaderWriter;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    .line 36
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->crc32:Ljava/util/zip/CRC32;

    .line 37
    new-instance v0, Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {v0}, Lnet/lingala/zip4j/util/RawIO;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->uncompressedSizeForThisEntry:J

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->entryClosed:Z

    .line 61
    invoke-virtual {p3}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v0

    const/16 v1, 0x200

    if-ge v0, v1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size cannot be less than 512 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    .line 66
    iput-object p2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->password:[C

    .line 67
    iput-object p3, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    .line 68
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-direct {p0, p4, v0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->initializeZipModel(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;)Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->streamClosed:Z

    .line 70
    invoke-direct {p0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->writeSplitZipHeaderIfApplicable()V

    .line 71
    return-void
.end method

.method private ensureStreamOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->streamClosed:Z

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    return-void
.end method

.method private initializeAndWriteFileHeader(Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 6
    .param p1, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeaderFactory:Lnet/lingala/zip4j/headers/FileHeaderFactory;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-virtual {v1}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->isSplitZipFile()Z

    move-result v2

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    .line 163
    invoke-virtual {v1}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->getCurrentSplitFileCounter()I

    move-result v3

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    iget-object v5, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    move-object v1, p1

    .line 162
    invoke-virtual/range {v0 .. v5}, Lnet/lingala/zip4j/headers/FileHeaderFactory;->generateFileHeader(Lnet/lingala/zip4j/model/ZipParameters;ZILjava/nio/charset/Charset;Lnet/lingala/zip4j/util/RawIO;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    .line 164
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-virtual {v1}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->getOffsetForNextEntry()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    .line 166
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeaderFactory:Lnet/lingala/zip4j/headers/FileHeaderFactory;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/headers/FileHeaderFactory;->generateLocalFileHeader(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 167
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v3, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    iget-object v4, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeLocalFileHeader(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 168
    return-void
.end method

.method private initializeCipherOutputStream(Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;
    .locals 3
    .param p1, "zipEntryOutputStream"    # Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;
    .param p2, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/NoCipherOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lnet/lingala/zip4j/io/outputstream/NoCipherOutputStream;-><init>(Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)V

    .line 203
    :goto_0
    return-object v0

    .line 196
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->password:[C

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->password:[C

    array-length v0, v0

    if-nez v0, :cond_2

    .line 197
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "password not set"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_2
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v0, v1, :cond_3

    .line 201
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->password:[C

    invoke-direct {v0, p1, p2, v1}, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;-><init>(Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)V

    goto :goto_0

    .line 202
    :cond_3
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v0, v1, :cond_4

    .line 203
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/ZipStandardCipherOutputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->password:[C

    invoke-direct {v0, p1, p2, v1}, Lnet/lingala/zip4j/io/outputstream/ZipStandardCipherOutputStream;-><init>(Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)V

    goto :goto_0

    .line 204
    :cond_4
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD_VARIANT_STRONG:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v0, v1, :cond_5

    .line 205
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD_VARIANT_STRONG:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " encryption method is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_5
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Invalid encryption method"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initializeCompressedOutputStream(Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;
    .locals 3
    .param p1, "cipherOutputStream"    # Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;
    .param p2, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;

    .prologue
    .line 213
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-ne v0, v1, :cond_0

    .line 214
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()Lnet/lingala/zip4j/model/enums/CompressionLevel;

    move-result-object v1

    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;-><init>(Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;Lnet/lingala/zip4j/model/enums/CompressionLevel;I)V

    .line 217
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/StoreOutputStream;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/io/outputstream/StoreOutputStream;-><init>(Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;)V

    goto :goto_0
.end method

.method private initializeCompressedOutputStream(Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;
    .locals 3
    .param p1, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    new-instance v1, Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;

    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 186
    .local v1, "zipEntryOutputStream":Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;
    invoke-direct {p0, v1, p1}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->initializeCipherOutputStream(Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;

    move-result-object v0

    .line 187
    .local v0, "cipherOutputStream":Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;
    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->initializeCompressedOutputStream(Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;

    move-result-object v2

    return-object v2
.end method

.method private initializeZipModel(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;)Lnet/lingala/zip4j/model/ZipModel;
    .locals 2
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "countingOutputStream"    # Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    new-instance p1, Lnet/lingala/zip4j/model/ZipModel;

    .end local p1    # "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    invoke-direct {p1}, Lnet/lingala/zip4j/model/ZipModel;-><init>()V

    .line 153
    .restart local p1    # "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    :cond_0
    invoke-virtual {p2}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->isSplitZipFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    .line 155
    invoke-virtual {p2}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->getSplitLength()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setSplitLength(J)V

    .line 158
    :cond_1
    return-object p1
.end method

.method private isEntryDirectory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "entryName"    # Ljava/lang/String;

    .prologue
    .line 240
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->uncompressedSizeForThisEntry:J

    .line 172
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 173
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->compressedOutputStream:Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;->close()V

    .line 174
    return-void
.end method

.method private verifyZipParameters(Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 4
    .param p1, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;

    .prologue
    .line 221
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-ne v0, v1, :cond_0

    .line 222
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEntrySize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 223
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->isEntryDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isWriteExtendedLocalFileHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uncompressed size should be set for zip entries of compression type store"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    return-void
.end method

.method private writeCrc(Lnet/lingala/zip4j/model/FileHeader;)Z
    .locals 4
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;

    .prologue
    const/4 v1, 0x1

    .line 230
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v2

    sget-object v3, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 232
    .local v0, "isAesEncrypted":Z
    :goto_0
    if-nez v0, :cond_1

    .line 236
    :goto_1
    return v1

    .line 230
    .end local v0    # "isAesEncrypted":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 236
    .restart local v0    # "isAesEncrypted":Z
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesVersion()Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object v1

    sget-object v2, Lnet/lingala/zip4j/model/enums/AesVersion;->ONE:Lnet/lingala/zip4j/model/enums/AesVersion;

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/enums/AesVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1
.end method

.method private writeSplitZipHeaderIfApplicable()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->isSplitZipFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    sget-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->SPLIT_ZIP:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v2}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->entryClosed:Z

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->closeEntry()Lnet/lingala/zip4j/model/FileHeader;

    .line 131
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-virtual {v1}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->getNumberOfBytesWritten()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setOffsetOfStartOfCentralDirectory(J)V

    .line 132
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    iget-object v3, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lnet/lingala/zip4j/headers/HeaderWriter;->finalizeZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 133
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->close()V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->streamClosed:Z

    .line 135
    return-void
.end method

.method public closeEntry()Lnet/lingala/zip4j/model/FileHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->compressedOutputStream:Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;

    invoke-virtual {v2}, Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;->closeEntry()V

    .line 102
    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->compressedOutputStream:Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;

    invoke-virtual {v2}, Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;->getCompressedSize()J

    move-result-wide v0

    .line 103
    .local v0, "compressedSize":J
    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v2, v0, v1}, Lnet/lingala/zip4j/model/FileHeader;->setCompressedSize(J)V

    .line 104
    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v2, v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    .line 106
    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    iget-wide v4, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->uncompressedSizeForThisEntry:J

    invoke-virtual {v2, v4, v5}, Lnet/lingala/zip4j/model/FileHeader;->setUncompressedSize(J)V

    .line 107
    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-wide v4, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->uncompressedSizeForThisEntry:J

    invoke-virtual {v2, v4, v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    .line 109
    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-direct {p0, v2}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->writeCrc(Lnet/lingala/zip4j/model/FileHeader;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    iget-object v3, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lnet/lingala/zip4j/model/FileHeader;->setCrc(J)V

    .line 111
    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v3, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrc(J)V

    .line 114
    :cond_0
    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getLocalFileHeaders()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->isDataDescriptorExists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    iget-object v3, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v4, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-virtual {v2, v3, v4}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeExtendedLocalHeader(Lnet/lingala/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;)V

    .line 120
    :cond_1
    invoke-direct {p0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->reset()V

    .line 121
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->entryClosed:Z

    .line 122
    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    return-object v2
.end method

.method public putNextEntry(Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 1
    .param p1, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->verifyZipParameters(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 75
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->initializeAndWriteFileHeader(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 80
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->initializeCompressedOutputStream(Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->compressedOutputStream:Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->entryClosed:Z

    .line 82
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1
    .param p1, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->ensureStreamOpen()V

    .line 139
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setComment(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->write([B)V

    .line 86
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->write([BII)V

    .line 90
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->ensureStreamOpen()V

    .line 94
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 95
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->compressedOutputStream:Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;->write([BII)V

    .line 96
    iget-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->uncompressedSizeForThisEntry:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->uncompressedSizeForThisEntry:J

    .line 97
    return-void
.end method
