.class Lcom/sun/mail/imap/LengthCounter;
.super Ljava/io/OutputStream;
.source "IMAPFolder.java"


# instance fields
.field private buf:[B

.field private maxsize:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 2767
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 2763
    iput v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    const/16 v0, 0x2000

    .line 2768
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    .line 2769
    iput p1, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .line 2821
    iget-object v0, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 2817
    iget v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    return v0
.end method

.method public write(I)V
    .locals 5

    .line 2773
    iget v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    add-int/lit8 v0, v0, 0x1

    .line 2774
    iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    if-eqz v1, :cond_2

    .line 2775
    iget v1, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-ltz v1, :cond_0

    const/4 p1, 0x0

    .line 2776
    iput-object p1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    goto :goto_0

    .line 2777
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 2778
    iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    .line 2779
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2780
    iput-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    .line 2783
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 2786
    :cond_2
    :goto_0
    iput v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2813
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/mail/imap/LengthCounter;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 5

    if-ltz p2, :cond_5

    .line 2790
    array-length v0, p1

    if-gt p2, v0, :cond_5

    if-ltz p3, :cond_5

    add-int v0, p2, p3

    .line 2791
    array-length v1, p1

    if-gt v0, v1, :cond_5

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p3, :cond_1

    return-void

    .line 2796
    :cond_1
    iget v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    add-int/2addr v0, p3

    .line 2797
    iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    if-eqz v1, :cond_4

    .line 2798
    iget v1, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-le v0, v1, :cond_2

    iget v1, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-ltz v1, :cond_2

    const/4 p1, 0x0

    .line 2799
    iput-object p1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    goto :goto_0

    .line 2800
    :cond_2
    iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    array-length v1, v1

    if-le v0, v1, :cond_3

    .line 2801
    iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    .line 2802
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2803
    iput-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    .line 2806
    :cond_3
    iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2809
    :cond_4
    :goto_0
    iput v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    return-void

    .line 2792
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
