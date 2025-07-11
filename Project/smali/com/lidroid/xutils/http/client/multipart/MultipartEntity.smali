.class public Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;
.super Ljava/lang/Object;
.source "MultipartEntity.java"

# interfaces
.implements Lcom/lidroid/xutils/http/client/entity/UploadEntity;
.implements Lorg/apache/http/HttpEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;
    }
.end annotation


# static fields
.field private static final MULTIPART_CHARS:[C


# instance fields
.field private final boundary:Ljava/lang/String;

.field private callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

.field private final charset:Ljava/nio/charset/Charset;

.field private contentType:Lorg/apache/http/Header;

.field private volatile dirty:Z

.field private length:J

.field private final multipart:Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;

.field private multipartSubtype:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 70
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 68
    sput-object v0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->MULTIPART_CHARS:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 124
    sget-object v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;->STRICT:Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;-><init>(Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, v0, v0}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;-><init>(Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    invoke-direct {v0}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    const-string v0, "form-data"

    .line 128
    iput-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->multipartSubtype:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->generateBoundary()Ljava/lang/String;

    move-result-object p2

    .line 98
    :cond_0
    iput-object p2, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->boundary:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 100
    sget-object p1, Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;->STRICT:Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;

    :cond_1
    if-eqz p3, :cond_2

    goto :goto_0

    .line 102
    :cond_2
    sget-object p3, Lcom/lidroid/xutils/http/client/multipart/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    :goto_0
    iput-object p3, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->charset:Ljava/nio/charset/Charset;

    .line 103
    new-instance p2, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;

    iget-object p3, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->multipartSubtype:Ljava/lang/String;

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->charset:Ljava/nio/charset/Charset;

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->boundary:Ljava/lang/String;

    invoke-direct {p2, p3, v0, v1, p1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;)V

    iput-object p2, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->multipart:Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;

    .line 104
    new-instance p1, Lorg/apache/http/message/BasicHeader;

    const-string p2, "Content-Type"

    .line 106
    iget-object p3, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->boundary:Ljava/lang/String;

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p3, v0}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->generateContentType(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->contentType:Lorg/apache/http/Header;

    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->dirty:Z

    return-void
.end method


# virtual methods
.method public addPart(Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->multipart:Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->addBodyPart(Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;)V

    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->dirty:Z

    return-void
.end method

.method public addPart(Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V
    .locals 1

    .line 170
    new-instance v0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;

    invoke-direct {v0, p1, p2}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;-><init>(Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->addPart(Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;)V

    return-void
.end method

.method public addPart(Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;Ljava/lang/String;)V
    .locals 1

    .line 174
    new-instance v0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;

    invoke-direct {v0, p1, p2, p3}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;-><init>(Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->addPart(Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;)V

    return-void
.end method

.method public consumeContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Streaming entity does not implement #consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected generateBoundary()Ljava/lang/String;
    .locals 6

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0xb

    .line 157
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    sget-object v4, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->MULTIPART_CHARS:[C

    sget-object v5, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->MULTIPART_CHARS:[C

    array-length v5, v5

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected generateContentType(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "multipart/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->multipartSubtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multipart form entity does not implement #getContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 196
    iget-boolean v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->dirty:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->multipart:Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;

    invoke-virtual {v0}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->getTotalLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->length:J

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->dirty:Z

    .line 200
    :cond_0
    iget-wide v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->length:J

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->contentType:Lorg/apache/http/Header;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .line 188
    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isRepeatable()Z
    .locals 6

    .line 178
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->multipart:Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;

    invoke-virtual {v0}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->getBodyParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;

    .line 179
    invoke-virtual {v1}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->getBody()Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;

    move-result-object v1

    .line 180
    invoke-interface {v1}, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;->getContentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .line 192
    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setCallBackHandler(Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    iput-object p1, v0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    return-void
.end method

.method public setMultipartSubtype(Ljava/lang/String;)V
    .locals 3

    .line 134
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->multipartSubtype:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->multipart:Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->setSubType(Ljava/lang/String;)V

    .line 136
    new-instance p1, Lorg/apache/http/message/BasicHeader;

    const-string v0, "Content-Type"

    .line 138
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->boundary:Ljava/lang/String;

    iget-object v2, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1, v2}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->generateContentType(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->contentType:Lorg/apache/http/Header;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->getContentLength()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->totalLength:J

    .line 226
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->multipart:Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    invoke-virtual {v0, p1, v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeTo(Ljava/io/OutputStream;Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;)V

    return-void
.end method
