.class public Lnet/lingala/zip4j/headers/FileHeaderFactory;
.super Ljava/lang/Object;
.source "FileHeaderFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private determineFileNameLength(Ljava/lang/String;Ljava/nio/charset/Charset;)I
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 175
    invoke-static {p1, p2}, Lnet/lingala/zip4j/headers/HeaderUtil;->getBytesFromString(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method private determineGeneralPurposeBitFlag(ZLnet/lingala/zip4j/model/ZipParameters;Ljava/nio/charset/Charset;)[B
    .locals 4
    .param p1, "isEncrypted"    # Z
    .param p2, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    const/4 v3, 0x1

    .line 105
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 106
    .local v0, "generalPurposeBitFlag":[B
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/headers/FileHeaderFactory;->generateFirstGeneralPurposeByte(ZLnet/lingala/zip4j/model/ZipParameters;)B

    move-result v2

    aput-byte v2, v0, v1

    .line 107
    if-eqz p3, :cond_0

    sget-object v1, Lnet/lingala/zip4j/util/InternalZipConstants;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, p3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    aget-byte v1, v0, v3

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lnet/lingala/zip4j/util/BitUtils;->setBit(BI)B

    move-result v1

    aput-byte v1, v0, v3

    .line 111
    :cond_1
    return-object v0
.end method

.method private generateAESExtraDataRecord(Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .locals 3
    .param p1, "parameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lnet/lingala/zip4j/model/AESExtraDataRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;-><init>()V

    .line 156
    .local v0, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getAesVersion()Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getAesVersion()Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setAesVersion(Lnet/lingala/zip4j/model/enums/AesVersion;)V

    .line 160
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getAesKeyStrength()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v1

    sget-object v2, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_128:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    if-ne v1, v2, :cond_1

    .line 161
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_128:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setAesKeyStrength(Lnet/lingala/zip4j/model/enums/AesKeyStrength;)V

    .line 170
    :goto_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 171
    return-object v0

    .line 162
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getAesKeyStrength()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v1

    sget-object v2, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_192:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    if-ne v1, v2, :cond_2

    .line 163
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_192:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setAesKeyStrength(Lnet/lingala/zip4j/model/enums/AesKeyStrength;)V

    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getAesKeyStrength()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v1

    sget-object v2, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    if-ne v1, v2, :cond_3

    .line 165
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setAesKeyStrength(Lnet/lingala/zip4j/model/enums/AesKeyStrength;)V

    goto :goto_0

    .line 167
    :cond_3
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "invalid AES key strength"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private generateFirstGeneralPurposeByte(ZLnet/lingala/zip4j/model/ZipParameters;)B
    .locals 5
    .param p1, "isEncrypted"    # Z
    .param p2, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 116
    const/4 v0, 0x0

    .line 118
    .local v0, "firstByte":B
    if-eqz p1, :cond_0

    .line 119
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/lingala/zip4j/util/BitUtils;->setBit(BI)B

    move-result v0

    .line 122
    :cond_0
    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionLevel;->NORMAL:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()Lnet/lingala/zip4j/model/enums/CompressionLevel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/enums/CompressionLevel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    invoke-static {v0, v3}, Lnet/lingala/zip4j/util/BitUtils;->unsetBit(BI)B

    move-result v0

    .line 125
    invoke-static {v0, v4}, Lnet/lingala/zip4j/util/BitUtils;->unsetBit(BI)B

    move-result v0

    .line 139
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->isWriteExtendedLocalFileHeader()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lnet/lingala/zip4j/util/BitUtils;->setBit(BI)B

    move-result v0

    .line 143
    :cond_2
    return v0

    .line 126
    :cond_3
    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionLevel;->MAXIMUM:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()Lnet/lingala/zip4j/model/enums/CompressionLevel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/enums/CompressionLevel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    invoke-static {v0, v3}, Lnet/lingala/zip4j/util/BitUtils;->setBit(BI)B

    move-result v0

    .line 128
    invoke-static {v0, v4}, Lnet/lingala/zip4j/util/BitUtils;->unsetBit(BI)B

    move-result v0

    goto :goto_0

    .line 129
    :cond_4
    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionLevel;->FAST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()Lnet/lingala/zip4j/model/enums/CompressionLevel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/enums/CompressionLevel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 130
    invoke-static {v0, v3}, Lnet/lingala/zip4j/util/BitUtils;->unsetBit(BI)B

    move-result v0

    .line 131
    invoke-static {v0, v4}, Lnet/lingala/zip4j/util/BitUtils;->setBit(BI)B

    move-result v0

    goto :goto_0

    .line 132
    :cond_5
    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionLevel;->FASTEST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()Lnet/lingala/zip4j/model/enums/CompressionLevel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/enums/CompressionLevel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionLevel;->ULTRA:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 133
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()Lnet/lingala/zip4j/model/enums/CompressionLevel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/enums/CompressionLevel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    :cond_6
    invoke-static {v0, v3}, Lnet/lingala/zip4j/util/BitUtils;->setBit(BI)B

    move-result v0

    .line 135
    invoke-static {v0, v4}, Lnet/lingala/zip4j/util/BitUtils;->setBit(BI)B

    move-result v0

    goto :goto_0
.end method

.method private validateAndGetFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fileNameInZip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "fileNameInZip is null or empty"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    return-object p1
.end method


# virtual methods
.method public generateFileHeader(Lnet/lingala/zip4j/model/ZipParameters;ZILjava/nio/charset/Charset;Lnet/lingala/zip4j/util/RawIO;)Lnet/lingala/zip4j/model/FileHeader;
    .locals 10
    .param p1, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .param p2, "isSplitZip"    # Z
    .param p3, "currentDiskNumberStart"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .param p5, "rawIO"    # Lnet/lingala/zip4j/util/RawIO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 31
    new-instance v0, Lnet/lingala/zip4j/model/FileHeader;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/FileHeader;-><init>()V

    .line 32
    .local v0, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/FileHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 33
    invoke-static {p1, p5}, Lnet/lingala/zip4j/util/ZipVersionUtils;->determineVersionMadeBy(Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/util/RawIO;)I

    move-result v3

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/FileHeader;->setVersionMadeBy(I)V

    .line 34
    invoke-static {p1}, Lnet/lingala/zip4j/util/ZipVersionUtils;->determineVersionNeededToExtract(Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/headers/VersionNeededToExtract;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/headers/VersionNeededToExtract;->getCode()I

    move-result v3

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/FileHeader;->setVersionNeededToExtract(I)V

    .line 36
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v3

    sget-object v4, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v3, v4, :cond_1

    .line 37
    sget-object v3, Lnet/lingala/zip4j/model/enums/CompressionMethod;->AES_INTERNAL_ONLY:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/FileHeader;->setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 38
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/headers/FileHeaderFactory;->generateAESExtraDataRecord(Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/FileHeader;->setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V

    .line 39
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getExtraFieldLength()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/FileHeader;->setExtraFieldLength(I)V

    .line 44
    :goto_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 45
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v3

    sget-object v4, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v3, v4, :cond_2

    .line 46
    :cond_0
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    const-string v4, "Encryption method has to be set when encryptFiles flag is set in zip parameters"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 41
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/FileHeader;->setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    goto :goto_0

    .line 49
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/FileHeader;->setEncrypted(Z)V

    .line 50
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/FileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    .line 53
    :cond_3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/lingala/zip4j/headers/FileHeaderFactory;->validateAndGetFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/FileHeader;->setFileName(Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, v1, p4}, Lnet/lingala/zip4j/headers/FileHeaderFactory;->determineFileNameLength(Ljava/lang/String;Ljava/nio/charset/Charset;)I

    move-result v3

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/FileHeader;->setFileNameLength(I)V

    .line 56
    if-eqz p2, :cond_5

    .end local p3    # "currentDiskNumberStart":I
    :goto_1
    invoke-virtual {v0, p3}, Lnet/lingala/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    .line 58
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getLastModifiedFileTime()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-lez v3, :cond_6

    .line 59
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getLastModifiedFileTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/Zip4jUtil;->epochToExtendedDosTime(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/FileHeader;->setLastModifiedTime(J)V

    .line 64
    :goto_2
    invoke-static {v1}, Lnet/lingala/zip4j/util/FileUtils;->isZipEntryDirectory(Ljava/lang/String;)Z

    move-result v2

    .line 65
    .local v2, "isDirectory":Z
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/FileHeader;->setDirectory(Z)V

    .line 66
    invoke-static {v2}, Lnet/lingala/zip4j/util/FileUtils;->getDefaultFileAttributes(Z)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/FileHeader;->setExternalFileAttributes([B)V

    .line 68
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isWriteExtendedLocalFileHeader()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEntrySize()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_7

    .line 69
    invoke-virtual {v0, v8, v9}, Lnet/lingala/zip4j/model/FileHeader;->setUncompressedSize(J)V

    .line 74
    :goto_3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v3

    sget-object v4, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v3, v4, :cond_4

    .line 75
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEntryCRC()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/FileHeader;->setCrc(J)V

    .line 78
    :cond_4
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v3

    invoke-direct {p0, v3, p1, p4}, Lnet/lingala/zip4j/headers/FileHeaderFactory;->determineGeneralPurposeBitFlag(ZLnet/lingala/zip4j/model/ZipParameters;Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/FileHeader;->setGeneralPurposeFlag([B)V

    .line 79
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isWriteExtendedLocalFileHeader()Z

    move-result v3

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/FileHeader;->setDataDescriptorExists(Z)V

    .line 80
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getFileComment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/FileHeader;->setFileComment(Ljava/lang/String;)V

    .line 81
    return-object v0

    .line 56
    .end local v2    # "isDirectory":Z
    .restart local p3    # "currentDiskNumberStart":I
    :cond_5
    const/4 p3, 0x0

    goto :goto_1

    .line 61
    .end local p3    # "currentDiskNumberStart":I
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/Zip4jUtil;->epochToExtendedDosTime(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/FileHeader;->setLastModifiedTime(J)V

    goto :goto_2

    .line 71
    .restart local v2    # "isDirectory":Z
    :cond_7
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEntrySize()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/FileHeader;->setUncompressedSize(J)V

    goto :goto_3
.end method

.method public generateLocalFileHeader(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/model/LocalFileHeader;
    .locals 4
    .param p1, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;

    .prologue
    .line 85
    new-instance v0, Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;-><init>()V

    .line 86
    .local v0, "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->LOCAL_FILE_HEADER:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 87
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getVersionNeededToExtract()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setVersionNeededToExtract(I)V

    .line 88
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 89
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getLastModifiedTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setLastModifiedTime(J)V

    .line 90
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    .line 91
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileNameLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileNameLength(I)V

    .line 92
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileName(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncrypted(Z)V

    .line 94
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    .line 95
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V

    .line 96
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getCrc()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrc(J)V

    .line 97
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    .line 98
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getGeneralPurposeFlag()[B

    move-result-object v1

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setGeneralPurposeFlag([B)V

    .line 99
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->isDataDescriptorExists()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setDataDescriptorExists(Z)V

    .line 100
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraFieldLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setExtraFieldLength(I)V

    .line 101
    return-object v0
.end method
