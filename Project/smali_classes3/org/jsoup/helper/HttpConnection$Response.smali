.class public Lorg/jsoup/helper/HttpConnection$Response;
.super Lorg/jsoup/helper/HttpConnection$Base;
.source "HttpConnection.java"

# interfaces
.implements Lorg/jsoup/Connection$Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jsoup/helper/HttpConnection$Base",
        "<",
        "Lorg/jsoup/Connection$Response;",
        ">;",
        "Lorg/jsoup/Connection$Response;"
    }
.end annotation


# static fields
.field private static final LOCATION:Ljava/lang/String; = "Location"

.field private static final MAX_REDIRECTS:I = 0x14

.field private static final xmlContentTypeRxp:Ljava/util/regex/Pattern;


# instance fields
.field private bodyStream:Ljava/io/InputStream;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private byteData:Ljava/nio/ByteBuffer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private charset:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private conn:Ljava/net/HttpURLConnection;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final contentType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private executed:Z

.field private inputStreamRead:Z

.field private numRedirects:I

.field private final req:Lorg/jsoup/helper/HttpConnection$Request;

.field private final statusCode:I

.field private final statusMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 814
    const-string v0, "(application|text)/\\w*\\+?xml.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/HttpConnection$Response;->xmlContentTypeRxp:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 821
    invoke-direct {p0, v1}, Lorg/jsoup/helper/HttpConnection$Base;-><init>(Lorg/jsoup/helper/HttpConnection$1;)V

    .line 806
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    .line 807
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 808
    iput v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->numRedirects:I

    .line 822
    const/16 v0, 0x190

    iput v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusCode:I

    .line 823
    const-string v0, "Request not made"

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusMessage:Ljava/lang/String;

    .line 824
    new-instance v0, Lorg/jsoup/helper/HttpConnection$Request;

    invoke-direct {v0}, Lorg/jsoup/helper/HttpConnection$Request;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/helper/HttpConnection$Request;

    .line 825
    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->contentType:Ljava/lang/String;

    .line 826
    return-void
.end method

