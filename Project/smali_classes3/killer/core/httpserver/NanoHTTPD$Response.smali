.class public Lkiller/core/httpserver/NanoHTTPD$Response;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkiller/core/httpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkiller/core/httpserver/NanoHTTPD$Response$ChunkedOutputStream;,
        Lkiller/core/httpserver/NanoHTTPD$Response$Status;,
        Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;
    }
.end annotation


# instance fields
.field private chunkedTransfer:Z

.field private contentLength:J

.field private data:Ljava/io/InputStream;

.field private encodeAsGzip:Z

.field private final header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keepAlive:Z

.field private final lowerCaseHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;

.field private requestMethod:Lkiller/core/httpserver/NanoHTTPD$Method;

.field private status:Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;


# direct methods
.method protected constructor <init>(Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 6
    .param p1, "status"    # Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;
    .param p4, "totalBytes"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1427
    new-instance v2, Lkiller/core/httpserver/NanoHTTPD$Response$1;

    invoke-direct {v2, p0}, Lkiller/core/httpserver/NanoHTTPD$Response$1;-><init>(Lkiller/core/httpserver/NanoHTTPD$Response;)V

    iput-object v2, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    .line 1440
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->lowerCaseHeader:Ljava/util/Map;

    .line 1460
    iput-object p1, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->status:Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;

    .line 1461
    iput-object p2, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 1462
    if-nez p3, :cond_1

    .line 1463
    new-instance v2, Ljava/io/ByteArrayInputStream;

    new-array v3, v0, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v2, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 1464
    iput-wide v4, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->contentLength:J

    .line 1469
    :goto_0
    iget-wide v2, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->contentLength:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->chunkedTransfer:Z

    .line 1470
    iput-boolean v1, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->keepAlive:Z

    .line 1471
    return-void

    .line 1466
    :cond_1
    iput-object p3, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 1467
    iput-wide p4, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->contentLength:J

    goto :goto_0
.end method

.method static synthetic access$600(Lkiller/core/httpserver/NanoHTTPD$Response;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lkiller/core/httpserver/NanoHTTPD$Response;

    .prologue
    .line 1280
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->lowerCaseHeader:Ljava/util/Map;

    return-object v0
.end method

.method private sendBody(Ljava/io/OutputStream;J)V
    .locals 10
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "pending"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1638
    const-wide/16 v0, 0x4000

    .line 1639
    .local v0, "BUFFER_SIZE":J
    long-to-int v8, v0

    new-array v2, v8, [B

    .line 1640
    .local v2, "buff":[B
    const-wide/16 v8, -0x1

    cmp-long v8, p2, v8

    if-nez v8, :cond_3

    const/4 v6, 0x1

    .line 1641
    .local v6, "sendEverything":Z
    :cond_0
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v8, p2, v8

    if-gtz v8, :cond_1

    if-eqz v6, :cond_2

    .line 1642
    :cond_1
    if-eqz v6, :cond_4

    move-wide v4, v0

    .line 1643
    .local v4, "bytesToRead":J
    :goto_1
    iget-object v8, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    long-to-int v9, v4

    invoke-virtual {v8, v2, v7, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 1644
    .local v3, "read":I
    if-gtz v3, :cond_5

    .line 1652
    .end local v3    # "read":I
    .end local v4    # "bytesToRead":J
    :cond_2
    return-void

    .end local v6    # "sendEverything":Z
    :cond_3
    move v6, v7

    .line 1640
    goto :goto_0

    .line 1642
    .restart local v6    # "sendEverything":Z
    :cond_4
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_1

    .line 1647
    .restart local v3    # "read":I
    .restart local v4    # "bytesToRead":J
    :cond_5
    invoke-virtual {p1, v2, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1648
    if-nez v6, :cond_0

    .line 1649
    int-to-long v8, v3

    sub-long/2addr p2, v8

    goto :goto_0
.end method

.method private sendBodyWithCorrectEncoding(Ljava/io/OutputStream;J)V
    .locals 4
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "pending"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1615
    iget-boolean v1, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->encodeAsGzip:Z

    if-eqz v1, :cond_0

    .line 1616
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1617
    .local v0, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lkiller/core/httpserver/NanoHTTPD$Response;->sendBody(Ljava/io/OutputStream;J)V

    .line 1618
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 1622
    .end local v0    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :goto_0
    return-void

    .line 1620
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkiller/core/httpserver/NanoHTTPD$Response;->sendBody(Ljava/io/OutputStream;J)V

    goto :goto_0
.end method

.method private sendBodyWithCorrectTransferAndEncoding(Ljava/io/OutputStream;J)V
    .locals 4
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "pending"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1605
    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->requestMethod:Lkiller/core/httpserver/NanoHTTPD$Method;

    sget-object v2, Lkiller/core/httpserver/NanoHTTPD$Method;->HEAD:Lkiller/core/httpserver/NanoHTTPD$Method;

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->chunkedTransfer:Z

    if-eqz v1, :cond_0

    .line 1606
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$Response$ChunkedOutputStream;

    invoke-direct {v0, p1}, Lkiller/core/httpserver/NanoHTTPD$Response$ChunkedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1607
    .local v0, "chunkedOutputStream":Lkiller/core/httpserver/NanoHTTPD$Response$ChunkedOutputStream;
    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lkiller/core/httpserver/NanoHTTPD$Response;->sendBodyWithCorrectEncoding(Ljava/io/OutputStream;J)V

    .line 1608
    invoke-virtual {v0}, Lkiller/core/httpserver/NanoHTTPD$Response$ChunkedOutputStream;->finish()V

    .line 1612
    .end local v0    # "chunkedOutputStream":Lkiller/core/httpserver/NanoHTTPD$Response$ChunkedOutputStream;
    :goto_0
    return-void

    .line 1610
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkiller/core/httpserver/NanoHTTPD$Response;->sendBodyWithCorrectEncoding(Ljava/io/OutputStream;J)V

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1484
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1475
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1478
    :cond_0
    return-void
.end method

.method public closeConnection(Z)V
    .locals 3
    .param p1, "close"    # Z

    .prologue
    .line 1495
    if-eqz p1, :cond_0

    .line 1496
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    const-string v1, "connection"

    const-string v2, "close"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    :goto_0
    return-void

    .line 1498
    :cond_0
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    const-string v1, "connection"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 1510
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1514
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->lowerCaseHeader:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1518
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMethod()Lkiller/core/httpserver/NanoHTTPD$Method;
    .locals 1

    .prologue
    .line 1522
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->requestMethod:Lkiller/core/httpserver/NanoHTTPD$Method;

    return-object v0
.end method

.method public getStatus()Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;
    .locals 1

    .prologue
    .line 1526
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->status:Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;

    return-object v0
.end method

.method public isCloseConnection()Z
    .locals 2

    .prologue
    .line 1506
    const-string v0, "close"

    const-string v1, "connection"

    invoke-virtual {p0, v1}, Lkiller/core/httpserver/NanoHTTPD$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1587
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1588
    return-void
.end method

.method protected send(Ljava/io/OutputStream;)V
    .locals 10
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 1541
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1542
    .local v1, "gmtFrmt":Ljava/text/SimpleDateFormat;
    const-string v6, "GMT"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1545
    :try_start_0
    iget-object v6, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->status:Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;

    if-nez v6, :cond_0

    .line 1546
    new-instance v6, Ljava/lang/Error;

    const-string v7, "sendResponse(): Status can\'t be null."

    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1580
    :catch_0
    move-exception v2

    .line 1581
    .local v2, "ioe":Ljava/io/IOException;
    invoke-static {}, Lkiller/core/httpserver/NanoHTTPD;->access$200()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v8, "Could not send response to the client"

    invoke-virtual {v6, v7, v8, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1583
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_0
    return-void

    .line 1548
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    new-instance v8, Lkiller/core/httpserver/NanoHTTPD$ContentType;

    iget-object v9, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    invoke-direct {v8, v9}, Lkiller/core/httpserver/NanoHTTPD$ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lkiller/core/httpserver/NanoHTTPD$ContentType;->getEncoding()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 1549
    .local v3, "pw":Ljava/io/PrintWriter;
    const-string v6, "HTTP/1.1 "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    iget-object v7, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->status:Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;

    invoke-interface {v7}, Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    const-string v7, " \r\n"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1550
    iget-object v6, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 1551
    const-string v6, "Content-Type"

    iget-object v7, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v3, v6, v7}, Lkiller/core/httpserver/NanoHTTPD$Response;->printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    :cond_1
    const-string v6, "date"

    invoke-virtual {p0, v6}, Lkiller/core/httpserver/NanoHTTPD$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 1554
    const-string v6, "Date"

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lkiller/core/httpserver/NanoHTTPD$Response;->printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    :cond_2
    iget-object v6, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1557
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v3, v6, v7}, Lkiller/core/httpserver/NanoHTTPD$Response;->printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1559
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string v6, "connection"

    invoke-virtual {p0, v6}, Lkiller/core/httpserver/NanoHTTPD$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    .line 1560
    const-string v7, "Connection"

    iget-boolean v6, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->keepAlive:Z

    if-eqz v6, :cond_8

    const-string v6, "keep-alive"

    :goto_2
    invoke-virtual {p0, v3, v7, v6}, Lkiller/core/httpserver/NanoHTTPD$Response;->printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    :cond_4
    const-string v6, "content-length"

    invoke-virtual {p0, v6}, Lkiller/core/httpserver/NanoHTTPD$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1563
    const/4 v6, 0x0

    iput-boolean v6, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->encodeAsGzip:Z

    .line 1565
    :cond_5
    iget-boolean v6, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->encodeAsGzip:Z

    if-eqz v6, :cond_6

    .line 1566
    const-string v6, "Content-Encoding"

    const-string v7, "gzip"

    invoke-virtual {p0, v3, v6, v7}, Lkiller/core/httpserver/NanoHTTPD$Response;->printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lkiller/core/httpserver/NanoHTTPD$Response;->setChunkedTransfer(Z)V

    .line 1569
    :cond_6
    iget-object v6, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    if-eqz v6, :cond_9

    iget-wide v4, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->contentLength:J

    .line 1570
    .local v4, "pending":J
    :goto_3
    iget-object v6, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->requestMethod:Lkiller/core/httpserver/NanoHTTPD$Method;

    sget-object v7, Lkiller/core/httpserver/NanoHTTPD$Method;->HEAD:Lkiller/core/httpserver/NanoHTTPD$Method;

    if-eq v6, v7, :cond_a

    iget-boolean v6, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->chunkedTransfer:Z

    if-eqz v6, :cond_a

    .line 1571
    const-string v6, "Transfer-Encoding"

    const-string v7, "chunked"

    invoke-virtual {p0, v3, v6, v7}, Lkiller/core/httpserver/NanoHTTPD$Response;->printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    :cond_7
    :goto_4
    const-string v6, "\r\n"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1576
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 1577
    invoke-direct {p0, p1, v4, v5}, Lkiller/core/httpserver/NanoHTTPD$Response;->sendBodyWithCorrectTransferAndEncoding(Ljava/io/OutputStream;J)V

    .line 1578
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 1579
    iget-object v6, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    invoke-static {v6}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1560
    .end local v4    # "pending":J
    :cond_8
    const-string v6, "close"

    goto :goto_2

    .line 1569
    :cond_9
    const-wide/16 v4, 0x0

    goto :goto_3

    .line 1572
    .restart local v4    # "pending":J
    :cond_a
    iget-boolean v6, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->encodeAsGzip:Z

    if-nez v6, :cond_7

    .line 1573
    invoke-virtual {p0, v3, v4, v5}, Lkiller/core/httpserver/NanoHTTPD$Response;->sendContentLengthHeaderIfNotAlreadyPresent(Ljava/io/PrintWriter;J)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    goto :goto_4
.end method

.method protected sendContentLengthHeaderIfNotAlreadyPresent(Ljava/io/PrintWriter;J)J
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "defaultSize"    # J

    .prologue
    .line 1591
    const-string v4, "content-length"

    invoke-virtual {p0, v4}, Lkiller/core/httpserver/NanoHTTPD$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1592
    .local v0, "contentLengthString":Ljava/lang/String;
    move-wide v2, p2

    .line 1593
    .local v2, "size":J
    if-eqz v0, :cond_0

    .line 1595
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1600
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1601
    return-wide v2

    .line 1596
    :catch_0
    move-exception v1

    .line 1597
    .local v1, "ex":Ljava/lang/NumberFormatException;
    invoke-static {}, Lkiller/core/httpserver/NanoHTTPD;->access$200()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content-length was no number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setChunkedTransfer(Z)V
    .locals 0
    .param p1, "chunkedTransfer"    # Z

    .prologue
    .line 1655
    iput-boolean p1, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->chunkedTransfer:Z

    .line 1656
    return-void
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "data"    # Ljava/io/InputStream;

    .prologue
    .line 1659
    iput-object p1, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 1660
    return-void
.end method

.method public setGzipEncoding(Z)V
    .locals 0
    .param p1, "encodeAsGzip"    # Z

    .prologue
    .line 1530
    iput-boolean p1, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->encodeAsGzip:Z

    .line 1531
    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 0
    .param p1, "useKeepAlive"    # Z

    .prologue
    .line 1534
    iput-boolean p1, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->keepAlive:Z

    .line 1535
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1663
    iput-object p1, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 1664
    return-void
.end method

.method public setRequestMethod(Lkiller/core/httpserver/NanoHTTPD$Method;)V
    .locals 0
    .param p1, "requestMethod"    # Lkiller/core/httpserver/NanoHTTPD$Method;

    .prologue
    .line 1667
    iput-object p1, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->requestMethod:Lkiller/core/httpserver/NanoHTTPD$Method;

    .line 1668
    return-void
.end method

.method public setStatus(Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;)V
    .locals 0
    .param p1, "status"    # Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;

    .prologue
    .line 1671
    iput-object p1, p0, Lkiller/core/httpserver/NanoHTTPD$Response;->status:Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;

    .line 1672
    return-void
.end method
