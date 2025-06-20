.class public Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;
.super Lorg/apache/http/entity/FileEntity;
.source "FileUploadEntity.java"

# interfaces
.implements Lcom/lidroid/xutils/http/client/entity/UploadEntity;


# instance fields
.field private callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

.field private fileSize:J

.field private uploadedSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .line 33
    invoke-direct {p0, p1, p2}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->uploadedSize:J

    const/4 p2, 0x0

    .line 68
    iput-object p2, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    .line 34
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->fileSize:J

    return-void
.end method


# virtual methods
.method public setCallBackHandler(Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Output stream may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x0

    .line 47
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x1000

    .line 48
    :try_start_1
    new-array v0, v0, [B

    .line 50
    :cond_1
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 59
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 60
    iget-object p1, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz p1, :cond_2

    .line 61
    iget-object v2, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    iget-wide v3, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->fileSize:J

    iget-wide v5, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->uploadedSize:J

    const/4 v7, 0x1

    invoke-interface/range {v2 .. v7}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :cond_2
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_3
    const/4 v3, 0x0

    .line 51
    :try_start_2
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 52
    iget-wide v3, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->uploadedSize:J

    int-to-long v5, v2

    add-long v7, v3, v5

    iput-wide v7, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->uploadedSize:J

    .line 53
    iget-object v2, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz v2, :cond_1

    .line 54
    iget-object v3, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    iget-wide v4, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->fileSize:J

    iget-wide v6, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->uploadedSize:J

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 55
    new-instance p1, Ljava/io/InterruptedIOException;

    const-string v0, "cancel"

    invoke-direct {p1, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v0

    .line 64
    :goto_0
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 65
    throw p1
.end method
