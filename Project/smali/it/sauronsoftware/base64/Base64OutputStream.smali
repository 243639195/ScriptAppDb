.class public Lit/sauronsoftware/base64/Base64OutputStream;
.super Ljava/io/OutputStream;


# instance fields
.field private buffer:I

.field private bytecounter:I

.field private linecounter:I

.field private linelength:I

.field private outputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/16 v0, 0x4c

    invoke-direct {p0, p1, v0}, Lit/sauronsoftware/base64/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->outputStream:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->buffer:I

    iput v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->bytecounter:I

    iput v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->linecounter:I

    iput v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->linelength:I

    iput-object p1, p0, Lit/sauronsoftware/base64/Base64OutputStream;->outputStream:Ljava/io/OutputStream;

    iput p2, p0, Lit/sauronsoftware/base64/Base64OutputStream;->linelength:I

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

    invoke-virtual {p0}, Lit/sauronsoftware/base64/Base64OutputStream;->commit()V

    iget-object v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method protected commit()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->bytecounter:I

    if-lez v0, :cond_3

    iget v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->linelength:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->linecounter:I

    iget v2, p0, Lit/sauronsoftware/base64/Base64OutputStream;->linelength:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->outputStream:Ljava/io/OutputStream;

    const-string v2, "\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    iput v1, p0, Lit/sauronsoftware/base64/Base64OutputStream;->linecounter:I

    :cond_0
    sget-object v0, Lit/sauronsoftware/base64/Shared;->chars:Ljava/lang/String;

    iget v2, p0, Lit/sauronsoftware/base64/Base64OutputStream;->buffer:I

    shl-int/lit8 v2, v2, 0x8

    ushr-int/lit8 v2, v2, 0x1a

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-object v2, Lit/sauronsoftware/base64/Shared;->chars:Ljava/lang/String;

    iget v3, p0, Lit/sauronsoftware/base64/Base64OutputStream;->buffer:I

    shl-int/lit8 v3, v3, 0xe

    ushr-int/lit8 v3, v3, 0x1a

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget v3, p0, Lit/sauronsoftware/base64/Base64OutputStream;->bytecounter:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    sget-char v3, Lit/sauronsoftware/base64/Shared;->pad:C

    goto :goto_0

    :cond_1
    sget-object v3, Lit/sauronsoftware/base64/Shared;->chars:Ljava/lang/String;

    iget v4, p0, Lit/sauronsoftware/base64/Base64OutputStream;->buffer:I

    shl-int/lit8 v4, v4, 0x14

    ushr-int/lit8 v4, v4, 0x1a

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_0
    iget v4, p0, Lit/sauronsoftware/base64/Base64OutputStream;->bytecounter:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_2

    sget-char v4, Lit/sauronsoftware/base64/Shared;->pad:C

    goto :goto_1

    :cond_2
    sget-object v4, Lit/sauronsoftware/base64/Shared;->chars:Ljava/lang/String;

    iget v5, p0, Lit/sauronsoftware/base64/Base64OutputStream;->buffer:I

    shl-int/lit8 v5, v5, 0x1a

    ushr-int/lit8 v5, v5, 0x1a

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_1
    iget-object v5, p0, Lit/sauronsoftware/base64/Base64OutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->linecounter:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->linecounter:I

    iput v1, p0, Lit/sauronsoftware/base64/Base64OutputStream;->bytecounter:I

    iput v1, p0, Lit/sauronsoftware/base64/Base64OutputStream;->buffer:I

    :cond_3
    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 p1, p1, 0xff

    iget v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->bytecounter:I

    mul-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x10

    shl-int/2addr p1, v0

    iget v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->buffer:I

    or-int/2addr p1, v0

    iput p1, p0, Lit/sauronsoftware/base64/Base64OutputStream;->buffer:I

    iget p1, p0, Lit/sauronsoftware/base64/Base64OutputStream;->bytecounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lit/sauronsoftware/base64/Base64OutputStream;->bytecounter:I

    iget p1, p0, Lit/sauronsoftware/base64/Base64OutputStream;->bytecounter:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lit/sauronsoftware/base64/Base64OutputStream;->commit()V

    :cond_0
    return-void
.end method
