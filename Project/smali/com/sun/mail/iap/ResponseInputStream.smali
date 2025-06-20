.class public Lcom/sun/mail/iap/ResponseInputStream;
.super Ljava/lang/Object;
.source "ResponseInputStream.java"


# static fields
.field private static final incrementSlop:I = 0x10

.field private static final maxIncrement:I = 0x40000

.field private static final minIncrement:I = 0x100


# instance fields
.field private bin:Ljava/io/BufferedInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x800

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    return-void
.end method


# virtual methods
.method public readResponse()Lcom/sun/mail/iap/ByteArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Lcom/sun/mail/iap/ResponseInputStream;->readResponse(Lcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    return-object v0
.end method

.method public readResponse(Lcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/iap/ByteArray;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 87
    new-instance p1, Lcom/sun/mail/iap/ByteArray;

    const/16 v1, 0x80

    new-array v2, v1, [B

    invoke-direct {p1, v2, v0, v1}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    move-object v4, v1

    move v3, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    const/4 v5, -0x1

    if-nez v1, :cond_6

    .line 98
    iget-object v2, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    if-ne v2, v5, :cond_1

    goto :goto_3

    :cond_1
    const/16 v5, 0xa

    if-eq v2, v5, :cond_2

    goto :goto_2

    :cond_2
    if-lez v3, :cond_3

    add-int/lit8 v5, v3, -0x1

    .line 101
    aget-byte v5, v4, v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_3

    const/4 v1, 0x1

    .line 104
    :cond_3
    :goto_2
    array-length v5, v4

    if-lt v3, v5, :cond_5

    .line 105
    array-length v4, v4

    const/high16 v5, 0x40000

    if-le v4, v5, :cond_4

    const/high16 v4, 0x40000

    .line 108
    :cond_4
    invoke-virtual {p1, v4}, Lcom/sun/mail/iap/ByteArray;->grow(I)V

    .line 109
    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v4

    :cond_5
    add-int/lit8 v5, v3, 0x1

    int-to-byte v6, v2

    .line 111
    aput-byte v6, v4, v3

    move v3, v5

    goto :goto_1

    :cond_6
    :goto_3
    if-ne v2, v5, :cond_7

    .line 116
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_7
    const/4 v1, 0x5

    if-lt v3, v1, :cond_e

    add-int/lit8 v1, v3, -0x3

    .line 120
    aget-byte v2, v4, v1

    const/16 v5, 0x7d

    if-ne v2, v5, :cond_e

    add-int/lit8 v2, v3, -0x4

    :goto_4
    if-gez v2, :cond_8

    goto :goto_5

    .line 126
    :cond_8
    aget-byte v5, v4, v2

    const/16 v6, 0x7b

    if-eq v5, v6, :cond_9

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_9
    :goto_5
    if-ltz v2, :cond_e

    add-int/lit8 v2, v2, 0x1

    .line 135
    :try_start_0
    invoke-static {v4, v2, v1}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BII)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_d

    .line 142
    array-length v2, v4

    sub-int/2addr v2, v3

    add-int/lit8 v5, v1, 0x10

    if-le v5, v2, :cond_b

    sub-int/2addr v5, v2

    const/16 v2, 0x100

    if-le v2, v5, :cond_a

    goto :goto_6

    :cond_a
    move v2, v5

    .line 145
    :goto_6
    invoke-virtual {p1, v2}, Lcom/sun/mail/iap/ByteArray;->grow(I)V

    .line 147
    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v2

    goto :goto_7

    :cond_b
    move-object v2, v4

    :goto_7
    if-gtz v1, :cond_c

    move-object v1, v2

    move v2, v3

    goto :goto_0

    .line 156
    :cond_c
    iget-object v4, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    invoke-virtual {v4, v2, v3, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    sub-int/2addr v1, v4

    add-int/2addr v3, v4

    goto :goto_7

    :cond_d
    move v2, v3

    move-object v1, v4

    goto/16 :goto_0

    .line 163
    :catch_0
    :cond_e
    invoke-virtual {p1, v3}, Lcom/sun/mail/iap/ByteArray;->setCount(I)V

    return-object p1
.end method
