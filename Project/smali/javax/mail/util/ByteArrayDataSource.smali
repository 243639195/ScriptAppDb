.class public Ljavax/mail/util/ByteArrayDataSource;
.super Ljava/lang/Object;
.source "ByteArrayDataSource.java"

# interfaces
.implements Ljavax/activation/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/util/ByteArrayDataSource$DSByteArrayOutputStream;
    }
.end annotation


# instance fields
.field private data:[B

.field private len:I

.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Ljavax/mail/util/ByteArrayDataSource;->len:I

    const-string v0, ""

    .line 61
    iput-object v0, p0, Ljavax/mail/util/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 84
    new-instance v0, Ljavax/mail/util/ByteArrayDataSource$DSByteArrayOutputStream;

    invoke-direct {v0}, Ljavax/mail/util/ByteArrayDataSource$DSByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    .line 85
    new-array v1, v1, [B

    .line 87
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_1

    .line 89
    invoke-virtual {v0}, Ljavax/mail/util/ByteArrayDataSource$DSByteArrayOutputStream;->getBuf()[B

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/util/ByteArrayDataSource;->data:[B

    .line 90
    invoke-virtual {v0}, Ljavax/mail/util/ByteArrayDataSource$DSByteArrayOutputStream;->getCount()I

    move-result p1

    iput p1, p0, Ljavax/mail/util/ByteArrayDataSource;->len:I

    .line 99
    iget-object p1, p0, Ljavax/mail/util/ByteArrayDataSource;->data:[B

    array-length p1, p1

    iget v1, p0, Ljavax/mail/util/ByteArrayDataSource;->len:I

    sub-int/2addr p1, v1

    const/high16 v1, 0x40000

    if-le p1, v1, :cond_0

    .line 100
    invoke-virtual {v0}, Ljavax/mail/util/ByteArrayDataSource$DSByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/util/ByteArrayDataSource;->data:[B

    .line 101
    iget-object p1, p0, Ljavax/mail/util/ByteArrayDataSource;->data:[B

    array-length p1, p1

    iput p1, p0, Ljavax/mail/util/ByteArrayDataSource;->len:I

    .line 103
    :cond_0
    iput-object p2, p0, Ljavax/mail/util/ByteArrayDataSource;->type:Ljava/lang/String;

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 88
    invoke-virtual {v0, v1, v3, v2}, Ljavax/mail/util/ByteArrayDataSource$DSByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Ljavax/mail/util/ByteArrayDataSource;->len:I

    const-string v0, ""

    .line 61
    iput-object v0, p0, Ljavax/mail/util/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 133
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-direct {v0, p2}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v1, "charset"

    .line 134
    invoke-virtual {v0, v1}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 139
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v0

    .line 141
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/util/ByteArrayDataSource;->data:[B

    .line 142
    iput-object p2, p0, Ljavax/mail/util/ByteArrayDataSource;->type:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Ljavax/mail/util/ByteArrayDataSource;->len:I

    const-string v0, ""

    .line 61
    iput-object v0, p0, Ljavax/mail/util/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 114
    iput-object p1, p0, Ljavax/mail/util/ByteArrayDataSource;->data:[B

    .line 115
    iput-object p2, p0, Ljavax/mail/util/ByteArrayDataSource;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Ljavax/mail/util/ByteArrayDataSource;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Ljavax/mail/util/ByteArrayDataSource;->data:[B

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    iget v0, p0, Ljavax/mail/util/ByteArrayDataSource;->len:I

    if-gez v0, :cond_1

    .line 157
    iget-object v0, p0, Ljavax/mail/util/ByteArrayDataSource;->data:[B

    array-length v0, v0

    iput v0, p0, Ljavax/mail/util/ByteArrayDataSource;->len:I

    .line 158
    :cond_1
    new-instance v0, Ljavax/mail/util/SharedByteArrayInputStream;

    iget-object v1, p0, Ljavax/mail/util/ByteArrayDataSource;->data:[B

    const/4 v2, 0x0

    iget v3, p0, Ljavax/mail/util/ByteArrayDataSource;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljavax/mail/util/SharedByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Ljavax/mail/util/ByteArrayDataSource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot do this"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Ljavax/mail/util/ByteArrayDataSource;->name:Ljava/lang/String;

    return-void
.end method
