.class public Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;
.super Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;
.source "InputStreamBody.java"


# instance fields
.field private final filename:Ljava/lang/String;

.field private final in:Ljava/io/InputStream;

.field private length:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 6

    const-string v4, "no_name"

    const-string v5, "application/octet-stream"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 50
    invoke-direct/range {v0 .. v5}, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;-><init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JLjava/lang/String;)V
    .locals 6

    const-string v5, "application/octet-stream"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;-><init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p5}, Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Input stream may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;->in:Ljava/io/InputStream;

    .line 41
    iput-object p4, p0, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;->filename:Ljava/lang/String;

    .line 42
    iput-wide p2, p0, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;->length:J

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;->length:J

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "binary"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Output stream may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/16 v0, 0x1000

    .line 62
    :try_start_0
    new-array v0, v0, [B

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 71
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;->in:Ljava/io/InputStream;

    invoke-static {p1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 65
    :try_start_1
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 66
    iget-object v3, p0, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;->callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    iget-wide v4, v3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    int-to-long v6, v1

    add-long v8, v4, v6

    iput-wide v8, v3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 67
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;->callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->doCallBack(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    new-instance p1, Ljava/io/InterruptedIOException;

    const-string v0, "cancel"

    invoke-direct {p1, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 73
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 74
    throw p1
.end method
