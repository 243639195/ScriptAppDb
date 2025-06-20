.class public Lorg/apache/commons/mail/ByteArrayDataSource;
.super Ljava/lang/Object;
.source "ByteArrayDataSource.java"

# interfaces
.implements Ljavax/activation/DataSource;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BUFFER_SIZE:I = 0x200


# instance fields
.field private baos:Ljava/io/ByteArrayOutputStream;

.field private name:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 62
    iput-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->type:Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1}, Lorg/apache/commons/mail/ByteArrayDataSource;->byteArrayDataSource(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 62
    iput-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->type:Ljava/lang/String;

    .line 120
    :try_start_0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    .line 124
    iget-object p2, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    const-string v0, "iso-8859-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 125
    iget-object p1, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 126
    iget-object p1, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iget-object p1, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 130
    :catch_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The Character Encoding is not supported."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :goto_0
    iget-object p2, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz p2, :cond_1

    .line 136
    iget-object p2, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_1
    throw p1
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 62
    iput-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->type:Ljava/lang/String;

    const/4 p2, 0x0

    .line 79
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 80
    :try_start_1
    invoke-direct {p0, v0}, Lorg/apache/commons/mail/ByteArrayDataSource;->byteArrayDataSource(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    move-object p2, v0

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_0
    throw p1
.end method

.method private byteArrayDataSource(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x200

    const/4 v1, 0x0

    .line 156
    :try_start_0
    new-array v0, v0, [B

    .line 158
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 159
    :try_start_1
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    .line 160
    new-instance p1, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 163
    :goto_0
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x0

    .line 165
    invoke-virtual {p1, v0, v3, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 168
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 177
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 183
    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, p1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 175
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 177
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz p1, :cond_3

    .line 179
    iget-object p1, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_3
    if-eqz v1, :cond_4

    .line 183
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    :cond_4
    throw v0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "application/octet-stream"

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 245
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    .line 246
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->name:Ljava/lang/String;

    return-void
.end method
