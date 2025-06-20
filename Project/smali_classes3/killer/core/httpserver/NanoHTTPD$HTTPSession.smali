.class public Lkiller/core/httpserver/NanoHTTPD$HTTPSession;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Lkiller/core/httpserver/NanoHTTPD$IHTTPSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkiller/core/httpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HTTPSession"
.end annotation


# static fields
.field public static final BUFSIZE:I = 0x2000

.field public static final MAX_HEADER_SIZE:I = 0x400

.field private static final MEMORY_STORE_LIMIT:I = 0x400

.field private static final REQUEST_BUFFER_LEN:I = 0x200


# instance fields
.field private cookies:Lkiller/core/httpserver/NanoHTTPD$CookieHandler;

.field private headers:Ljava/util/Map;
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

.field private final inputStream:Ljava/io/BufferedInputStream;

.field private method:Lkiller/core/httpserver/NanoHTTPD$Method;

.field private final outputStream:Ljava/io/OutputStream;

.field private parms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private protocolVersion:Ljava/lang/String;

.field private queryParameterString:Ljava/lang/String;

.field private remoteHostname:Ljava/lang/String;

.field private remoteIp:Ljava/lang/String;

.field private rlen:I

.field private splitbyte:I

.field private final tempFileManager:Lkiller/core/httpserver/NanoHTTPD$TempFileManager;

.field final synthetic this$0:Lkiller/core/httpserver/NanoHTTPD;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkiller/core/httpserver/NanoHTTPD;Lkiller/core/httpserver/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "this$0"    # Lkiller/core/httpserver/NanoHTTPD;
    .param p2, "tempFileManager"    # Lkiller/core/httpserver/NanoHTTPD$TempFileManager;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 594
    iput-object p1, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->this$0:Lkiller/core/httpserver/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    iput-object p2, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->tempFileManager:Lkiller/core/httpserver/NanoHTTPD$TempFileManager;

    .line 596
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, p3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    .line 597
    iput-object p4, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    .line 598
    return-void
.end method

