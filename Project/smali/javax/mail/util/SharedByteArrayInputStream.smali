.class public Ljavax/mail/util/SharedByteArrayInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "SharedByteArrayInputStream.java"

# interfaces
.implements Ljavax/mail/internet/SharedInputStream;


# instance fields
.field protected start:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p1, 0x0

    .line 60
    iput p1, p0, Ljavax/mail/util/SharedByteArrayInputStream;->start:I

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const/4 p1, 0x0

    .line 60
    iput p1, p0, Ljavax/mail/util/SharedByteArrayInputStream;->start:I

    .line 83
    iput p2, p0, Ljavax/mail/util/SharedByteArrayInputStream;->start:I

    return-void
.end method


# virtual methods
.method public getPosition()J
    .locals 2

    .line 93
    iget v0, p0, Ljavax/mail/util/SharedByteArrayInputStream;->pos:I

    iget v1, p0, Ljavax/mail/util/SharedByteArrayInputStream;->start:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public newStream(JJ)Ljava/io/InputStream;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 110
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "start < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v2, p3, v0

    if-nez v2, :cond_1

    .line 112
    iget p3, p0, Ljavax/mail/util/SharedByteArrayInputStream;->count:I

    iget p4, p0, Ljavax/mail/util/SharedByteArrayInputStream;->start:I

    sub-int/2addr p3, p4

    int-to-long p3, p3

    .line 113
    :cond_1
    new-instance v0, Ljavax/mail/util/SharedByteArrayInputStream;

    iget-object v1, p0, Ljavax/mail/util/SharedByteArrayInputStream;->buf:[B

    .line 114
    iget v2, p0, Ljavax/mail/util/SharedByteArrayInputStream;->start:I

    long-to-int v3, p1

    add-int/2addr v2, v3

    sub-long v3, p3, p1

    long-to-int p1, v3

    .line 113
    invoke-direct {v0, v1, v2, p1}, Ljavax/mail/util/SharedByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method
