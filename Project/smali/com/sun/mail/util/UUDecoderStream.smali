.class public Lcom/sun/mail/util/UUDecoderStream;
.super Ljava/io/FilterInputStream;
.source "UUDecoderStream.java"


# instance fields
.field private buffer:[B

.field private bufsize:I

.field private gotEnd:Z

.field private gotPrefix:Z

.field private index:I

.field private lin:Lcom/sun/mail/util/LineInputStream;

.field private mode:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 71
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    .line 61
    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    .line 62
    iput-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    .line 63
    iput-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    .line 72
    new-instance v0, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    const/16 p1, 0x2d

    .line 73
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    return-void
.end method

.method private decode()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 179
    :cond_0
    iput v1, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 190
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing End"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "end"

    const/4 v6, 0x0

    const/4 v7, 0x3

    move-object v2, v0

    .line 191
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 192
    iput-boolean v3, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    return v1

    .line 195
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x20

    if-ge v2, v4, :cond_4

    .line 198
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Buffer format error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sub-int/2addr v2, v4

    and-int/lit8 v2, v2, 0x3f

    if-nez v2, :cond_7

    .line 209
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "end"

    const/4 v8, 0x0

    const/4 v9, 0x3

    .line 210
    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 212
    :cond_5
    iput-boolean v3, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    return v1

    .line 211
    :cond_6
    :goto_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing End"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    mul-int/lit8 v1, v2, 0x8

    add-int/lit8 v1, v1, 0x5

    .line 216
    div-int/lit8 v1, v1, 0x6

    .line 218
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v3

    if-ge v5, v1, :cond_8

    .line 219
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Short buffer error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v1, 0x1

    .line 229
    :cond_9
    :goto_1
    iget v5, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-lt v5, v2, :cond_a

    return v3

    :cond_a
    add-int/lit8 v5, v1, 0x1

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v4

    and-int/lit8 v1, v1, 0x3f

    int-to-byte v1, v1

    add-int/lit8 v6, v5, 0x1

    .line 232
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sub-int/2addr v5, v4

    and-int/lit8 v5, v5, 0x3f

    int-to-byte v5, v5

    .line 233
    iget-object v7, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v8, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    shl-int/lit8 v1, v1, 0x2

    and-int/lit16 v1, v1, 0xfc

    ushr-int/lit8 v9, v5, 0x4

    and-int/lit8 v9, v9, 0x3

    or-int/2addr v1, v9

    int-to-byte v1, v1

    aput-byte v1, v7, v8

    .line 235
    iget v1, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-ge v1, v2, :cond_b

    add-int/lit8 v1, v6, 0x1

    .line 237
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v4

    and-int/lit8 v6, v6, 0x3f

    int-to-byte v6, v6

    .line 238
    iget-object v7, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v8, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    shl-int/lit8 v5, v5, 0x4

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v9, v6, 0x2

    and-int/lit8 v9, v9, 0xf

    or-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, v7, v8

    move v5, v6

    goto :goto_2

    :cond_b
    move v1, v6

    .line 242
    :goto_2
    iget v6, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-ge v6, v2, :cond_9

    add-int/lit8 v6, v1, 0x1

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v4

    and-int/lit8 v1, v1, 0x3f

    int-to-byte v1, v1

    .line 245
    iget-object v7, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v8, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    shl-int/lit8 v5, v5, 0x6

    and-int/lit16 v5, v5, 0xc0

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v7, v8

    move v1, v6

    goto :goto_1
.end method

.method private readPrefix()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    if-eqz v0, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Ljava/io/IOException;

    const-string v1, "UUDecoder error: No Begin"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "begin"

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object v1, v0

    .line 162
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    const/16 v2, 0x9

    .line 164
    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sun/mail/util/UUDecoderStream;->mode:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0xa

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->name:Ljava/lang/String;

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    return-void

    :catch_0
    move-exception v0

    .line 166
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UUDecoder error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    iget v2, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->readPrefix()V

    .line 144
    iget v0, p0, Lcom/sun/mail/util/UUDecoderStream;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->readPrefix()V

    .line 132
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->name:Ljava/lang/String;

    return-object v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget v0, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    iget v1, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-lt v0, v1, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->readPrefix()V

    .line 93
    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->decode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v1, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-lt v0, p3, :cond_0

    goto :goto_1

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/util/UUDecoderStream;->read()I

    move-result v2

    if-ne v2, v1, :cond_2

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :cond_1
    :goto_1
    return v0

    :cond_2
    add-int v1, p2, v0

    int-to-byte v2, v2

    .line 108
    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