.method private constructor <init>(Ljava/net/HttpURLConnection;Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)V
    .locals 7
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .param p2, "request"    # Lorg/jsoup/helper/HttpConnection$Request;
    .param p3, "previousResponse"    # Lorg/jsoup/helper/HttpConnection$Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1063
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/jsoup/helper/HttpConnection$Base;-><init>(Lorg/jsoup/helper/HttpConnection$1;)V

    .line 806
    iput-boolean v6, p0, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    .line 807
    iput-boolean v6, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 808
    iput v6, p0, Lorg/jsoup/helper/HttpConnection$Response;->numRedirects:I

    .line 1064
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Response;->conn:Ljava/net/HttpURLConnection;

    .line 1065
    iput-object p2, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/helper/HttpConnection$Request;

    .line 1066
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jsoup/Connection$Method;->valueOf(Ljava/lang/String;)Lorg/jsoup/Connection$Method;

    move-result-object v2

    iput-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->method:Lorg/jsoup/Connection$Method;

    .line 1067
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    iput-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->url:Ljava/net/URL;

    .line 1068
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    iput v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusCode:I

    .line 1069
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusMessage:Ljava/lang/String;

    .line 1070
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->contentType:Ljava/lang/String;

    .line 1072
    invoke-static {p1}, Lorg/jsoup/helper/HttpConnection$Response;->createHeaderMap(Ljava/net/HttpURLConnection;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 1073
    .local v1, "resHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p0, v1}, Lorg/jsoup/helper/HttpConnection$Response;->processResponseHeaders(Ljava/util/Map;)V

    .line 1074
    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/helper/HttpConnection$Request;

    iget-object v3, p0, Lorg/jsoup/helper/HttpConnection$Response;->url:Ljava/net/URL;

    invoke-static {v2, v3, v1}, Lorg/jsoup/helper/CookieUtil;->storeCookies(Lorg/jsoup/helper/HttpConnection$Request;Ljava/net/URL;Ljava/util/Map;)V

    .line 1076
    if-eqz p3, :cond_2

    .line 1078
    invoke-virtual {p3}, Lorg/jsoup/helper/HttpConnection$Response;->cookies()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1079
    .local v0, "prevCookie":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/jsoup/helper/HttpConnection$Response;->hasCookie(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1080
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lorg/jsoup/helper/HttpConnection$Response;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    goto :goto_0

    .line 1082
    .end local v0    # "prevCookie":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-direct {p3}, Lorg/jsoup/helper/HttpConnection$Response;->safeClose()V

    .line 1085
    iget v2, p3, Lorg/jsoup/helper/HttpConnection$Response;->numRedirects:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->numRedirects:I

    .line 1086
    iget v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->numRedirects:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_2

    .line 1087
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Too many redirects occurred trying to load URL %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/jsoup/helper/HttpConnection$Response;->url()Ljava/net/URL;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1089
    :cond_2
    return-void
.end method

.method private static createConnection(Lorg/jsoup/helper/HttpConnection$Request;)Ljava/net/HttpURLConnection;
    .locals 7
    .param p0, "req"    # Lorg/jsoup/helper/HttpConnection$Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1017
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->proxy()Ljava/net/Proxy;

    move-result-object v2

    .line 1019
    .local v2, "proxy":Ljava/net/Proxy;
    if-nez v2, :cond_3

    .line 1020
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 1021
    :goto_0
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1024
    .local v0, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->method()Lorg/jsoup/Connection$Method;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/Connection$Method;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1025
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1026
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->timeout()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1027
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->timeout()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1029
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    if-eqz v4, :cond_0

    instance-of v4, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 1030
    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1031
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->method()Lorg/jsoup/Connection$Method;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/Connection$Method;->hasBody()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1032
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1033
    :cond_1
    invoke-static {p0, v0}, Lorg/jsoup/helper/CookieUtil;->applyCookiesToRequest(Lorg/jsoup/helper/HttpConnection$Request;Ljava/net/HttpURLConnection;)V

    .line 1034
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->multiHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1035
    .local v1, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1036
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1021
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v1    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    goto/16 :goto_0

    .line 1039
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    :cond_4
    return-object v0
.end method

.method private static createHeaderMap(Ljava/net/HttpURLConnection;)Ljava/util/LinkedHashMap;
    .locals 6
    .param p0, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1093
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1094
    .local v0, "headers":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .line 1096
    .local v1, "i":I
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v2

    .line 1097
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v3

    .line 1098
    .local v3, "val":Ljava/lang/String;
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 1112
    return-object v0

    .line 1100
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 1101
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 1104
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1105
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1107
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1108
    .local v4, "vals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static execute(Lorg/jsoup/helper/HttpConnection$Request;)Lorg/jsoup/helper/HttpConnection$Response;
    .locals 1
    .param p0, "req"    # Lorg/jsoup/helper/HttpConnection$Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jsoup/helper/HttpConnection$Response;->execute(Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)Lorg/jsoup/helper/HttpConnection$Response;

    move-result-object v0

    return-object v0
.end method

.method static execute(Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)Lorg/jsoup/helper/HttpConnection$Response;
    .locals 26
    .param p0, "req"    # Lorg/jsoup/helper/HttpConnection$Request;
    .param p1, "previousResponse"    # Lorg/jsoup/helper/HttpConnection$Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 833
    monitor-enter p0

    .line 834
    :try_start_0
    invoke-static/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->access$600(Lorg/jsoup/helper/HttpConnection$Request;)Z

    move-result v22

    const-string v23, "Multiple threads were detected trying to execute the same request concurrently. Make sure to use Connection#newRequest() and do not share an executing request between threads."

    invoke-static/range {v22 .. v23}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 835
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lorg/jsoup/helper/HttpConnection$Request;->access$602(Lorg/jsoup/helper/HttpConnection$Request;Z)Z

    .line 836
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    const-string v22, "Request must not be null"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 838
    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    move-result-object v21

    .line 839
    .local v21, "url":Ljava/net/URL;
    const-string v22, "URL must be specified to connect"

    invoke-static/range {v21 .. v22}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 840
    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v14

    .line 841
    .local v14, "protocol":Ljava/lang/String;
    const-string v22, "http"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    const-string v22, "https"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 842
    new-instance v22, Ljava/net/MalformedURLException;

    const-string v23, "Only http & https protocols supported"

    invoke-direct/range {v22 .. v23}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 836
    .end local v14    # "protocol":Ljava/lang/String;
    .end local v21    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v22

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v22

    .line 843
    .restart local v14    # "protocol":Ljava/lang/String;
    .restart local v21    # "url":Ljava/net/URL;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->method()Lorg/jsoup/Connection$Method;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/jsoup/Connection$Method;->hasBody()Z

    move-result v11

    .line 844
    .local v11, "methodHasBody":Z
    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->requestBody()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_7

    const/4 v9, 0x1

    .line 845
    .local v9, "hasRequestBody":Z
    :goto_0
    if-nez v11, :cond_1

    .line 846
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Cannot set a request body for HTTP method "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->method()Lorg/jsoup/Connection$Method;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v9, v0}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 849
    :cond_1
    const/4 v12, 0x0

    .line 850
    .local v12, "mimeBoundary":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->data()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->size()I

    move-result v22

    if-lez v22, :cond_8

    if-eqz v11, :cond_2

    if-eqz v9, :cond_8

    .line 851
    :cond_2
    invoke-static/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Response;->serialiseRequestUrl(Lorg/jsoup/Connection$Request;)V

    .line 855
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    .line 856
    .local v18, "startTime":J
    invoke-static/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Response;->createConnection(Lorg/jsoup/helper/HttpConnection$Request;)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 857
    .local v6, "conn":Ljava/net/HttpURLConnection;
    const/16 v16, 0x0

    .line 859
    .local v16, "res":Lorg/jsoup/helper/HttpConnection$Response;
    :try_start_2
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 860
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 861
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v13

    .line 862
    .local v13, "out":Ljava/io/OutputStream;
    :try_start_3
    move-object/from16 v0, p0

    invoke-static {v0, v13, v12}, Lorg/jsoup/helper/HttpConnection$Response;->writePost(Lorg/jsoup/Connection$Request;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 864
    :try_start_4
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 867
    .end local v13    # "out":Ljava/io/OutputStream;
    :cond_4
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v20

    .line 868
    .local v20, "status":I
    new-instance v17, Lorg/jsoup/helper/HttpConnection$Response;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v6, v1, v2}, Lorg/jsoup/helper/HttpConnection$Response;-><init>(Ljava/net/HttpURLConnection;Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 871
    .end local v16    # "res":Lorg/jsoup/helper/HttpConnection$Response;
    .local v17, "res":Lorg/jsoup/helper/HttpConnection$Response;
    :try_start_5
    const-string v22, "Location"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/helper/HttpConnection$Response;->hasHeader(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->followRedirects()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 872
    const/16 v22, 0x133

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 873
    sget-object v22, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/helper/HttpConnection$Request;->method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;

    .line 874
    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->data()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->clear()V

    .line 875
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/helper/HttpConnection$Request;->requestBody(Ljava/lang/String;)Lorg/jsoup/Connection$Request;

    .line 876
    const-string v22, "Content-Type"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/helper/HttpConnection$Request;->removeHeader(Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 879
    :cond_5
    const-string v22, "Location"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/helper/HttpConnection$Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 880
    .local v10, "location":Ljava/lang/String;
    invoke-static {v10}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 881
    const-string v22, "http:/"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    const/16 v22, 0x6

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v22

    const/16 v23, 0x2f

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 882
    const/16 v22, 0x6

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 883
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v0, v10}, Lorg/jsoup/internal/StringUtil;->resolve(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v15

    .line 884
    .local v15, "redir":Ljava/net/URL;
    invoke-static {v15}, Lorg/jsoup/helper/HttpConnection;->encodeUrl(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/helper/HttpConnection$Request;->url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;

    .line 886
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lorg/jsoup/helper/HttpConnection$Request;->access$602(Lorg/jsoup/helper/HttpConnection$Request;Z)Z

    .line 887
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/jsoup/helper/HttpConnection$Response;->execute(Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)Lorg/jsoup/helper/HttpConnection$Response;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v17

    .line 927
    .end local v17    # "res":Lorg/jsoup/helper/HttpConnection$Response;
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lorg/jsoup/helper/HttpConnection$Request;->access$602(Lorg/jsoup/helper/HttpConnection$Request;Z)Z

    .line 931
    .end local v10    # "location":Ljava/lang/String;
    .end local v15    # "redir":Ljava/net/URL;
    :goto_2
    return-object v17

    .line 844
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v9    # "hasRequestBody":Z
    .end local v12    # "mimeBoundary":Ljava/lang/String;
    .end local v18    # "startTime":J
    .end local v20    # "status":I
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 852
    .restart local v9    # "hasRequestBody":Z
    .restart local v12    # "mimeBoundary":Ljava/lang/String;
    :cond_8
    if-eqz v11, :cond_3

    .line 853
    invoke-static/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Response;->setOutputContentType(Lorg/jsoup/Connection$Request;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 863
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v13    # "out":Ljava/io/OutputStream;
    .restart local v16    # "res":Lorg/jsoup/helper/HttpConnection$Response;
    .restart local v18    # "startTime":J
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 864
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v22

    :try_start_7
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    throw v22
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 923
    .end local v13    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v8

    .line 924
    .restart local v8    # "e":Ljava/io/IOException;
    :goto_3
    if-eqz v16, :cond_9

    :try_start_8
    invoke-direct/range {v16 .. v16}, Lorg/jsoup/helper/HttpConnection$Response;->safeClose()V

    .line 925
    :cond_9
    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 927
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v22

    :goto_4
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v1}, Lorg/jsoup/helper/HttpConnection$Request;->access$602(Lorg/jsoup/helper/HttpConnection$Request;Z)Z

    .line 928
    throw v22

    .line 889
    .end local v16    # "res":Lorg/jsoup/helper/HttpConnection$Response;
    .restart local v17    # "res":Lorg/jsoup/helper/HttpConnection$Response;
    .restart local v20    # "status":I
    :cond_a
    const/16 v22, 0xc8

    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_b

    const/16 v22, 0x190

    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_c

    :cond_b
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->ignoreHttpErrors()Z

    move-result v22

    if-nez v22, :cond_c

    .line 890
    new-instance v22, Lorg/jsoup/HttpStatusException;

    const-string v23, "HTTP error fetching URL"

    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v20

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lorg/jsoup/HttpStatusException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v22

    .line 923
    :catch_2
    move-exception v8

    move-object/from16 v16, v17

    .end local v17    # "res":Lorg/jsoup/helper/HttpConnection$Response;
    .restart local v16    # "res":Lorg/jsoup/helper/HttpConnection$Response;
    goto :goto_3

    .line 893
    .end local v16    # "res":Lorg/jsoup/helper/HttpConnection$Response;
    .restart local v17    # "res":Lorg/jsoup/helper/HttpConnection$Response;
    :cond_c
    invoke-virtual/range {v17 .. v17}, Lorg/jsoup/helper/HttpConnection$Response;->contentType()Ljava/lang/String;

    move-result-object v7

    .line 894
    .local v7, "contentType":Ljava/lang/String;
    if-eqz v7, :cond_d

    .line 895
    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->ignoreContentType()Z

    move-result v22

    if-nez v22, :cond_d

    const-string v22, "text/"

    .line 896
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_d

    sget-object v22, Lorg/jsoup/helper/HttpConnection$Response;->xmlContentTypeRxp:Ljava/util/regex/Pattern;

    .line 897
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->matches()Z

    move-result v22

    if-nez v22, :cond_d

    .line 899
    new-instance v22, Lorg/jsoup/UnsupportedMimeTypeException;

    const-string v23, "Unhandled content type. Must be text/*, application/xml, or application/*+xml"

    .line 900
    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v7, v2}, Lorg/jsoup/UnsupportedMimeTypeException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v22

    .line 927
    .end local v7    # "contentType":Ljava/lang/String;
    :catchall_3
    move-exception v22

    move-object/from16 v16, v17

    .end local v17    # "res":Lorg/jsoup/helper/HttpConnection$Response;
    .restart local v16    # "res":Lorg/jsoup/helper/HttpConnection$Response;
    goto :goto_4

    .line 903
    .end local v16    # "res":Lorg/jsoup/helper/HttpConnection$Response;
    .restart local v7    # "contentType":Ljava/lang/String;
    .restart local v17    # "res":Lorg/jsoup/helper/HttpConnection$Response;
    :cond_d
    if-eqz v7, :cond_e

    sget-object v22, Lorg/jsoup/helper/HttpConnection$Response;->xmlContentTypeRxp:Ljava/util/regex/Pattern;

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->matches()Z

    move-result v22

    if-eqz v22, :cond_e

    .line 904
    invoke-static/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->access$700(Lorg/jsoup/helper/HttpConnection$Request;)Z

    move-result v22

    if-nez v22, :cond_e

    invoke-static {}, Lorg/jsoup/parser/Parser;->xmlParser()Lorg/jsoup/parser/Parser;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/helper/HttpConnection$Request;->parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/helper/HttpConnection$Request;

    .line 907
    :cond_e
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jsoup/helper/HttpConnection$Response;->contentType:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/jsoup/helper/DataUtil;->getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    .line 908
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v22

    if-eqz v22, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->method()Lorg/jsoup/Connection$Method;

    move-result-object v22

    sget-object v23, Lorg/jsoup/Connection$Method;->HEAD:Lorg/jsoup/Connection$Method;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_12

    .line 909
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v22

    if-eqz v22, :cond_10

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v22

    :goto_5
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    .line 910
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 911
    const-string v22, "Content-Encoding"

    const-string v23, "gzip"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/helper/HttpConnection$Response;->hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 912
    new-instance v22, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    .line 916
    :cond_f
    :goto_6
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    move-object/from16 v22, v0

    const v23, 0x8000

    .line 917
    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->maxBodySize()I

    move-result v24

    invoke-static/range {v22 .. v24}, Lorg/jsoup/internal/ConstrainableInputStream;->wrap(Ljava/io/InputStream;II)Lorg/jsoup/internal/ConstrainableInputStream;

    move-result-object v22

    .line 918
    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->timeout()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    move-wide/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/jsoup/internal/ConstrainableInputStream;->timeout(JJ)Lorg/jsoup/internal/ConstrainableInputStream;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 927
    :goto_7
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lorg/jsoup/helper/HttpConnection$Request;->access$602(Lorg/jsoup/helper/HttpConnection$Request;Z)Z

    .line 930
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    goto/16 :goto_2

    .line 909
    :cond_10
    :try_start_a
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    goto :goto_5

    .line 913
    :cond_11
    const-string v22, "Content-Encoding"

    const-string v23, "deflate"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/helper/HttpConnection$Response;->hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 914
    new-instance v22, Ljava/util/zip/InflaterInputStream;

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    new-instance v24, Ljava/util/zip/Inflater;

    const/16 v25, 0x1

    invoke-direct/range {v24 .. v25}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct/range {v22 .. v24}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    goto :goto_6

    .line 921
    :cond_12
    invoke-static {}, Lorg/jsoup/helper/DataUtil;->emptyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_7
.end method

.method private prepareByteData()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 971
    iget-boolean v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    const-string v2, "Request must be executed (with .execute(), .get(), or .post() before getting response body"

    invoke-static {v1, v2}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 972
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    .line 973
    iget-boolean v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    const-string v2, "Request has already been read (with .parse())"

    invoke-static {v1, v2}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 975
    :try_start_0
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v2}, Lorg/jsoup/helper/HttpConnection$Request;->maxBodySize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/jsoup/helper/DataUtil;->readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 979
    iput-boolean v3, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 980
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->safeClose()V

    .line 983
    :cond_0
    return-void

    .line 976
    :catch_0
    move-exception v0

    .line 977
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Lorg/jsoup/UncheckedIOException;

    invoke-direct {v1, v0}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 979
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iput-boolean v3, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 980
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->safeClose()V

    .line 981
    throw v1
.end method

.method private safeClose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1047
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 1049
    :try_start_0
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1053
    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    .line 1056
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 1057
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1058
    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->conn:Ljava/net/HttpURLConnection;

    .line 1060
    :cond_1
    return-void

    .line 1050
    :catch_0
    move-exception v0

    .line 1053
    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    .line 1054
    throw v0
.end method

.method private static serialiseRequestUrl(Lorg/jsoup/Connection$Request;)V
    .locals 8
    .param p0, "req"    # Lorg/jsoup/Connection$Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1223
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->url()Ljava/net/URL;

    move-result-object v1

    .line 1224
    .local v1, "in":Ljava/net/URL;
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1225
    .local v3, "url":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 1228
    .local v0, "first":Z
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    .line 1229
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1230
    invoke-virtual {v1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1231
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    .line 1232
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1234
    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    const/4 v0, 0x0

    .line 1237
    :cond_0
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->data()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/Connection$KeyVal;

    .line 1238
    .local v2, "keyVal":Lorg/jsoup/Connection$KeyVal;
    invoke-interface {v2}, Lorg/jsoup/Connection$KeyVal;->hasInputStream()Z

    move-result v5

    const-string v6, "InputStream data not supported in URL query string."

    invoke-static {v5, v6}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 1239
    if-nez v0, :cond_1

    .line 1240
    const/16 v5, 0x26

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1244
    :goto_1
    invoke-interface {v2}, Lorg/jsoup/Connection$KeyVal;->key()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jsoup/helper/DataUtil;->defaultCharsetName:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    .line 1245
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1246
    invoke-interface {v2}, Lorg/jsoup/Connection$KeyVal;->value()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/jsoup/helper/DataUtil;->defaultCharsetName:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1242
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1248
    .end local v2    # "keyVal":Lorg/jsoup/Connection$KeyVal;
    :cond_2
    new-instance v4, Ljava/net/URL;

    invoke-static {v3}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v4}, Lorg/jsoup/Connection$Request;->url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;

    .line 1249
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->data()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->clear()V

    .line 1250
    return-void
.end method

.method private static setOutputContentType(Lorg/jsoup/Connection$Request;)Ljava/lang/String;
    .locals 5
    .param p0, "req"    # Lorg/jsoup/Connection$Request;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1142
    const-string v2, "Content-Type"

    invoke-interface {p0, v2}, Lorg/jsoup/Connection$Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1143
    .local v1, "contentType":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1144
    .local v0, "bound":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1149
    const-string v2, "multipart/form-data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "boundary"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1150
    invoke-static {}, Lorg/jsoup/helper/DataUtil;->mimeBoundary()Ljava/lang/String;

    move-result-object v0

    .line 1151
    const-string v2, "Content-Type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "multipart/form-data; boundary="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Lorg/jsoup/Connection$Request;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 1161
    :cond_0
    :goto_0
    return-object v0

    .line 1155
    :cond_1
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection;->access$900(Lorg/jsoup/Connection$Request;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1156
    invoke-static {}, Lorg/jsoup/helper/DataUtil;->mimeBoundary()Ljava/lang/String;

    move-result-object v0

    .line 1157
    const-string v2, "Content-Type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "multipart/form-data; boundary="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Lorg/jsoup/Connection$Request;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    goto :goto_0

    .line 1159
    :cond_2
    const-string v2, "Content-Type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->postDataCharset()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Lorg/jsoup/Connection$Request;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    goto :goto_0
.end method

.method private static writePost(Lorg/jsoup/Connection$Request;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 10
    .param p0, "req"    # Lorg/jsoup/Connection$Request;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "boundary"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1165
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->data()Ljava/util/Collection;

    move-result-object v2

    .line 1166
    .local v2, "data":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jsoup/Connection$KeyVal;>;"
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->postDataCharset()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1168
    .local v6, "w":Ljava/io/BufferedWriter;
    if-eqz p2, :cond_4

    .line 1170
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/Connection$KeyVal;

    .line 1171
    .local v5, "keyVal":Lorg/jsoup/Connection$KeyVal;
    const-string v8, "--"

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {v6, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1173
    const-string v8, "\r\n"

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1174
    const-string v8, "Content-Disposition: form-data; name=\""

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1175
    invoke-interface {v5}, Lorg/jsoup/Connection$KeyVal;->key()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/jsoup/helper/HttpConnection;->access$1000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1176
    const-string v8, "\""

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1177
    invoke-interface {v5}, Lorg/jsoup/Connection$KeyVal;->inputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 1178
    .local v4, "input":Ljava/io/InputStream;
    if-eqz v4, :cond_1

    .line 1179
    const-string v8, "; filename=\""

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1180
    invoke-interface {v5}, Lorg/jsoup/Connection$KeyVal;->value()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/jsoup/helper/HttpConnection;->access$1000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1181
    const-string v8, "\"\r\nContent-Type: "

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1182
    invoke-interface {v5}, Lorg/jsoup/Connection$KeyVal;->contentType()Ljava/lang/String;

    move-result-object v1

    .line 1183
    .local v1, "contentType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .end local v1    # "contentType":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1184
    const-string v8, "\r\n\r\n"

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    .line 1186
    invoke-static {v4, p1}, Lorg/jsoup/helper/DataUtil;->crossStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1187
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 1192
    :goto_2
    const-string v8, "\r\n"

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 1183
    .restart local v1    # "contentType":Ljava/lang/String;
    :cond_0
    const-string v1, "application/octet-stream"

    goto :goto_1

    .line 1189
    .end local v1    # "contentType":Ljava/lang/String;
    :cond_1
    const-string v8, "\r\n\r\n"

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1190
    invoke-interface {v5}, Lorg/jsoup/Connection$KeyVal;->value()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 1194
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v5    # "keyVal":Lorg/jsoup/Connection$KeyVal;
    :cond_2
    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {v6, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1196
    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1218
    :cond_3
    :goto_3
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    .line 1219
    return-void

    .line 1198
    :cond_4
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->requestBody()Ljava/lang/String;

    move-result-object v0

    .line 1199
    .local v0, "body":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 1201
    invoke-virtual {v6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 1205
    :cond_5
    const/4 v3, 0x1

    .line 1206
    .local v3, "first":Z
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/Connection$KeyVal;

    .line 1207
    .restart local v5    # "keyVal":Lorg/jsoup/Connection$KeyVal;
    if-nez v3, :cond_6

    .line 1208
    const/16 v8, 0x26

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->append(C)Ljava/io/Writer;

    .line 1212
    :goto_5
    invoke-interface {v5}, Lorg/jsoup/Connection$KeyVal;->key()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->postDataCharset()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1213
    const/16 v8, 0x3d

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(I)V

    .line 1214
    invoke-interface {v5}, Lorg/jsoup/Connection$KeyVal;->value()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->postDataCharset()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_4

    .line 1210
    :cond_6
    const/4 v3, 0x0

    goto :goto_5
.end method


# virtual methods
.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 1

    .prologue
    .line 796
    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    move-result-object v0

    return-object v0
.end method

.method public body()Ljava/lang/String;
    .locals 3

    .prologue
    .line 986
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->prepareByteData()V

    .line 987
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 989
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    if-nez v1, :cond_0

    sget-object v1, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    :goto_0
    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    .line 990
    invoke-virtual {v1, v2}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 991
    .local v0, "body":Ljava/lang/String;
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 992
    return-object v0

    .line 989
    .end local v0    # "body":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_0
.end method

.method public bodyAsBytes()[B
    .locals 1

    .prologue
    .line 996
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->prepareByteData()V

    .line 997
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 998
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public bodyStream()Ljava/io/BufferedInputStream;
    .locals 3

    .prologue
    .line 1009
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    const-string v1, "Request must be executed (with .execute(), .get(), or .post() before getting response body"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 1010
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    const-string v1, "Request has already been read"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 1011
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 1012
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    const v1, 0x8000

    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v2}, Lorg/jsoup/helper/HttpConnection$Request;->maxBodySize()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/jsoup/internal/ConstrainableInputStream;->wrap(Ljava/io/InputStream;II)Lorg/jsoup/internal/ConstrainableInputStream;

    move-result-object v0

    return-object v0
.end method

.method public bufferUp()Lorg/jsoup/Connection$Response;
    .locals 0

    .prologue
    .line 1003
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->prepareByteData()V

    .line 1004
    return-object p0
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic charset(Ljava/lang/String;)Lorg/jsoup/Connection$Response;
    .locals 1

    .prologue
    .line 796
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Response;->charset(Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$Response;

    move-result-object v0

    return-object v0
.end method

.method public charset(Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$Response;
    .locals 0
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 947
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    .line 948
    return-object p0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic cookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 796
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->cookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 1

    .prologue
    .line 796
    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cookies()Ljava/util/Map;
    .locals 1

    .prologue
    .line 796
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->cookies()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hasCookie(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 796
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->hasCookie(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasHeader(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 796
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 796
    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 796
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 1

    .prologue
    .line 796
    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headers(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 796
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headers()Ljava/util/Map;
    .locals 1

    .prologue
    .line 796
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->headers()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;
    .locals 1

    .prologue
    .line 796
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic method()Lorg/jsoup/Connection$Method;
    .locals 1

    .prologue
    .line 796
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->method()Lorg/jsoup/Connection$Method;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic multiHeaders()Ljava/util/Map;
    .locals 1

    .prologue
    .line 796
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->multiHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public parse()Lorg/jsoup/nodes/Document;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 956
    iget-boolean v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    const-string v2, "Request must be executed (with .execute(), .get(), or .post() before parsing response"

    invoke-static {v1, v2}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 957
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    .line 958
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    .line 959
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 961
    :cond_0
    iget-boolean v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    const-string v2, "Input stream already read and parsed, cannot re-read."

    invoke-static {v1, v2}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 962
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    iget-object v3, p0, Lorg/jsoup/helper/HttpConnection$Response;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v4}, Lorg/jsoup/helper/HttpConnection$Request;->parser()Lorg/jsoup/parser/Parser;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lorg/jsoup/helper/DataUtil;->parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 963
    .local v0, "doc":Lorg/jsoup/nodes/Document;
    new-instance v1, Lorg/jsoup/helper/HttpConnection;

    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/helper/HttpConnection$Request;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/jsoup/helper/HttpConnection;-><init>(Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;Lorg/jsoup/helper/HttpConnection$1;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->connection(Lorg/jsoup/Connection;)Lorg/jsoup/nodes/Document;

    .line 964
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    .line 965
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 966
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->safeClose()V

    .line 967
    return-object v0
.end method

.method processResponseHeaders(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 1116
    .local p1, "resHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1117
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1118
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1121
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1122
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "Set-Cookie"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1123
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1124
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 1126
    new-instance v0, Lorg/jsoup/parser/TokenQueue;

    invoke-direct {v0, v5}, Lorg/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    .line 1127
    .local v0, "cd":Lorg/jsoup/parser/TokenQueue;
    const-string v9, "="

    invoke-virtual {v0, v9}, Lorg/jsoup/parser/TokenQueue;->chompTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1128
    .local v1, "cookieName":Ljava/lang/String;
    const-string v9, ";"

    invoke-virtual {v0, v9}, Lorg/jsoup/parser/TokenQueue;->consumeTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1131
    .local v2, "cookieVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    iget-object v9, p0, Lorg/jsoup/helper/HttpConnection$Response;->cookies:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1132
    invoke-virtual {p0, v1, v2}, Lorg/jsoup/helper/HttpConnection$Response;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    goto :goto_0

    .line 1135
    .end local v0    # "cd":Lorg/jsoup/parser/TokenQueue;
    .end local v1    # "cookieName":Ljava/lang/String;
    .end local v2    # "cookieVal":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1136
    .restart local v5    # "value":Ljava/lang/String;
    invoke-virtual {p0, v4, v5}, Lorg/jsoup/helper/HttpConnection$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    goto :goto_1

    .line 1139
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    return-void
.end method

.method public bridge synthetic removeCookie(Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 1

    .prologue
    .line 796
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->removeCookie(Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeHeader(Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 1

    .prologue
    .line 796
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->removeHeader(Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    move-result-object v0

    return-object v0
.end method

.method public statusCode()I
    .locals 1

    .prologue
    .line 935
    iget v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusCode:I

    return v0
.end method

.method public statusMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic url()Ljava/net/URL;
    .locals 1

    .prologue
    .line 796
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->url()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;
    .locals 1

    .prologue
    .line 796
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;

    move-result-object v0

    return-object v0
.end method
