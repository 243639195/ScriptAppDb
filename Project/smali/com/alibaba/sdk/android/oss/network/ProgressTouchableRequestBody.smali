.class public Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;
.super Lokhttp3/RequestBody;
.source "ProgressTouchableRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/sdk/android/oss/model/OSSRequest;",
        ">",
        "Lokhttp3/RequestBody;"
    }
.end annotation


# static fields
.field private static final SEGMENT_SIZE:I = 0x800


# instance fields
.field private callback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

.field private contentLength:J

.field private contentType:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field private request:Lcom/alibaba/sdk/android/oss/model/OSSRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JLjava/lang/String;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->inputStream:Ljava/io/InputStream;

    .line 33
    iput-object p4, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->contentType:Ljava/lang/String;

    .line 34
    iput-wide p2, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->contentLength:J

    .line 35
    invoke-virtual {p5}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->callback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    .line 36
    invoke-virtual {p5}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRequest()Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->request:Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->contentLength:J

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->contentType:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 51
    iget-object v1, v0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 55
    :goto_0
    iget-wide v6, v0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->contentLength:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    .line 56
    iget-wide v6, v0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->contentLength:J

    sub-long v8, v6, v4

    const-wide/16 v6, 0x800

    .line 57
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 59
    invoke-interface/range {p1 .. p1}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v8

    invoke-interface {v1, v8, v6, v7}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-nez v10, :cond_0

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    add-long v15, v4, v6

    .line 65
    invoke-interface/range {p1 .. p1}, Lokio/BufferedSink;->flush()V

    .line 67
    iget-object v4, v0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->callback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    if-eqz v4, :cond_1

    cmp-long v4, v15, v2

    if-eqz v4, :cond_1

    .line 68
    iget-object v9, v0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->callback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    iget-object v10, v0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->request:Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    iget-wide v13, v0, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;->contentLength:J

    move-wide v11, v15

    invoke-interface/range {v9 .. v14}, Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;->onProgress(Ljava/lang/Object;JJ)V

    :cond_1
    move-wide v4, v15

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 72
    invoke-interface {v1}, Lokio/Source;->close()V

    :cond_3
    return-void
.end method
