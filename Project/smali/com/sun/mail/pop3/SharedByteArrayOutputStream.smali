.class Lcom/sun/mail/pop3/SharedByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "Protocol.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 426
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public toStream()Ljava/io/InputStream;
    .locals 4

    .line 430
    new-instance v0, Ljavax/mail/util/SharedByteArrayInputStream;

    iget-object v1, p0, Lcom/sun/mail/pop3/SharedByteArrayOutputStream;->buf:[B

    iget v2, p0, Lcom/sun/mail/pop3/SharedByteArrayOutputStream;->count:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljavax/mail/util/SharedByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method