.method public constructor <init>(Lkiller/core/httpserver/NanoHTTPD;Lkiller/core/httpserver/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "this$0"    # Lkiller/core/httpserver/NanoHTTPD;
    .param p2, "tempFileManager"    # Lkiller/core/httpserver/NanoHTTPD$TempFileManager;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "outputStream"    # Ljava/io/OutputStream;
    .param p5, "inetAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 600
    iput-object p1, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->this$0:Lkiller/core/httpserver/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-object p2, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->tempFileManager:Lkiller/core/httpserver/NanoHTTPD$TempFileManager;

    .line 602
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, p3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    .line 603
    iput-object p4, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    .line 604
    invoke-virtual {p5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "127.0.0.1"

    :goto_0
    iput-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    .line 605
    invoke-virtual {p5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "localhost"

    :goto_1
    iput-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->remoteHostname:Ljava/lang/String;

    .line 606
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    .line 607
    return-void

    .line 604
    :cond_2
    invoke-virtual {p5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 605
    :cond_3
    invoke-virtual {p5}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private decodeHeader(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .param p1, "in"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkiller/core/httpserver/NanoHTTPD$ResponseException;
        }
    .end annotation

    .prologue
    .line 615
    .local p2, "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "inLine":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 665
    :goto_0
    return-void

    .line 620
    :cond_0
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 621
    .local v5, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_1

    .line 622
    new-instance v7, Lkiller/core/httpserver/NanoHTTPD$ResponseException;

    sget-object v8, Lkiller/core/httpserver/NanoHTTPD$Response$Status;->BAD_REQUEST:Lkiller/core/httpserver/NanoHTTPD$Response$Status;

    const-string v9, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    invoke-direct {v7, v8, v9}, Lkiller/core/httpserver/NanoHTTPD$ResponseException;-><init>(Lkiller/core/httpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    .end local v0    # "inLine":Ljava/lang/String;
    .end local v5    # "st":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v1

    .line 663
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v7, Lkiller/core/httpserver/NanoHTTPD$ResponseException;

    sget-object v8, Lkiller/core/httpserver/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lkiller/core/httpserver/NanoHTTPD$Response$Status;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v1}, Lkiller/core/httpserver/NanoHTTPD$ResponseException;-><init>(Lkiller/core/httpserver/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 625
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v0    # "inLine":Ljava/lang/String;
    .restart local v5    # "st":Ljava/util/StringTokenizer;
    :cond_1
    :try_start_1
    const-string v7, "method"

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_2

    .line 628
    new-instance v7, Lkiller/core/httpserver/NanoHTTPD$ResponseException;

    sget-object v8, Lkiller/core/httpserver/NanoHTTPD$Response$Status;->BAD_REQUEST:Lkiller/core/httpserver/NanoHTTPD$Response$Status;

    const-string v9, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    invoke-direct {v7, v8, v9}, Lkiller/core/httpserver/NanoHTTPD$ResponseException;-><init>(Lkiller/core/httpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v7

    .line 631
    :cond_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 634
    .local v6, "uri":Ljava/lang/String;
    const/16 v7, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 635
    .local v4, "qmi":I
    if-ltz v4, :cond_4

    .line 636
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, p3}, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Map;)V

    .line 637
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkiller/core/httpserver/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 646
    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 647
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->protocolVersion:Ljava/lang/String;

    .line 652
    :goto_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 653
    .local v2, "line":Ljava/lang/String;
    :goto_3
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 654
    const/16 v7, 0x3a

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 655
    .local v3, "p":I
    if-ltz v3, :cond_3

    .line 656
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    :cond_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 659
    goto :goto_3

    .line 639
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "p":I
    :cond_4
    invoke-static {v6}, Lkiller/core/httpserver/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 649
    :cond_5
    const-string v7, "HTTP/1.1"

    iput-object v7, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->protocolVersion:Ljava/lang/String;

    .line 650
    invoke-static {}, Lkiller/core/httpserver/NanoHTTPD;->access$200()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v9, "no protocol version specified, strange. Assuming HTTP/1.1."

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    .line 661
    .restart local v2    # "line":Ljava/lang/String;
    :cond_6
    const-string v7, "uri"

    invoke-interface {p2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private decodeMultipartFormData(Lkiller/core/httpserver/NanoHTTPD$ContentType;Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/util/Map;)V
    .locals 32
    .param p1, "contentType"    # Lkiller/core/httpserver/NanoHTTPD$ContentType;
    .param p2, "fbuf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkiller/core/httpserver/NanoHTTPD$ContentType;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkiller/core/httpserver/NanoHTTPD$ResponseException;
        }
    .end annotation

    .prologue
    .line 671
    .local p3, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p4, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v25, 0x0

    .line 673
    .local v25, "pcount":I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lkiller/core/httpserver/NanoHTTPD$ContentType;->getBoundary()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->getBoundaryPositions(Ljava/nio/ByteBuffer;[B)[I

    move-result-object v6

    .line 674
    .local v6, "boundaryIdxs":[I
    array-length v0, v6

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_0

    .line 675
    new-instance v29, Lkiller/core/httpserver/NanoHTTPD$ResponseException;

    sget-object v30, Lkiller/core/httpserver/NanoHTTPD$Response$Status;->BAD_REQUEST:Lkiller/core/httpserver/NanoHTTPD$Response$Status;

    const-string v31, "BAD REQUEST: Content type is multipart/form-data but contains less than two boundary strings."

    invoke-direct/range {v29 .. v31}, Lkiller/core/httpserver/NanoHTTPD$ResponseException;-><init>(Lkiller/core/httpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v29
    :try_end_0
    .catch Lkiller/core/httpserver/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 767
    .end local v6    # "boundaryIdxs":[I
    :catch_0
    move-exception v27

    .line 768
    .local v27, "re":Lkiller/core/httpserver/NanoHTTPD$ResponseException;
    :goto_0
    throw v27

    .line 678
    .end local v27    # "re":Lkiller/core/httpserver/NanoHTTPD$ResponseException;
    .restart local v6    # "boundaryIdxs":[I
    :cond_0
    const/16 v29, 0x400

    :try_start_1
    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 679
    .local v21, "partHeaderBuff":[B
    const/4 v5, 0x0

    .local v5, "boundaryIdx":I
    :goto_1
    array-length v0, v6

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v29

    if-ge v5, v0, :cond_10

    .line 680
    aget v29, v6, v5

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 681
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v29

    const/16 v30, 0x400

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v15

    .line 682
    .local v15, "len":I
    :goto_2
    const/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 683
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v29, Ljava/io/InputStreamReader;

    new-instance v30, Ljava/io/ByteArrayInputStream;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v15}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 684
    invoke-virtual/range {p1 .. p1}, Lkiller/core/httpserver/NanoHTTPD$ContentType;->getEncoding()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v31

    invoke-direct/range {v29 .. v31}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object/from16 v0, v29

    invoke-direct {v13, v0, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 686
    .local v13, "in":Ljava/io/BufferedReader;
    const/4 v11, 0x0

    .line 688
    .local v11, "headerLines":I
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .line 689
    .local v17, "mpline":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    .line 690
    if-eqz v17, :cond_1

    invoke-virtual/range {p1 .. p1}, Lkiller/core/httpserver/NanoHTTPD$ContentType;->getBoundary()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_3

    .line 691
    :cond_1
    new-instance v29, Lkiller/core/httpserver/NanoHTTPD$ResponseException;

    sget-object v30, Lkiller/core/httpserver/NanoHTTPD$Response$Status;->BAD_REQUEST:Lkiller/core/httpserver/NanoHTTPD$Response$Status;

    const-string v31, "BAD REQUEST: Content type is multipart/form-data but chunk does not start with boundary."

    invoke-direct/range {v29 .. v31}, Lkiller/core/httpserver/NanoHTTPD$ResponseException;-><init>(Lkiller/core/httpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v29
    :try_end_1
    .catch Lkiller/core/httpserver/NanoHTTPD$ResponseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 769
    .end local v5    # "boundaryIdx":I
    .end local v6    # "boundaryIdxs":[I
    .end local v11    # "headerLines":I
    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v15    # "len":I
    .end local v17    # "mpline":Ljava/lang/String;
    .end local v21    # "partHeaderBuff":[B
    :catch_1
    move-exception v9

    .line 770
    .local v9, "e":Ljava/lang/Exception;
    :goto_3
    new-instance v29, Lkiller/core/httpserver/NanoHTTPD$ResponseException;

    sget-object v30, Lkiller/core/httpserver/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lkiller/core/httpserver/NanoHTTPD$Response$Status;

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v29 .. v31}, Lkiller/core/httpserver/NanoHTTPD$ResponseException;-><init>(Lkiller/core/httpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v29

    .line 681
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v5    # "boundaryIdx":I
    .restart local v6    # "boundaryIdxs":[I
    .restart local v21    # "partHeaderBuff":[B
    :cond_2
    const/16 v15, 0x400

    goto :goto_2

    .line 694
    .restart local v11    # "headerLines":I
    .restart local v13    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "len":I
    .restart local v17    # "mpline":Ljava/lang/String;
    :cond_3
    const/16 v23, 0x0

    .local v23, "partName":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "fileName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 696
    .local v18, "partContentType":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .line 697
    add-int/lit8 v11, v11, 0x1

    .line 698
    :goto_4
    if-eqz v17, :cond_9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_9

    .line 699
    invoke-static {}, Lkiller/core/httpserver/NanoHTTPD;->access$300()Ljava/util/regex/Pattern;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 700
    .local v16, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->matches()Z

    move-result v29

    if-eqz v29, :cond_7

    .line 701
    const/16 v29, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 702
    .local v4, "attributeString":Ljava/lang/String;
    invoke-static {}, Lkiller/core/httpserver/NanoHTTPD;->access$400()Ljava/util/regex/Pattern;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    :try_end_2
    .catch Lkiller/core/httpserver/NanoHTTPD$ResponseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v16

    move/from16 v26, v25

    .line 703
    .end local v25    # "pcount":I
    .local v26, "pcount":I
    :goto_5
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v29

    if-eqz v29, :cond_6

    .line 704
    const/16 v29, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 705
    .local v14, "key":Ljava/lang/String;
    const-string v29, "name"

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 706
    const/16 v29, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    move/from16 v25, v26

    .end local v26    # "pcount":I
    .restart local v25    # "pcount":I
    :goto_6
    move/from16 v26, v25

    .line 718
    .end local v25    # "pcount":I
    .restart local v26    # "pcount":I
    goto :goto_5

    .line 707
    :cond_4
    const-string v29, "filename"

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 708
    const/16 v29, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 711
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_11

    .line 712
    if-lez v26, :cond_5

    .line 713
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Lkiller/core/httpserver/NanoHTTPD$ResponseException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v29

    add-int/lit8 v25, v26, 0x1

    .end local v26    # "pcount":I
    .restart local v25    # "pcount":I
    :try_start_4
    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_6

    .line 715
    .end local v25    # "pcount":I
    .restart local v26    # "pcount":I
    :cond_5
    add-int/lit8 v25, v26, 0x1

    .end local v26    # "pcount":I
    .restart local v25    # "pcount":I
    goto :goto_6

    .end local v14    # "key":Ljava/lang/String;
    .end local v25    # "pcount":I
    .restart local v26    # "pcount":I
    :cond_6
    move/from16 v25, v26

    .line 720
    .end local v4    # "attributeString":Ljava/lang/String;
    .end local v26    # "pcount":I
    .restart local v25    # "pcount":I
    :cond_7
    invoke-static {}, Lkiller/core/httpserver/NanoHTTPD;->access$500()Ljava/util/regex/Pattern;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 721
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->matches()Z

    move-result v29

    if-eqz v29, :cond_8

    .line 722
    const/16 v29, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 724
    :cond_8
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .line 725
    add-int/lit8 v11, v11, 0x1

    .line 726
    goto/16 :goto_4

    .line 727
    .end local v16    # "matcher":Ljava/util/regex/Matcher;
    :cond_9
    const/16 v22, 0x0

    .local v22, "partHeaderLength":I
    move v12, v11

    .line 728
    .end local v11    # "headerLines":I
    .local v12, "headerLines":I
    :goto_7
    add-int/lit8 v11, v12, -0x1

    .end local v12    # "headerLines":I
    .restart local v11    # "headerLines":I
    if-lez v12, :cond_a

    .line 729
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->scipOverNewLine([BI)I

    move-result v22

    move v12, v11

    .end local v11    # "headerLines":I
    .restart local v12    # "headerLines":I
    goto :goto_7

    .line 732
    .end local v12    # "headerLines":I
    .restart local v11    # "headerLines":I
    :cond_a
    add-int/lit8 v29, v15, -0x4

    move/from16 v0, v22

    move/from16 v1, v29

    if-lt v0, v1, :cond_b

    .line 733
    new-instance v29, Lkiller/core/httpserver/NanoHTTPD$ResponseException;

    sget-object v30, Lkiller/core/httpserver/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lkiller/core/httpserver/NanoHTTPD$Response$Status;

    const-string v31, "Multipart header size exceeds MAX_HEADER_SIZE."

    invoke-direct/range {v29 .. v31}, Lkiller/core/httpserver/NanoHTTPD$ResponseException;-><init>(Lkiller/core/httpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v29

    .line 735
    :cond_b
    aget v29, v6, v5

    add-int v20, v29, v22

    .line 736
    .local v20, "partDataStart":I
    add-int/lit8 v29, v5, 0x1

    aget v29, v6, v29

    add-int/lit8 v19, v29, -0x4

    .line 738
    .local v19, "partDataEnd":I
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 740
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/List;

    .line 741
    .local v28, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v28, :cond_c

    .line 742
    new-instance v28, Ljava/util/ArrayList;

    .end local v28    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .restart local v28    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    :cond_c
    if-nez v18, :cond_d

    .line 748
    sub-int v29, v19, v20

    move/from16 v0, v29

    new-array v8, v0, [B

    .line 749
    .local v8, "data_bytes":[B
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 751
    new-instance v29, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lkiller/core/httpserver/NanoHTTPD$ContentType;->getEncoding()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v0, v8, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    .end local v8    # "data_bytes":[B
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 754
    :cond_d
    sub-int v29, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v20

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3, v10}, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->saveTmpFile(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 755
    .local v24, "path":Ljava/lang/String;
    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_e

    .line 756
    move-object/from16 v0, p4

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    :goto_9
    move-object/from16 v0, v28

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 758
    :cond_e
    const/4 v7, 0x2

    .line 759
    .local v7, "count":I
    :goto_a
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p4

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 760
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 762
    :cond_f
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p4

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lkiller/core/httpserver/NanoHTTPD$ResponseException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_9

    .line 772
    .end local v7    # "count":I
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v11    # "headerLines":I
    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v15    # "len":I
    .end local v17    # "mpline":Ljava/lang/String;
    .end local v18    # "partContentType":Ljava/lang/String;
    .end local v19    # "partDataEnd":I
    .end local v20    # "partDataStart":I
    .end local v22    # "partHeaderLength":I
    .end local v23    # "partName":Ljava/lang/String;
    .end local v24    # "path":Ljava/lang/String;
    .end local v28    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10
    return-void

    .line 769
    .end local v25    # "pcount":I
    .restart local v4    # "attributeString":Ljava/lang/String;
    .restart local v10    # "fileName":Ljava/lang/String;
    .restart local v11    # "headerLines":I
    .restart local v13    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "len":I
    .restart local v16    # "matcher":Ljava/util/regex/Matcher;
    .restart local v17    # "mpline":Ljava/lang/String;
    .restart local v18    # "partContentType":Ljava/lang/String;
    .restart local v23    # "partName":Ljava/lang/String;
    .restart local v26    # "pcount":I
    :catch_2
    move-exception v9

    move/from16 v25, v26

    .end local v26    # "pcount":I
    .restart local v25    # "pcount":I
    goto/16 :goto_3

    .line 767
    .end local v25    # "pcount":I
    .restart local v26    # "pcount":I
    :catch_3
    move-exception v27

    move/from16 v25, v26

    .end local v26    # "pcount":I
    .restart local v25    # "pcount":I
    goto/16 :goto_0

    .end local v25    # "pcount":I
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v26    # "pcount":I
    :cond_11
    move/from16 v25, v26

    .end local v26    # "pcount":I
    .restart local v25    # "pcount":I
    goto/16 :goto_6
.end method

.method private decodeParms(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "parms"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 787
    .local p2, "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez p1, :cond_1

    .line 788
    const-string v6, ""

    iput-object v6, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->queryParameterString:Ljava/lang/String;

    .line 816
    :cond_0
    return-void

    .line 792
    :cond_1
    iput-object p1, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->queryParameterString:Ljava/lang/String;

    .line 793
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v6, "&"

    invoke-direct {v3, p1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    .local v3, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 795
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, "e":Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 797
    .local v2, "sep":I
    const/4 v1, 0x0

    .line 798
    .local v1, "key":Ljava/lang/String;
    const/4 v4, 0x0

    .line 800
    .local v4, "value":Ljava/lang/String;
    if-ltz v2, :cond_3

    .line 801
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkiller/core/httpserver/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 802
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkiller/core/httpserver/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 808
    :goto_1
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 809
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_2

    .line 810
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .restart local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    :cond_2
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 804
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-static {v0}, Lkiller/core/httpserver/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 805
    const-string v4, ""

    goto :goto_1
.end method

.method private findHeaderEnd([BI)I
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "rlen"    # I

    .prologue
    const/16 v3, 0xd

    const/16 v2, 0xa

    .line 946
    const/4 v0, 0x0

    .line 947
    .local v0, "splitbyte":I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    if-ge v1, p2, :cond_2

    .line 950
    aget-byte v1, p1, v0

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x3

    if-ge v1, p2, :cond_0

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_0

    .line 951
    add-int/lit8 v1, v0, 0x4

    .line 960
    :goto_1
    return v1

    .line 955
    :cond_0
    aget-byte v1, p1, v0

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_1

    .line 956
    add-int/lit8 v1, v0, 0x2

    goto :goto_1

    .line 958
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 960
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getBoundaryPositions(Ljava/nio/ByteBuffer;[B)[I
    .locals 12
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .param p2, "boundary"    # [B

    .prologue
    const/4 v11, 0x0

    .line 969
    new-array v5, v11, [I

    .line 970
    .local v5, "res":[I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    array-length v10, p2

    if-ge v9, v10, :cond_0

    move-object v6, v5

    .line 1006
    .end local v5    # "res":[I
    .local v6, "res":[I
    :goto_0
    return-object v6

    .line 974
    .end local v6    # "res":[I
    .restart local v5    # "res":[I
    :cond_0
    const/4 v8, 0x0

    .line 975
    .local v8, "search_window_pos":I
    array-length v9, p2

    add-int/lit16 v9, v9, 0x1000

    new-array v7, v9, [B

    .line 977
    .local v7, "search_window":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    array-length v10, v7

    if-ge v9, v10, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 978
    .local v0, "first_fill":I
    :goto_1
    invoke-virtual {p1, v7, v11, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 979
    array-length v9, p2

    sub-int v3, v0, v9

    .line 983
    .local v3, "new_bytes":I
    :cond_1
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v3, :cond_6

    .line 984
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v9, p2

    if-ge v1, v9, :cond_2

    .line 985
    add-int v9, v2, v1

    aget-byte v9, v7, v9

    aget-byte v10, p2, v1

    if-eq v9, v10, :cond_4

    .line 983
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 977
    .end local v0    # "first_fill":I
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "new_bytes":I
    :cond_3
    array-length v0, v7

    goto :goto_1

    .line 987
    .restart local v0    # "first_fill":I
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v3    # "new_bytes":I
    :cond_4
    array-length v9, p2

    add-int/lit8 v9, v9, -0x1

    if-ne v1, v9, :cond_5

    .line 989
    array-length v9, v5

    add-int/lit8 v9, v9, 0x1

    new-array v4, v9, [I

    .line 990
    .local v4, "new_res":[I
    array-length v9, v5

    invoke-static {v5, v11, v4, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 991
    array-length v9, v5

    add-int v10, v8, v2

    aput v10, v4, v9

    .line 992
    move-object v5, v4

    .line 984
    .end local v4    # "new_res":[I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 996
    .end local v1    # "i":I
    :cond_6
    add-int/2addr v8, v3

    .line 999
    array-length v9, v7

    array-length v10, p2

    sub-int/2addr v9, v10

    array-length v10, p2

    invoke-static {v7, v9, v7, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1002
    array-length v9, v7

    array-length v10, p2

    sub-int v3, v9, v10

    .line 1003
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    if-ge v9, v3, :cond_7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 1004
    :cond_7
    array-length v9, p2

    invoke-virtual {p1, v7, v9, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1005
    if-gtz v3, :cond_1

    move-object v6, v5

    .line 1006
    .end local v5    # "res":[I
    .restart local v6    # "res":[I
    goto :goto_0
.end method

.method private getTmpBucket()Ljava/io/RandomAccessFile;
    .locals 5

    .prologue
    .line 1055
    :try_start_0
    iget-object v2, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->tempFileManager:Lkiller/core/httpserver/NanoHTTPD$TempFileManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lkiller/core/httpserver/NanoHTTPD$TempFileManager;->createTempFile(Ljava/lang/String;)Lkiller/core/httpserver/NanoHTTPD$TempFile;

    move-result-object v1

    .line 1056
    .local v1, "tempFile":Lkiller/core/httpserver/NanoHTTPD$TempFile;
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-interface {v1}, Lkiller/core/httpserver/NanoHTTPD$TempFile;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1057
    .end local v1    # "tempFile":Lkiller/core/httpserver/NanoHTTPD$TempFile;
    :catch_0
    move-exception v0

    .line 1058
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private saveTmpFile(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "filename_hint"    # Ljava/lang/String;

    .prologue
    .line 1153
    const-string v4, ""

    .line 1154
    .local v4, "path":Ljava/lang/String;
    if-lez p3, :cond_0

    .line 1155
    const/4 v2, 0x0

    .line 1157
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v7, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->tempFileManager:Lkiller/core/httpserver/NanoHTTPD$TempFileManager;

    invoke-interface {v7, p4}, Lkiller/core/httpserver/NanoHTTPD$TempFileManager;->createTempFile(Ljava/lang/String;)Lkiller/core/httpserver/NanoHTTPD$TempFile;

    move-result-object v6

    .line 1158
    .local v6, "tempFile":Lkiller/core/httpserver/NanoHTTPD$TempFile;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1159
    .local v5, "src":Ljava/nio/ByteBuffer;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-interface {v6}, Lkiller/core/httpserver/NanoHTTPD$TempFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1160
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1161
    .local v0, "dest":Ljava/nio/channels/FileChannel;
    invoke-virtual {v5, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    add-int v8, p2, p3

    invoke-virtual {v7, v8}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 1162
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1163
    invoke-interface {v6}, Lkiller/core/httpserver/NanoHTTPD$TempFile;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 1167
    invoke-static {v3}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 1170
    .end local v0    # "dest":Ljava/nio/channels/FileChannel;
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "src":Ljava/nio/ByteBuffer;
    .end local v6    # "tempFile":Lkiller/core/httpserver/NanoHTTPD$TempFile;
    :cond_0
    return-object v4

    .line 1164
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 1165
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1167
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_1
    invoke-static {v2}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 1168
    throw v7

    .line 1167
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "src":Ljava/nio/ByteBuffer;
    .restart local v6    # "tempFile":Lkiller/core/httpserver/NanoHTTPD$TempFile;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 1164
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private scipOverNewLine([BI)I
    .locals 2
    .param p1, "partHeaderBuff"    # [B
    .param p2, "index"    # I

    .prologue
    .line 775
    :goto_0
    aget-byte v0, p1, p2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 776
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 778
    :cond_0
    add-int/lit8 p2, p2, 0x1

    return p2
.end method


# virtual methods
.method public execute()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 820
    const/4 v12, 0x0

    .line 827
    .local v12, "r":Lkiller/core/httpserver/NanoHTTPD$Response;
    const/16 v18, 0x2000

    :try_start_0
    move/from16 v0, v18

    new-array v5, v0, [B

    .line 828
    .local v5, "buf":[B
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->splitbyte:I

    .line 829
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    .line 831
    const/4 v14, -0x1

    .line 832
    .local v14, "read":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v18, v0

    const/16 v19, 0x2000

    invoke-virtual/range {v18 .. v19}, Ljava/io/BufferedInputStream;->mark(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lkiller/core/httpserver/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x2000

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lkiller/core/httpserver/NanoHTTPD$ResponseException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v14

    .line 842
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_1

    .line 844
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 846
    new-instance v18, Ljava/net/SocketException;

    const-string v19, "NanoHttpd Shutdown"

    invoke-direct/range {v18 .. v19}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lkiller/core/httpserver/NanoHTTPD$ResponseException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 915
    .end local v5    # "buf":[B
    .end local v14    # "read":I
    :catch_0
    move-exception v7

    .line 917
    .local v7, "e":Ljava/net/SocketException;
    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 936
    .end local v7    # "e":Ljava/net/SocketException;
    :catchall_0
    move-exception v18

    invoke-static {v12}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->tempFileManager:Lkiller/core/httpserver/NanoHTTPD$TempFileManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lkiller/core/httpserver/NanoHTTPD$TempFileManager;->clear()V

    .line 938
    throw v18

    .line 835
    .restart local v5    # "buf":[B
    .restart local v14    # "read":I
    :catch_1
    move-exception v7

    .line 836
    .local v7, "e":Ljavax/net/ssl/SSLException;
    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lkiller/core/httpserver/NanoHTTPD$ResponseException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 918
    .end local v5    # "buf":[B
    .end local v7    # "e":Ljavax/net/ssl/SSLException;
    .end local v14    # "read":I
    :catch_2
    move-exception v17

    .line 922
    .local v17, "ste":Ljava/net/SocketTimeoutException;
    :try_start_5
    throw v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 837
    .end local v17    # "ste":Ljava/net/SocketTimeoutException;
    .restart local v5    # "buf":[B
    .restart local v14    # "read":I
    :catch_3
    move-exception v7

    .line 838
    .local v7, "e":Ljava/io/IOException;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 840
    new-instance v18, Ljava/net/SocketException;

    const-string v19, "NanoHttpd Shutdown"

    invoke-direct/range {v18 .. v19}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lkiller/core/httpserver/NanoHTTPD$ResponseException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 923
    .end local v5    # "buf":[B
    .end local v7    # "e":Ljava/io/IOException;
    .end local v14    # "read":I
    :catch_4
    move-exception v16

    .line 924
    .local v16, "ssle":Ljavax/net/ssl/SSLException;
    :try_start_7
    sget-object v18, Lkiller/core/httpserver/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lkiller/core/httpserver/NanoHTTPD$Response$Status;

    const-string v19, "text/plain"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SSL PROTOCOL FAILURE: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lkiller/core/httpserver/NanoHTTPD;->newFixedLengthResponse(Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lkiller/core/httpserver/NanoHTTPD$Response;

    move-result-object v15

    .line 925
    .local v15, "resp":Lkiller/core/httpserver/NanoHTTPD$Response;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lkiller/core/httpserver/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 936
    invoke-static {v12}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->tempFileManager:Lkiller/core/httpserver/NanoHTTPD$TempFileManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lkiller/core/httpserver/NanoHTTPD$TempFileManager;->clear()V

    .line 939
    .end local v15    # "resp":Lkiller/core/httpserver/NanoHTTPD$Response;
    .end local v16    # "ssle":Ljavax/net/ssl/SSLException;
    :goto_0
    return-void

    .line 854
    .restart local v5    # "buf":[B
    .restart local v14    # "read":I
    :cond_0
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    move/from16 v20, v0

    move/from16 v0, v20

    rsub-int v0, v0, 0x2000

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v14

    .line 848
    :cond_1
    if-lez v14, :cond_2

    .line 849
    move-object/from16 v0, p0

    iget v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    move/from16 v18, v0

    add-int v18, v18, v14

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    .line 850
    move-object/from16 v0, p0

    iget v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v5, v1}, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->findHeaderEnd([BI)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->splitbyte:I

    .line 851
    move-object/from16 v0, p0

    iget v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->splitbyte:I

    move/from16 v18, v0

    if-lez v18, :cond_0

    .line 857
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->splitbyte:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedInputStream;->reset()V

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->splitbyte:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 862
    :cond_3
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    move-object/from16 v18, v0

    if-nez v18, :cond_5

    .line 864
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    .line 870
    :goto_1
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    new-instance v19, Ljava/io/ByteArrayInputStream;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v5, v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct/range {v18 .. v19}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 873
    .local v8, "hin":Ljava/io/BufferedReader;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 874
    .local v11, "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v8, v11, v1, v2}, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->decodeHeader(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, "remote-addr"

    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, "http-client-ip"

    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    :cond_4
    const-string v18, "method"

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lkiller/core/httpserver/NanoHTTPD$Method;->lookup(Ljava/lang/String;)Lkiller/core/httpserver/NanoHTTPD$Method;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->method:Lkiller/core/httpserver/NanoHTTPD$Method;

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->method:Lkiller/core/httpserver/NanoHTTPD$Method;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    .line 883
    new-instance v19, Lkiller/core/httpserver/NanoHTTPD$ResponseException;

    sget-object v20, Lkiller/core/httpserver/NanoHTTPD$Response$Status;->BAD_REQUEST:Lkiller/core/httpserver/NanoHTTPD$Response$Status;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "BAD REQUEST: Syntax error. HTTP verb "

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v18, "method"

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v21, " unhandled."

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lkiller/core/httpserver/NanoHTTPD$ResponseException;-><init>(Lkiller/core/httpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v19
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lkiller/core/httpserver/NanoHTTPD$ResponseException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 927
    .end local v5    # "buf":[B
    .end local v8    # "hin":Ljava/io/BufferedReader;
    .end local v11    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "read":I
    :catch_5
    move-exception v9

    .line 928
    .local v9, "ioe":Ljava/io/IOException;
    :try_start_9
    sget-object v18, Lkiller/core/httpserver/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lkiller/core/httpserver/NanoHTTPD$Response$Status;

    const-string v19, "text/plain"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lkiller/core/httpserver/NanoHTTPD;->newFixedLengthResponse(Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lkiller/core/httpserver/NanoHTTPD$Response;

    move-result-object v15

    .line 929
    .restart local v15    # "resp":Lkiller/core/httpserver/NanoHTTPD$Response;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lkiller/core/httpserver/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 936
    invoke-static {v12}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->tempFileManager:Lkiller/core/httpserver/NanoHTTPD$TempFileManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lkiller/core/httpserver/NanoHTTPD$TempFileManager;->clear()V

    goto/16 :goto_0

    .line 866
    .end local v9    # "ioe":Ljava/io/IOException;
    .end local v15    # "resp":Lkiller/core/httpserver/NanoHTTPD$Response;
    .restart local v5    # "buf":[B
    .restart local v14    # "read":I
    :cond_5
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->clear()V
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lkiller/core/httpserver/NanoHTTPD$ResponseException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 931
    .end local v5    # "buf":[B
    .end local v14    # "read":I
    :catch_6
    move-exception v13

    .line 932
    .local v13, "re":Lkiller/core/httpserver/NanoHTTPD$ResponseException;
    :try_start_b
    invoke-virtual {v13}, Lkiller/core/httpserver/NanoHTTPD$ResponseException;->getStatus()Lkiller/core/httpserver/NanoHTTPD$Response$Status;

    move-result-object v18

    const-string v19, "text/plain"

    invoke-virtual {v13}, Lkiller/core/httpserver/NanoHTTPD$ResponseException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lkiller/core/httpserver/NanoHTTPD;->newFixedLengthResponse(Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lkiller/core/httpserver/NanoHTTPD$Response;

    move-result-object v15

    .line 933
    .restart local v15    # "resp":Lkiller/core/httpserver/NanoHTTPD$Response;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lkiller/core/httpserver/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 936
    invoke-static {v12}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->tempFileManager:Lkiller/core/httpserver/NanoHTTPD$TempFileManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lkiller/core/httpserver/NanoHTTPD$TempFileManager;->clear()V

    goto/16 :goto_0

    .line 886
    .end local v13    # "re":Lkiller/core/httpserver/NanoHTTPD$ResponseException;
    .end local v15    # "resp":Lkiller/core/httpserver/NanoHTTPD$Response;
    .restart local v5    # "buf":[B
    .restart local v8    # "hin":Ljava/io/BufferedReader;
    .restart local v11    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "read":I
    :cond_6
    :try_start_c
    const-string v18, "uri"

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->uri:Ljava/lang/String;

    .line 888
    new-instance v18, Lkiller/core/httpserver/NanoHTTPD$CookieHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->this$0:Lkiller/core/httpserver/NanoHTTPD;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lkiller/core/httpserver/NanoHTTPD$CookieHandler;-><init>(Lkiller/core/httpserver/NanoHTTPD;Ljava/util/Map;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->cookies:Lkiller/core/httpserver/NanoHTTPD$CookieHandler;

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, "connection"

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 891
    .local v6, "connection":Ljava/lang/String;
    const-string v18, "HTTP/1.1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->protocolVersion:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    if-eqz v6, :cond_7

    const-string v18, "(?i).*close.*"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_8

    :cond_7
    const/4 v10, 0x1

    .line 898
    .local v10, "keepAlive":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->this$0:Lkiller/core/httpserver/NanoHTTPD;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lkiller/core/httpserver/NanoHTTPD;->serve(Lkiller/core/httpserver/NanoHTTPD$IHTTPSession;)Lkiller/core/httpserver/NanoHTTPD$Response;

    move-result-object v12

    .line 902
    if-nez v12, :cond_9

    .line 903
    new-instance v18, Lkiller/core/httpserver/NanoHTTPD$ResponseException;

    sget-object v19, Lkiller/core/httpserver/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lkiller/core/httpserver/NanoHTTPD$Response$Status;

    const-string v20, "SERVER INTERNAL ERROR: Serve() returned a null response."

    invoke-direct/range {v18 .. v20}, Lkiller/core/httpserver/NanoHTTPD$ResponseException;-><init>(Lkiller/core/httpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v18

    .line 891
    .end local v10    # "keepAlive":Z
    :cond_8
    const/4 v10, 0x0

    goto :goto_2

    .line 905
    .restart local v10    # "keepAlive":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, "accept-encoding"

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 906
    .local v4, "acceptEncoding":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->cookies:Lkiller/core/httpserver/NanoHTTPD$CookieHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lkiller/core/httpserver/NanoHTTPD$CookieHandler;->unloadQueue(Lkiller/core/httpserver/NanoHTTPD$Response;)V

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->method:Lkiller/core/httpserver/NanoHTTPD$Method;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lkiller/core/httpserver/NanoHTTPD$Response;->setRequestMethod(Lkiller/core/httpserver/NanoHTTPD$Method;)V

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->this$0:Lkiller/core/httpserver/NanoHTTPD;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lkiller/core/httpserver/NanoHTTPD;->useGzipWhenAccepted(Lkiller/core/httpserver/NanoHTTPD$Response;)Z

    move-result v18

    if-eqz v18, :cond_b

    if-eqz v4, :cond_b

    const-string v18, "gzip"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_b

    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lkiller/core/httpserver/NanoHTTPD$Response;->setGzipEncoding(Z)V

    .line 909
    invoke-virtual {v12, v10}, Lkiller/core/httpserver/NanoHTTPD$Response;->setKeepAlive(Z)V

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lkiller/core/httpserver/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    .line 912
    if-eqz v10, :cond_a

    invoke-virtual {v12}, Lkiller/core/httpserver/NanoHTTPD$Response;->isCloseConnection()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 913
    :cond_a
    new-instance v18, Ljava/net/SocketException;

    const-string v19, "NanoHttpd Shutdown"

    invoke-direct/range {v18 .. v19}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_c
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lkiller/core/httpserver/NanoHTTPD$ResponseException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 908
    :cond_b
    const/16 v18, 0x0

    goto :goto_3

    .line 936
    :cond_c
    invoke-static {v12}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->tempFileManager:Lkiller/core/httpserver/NanoHTTPD$TempFileManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lkiller/core/httpserver/NanoHTTPD$TempFileManager;->clear()V

    goto/16 :goto_0
.end method

.method public getBodySize()J
    .locals 2

    .prologue
    .line 1072
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v1, "content-length"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v1, "content-length"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1077
    :goto_0
    return-wide v0

    .line 1074
    :cond_0
    iget v0, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->splitbyte:I

    iget v1, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    if-ge v0, v1, :cond_1

    .line 1075
    iget v0, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    iget v1, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->splitbyte:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0

    .line 1077
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCookies()Lkiller/core/httpserver/NanoHTTPD$CookieHandler;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->cookies:Lkiller/core/httpserver/NanoHTTPD$CookieHandler;

    return-object v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1016
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    return-object v0
.end method

.method public final getMethod()Lkiller/core/httpserver/NanoHTTPD$Method;
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->method:Lkiller/core/httpserver/NanoHTTPD$Method;

    return-object v0
.end method

.method public final getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1045
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    return-object v0
.end method

.method public final getParms()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1035
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1036
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1037
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1040
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getQueryParameterString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->queryParameterString:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->remoteHostname:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public parseBody(Ljava/util/Map;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lkiller/core/httpserver/NanoHTTPD$ResponseException;
        }
    .end annotation

    .prologue
    .line 1082
    .local p1, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 1084
    .local v15, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->getBodySize()J

    move-result-wide v18

    .line 1085
    .local v18, "size":J
    const/4 v8, 0x0

    .line 1086
    .local v8, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v16, 0x0

    .line 1089
    .local v16, "requestDataOutput":Ljava/io/DataOutput;
    const-wide/16 v2, 0x400

    cmp-long v2, v18, v2

    if-gez v2, :cond_1

    .line 1090
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    .end local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1091
    .restart local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v16, Ljava/io/DataOutputStream;

    .end local v16    # "requestDataOutput":Ljava/io/DataOutput;
    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1098
    .restart local v16    # "requestDataOutput":Ljava/io/DataOutput;
    :goto_0
    const/16 v2, 0x200

    new-array v10, v2, [B

    .line 1099
    .local v10, "buf":[B
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    if-ltz v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-lez v2, :cond_2

    .line 1100
    move-object/from16 v0, p0

    iget-object v2, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    const/4 v3, 0x0

    const-wide/16 v4, 0x200

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v2, v10, v3, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    .line 1101
    move-object/from16 v0, p0

    iget v2, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    int-to-long v2, v2

    sub-long v18, v18, v2

    .line 1102
    move-object/from16 v0, p0

    iget v2, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    if-lez v2, :cond_0

    .line 1103
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    move-object/from16 v0, v16

    invoke-interface {v0, v10, v2, v3}, Ljava/io/DataOutput;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1144
    .end local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "buf":[B
    .end local v16    # "requestDataOutput":Ljava/io/DataOutput;
    .end local v18    # "size":J
    :catchall_0
    move-exception v2

    invoke-static {v15}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 1145
    throw v2

    .line 1093
    .restart local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v16    # "requestDataOutput":Ljava/io/DataOutput;
    .restart local v18    # "size":J
    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->getTmpBucket()Ljava/io/RandomAccessFile;

    move-result-object v15

    .line 1094
    move-object/from16 v16, v15

    goto :goto_0

    .line 1107
    .restart local v10    # "buf":[B
    :cond_2
    const/4 v12, 0x0

    .line 1108
    .local v12, "fbuf":Ljava/nio/ByteBuffer;
    if-eqz v8, :cond_3

    .line 1109
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-static {v2, v3, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 1117
    :goto_2
    sget-object v2, Lkiller/core/httpserver/NanoHTTPD$Method;->POST:Lkiller/core/httpserver/NanoHTTPD$Method;

    move-object/from16 v0, p0

    iget-object v3, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->method:Lkiller/core/httpserver/NanoHTTPD$Method;

    invoke-virtual {v2, v3}, Lkiller/core/httpserver/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1118
    new-instance v11, Lkiller/core/httpserver/NanoHTTPD$ContentType;

    move-object/from16 v0, p0

    iget-object v2, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v3, "content-type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v11, v2}, Lkiller/core/httpserver/NanoHTTPD$ContentType;-><init>(Ljava/lang/String;)V

    .line 1119
    .local v11, "contentType":Lkiller/core/httpserver/NanoHTTPD$ContentType;
    invoke-virtual {v11}, Lkiller/core/httpserver/NanoHTTPD$ContentType;->isMultipart()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1120
    invoke-virtual {v11}, Lkiller/core/httpserver/NanoHTTPD$ContentType;->getBoundary()Ljava/lang/String;

    move-result-object v9

    .line 1121
    .local v9, "boundary":Ljava/lang/String;
    if-nez v9, :cond_4

    .line 1122
    new-instance v2, Lkiller/core/httpserver/NanoHTTPD$ResponseException;

    sget-object v3, Lkiller/core/httpserver/NanoHTTPD$Response$Status;->BAD_REQUEST:Lkiller/core/httpserver/NanoHTTPD$Response$Status;

    const-string v4, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    invoke-direct {v2, v3, v4}, Lkiller/core/httpserver/NanoHTTPD$ResponseException;-><init>(Lkiller/core/httpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v2

    .line 1111
    .end local v9    # "boundary":Ljava/lang/String;
    .end local v11    # "contentType":Lkiller/core/httpserver/NanoHTTPD$ContentType;
    :cond_3
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v12

    .line 1112
    const-wide/16 v2, 0x0

    invoke-virtual {v15, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_2

    .line 1125
    .restart local v9    # "boundary":Ljava/lang/String;
    .restart local v11    # "contentType":Lkiller/core/httpserver/NanoHTTPD$ContentType;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v12, v2, v1}, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->decodeMultipartFormData(Lkiller/core/httpserver/NanoHTTPD$ContentType;Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1144
    .end local v9    # "boundary":Ljava/lang/String;
    .end local v11    # "contentType":Lkiller/core/httpserver/NanoHTTPD$ContentType;
    :cond_5
    :goto_3
    invoke-static {v15}, Lkiller/core/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 1146
    return-void

    .line 1127
    .restart local v11    # "contentType":Lkiller/core/httpserver/NanoHTTPD$ContentType;
    :cond_6
    :try_start_2
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v13, v2, [B

    .line 1128
    .local v13, "postBytes":[B
    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1129
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v11}, Lkiller/core/httpserver/NanoHTTPD$ContentType;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v13, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 1131
    .local v14, "postLine":Ljava/lang/String;
    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v11}, Lkiller/core/httpserver/NanoHTTPD$ContentType;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    .line 1133
    :cond_7
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    .line 1137
    const-string v2, "postData"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1140
    .end local v11    # "contentType":Lkiller/core/httpserver/NanoHTTPD$ContentType;
    .end local v13    # "postBytes":[B
    .end local v14    # "postLine":Ljava/lang/String;
    :cond_8
    sget-object v2, Lkiller/core/httpserver/NanoHTTPD$Method;->PUT:Lkiller/core/httpserver/NanoHTTPD$Method;

    move-object/from16 v0, p0

    iget-object v3, v0, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->method:Lkiller/core/httpserver/NanoHTTPD$Method;

    invoke-virtual {v2, v3}, Lkiller/core/httpserver/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1141
    const-string v2, "content"

    const/4 v3, 0x0

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3, v4, v5}, Lkiller/core/httpserver/NanoHTTPD$HTTPSession;->saveTmpFile(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method
