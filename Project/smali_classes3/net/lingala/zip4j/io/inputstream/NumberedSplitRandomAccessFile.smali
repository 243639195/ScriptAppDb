.class public Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;
.super Ljava/io/RandomAccessFile;
.source "NumberedSplitRandomAccessFile.java"


# instance fields
.field private allSortedSplitFiles:[Ljava/io/File;

.field private currentOpenSplitFileCounter:I

.field private randomAccessFile:Ljava/io/RandomAccessFile;

.field private rwMode:Ljava/lang/String;

.field private singleByteBuffer:[B

.field private splitLength:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {p1}, Lnet/lingala/zip4j/util/FileUtils;->getAllSortedNumberedSplitFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "allSortedSplitFiles"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->singleByteBuffer:[B

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->currentOpenSplitFileCounter:I

    .line 41
    invoke-super {p0}, Ljava/io/RandomAccessFile;->close()V

    .line 43
    sget-object v0, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->WRITE:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "write mode is not allowed for NumberedSplitRandomAccessFile"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    invoke-direct {p0, p3}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->assertAllSplitFilesExist([Ljava/io/File;)V

    .line 49
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 50
    iput-object p3, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->allSortedSplitFiles:[Ljava/io/File;

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->splitLength:J

    .line 52
    iput-object p2, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->rwMode:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method private assertAllSplitFilesExist([Ljava/io/File;)V
    .locals 7
    .param p1, "allSortedSplitFiles"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v2, 0x1

    .line 149
    .local v2, "splitCounter":I
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, p1, v4

    .line 150
    .local v3, "splitFile":Ljava/io/File;
    invoke-static {v3}, Lnet/lingala/zip4j/util/FileUtils;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "fileExtension":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eq v2, v6, :cond_0

    .line 153
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Split file number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Split file extension not in expected format. Found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " expected of format: .001, .002, etc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 155
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 149
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "fileExtension":Ljava/lang/String;
    .end local v3    # "splitFile":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private openRandomAccessFileForIndex(I)V
    .locals 3
    .param p1, "splitCounter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->currentOpenSplitFileCounter:I

    if-ne v0, p1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->allSortedSplitFiles:[Ljava/io/File;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 136
    new-instance v0, Ljava/io/IOException;

    const-string v1, "split counter greater than number of split files"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 143
    :cond_2
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->allSortedSplitFiles:[Ljava/io/File;

    aget-object v1, v1, p1

    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->rwMode:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 144
    iput p1, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->currentOpenSplitFileCounter:I

    goto :goto_0
.end method


# virtual methods
.method public getFilePointer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public openLastSplitFileForReading()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->allSortedSplitFiles:[Ljava/io/File;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->openRandomAccessFileForIndex(I)V

    .line 128
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

    .line 57
    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->singleByteBuffer:[B

    invoke-virtual {p0, v2}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->read([B)I

    move-result v0

    .line 59
    .local v0, "readLen":I
    if-ne v0, v1, :cond_0

    .line 63
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->singleByteBuffer:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

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
    .line 68
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
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
    const/4 v1, -0x1

    .line 73
    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 75
    .local v0, "readLen":I
    if-ne v0, v1, :cond_0

    .line 76
    iget v2, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->currentOpenSplitFileCounter:I

    iget-object v3, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->allSortedSplitFiles:[Ljava/io/File;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 83
    .end local v0    # "readLen":I
    :cond_0
    :goto_0
    return v0

    .line 79
    .restart local v0    # "readLen":I
    :cond_1
    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->currentOpenSplitFileCounter:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->openRandomAccessFileForIndex(I)V

    .line 80
    invoke-virtual {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public seek(J)V
    .locals 7
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-wide v2, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->splitLength:J

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 105
    .local v0, "splitPartOfPosition":I
    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->currentOpenSplitFileCounter:I

    if-eq v0, v1, :cond_0

    .line 106
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->openRandomAccessFileForIndex(I)V

    .line 109
    :cond_0
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    int-to-long v2, v0

    iget-wide v4, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->splitLength:J

    mul-long/2addr v2, v4

    sub-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 110
    return-void
.end method

.method public seekInCurrentPart(J)V
    .locals 1
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 124
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 93
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->write([BII)V

    .line 94
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
