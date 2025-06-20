.class Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;
.super Ljava/io/InputStream;
.source "ZipEntryInputStream.java"


# static fields
.field private static final MAX_RAW_READ_FULLY_RETRY_ATTEMPTS:I = 0xf


# instance fields
.field private compressedSize:J

.field private inputStream:Ljava/io/InputStream;

.field private numberOfBytesRead:J

.field private singleByteArray:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "compressedSize"    # J

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->numberOfBytesRead:J

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->singleByteArray:[B

    .line 16
    iput-object p1, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->inputStream:Ljava/io/InputStream;

    .line 17
    iput-wide p2, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->compressedSize:J

    .line 18
    return-void
.end method

.method private readUntilBufferIsFull([BI)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    array-length v3, p1

    sub-int v1, v3, p2

    .line 74
    .local v1, "remainingLength":I
    const/4 v0, 0x0

    .line 75
    .local v0, "loopReadLength":I
    const/4 v2, 0x0

    .line 77
    .local v2, "retryAttempt":I
    :goto_0
    array-length v3, p1

    if-ge p2, v3, :cond_1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    const/16 v3, 0xf

    if-ge v2, v3, :cond_1

    .line 78
    iget-object v3, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    add-int/2addr v0, v3

    .line 80
    if-lez v0, :cond_0

    .line 81
    add-int/2addr p2, v0

    .line 82
    sub-int/2addr v1, v0

    .line 85
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_1
    return p2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 94
    return-void
.end method

.method public getNumberOfBytesRead()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->numberOfBytesRead:J

    return-wide v0
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

    .line 22
    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->singleByteArray:[B

    invoke-virtual {p0, v2}, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->read([B)I

    move-result v0

    .line 23
    .local v0, "readLen":I
    if-ne v0, v1, :cond_0

    .line 27
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->singleByteArray:[B

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
    .line 32
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    iget-wide v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->compressedSize:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 39
    iget-wide v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->numberOfBytesRead:J

    iget-wide v4, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->compressedSize:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 40
    const/4 v0, -0x1

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    int-to-long v2, p3

    iget-wide v4, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->compressedSize:J

    iget-wide v6, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->numberOfBytesRead:J

    sub-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 44
    iget-wide v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->compressedSize:J

    iget-wide v4, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->numberOfBytesRead:J

    sub-long/2addr v2, v4

    long-to-int p3, v2

    .line 48
    :cond_2
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 50
    .local v0, "readLen":I
    if-lez v0, :cond_0

    .line 51
    iget-wide v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->numberOfBytesRead:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->numberOfBytesRead:J

    goto :goto_0
.end method

.method public readRawFully([B)I
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 61
    .local v0, "readLen":I
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 62
    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;->readUntilBufferIsFull([BI)I

    move-result v0

    .line 64
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 65
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cannot read fully into byte buffer"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_0
    return v0
.end method
