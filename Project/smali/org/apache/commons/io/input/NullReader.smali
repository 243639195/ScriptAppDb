.class public Lorg/apache/commons/io/input/NullReader;
.super Ljava/io/Reader;
.source "NullReader.java"


# instance fields
.field private eof:Z

.field private mark:J

.field private final markSupported:Z

.field private position:J

.field private readlimit:J

.field private final size:J

.field private final throwEofException:Z


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/NullReader;-><init>(JZZ)V

    return-void
.end method

.method public constructor <init>(JZZ)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const-wide/16 v0, -0x1

    .line 69
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    .line 97
    iput-wide p1, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    .line 98
    iput-boolean p3, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    .line 99
    iput-boolean p4, p0, Lorg/apache/commons/io/input/NullReader;->throwEofException:Z

    return-void
.end method

.method private doEndOfFile()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 316
    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    .line 317
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->throwEofException:Z

    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    const-wide/16 v0, 0x0

    .line 129
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    const-wide/16 v0, -0x1

    .line 130
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    return-void
.end method

.method public getPosition()J
    .locals 2

    .line 108
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .line 117
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2

    monitor-enter p0

    .line 142
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    if-nez v0, :cond_0

    .line 143
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Mark not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    int-to-long v0, p1

    .line 146
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->readlimit:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 141
    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    return v0
.end method

.method protected processChar()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected processChars([CII)V
    .locals 0

    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Read after end of file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 175
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullReader;->doEndOfFile()I

    move-result v0

    return v0

    .line 177
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iput-wide v4, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 178
    invoke-virtual {p0}, Lorg/apache/commons/io/input/NullReader;->processChar()I

    move-result v0

    return v0
.end method

.method public read([C)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/io/input/NullReader;->read([CII)I

    move-result p1

    return p1
.end method

.method public read([CII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    if-eqz v0, :cond_0

    .line 213
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Read after end of file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 215
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 216
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullReader;->doEndOfFile()I

    move-result p1

    return p1

    .line 218
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    int-to-long v2, p3

    add-long v4, v0, v2

    iput-wide v4, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 220
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 221
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    sub-long v4, v0, v2

    long-to-int v0, v4

    sub-int/2addr p3, v0

    .line 222
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 224
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/input/NullReader;->processChars([CII)V

    return p3
.end method

.method public declared-synchronized reset()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 238
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 242
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No position has been marked"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    iget-wide v4, p0, Lorg/apache/commons/io/input/NullReader;->readlimit:J

    const/4 v6, 0x0

    add-long v6, v2, v4

    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    .line 245
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Marked position ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] is no longer valid - passed the read limit ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->readlimit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_2
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 237
    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    if-eqz v0, :cond_0

    .line 267
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Skip after end of file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 269
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 270
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullReader;->doEndOfFile()I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 272
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    add-long v2, v0, p1

    iput-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 274
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 275
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    sub-long v4, v0, v2

    sub-long v0, p1, v4

    .line 276
    iget-wide p1, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    iput-wide p1, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    move-wide p1, v0

    :cond_2
    return-wide p1
.end method
