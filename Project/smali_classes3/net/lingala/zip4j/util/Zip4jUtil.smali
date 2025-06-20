.class public Lnet/lingala/zip4j/util/Zip4jUtil;
.super Ljava/lang/Object;
.source "Zip4jUtil.java"


# static fields
.field private static final DOSTIME_BEFORE_1980:J = 0x210000L

.field private static final MAX_RAW_READ_FULLY_RETRY_ATTEMPTS:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCharArrayToByteArray([C)[B
    .locals 7
    .param p0, "charArray"    # [C

    .prologue
    .line 102
    :try_start_0
    sget-object v5, Lnet/lingala/zip4j/util/InternalZipConstants;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 103
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    new-array v1, v5, [B

    .line 104
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 111
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "bytes":[B
    .local v2, "bytes":[B
    :goto_0
    return-object v2

    .line 106
    .end local v2    # "bytes":[B
    :catch_0
    move-exception v3

    .line 107
    .local v3, "e":Ljava/lang/Exception;
    array-length v5, p0

    new-array v1, v5, [B

    .line 108
    .restart local v1    # "bytes":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, p0

    if-ge v4, v5, :cond_0

    .line 109
    aget-char v5, p0, v4

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    move-object v2, v1

    .line 111
    .end local v1    # "bytes":[B
    .restart local v2    # "bytes":[B
    goto :goto_0
.end method

.method public static createDirectoryIfNotExists(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 40
    if-nez p0, :cond_0

    .line 41
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "output path is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "output directory is not valid"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Cannot create output directories"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static dosToEpochTime(J)J
    .locals 14
    .param p0, "dosTime"    # J

    .prologue
    const-wide/16 v12, 0x1f

    .line 87
    const/4 v7, 0x1

    shl-long v8, p0, v7

    const-wide/16 v10, 0x3e

    and-long/2addr v8, v10

    long-to-int v6, v8

    .line 88
    .local v6, "sec":I
    const/4 v7, 0x5

    shr-long v8, p0, v7

    const-wide/16 v10, 0x3f

    and-long/2addr v8, v10

    long-to-int v5, v8

    .line 89
    .local v5, "min":I
    const/16 v7, 0xb

    shr-long v8, p0, v7

    and-long/2addr v8, v12

    long-to-int v4, v8

    .line 90
    .local v4, "hrs":I
    const/16 v7, 0x10

    shr-long v8, p0, v7

    and-long/2addr v8, v12

    long-to-int v3, v8

    .line 91
    .local v3, "day":I
    const/16 v7, 0x15

    shr-long v8, p0, v7

    const-wide/16 v10, 0xf

    and-long/2addr v8, v10

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    long-to-int v2, v8

    .line 92
    .local v2, "mon":I
    const/16 v7, 0x19

    shr-long v8, p0, v7

    const-wide/16 v10, 0x7f

    and-long/2addr v8, v10

    const-wide/16 v10, 0x7bc

    add-long/2addr v8, v10

    long-to-int v1, v8

    .line 94
    .local v1, "year":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 95
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 96
    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 97
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    return-wide v8
.end method

.method public static dosToExtendedEpochTme(J)J
    .locals 4
    .param p0, "dosTime"    # J

    .prologue
    .line 82
    invoke-static {p0, p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->dosToEpochTime(J)J

    move-result-wide v0

    .line 83
    .local v0, "time":J
    const/16 v2, 0x20

    shr-long v2, p0, v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private static epochToDosTime(J)J
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 69
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 71
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 73
    .local v1, "year":I
    const/16 v2, 0x7bc

    if-ge v1, v2, :cond_0

    .line 74
    const-wide/32 v2, 0x210000

    .line 76
    :goto_0
    return-wide v2

    :cond_0
    add-int/lit16 v2, v1, -0x7bc

    shl-int/lit8 v2, v2, 0x19

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v2, v3

    const/4 v3, 0x5

    .line 77
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0xb

    or-int/2addr v2, v3

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    const/16 v3, 0xd

    .line 78
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    int-to-long v2, v2

    .line 76
    goto :goto_0
.end method

.method public static epochToExtendedDosTime(J)J
    .locals 6
    .param p0, "time"    # J

    .prologue
    const-wide/32 v2, 0x210000

    .line 58
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gez v4, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-wide v2

    .line 61
    :cond_1
    invoke-static {p0, p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->epochToDosTime(J)J

    move-result-wide v0

    .line 62
    .local v0, "dostime":J
    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x7d0

    rem-long v2, p0, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v2, v0

    goto :goto_0
.end method

.method public static getCompressionMethod(Lnet/lingala/zip4j/model/AbstractFileHeader;)Lnet/lingala/zip4j/model/enums/CompressionMethod;
    .locals 2
    .param p0, "localFileHeader"    # Lnet/lingala/zip4j/model/AbstractFileHeader;

    .prologue
    .line 116
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->AES_INTERNAL_ONLY:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-eq v0, v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    if-nez v0, :cond_1

    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AesExtraDataRecord not present in local header for aes encrypted data"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    goto :goto_0
.end method

.method public static isStringNotNullAndNotEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 36
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readFully(Ljava/io/InputStream;[B)I
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "bufferToReadInto"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 131
    .local v0, "readLen":I
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 132
    invoke-static {p0, p1, v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->readUntilBufferIsFull(Ljava/io/InputStream;[BI)I

    move-result v0

    .line 134
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 135
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cannot read fully into byte buffer"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_0
    return v0
.end method

.method public static readFully(Ljava/io/InputStream;[BII)I
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 143
    const/4 v1, 0x0

    .line 145
    .local v1, "numberOfBytesRead":I
    if-gez p2, :cond_0

    .line 146
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Negative offset"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    :cond_0
    if-gez p3, :cond_1

    .line 150
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Negative length"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :cond_1
    if-nez p3, :cond_3

    .line 154
    const/4 v2, 0x0

    .line 173
    :cond_2
    :goto_0
    return v2

    .line 157
    :cond_3
    add-int v3, p2, p3

    array-length v4, p1

    if-le v3, v4, :cond_5

    .line 158
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Length greater than buffer size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    .local v0, "currentReadLength":I
    :cond_4
    add-int/2addr v1, v0

    .line 161
    .end local v0    # "currentReadLength":I
    :cond_5
    if-eq v1, p3, :cond_6

    .line 162
    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-virtual {p0, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 163
    .restart local v0    # "currentReadLength":I
    if-ne v0, v2, :cond_4

    .line 164
    if-eqz v1, :cond_2

    move v2, v1

    .line 167
    goto :goto_0

    .end local v0    # "currentReadLength":I
    :cond_6
    move v2, v1

    .line 173
    goto :goto_0
.end method

.method private static readUntilBufferIsFull(Ljava/io/InputStream;[BI)I
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "bufferToReadInto"    # [B
    .param p2, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    array-length v3, p1

    sub-int v1, v3, p2

    .line 180
    .local v1, "remainingLength":I
    const/4 v0, 0x0

    .line 181
    .local v0, "loopReadLength":I
    const/4 v2, 0x1

    .line 183
    .local v2, "retryAttempt":I
    :goto_0
    array-length v3, p1

    if-ge p2, v3, :cond_1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    const/16 v3, 0xf

    if-ge v2, v3, :cond_1

    .line 187
    invoke-virtual {p0, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 189
    if-lez v0, :cond_0

    .line 190
    add-int/2addr p2, v0

    .line 191
    sub-int/2addr v1, v0

    .line 194
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :cond_1
    return p2
.end method
