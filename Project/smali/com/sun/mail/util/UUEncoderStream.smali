.class public Lcom/sun/mail/util/UUEncoderStream;
.super Ljava/io/FilterOutputStream;
.source "UUEncoderStream.java"


# instance fields
.field private buffer:[B

.field private bufsize:I

.field protected mode:I

.field protected name:Ljava/lang/String;

.field private wrotePrefix:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    const-string v0, "encoder.buf"

    const/16 v1, 0x284

    .line 67
    invoke-direct {p0, p1, v0, v1}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x284

    .line 76
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    .line 56
    iput p1, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    .line 57
    iput-boolean p1, p0, Lcom/sun/mail/util/UUEncoderStream;->wrotePrefix:Z

    .line 87
    iput-object p2, p0, Lcom/sun/mail/util/UUEncoderStream;->name:Ljava/lang/String;

    .line 88
    iput p3, p0, Lcom/sun/mail/util/UUEncoderStream;->mode:I

    const/16 p1, 0x2d

    .line 89
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    return-void
.end method

.method private encode()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    iget v1, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    and-int/lit8 v1, v1, 0x3f

    add-int/lit8 v1, v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x0

    .line 177
    :goto_0
    iget v1, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    if-lt v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    .line 179
    iget v1, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    const/4 v3, 0x1

    if-ge v2, v1, :cond_2

    .line 180
    iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v1, v1, v2

    .line 181
    iget v2, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    if-ge v4, v2, :cond_1

    .line 182
    iget-object v2, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    add-int/lit8 v3, v4, 0x1

    aget-byte v2, v2, v4

    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    ushr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x30

    ushr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v0, v5

    shl-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x3c

    ushr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v1, v5

    and-int/lit8 v3, v3, 0x3f

    .line 195
    iget-object v5, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v4, v4, 0x20

    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write(I)V

    .line 196
    iget-object v4, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v0, v0, 0x20

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 197
    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v1, v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 198
    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v3, v3, 0x20

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    move v0, v2

    goto :goto_0
.end method

.method private writePrefix()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-boolean v0, p0, Lcom/sun/mail/util/UUEncoderStream;->wrotePrefix:Z

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "begin "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/mail/util/UUEncoderStream;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/mail/util/UUEncoderStream;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/sun/mail/util/UUEncoderStream;->wrotePrefix:Z

    :cond_0
    return-void
.end method

.method private writeSuffix()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    const-string v1, " \nend"

    .line 156
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

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

    .line 134
    invoke-virtual {p0}, Lcom/sun/mail/util/UUEncoderStream;->flush()V

    .line 135
    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget v0, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    if-lez v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->writePrefix()V

    .line 127
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->encode()V

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->writeSuffix()V

    .line 130
    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public setNameMode(Ljava/lang/String;I)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/sun/mail/util/UUEncoderStream;->name:Ljava/lang/String;

    .line 99
    iput p2, p0, Lcom/sun/mail/util/UUEncoderStream;->mode:I

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    iget v1, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 117
    iget p1, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->writePrefix()V

    .line 119
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->encode()V

    const/4 p1, 0x0

    .line 120
    iput p1, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/mail/util/UUEncoderStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_0

    return-void

    :cond_0
    add-int v1, p2, v0

    .line 104
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/util/UUEncoderStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
