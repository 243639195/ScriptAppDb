.class public Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;
.super Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;
.source "InflaterInputStream.java"


# instance fields
.field private buff:[B

.field private inflater:Ljava/util/zip/Inflater;

.field private len:I

.field private singleByteBuffer:[B


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/inputstream/CipherInputStream;I)V
    .locals 2
    .param p1, "cipherInputStream"    # Lnet/lingala/zip4j/io/inputstream/CipherInputStream;
    .param p2, "bufferSize"    # I

    .prologue
    const/4 v1, 0x1

    .line 18
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;-><init>(Lnet/lingala/zip4j/io/inputstream/CipherInputStream;)V

    .line 14
    new-array v0, v1, [B

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->singleByteBuffer:[B

    .line 19
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    .line 20
    new-array v0, p2, [B

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->buff:[B

    .line 21
    return-void
.end method

.method private fill()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 84
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->buff:[B

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->buff:[B

    array-length v1, v1

    invoke-super {p0, v0, v3, v1}, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->len:I

    .line 85
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->len:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 86
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Unexpected end of input stream"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->buff:[B

    iget v2, p0, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->len:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 89
    return-void
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
    .line 77
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 80
    :cond_0
    invoke-super {p0}, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;->close()V

    .line 81
    return-void
.end method

.method public endOfEntryReached(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    .line 63
    :cond_0
    invoke-super {p0, p1}, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;->endOfEntryReached(Ljava/io/InputStream;)V

    .line 64
    return-void
.end method

.method public pushBackInputStreamIfNecessary(Ljava/io/PushbackInputStream;)V
    .locals 3
    .param p1, "pushbackInputStream"    # Ljava/io/PushbackInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    .line 69
    .local v0, "n":I
    if-lez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->getLastReadRawDataCache()[B

    move-result-object v1

    .line 71
    .local v1, "rawDataCache":[B
    iget v2, p0, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->len:I

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 73
    .end local v1    # "rawDataCache":[B
    :cond_0
    return-void
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

    .line 25
    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->singleByteBuffer:[B

    invoke-virtual {p0, v2}, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->read([B)I

    move-result v0

    .line 27
    .local v0, "readLen":I
    if-ne v0, v1, :cond_0

    .line 31
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->singleByteBuffer:[B

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
    .line 36
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v1

    .local v1, "n":I
    if-nez v1, :cond_2

    .line 44
    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 45
    :cond_1
    const/4 v1, -0x1

    .line 51
    .end local v1    # "n":I
    :cond_2
    return v1

    .line 47
    .restart local v1    # "n":I
    :cond_3
    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;->fill()V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    .end local v1    # "n":I
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/util/zip/DataFormatException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
