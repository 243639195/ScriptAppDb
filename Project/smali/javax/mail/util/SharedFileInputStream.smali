.class public Ljavax/mail/util/SharedFileInputStream;
.super Ljava/io/BufferedInputStream;
.source "SharedFileInputStream.java"

# interfaces
.implements Ljavax/mail/internet/SharedInputStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/util/SharedFileInputStream$SharedFile;
    }
.end annotation


# static fields
.field private static defaultBufferSize:I = 0x800


# instance fields
.field protected bufpos:J

.field protected bufsize:I

.field protected datalen:J

.field protected in:Ljava/io/RandomAccessFile;

.field private master:Z

.field private sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

.field protected start:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    sget v0, Ljavax/mail/util/SharedFileInputStream;->defaultBufferSize:I

    invoke-direct {p0, p1, v0}, Ljavax/mail/util/SharedFileInputStream;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    .line 93
    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    if-gtz p2, :cond_0

    .line 193
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer size <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :cond_0
    new-instance v0, Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-direct {v0, p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p2}, Ljavax/mail/util/SharedFileInputStream;->init(Ljavax/mail/util/SharedFileInputStream$SharedFile;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    sget v0, Ljavax/mail/util/SharedFileInputStream;->defaultBufferSize:I

    invoke-direct {p0, p1, v0}, Ljavax/mail/util/SharedFileInputStream;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 206
    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    .line 93
    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    if-gtz p2, :cond_0

    .line 208
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer size <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 209
    :cond_0
    new-instance v0, Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-direct {v0, p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljavax/mail/util/SharedFileInputStream;->init(Ljavax/mail/util/SharedFileInputStream$SharedFile;I)V

    return-void
.end method

.method private constructor <init>(Ljavax/mail/util/SharedFileInputStream$SharedFile;JJI)V
    .locals 2

    const/4 v0, 0x0

    .line 226
    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    .line 93
    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    const/4 v0, 0x0

    .line 227
    iput-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    .line 228
    iput-object p1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 229
    invoke-virtual {p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->open()Ljava/io/RandomAccessFile;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    .line 230
    iput-wide p2, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    .line 231
    iput-wide p2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    .line 232
    iput-wide p4, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    .line 233
    iput p6, p0, Ljavax/mail/util/SharedFileInputStream;->bufsize:I

    .line 234
    new-array p1, p6, [B

    iput-object p1, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private fill()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 246
    iput v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    .line 247
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    int-to-long v2, v2

    add-long v4, v0, v2

    iput-wide v4, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    goto :goto_0

    .line 248
    :cond_0
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget-object v2, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    array-length v2, v2

    if-lt v0, v2, :cond_4

    .line 249
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    if-lez v0, :cond_1

    .line 250
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    sub-int/2addr v0, v2

    .line 251
    iget-object v2, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    iget-object v4, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    invoke-static {v2, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    .line 253
    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    int-to-long v4, v0

    add-long v6, v2, v4

    iput-wide v6, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    .line 254
    iput v1, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    goto :goto_0

    .line 255
    :cond_1
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    array-length v0, v0

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    if-lt v0, v2, :cond_2

    const/4 v0, -0x1

    .line 256
    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    .line 257
    iput v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    .line 258
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    int-to-long v2, v2

    add-long v4, v0, v2

    iput-wide v4, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    goto :goto_0

    .line 260
    :cond_2
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    mul-int/lit8 v0, v0, 0x2

    .line 261
    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    if-le v0, v2, :cond_3

    .line 262
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    .line 263
    :cond_3
    new-array v0, v0, [B

    .line 264
    iget-object v2, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    .line 267
    :cond_4
    :goto_0
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    .line 268
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v3, v3

    add-long v5, v1, v3

    invoke-virtual {v0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 270
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v0, v1

    .line 271
    iget-wide v1, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget-wide v3, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    sub-long v5, v1, v3

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v1, v1

    add-long v3, v5, v1

    int-to-long v1, v0

    add-long v5, v3, v1

    iget-wide v1, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    cmp-long v3, v5, v1

    if-lez v3, :cond_5

    .line 272
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget-wide v4, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    sub-long v6, v2, v4

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v2, v2

    add-long v4, v6, v2

    sub-long v2, v0, v4

    long-to-int v0, v2

    .line 273
    :cond_5
    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    if-lez v0, :cond_6

    .line 275
    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    :cond_6
    return-void
.end method

.method private in_available()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    add-long v4, v0, v2

    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    int-to-long v2, v2

    add-long v6, v0, v2

    sub-long v0, v4, v6

    long-to-int v0, v0

    return v0
.end method

.method private init(Ljavax/mail/util/SharedFileInputStream$SharedFile;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iput-object p1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 214
    invoke-virtual {p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->open()Ljava/io/RandomAccessFile;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    const-wide/16 v0, 0x0

    .line 215
    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    .line 216
    iget-object p1, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    .line 217
    iput p2, p0, Ljavax/mail/util/SharedFileInputStream;->bufsize:I

    .line 218
    new-array p1, p2, [B

    iput-object p1, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    return-void
.end method

.method private read1([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    .line 313
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->fill()V

    .line 314
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-ge v0, p3, :cond_1

    move p3, v0

    .line 318
    :cond_1
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    iget p1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    return p3
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 401
    :try_start_0
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    .line 402
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->in_available()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 400
    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 469
    :try_start_0
    iget-boolean v1, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    if-eqz v1, :cond_1

    .line 470
    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-virtual {v1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->forceClose()V

    goto :goto_0

    .line 472
    :cond_1
    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-virtual {v1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    :goto_0
    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 475
    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    .line 476
    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    return-void

    :catchall_0
    move-exception v1

    .line 474
    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 475
    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    .line 476
    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    .line 477
    throw v1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 538
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 539
    invoke-virtual {p0}, Ljavax/mail/util/SharedFileInputStream;->close()V

    return-void
.end method

.method public getPosition()J
    .locals 6

    .line 488
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 489
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_0
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v2, v2

    add-long v4, v0, v2

    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    sub-long v2, v4, v0

    return-wide v2
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    monitor-enter p0

    .line 419
    :try_start_0
    iput p1, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    .line 420
    iget p1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iput p1, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 418
    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newStream(JJ)Ljava/io/InputStream;
    .locals 10

    .line 506
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 507
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 509
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "start < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v2, p3, v0

    if-nez v2, :cond_2

    .line 511
    iget-wide p3, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    .line 512
    :cond_2
    new-instance v7, Ljavax/mail/util/SharedFileInputStream;

    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 513
    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    long-to-int v0, p1

    int-to-long v4, v0

    add-long v8, v2, v4

    sub-long v2, p3, p1

    long-to-int p1, v2

    int-to-long v4, p1

    iget v6, p0, Ljavax/mail/util/SharedFileInputStream;->bufsize:I

    move-object v0, v7

    move-wide v2, v8

    .line 512
    invoke-direct/range {v0 .. v6}, Ljavax/mail/util/SharedFileInputStream;-><init>(Ljavax/mail/util/SharedFileInputStream$SharedFile;JJI)V

    return-object v7
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 287
    :try_start_0
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    .line 288
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    if-lt v0, v1, :cond_0

    .line 289
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->fill()V

    .line 290
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    .line 291
    monitor-exit p0

    return v0

    .line 293
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    aget-byte v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 286
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 341
    :try_start_0
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    .line 342
    array-length v2, p1

    sub-int/2addr v2, v1

    or-int/2addr v0, v2

    if-gez v0, :cond_0

    .line 343
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-nez p3, :cond_1

    const/4 p1, 0x0

    .line 345
    monitor-exit p0

    return p1

    .line 348
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Ljavax/mail/util/SharedFileInputStream;->read1([BII)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v0, :cond_2

    .line 349
    monitor-exit p0

    return v0

    :cond_2
    :goto_0
    if-lt v0, p3, :cond_3

    goto :goto_1

    :cond_3
    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 351
    :try_start_2
    invoke-direct {p0, p1, v1, v2}, Ljavax/mail/util/SharedFileInputStream;->read1([BII)I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v1, :cond_4

    add-int/2addr v0, v1

    goto :goto_0

    .line 355
    :cond_4
    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 340
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 438
    :try_start_0
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    .line 439
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    if-gez v0, :cond_0

    .line 440
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Resetting to invalid mark"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_0
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 437
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 367
    :try_start_0
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 369
    monitor-exit p0

    return-wide v0

    .line 371
    :cond_0
    :try_start_1
    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_1

    .line 381
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->fill()V

    .line 382
    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_1

    .line 384
    monitor-exit p0

    return-wide v0

    :cond_1
    cmp-long v0, v2, p1

    if-gez v0, :cond_2

    move-wide p1, v2

    .line 388
    :cond_2
    :try_start_2
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v0, v0

    add-long v2, v0, p1

    long-to-int v0, v2

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 366
    monitor-exit p0

    throw p1
.end method
