.class Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;
.super Lnet/lingala/zip4j/io/inputstream/CipherInputStream;
.source "AesCipherInputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/io/inputstream/CipherInputStream",
        "<",
        "Lnet/lingala/zip4j/crypto/AESDecrypter;",
        ">;"
    }
.end annotation


# instance fields
.field private aes16ByteBlock:[B

.field private aes16ByteBlockPointer:I

.field private aes16ByteBlockReadLength:I

.field private bytesCopiedInThisIteration:I

.field private lengthToCopyInThisIteration:I

.field private lengthToRead:I

.field private offsetWithAesBlock:I

.field private remainingAes16ByteBlockLength:I

.field private singleByteBuffer:[B


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;[CI)V
    .locals 2
    .param p1, "zipEntryInputStream"    # Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;
    .param p2, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .param p3, "password"    # [C
    .param p4, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;-><init>(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;[CI)V

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->singleByteBuffer:[B

    .line 21
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlock:[B

    .line 22
    iput v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlockPointer:I

    .line 23
    iput v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->remainingAes16ByteBlockLength:I

    .line 24
    iput v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToRead:I

    .line 25
    iput v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->offsetWithAesBlock:I

    .line 26
    iput v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    .line 27
    iput v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToCopyInThisIteration:I

    .line 28
    iput v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlockReadLength:I

    .line 33
    return-void
.end method

.method private copyBytesFromBuffer([BI)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I

    .prologue
    .line 107
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToRead:I

    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->remainingAes16ByteBlockLength:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToRead:I

    :goto_0
    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToCopyInThisIteration:I

    .line 108
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlock:[B

    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlockPointer:I

    iget v2, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToCopyInThisIteration:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToCopyInThisIteration:I

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->incrementAesByteBlockPointer(I)V

    .line 111
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToCopyInThisIteration:I

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->decrementRemainingAesBytesLength(I)V

    .line 113
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToCopyInThisIteration:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    .line 115
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToRead:I

    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToCopyInThisIteration:I

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToRead:I

    .line 116
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->offsetWithAesBlock:I

    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToCopyInThisIteration:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->offsetWithAesBlock:I

    .line 117
    return-void

    .line 107
    :cond_0
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->remainingAes16ByteBlockLength:I

    goto :goto_0
.end method

.method private decrementRemainingAesBytesLength(I)V
    .locals 1
    .param p1, "decrementBy"    # I

    .prologue
    .line 181
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->remainingAes16ByteBlockLength:I

    sub-int/2addr v0, p1

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->remainingAes16ByteBlockLength:I

    .line 183
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->remainingAes16ByteBlockLength:I

    if-gtz v0, :cond_0

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->remainingAes16ByteBlockLength:I

    .line 186
    :cond_0
    return-void
.end method

.method private getPasswordVerifier()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 168
    .local v0, "pvBytes":[B
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->readRaw([B)I

    .line 169
    return-object v0
.end method

.method private getSalt(Lnet/lingala/zip4j/model/LocalFileHeader;)[B
    .locals 4
    .param p1, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v2

    if-nez v2, :cond_0

    .line 157
    new-instance v2, Ljava/io/IOException;

    const-string v3, "invalid aes extra data record"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    .line 161
    .local v0, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesKeyStrength()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getSaltLength()I

    move-result v2

    new-array v1, v2, [B

    .line 162
    .local v1, "saltBytes":[B
    invoke-virtual {p0, v1}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->readRaw([B)I

    .line 163
    return-object v1
.end method

.method private incrementAesByteBlockPointer(I)V
    .locals 2
    .param p1, "incrementBy"    # I

    .prologue
    const/16 v1, 0xf

    .line 173
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlockPointer:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlockPointer:I

    .line 175
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlockPointer:I

    if-lt v0, v1, :cond_0

    .line 176
    iput v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlockPointer:I

    .line 178
    :cond_0
    return-void
.end method

.method private verifyContent([B)V
    .locals 6
    .param p1, "storedMac"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 125
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->getLocalFileHeader()Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->isDataDescriptorExists()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 126
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->getLocalFileHeader()Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v3

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->getCompressionMethod(Lnet/lingala/zip4j/model/AbstractFileHeader;)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    :cond_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->getDecrypter()Lnet/lingala/zip4j/crypto/Decrypter;

    move-result-object v2

    check-cast v2, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v2}, Lnet/lingala/zip4j/crypto/AESDecrypter;->getCalculatedAuthenticationBytes()[B

    move-result-object v0

    .line 136
    .local v0, "calculatedMac":[B
    new-array v1, v5, [B

    .line 137
    .local v1, "first10BytesOfCalculatedMac":[B
    invoke-static {v0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Reached end of data for this entry, but aes verification failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method protected endOfEntryReached(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->readStoredMac(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->verifyContent([B)V

    .line 122
    return-void
.end method

.method protected initializeDecrypter(Lnet/lingala/zip4j/model/LocalFileHeader;[C)Lnet/lingala/zip4j/crypto/AESDecrypter;
    .locals 4
    .param p1, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v1

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->getSalt(Lnet/lingala/zip4j/model/LocalFileHeader;)[B

    move-result-object v2

    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->getPasswordVerifier()[B

    move-result-object v3

    invoke-direct {v0, v1, p2, v2, v3}, Lnet/lingala/zip4j/crypto/AESDecrypter;-><init>(Lnet/lingala/zip4j/model/AESExtraDataRecord;[C[B[B)V

    return-object v0
.end method

.method protected bridge synthetic initializeDecrypter(Lnet/lingala/zip4j/model/LocalFileHeader;[C)Lnet/lingala/zip4j/crypto/Decrypter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->initializeDecrypter(Lnet/lingala/zip4j/model/LocalFileHeader;[C)Lnet/lingala/zip4j/crypto/AESDecrypter;

    move-result-object v0

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 42
    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->singleByteBuffer:[B

    invoke-virtual {p0, v2}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->read([B)I

    move-result v0

    .line 44
    .local v0, "readLen":I
    if-ne v0, v1, :cond_0

    .line 48
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->singleByteBuffer:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 58
    iput p3, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToRead:I

    .line 59
    iput p2, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->offsetWithAesBlock:I

    .line 60
    iput v4, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    .line 62
    iget v2, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->remainingAes16ByteBlockLength:I

    if-eqz v2, :cond_1

    .line 63
    iget v2, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->offsetWithAesBlock:I

    invoke-direct {p0, p1, v2}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->copyBytesFromBuffer([BI)V

    .line 65
    iget v2, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    if-ne v2, p3, :cond_1

    .line 66
    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 70
    :cond_1
    iget v2, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToRead:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_3

    .line 71
    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlock:[B

    iget-object v3, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlock:[B

    array-length v3, v3

    invoke-super {p0, v2, v4, v3}, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->read([BII)I

    move-result v2

    iput v2, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlockReadLength:I

    .line 72
    iput v4, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlockPointer:I

    .line 74
    iget v2, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlockReadLength:I

    if-ne v2, v1, :cond_2

    .line 75
    iput v4, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->remainingAes16ByteBlockLength:I

    .line 77
    iget v2, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    if-lez v2, :cond_0

    .line 78
    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    goto :goto_0

    .line 84
    :cond_2
    iget v2, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->aes16ByteBlockReadLength:I

    iput v2, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->remainingAes16ByteBlockLength:I

    .line 86
    iget v2, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->offsetWithAesBlock:I

    invoke-direct {p0, p1, v2}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->copyBytesFromBuffer([BI)V

    .line 88
    iget v2, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    if-ne v2, p3, :cond_3

    .line 89
    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    goto :goto_0

    .line 93
    :cond_3
    iget v2, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->offsetWithAesBlock:I

    iget v3, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToRead:I

    iget v4, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->lengthToRead:I

    rem-int/lit8 v4, v4, 0x10

    sub-int/2addr v3, v4

    invoke-super {p0, p1, v2, v3}, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;->read([BII)I

    move-result v0

    .line 95
    .local v0, "readLen":I
    if-ne v0, v1, :cond_4

    .line 96
    iget v2, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    if-lez v2, :cond_0

    .line 97
    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    goto :goto_0

    .line 102
    :cond_4
    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;->bytesCopiedInThisIteration:I

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method protected readStoredMac(Ljava/io/InputStream;)[B
    .locals 4
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xa

    .line 145
    new-array v1, v2, [B

    .line 146
    .local v1, "storedMac":[B
    invoke-static {p1, v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    move-result v0

    .line 148
    .local v0, "readLen":I
    if-eq v0, v2, :cond_0

    .line 149
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "Invalid AES Mac bytes. Could not read sufficient data"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :cond_0
    return-object v1
.end method
