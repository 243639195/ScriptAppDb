.class public abstract Lkiller/core/httpserver/NanoHTTPD;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkiller/core/httpserver/NanoHTTPD$ServerSocketFactory;,
        Lkiller/core/httpserver/NanoHTTPD$TempFileManagerFactory;,
        Lkiller/core/httpserver/NanoHTTPD$TempFileManager;,
        Lkiller/core/httpserver/NanoHTTPD$TempFile;,
        Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;,
        Lkiller/core/httpserver/NanoHTTPD$ResponseException;,
        Lkiller/core/httpserver/NanoHTTPD$Response;,
        Lkiller/core/httpserver/NanoHTTPD$Method;,
        Lkiller/core/httpserver/NanoHTTPD$IHTTPSession;,
        Lkiller/core/httpserver/NanoHTTPD$HTTPSession;,
        Lkiller/core/httpserver/NanoHTTPD$ContentType;,
        Lkiller/core/httpserver/NanoHTTPD$SecureServerSocketFactory;,
        Lkiller/core/httpserver/NanoHTTPD$DefaultServerSocketFactory;,
        Lkiller/core/httpserver/NanoHTTPD$DefaultTempFileManagerFactory;,
        Lkiller/core/httpserver/NanoHTTPD$DefaultTempFileManager;,
        Lkiller/core/httpserver/NanoHTTPD$DefaultTempFile;,
        Lkiller/core/httpserver/NanoHTTPD$DefaultAsyncRunner;,
        Lkiller/core/httpserver/NanoHTTPD$CookieHandler;,
        Lkiller/core/httpserver/NanoHTTPD$Cookie;,
        Lkiller/core/httpserver/NanoHTTPD$ClientHandler;,
        Lkiller/core/httpserver/NanoHTTPD$AsyncRunner;
    }
.end annotation


# static fields
.field private static final CONTENT_DISPOSITION_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

.field private static final CONTENT_DISPOSITION_ATTRIBUTE_REGEX:Ljava/lang/String; = "[ |\t]*([a-zA-Z]*)[ |\t]*=[ |\t]*[\'|\"]([^\"^\']*)[\'|\"]"

.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field private static final CONTENT_DISPOSITION_REGEX:Ljava/lang/String; = "([ |\t]*Content-Disposition[ |\t]*:)(.*)"

.field private static final CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

.field private static final CONTENT_TYPE_REGEX:Ljava/lang/String; = "([ |\t]*content-type[ |\t]*:)(.*)"

.field private static final LOG:Ljava/util/logging/Logger;

.field public static final MIME_HTML:Ljava/lang/String; = "text/html"

.field public static final MIME_PLAINTEXT:Ljava/lang/String; = "text/plain"

.field protected static MIME_TYPES:Ljava/util/Map; = null
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

.field private static final QUERY_STRING_PARAMETER:Ljava/lang/String; = "NanoHttpd.QUERY_STRING"

.field public static final SOCKET_READ_TIMEOUT:I = 0x1388


# instance fields
.field protected asyncRunner:Lkiller/core/httpserver/NanoHTTPD$AsyncRunner;

.field private final hostname:Ljava/lang/String;

.field private final myPort:I

.field protected myServerSocket:Ljava/net/ServerSocket;

.field private myThread:Ljava/lang/Thread;

.field private serverSocketFactory:Lkiller/core/httpserver/NanoHTTPD$ServerSocketFactory;

.field private tempFileManagerFactory:Lkiller/core/httpserver/NanoHTTPD$TempFileManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 471
    const-string v0, "([ |\t]*Content-Disposition[ |\t]*:)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lkiller/core/httpserver/NanoHTTPD;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 475
    const-string v0, "([ |\t]*content-type[ |\t]*:)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lkiller/core/httpserver/NanoHTTPD;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    .line 479
    const-string v0, "[ |\t]*([a-zA-Z]*)[ |\t]*=[ |\t]*[\'|\"]([^\"^\']*)[\'|\"]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lkiller/core/httpserver/NanoHTTPD;->CONTENT_DISPOSITION_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

    .line 1810
    const-class v0, Lkiller/core/httpserver/NanoHTTPD;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lkiller/core/httpserver/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 1967
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lkiller/core/httpserver/NanoHTTPD;-><init>(Ljava/lang/String;I)V

    .line 1968
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 1981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1949
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$DefaultServerSocketFactory;

    invoke-direct {v0}, Lkiller/core/httpserver/NanoHTTPD$DefaultServerSocketFactory;-><init>()V

    iput-object v0, p0, Lkiller/core/httpserver/NanoHTTPD;->serverSocketFactory:Lkiller/core/httpserver/NanoHTTPD$ServerSocketFactory;

    .line 1982
    iput-object p1, p0, Lkiller/core/httpserver/NanoHTTPD;->hostname:Ljava/lang/String;

    .line 1983
    iput p2, p0, Lkiller/core/httpserver/NanoHTTPD;->myPort:I

    .line 1984
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$DefaultTempFileManagerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkiller/core/httpserver/NanoHTTPD$DefaultTempFileManagerFactory;-><init>(Lkiller/core/httpserver/NanoHTTPD;Lkiller/core/httpserver/NanoHTTPD$1;)V

    invoke-virtual {p0, v0}, Lkiller/core/httpserver/NanoHTTPD;->setTempFileManagerFactory(Lkiller/core/httpserver/NanoHTTPD$TempFileManagerFactory;)V

    .line 1985
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$DefaultAsyncRunner;

    invoke-direct {v0}, Lkiller/core/httpserver/NanoHTTPD$DefaultAsyncRunner;-><init>()V

    invoke-virtual {p0, v0}, Lkiller/core/httpserver/NanoHTTPD;->setAsyncRunner(Lkiller/core/httpserver/NanoHTTPD$AsyncRunner;)V

    .line 1986
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 104
    invoke-static {p0}, Lkiller/core/httpserver/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lkiller/core/httpserver/NanoHTTPD;)Lkiller/core/httpserver/NanoHTTPD$TempFileManagerFactory;
    .locals 1
    .param p0, "x0"    # Lkiller/core/httpserver/NanoHTTPD;

    .prologue
    .line 104
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD;->tempFileManagerFactory:Lkiller/core/httpserver/NanoHTTPD$TempFileManagerFactory;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lkiller/core/httpserver/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lkiller/core/httpserver/NanoHTTPD;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lkiller/core/httpserver/NanoHTTPD;->CONTENT_DISPOSITION_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lkiller/core/httpserver/NanoHTTPD;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$700(Lkiller/core/httpserver/NanoHTTPD;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lkiller/core/httpserver/NanoHTTPD;

    .prologue
    .line 104
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lkiller/core/httpserver/NanoHTTPD;)I
    .locals 1
    .param p0, "x0"    # Lkiller/core/httpserver/NanoHTTPD;

    .prologue
    .line 104
    iget v0, p0, Lkiller/core/httpserver/NanoHTTPD;->myPort:I

    return v0
.end method

.method protected static decodeParameters(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p0, "queryString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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
    .line 2050
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2051
    .local v1, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p0, :cond_4

    .line 2052
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, "&"

    invoke-direct {v5, p0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    .local v5, "st":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2054
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 2055
    .local v0, "e":Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 2056
    .local v4, "sep":I
    if-ltz v4, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkiller/core/httpserver/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2057
    .local v2, "propertyName":Ljava/lang/String;
    :goto_1
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2058
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    :cond_1
    if-ltz v4, :cond_3

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkiller/core/httpserver/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2061
    .local v3, "propertyValue":Ljava/lang/String;
    :goto_2
    if-eqz v3, :cond_0

    .line 2062
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2056
    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v3    # "propertyValue":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Lkiller/core/httpserver/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2060
    .restart local v2    # "propertyName":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 2066
    .end local v0    # "e":Ljava/lang/String;
    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v4    # "sep":I
    .end local v5    # "st":Ljava/util/StringTokenizer;
    :cond_4
    return-object v1
.end method

.method protected static decodeParameters(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
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
    .line 2033
    .local p0, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "NanoHttpd.QUERY_STRING"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lkiller/core/httpserver/NanoHTTPD;->decodeParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected static decodePercent(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 2078
    const/4 v0, 0x0

    .line 2080
    .local v0, "decoded":Ljava/lang/String;
    :try_start_0
    const-string v2, "UTF8"

    invoke-static {p0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2084
    :goto_0
    return-object v0

    .line 2081
    :catch_0
    move-exception v1

    .line 2082
    .local v1, "ignored":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lkiller/core/httpserver/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Encoding not supported, ignored"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 1917
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1918
    .local v0, "dot":I
    const/4 v1, 0x0

    .line 1919
    .local v1, "mime":Ljava/lang/String;
    if-ltz v0, :cond_0

    .line 1920
    invoke-static {}, Lkiller/core/httpserver/NanoHTTPD;->mimeTypes()Ljava/util/Map;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mime":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1922
    .restart local v1    # "mime":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    const-string v1, "application/octet-stream"

    .end local v1    # "mime":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private static loadMimeTypes(Ljava/util/Map;Ljava/lang/String;)V
    .locals 9
    .param p1, "resourceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1835
    .local p0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-class v5, Lkiller/core/httpserver/NanoHTTPD;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    .line 1836
    .local v2, "resources":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1837
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URL;

    .line 1838
    .local v4, "url":Ljava/net/URL;
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1839
    .local v1, "properties":Ljava/util/Properties;
    const/4 v3, 0x0

    .line 1841
    .local v3, "stream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1842
    invoke-virtual {v1, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1846
    :try_start_2
    invoke-static {v3}, Lkiller/core/httpserver/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    .line 1848
    :goto_1
    invoke-interface {p0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1850
    .end local v1    # "properties":Ljava/util/Properties;
    .end local v2    # "resources":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .end local v3    # "stream":Ljava/io/InputStream;
    .end local v4    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 1851
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lkiller/core/httpserver/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no mime types available at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1853
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-void

    .line 1843
    .restart local v1    # "properties":Ljava/util/Properties;
    .restart local v2    # "resources":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .restart local v3    # "stream":Ljava/io/InputStream;
    .restart local v4    # "url":Ljava/net/URL;
    :catch_1
    move-exception v0

    .line 1844
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    sget-object v5, Lkiller/core/httpserver/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not load mimetypes from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1846
    :try_start_4
    invoke-static {v3}, Lkiller/core/httpserver/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-static {v3}, Lkiller/core/httpserver/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    .line 1847
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public static makeSSLSocketFactory(Ljava/lang/String;[C)Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 7
    .param p0, "keyAndTrustStoreClasspathPath"    # Ljava/lang/String;
    .param p1, "passphrase"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1893
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 1894
    .local v2, "keystore":Ljava/security/KeyStore;
    const-class v4, Lkiller/core/httpserver/NanoHTTPD;

    invoke-virtual {v4, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 1896
    .local v3, "keystoreStream":Ljava/io/InputStream;
    if-nez v3, :cond_0

    .line 1897
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load keystore from classpath: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1904
    .end local v2    # "keystore":Ljava/security/KeyStore;
    .end local v3    # "keystoreStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 1905
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1900
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "keystore":Ljava/security/KeyStore;
    .restart local v3    # "keystoreStream":Ljava/io/InputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v2, v3, p1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 1901
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    .line 1902
    .local v1, "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {v1, v2, p1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 1903
    invoke-static {v2, v1}, Lkiller/core/httpserver/NanoHTTPD;->makeSSLSocketFactory(Ljava/security/KeyStore;Ljavax/net/ssl/KeyManagerFactory;)Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4
.end method

.method public static makeSSLSocketFactory(Ljava/security/KeyStore;Ljavax/net/ssl/KeyManagerFactory;)Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 3
    .param p0, "loadedKeyStore"    # Ljava/security/KeyStore;
    .param p1, "loadedKeyFactory"    # Ljavax/net/ssl/KeyManagerFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1881
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    invoke-static {p0, v1}, Lkiller/core/httpserver/NanoHTTPD;->makeSSLSocketFactory(Ljava/security/KeyStore;[Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1882
    :catch_0
    move-exception v0

    .line 1883
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static makeSSLSocketFactory(Ljava/security/KeyStore;[Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 6
    .param p0, "loadedKeyStore"    # Ljava/security/KeyStore;
    .param p1, "keyManagers"    # [Ljavax/net/ssl/KeyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1861
    const/4 v2, 0x0

    .line 1863
    .local v2, "res":Ljavax/net/ssl/SSLServerSocketFactory;
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    .line 1864
    .local v3, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v3, p0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1865
    const-string v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 1866
    .local v0, "ctx":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, p1, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 1867
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1871
    return-object v2

    .line 1868
    .end local v0    # "ctx":Ljavax/net/ssl/SSLContext;
    .end local v3    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :catch_0
    move-exception v1

    .line 1869
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static mimeTypes()Ljava/util/Map;
    .locals 3
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
    .line 1818
    sget-object v0, Lkiller/core/httpserver/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1819
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lkiller/core/httpserver/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    .line 1820
    sget-object v0, Lkiller/core/httpserver/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    const-string v1, "META-INF/nanohttpd/default-mimetypes.properties"

    invoke-static {v0, v1}, Lkiller/core/httpserver/NanoHTTPD;->loadMimeTypes(Ljava/util/Map;Ljava/lang/String;)V

    .line 1821
    sget-object v0, Lkiller/core/httpserver/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    const-string v1, "META-INF/nanohttpd/mimetypes.properties"

    invoke-static {v0, v1}, Lkiller/core/httpserver/NanoHTTPD;->loadMimeTypes(Ljava/util/Map;Ljava/lang/String;)V

    .line 1822
    sget-object v0, Lkiller/core/httpserver/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1823
    sget-object v0, Lkiller/core/httpserver/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "no mime types found in the classpath! please provide mimetypes.properties"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1826
    :cond_0
    sget-object v0, Lkiller/core/httpserver/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    return-object v0
.end method

.method public static newChunkedResponse(Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;)Lkiller/core/httpserver/NanoHTTPD$Response;
    .locals 6
    .param p0, "status"    # Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/io/InputStream;

    .prologue
    .line 2132
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$Response;

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lkiller/core/httpserver/NanoHTTPD$Response;-><init>(Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public static newFixedLengthResponse(Ljava/lang/String;)Lkiller/core/httpserver/NanoHTTPD$Response;
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2169
    sget-object v0, Lkiller/core/httpserver/NanoHTTPD$Response$Status;->OK:Lkiller/core/httpserver/NanoHTTPD$Response$Status;

    const-string v1, "text/html"

    invoke-static {v0, v1, p0}, Lkiller/core/httpserver/NanoHTTPD;->newFixedLengthResponse(Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lkiller/core/httpserver/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method public static newFixedLengthResponse(Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lkiller/core/httpserver/NanoHTTPD$Response;
    .locals 7
    .param p0, "status"    # Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/io/InputStream;
    .param p3, "totalBytes"    # J

    .prologue
    .line 2139
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$Response;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lkiller/core/httpserver/NanoHTTPD$Response;-><init>(Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public static newFixedLengthResponse(Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lkiller/core/httpserver/NanoHTTPD$Response;
    .locals 8
    .param p0, "status"    # Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "txt"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 2146
    new-instance v1, Lkiller/core/httpserver/NanoHTTPD$ContentType;

    invoke-direct {v1, p1}, Lkiller/core/httpserver/NanoHTTPD$ContentType;-><init>(Ljava/lang/String;)V

    .line 2147
    .local v1, "contentType":Lkiller/core/httpserver/NanoHTTPD$ContentType;
    if-nez p2, :cond_0

    .line 2148
    new-instance v4, Ljava/io/ByteArrayInputStream;

    new-array v5, v7, [B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v6, 0x0

    invoke-static {p0, p1, v4, v6, v7}, Lkiller/core/httpserver/NanoHTTPD;->newFixedLengthResponse(Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lkiller/core/httpserver/NanoHTTPD$Response;

    move-result-object v4

    .line 2161
    :goto_0
    return-object v4

    .line 2152
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lkiller/core/httpserver/NanoHTTPD$ContentType;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    .line 2153
    .local v3, "newEncoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v3, p2}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2154
    invoke-virtual {v1}, Lkiller/core/httpserver/NanoHTTPD$ContentType;->tryUTF8()Lkiller/core/httpserver/NanoHTTPD$ContentType;

    move-result-object v1

    .line 2156
    :cond_1
    invoke-virtual {v1}, Lkiller/core/httpserver/NanoHTTPD$ContentType;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2161
    .end local v3    # "newEncoder":Ljava/nio/charset/CharsetEncoder;
    .local v0, "bytes":[B
    :goto_1
    invoke-virtual {v1}, Lkiller/core/httpserver/NanoHTTPD$ContentType;->getContentTypeHeader()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v6, v0

    int-to-long v6, v6

    invoke-static {p0, v4, v5, v6, v7}, Lkiller/core/httpserver/NanoHTTPD;->newFixedLengthResponse(Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lkiller/core/httpserver/NanoHTTPD$Response;

    move-result-object v4

    goto :goto_0

    .line 2157
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v2

    .line 2158
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v4, Lkiller/core/httpserver/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v6, "encoding problem, responding nothing"

    invoke-virtual {v4, v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2159
    new-array v0, v7, [B

    .restart local v0    # "bytes":[B
    goto :goto_1
.end method

.method private static final safeClose(Ljava/lang/Object;)V
    .locals 4
    .param p0, "closeable"    # Ljava/lang/Object;

    .prologue
    .line 1927
    if-eqz p0, :cond_0

    .line 1928
    :try_start_0
    instance-of v1, p0, Ljava/io/Closeable;

    if-eqz v1, :cond_1

    .line 1929
    check-cast p0, Ljava/io/Closeable;

    .end local p0    # "closeable":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 1941
    .local v0, "e":Ljava/io/IOException;
    .restart local p0    # "closeable":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 1930
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    instance-of v1, p0, Ljava/net/Socket;

    if-eqz v1, :cond_2

    .line 1931
    check-cast p0, Ljava/net/Socket;

    .end local p0    # "closeable":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1938
    .restart local p0    # "closeable":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1939
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v1, Lkiller/core/httpserver/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Could not close"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1932
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_1
    instance-of v1, p0, Ljava/net/ServerSocket;

    if-eqz v1, :cond_3

    .line 1933
    check-cast p0, Ljava/net/ServerSocket;

    .end local p0    # "closeable":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    goto :goto_0

    .line 1935
    .restart local p0    # "closeable":Ljava/lang/Object;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown object to close"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method


# virtual methods
.method public declared-synchronized closeAllConnections()V
    .locals 1

    .prologue
    .line 1992
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lkiller/core/httpserver/NanoHTTPD;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1993
    monitor-exit p0

    return-void

    .line 1992
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createClientHandler(Ljava/net/Socket;Ljava/io/InputStream;)Lkiller/core/httpserver/NanoHTTPD$ClientHandler;
    .locals 1
    .param p1, "finalAccept"    # Ljava/net/Socket;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 2006
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$ClientHandler;

    invoke-direct {v0, p0, p2, p1}, Lkiller/core/httpserver/NanoHTTPD$ClientHandler;-><init>(Lkiller/core/httpserver/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;)V

    return-object v0
.end method

.method protected createServerRunnable(I)Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 2018
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;

    invoke-direct {v0, p0, p1}, Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;-><init>(Lkiller/core/httpserver/NanoHTTPD;I)V

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2114
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public final getListeningPort()I
    .locals 1

    .prologue
    .line 2098
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    goto :goto_0
.end method

.method public getParameter(Lkiller/core/httpserver/NanoHTTPD$IHTTPSession;)Ljava/util/Map;
    .locals 6
    .param p1, "session"    # Lkiller/core/httpserver/NanoHTTPD$IHTTPSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkiller/core/httpserver/NanoHTTPD$IHTTPSession;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2313
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2314
    .local v1, "parameter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Lkiller/core/httpserver/NanoHTTPD$IHTTPSession;->getMethod()Lkiller/core/httpserver/NanoHTTPD$Method;

    move-result-object v3

    sget-object v4, Lkiller/core/httpserver/NanoHTTPD$Method;->POST:Lkiller/core/httpserver/NanoHTTPD$Method;

    invoke-virtual {v3, v4}, Lkiller/core/httpserver/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2316
    :try_start_0
    invoke-interface {p1, v1}, Lkiller/core/httpserver/NanoHTTPD$IHTTPSession;->parseBody(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lkiller/core/httpserver/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2319
    :cond_0
    :goto_0
    invoke-interface {p1}, Lkiller/core/httpserver/NanoHTTPD$IHTTPSession;->getParameters()Ljava/util/Map;

    move-result-object v2

    .line 2320
    .local v2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2321
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2317
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    .line 2323
    .restart local v2    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_1
    return-object v1
.end method

.method public getServerSocketFactory()Lkiller/core/httpserver/NanoHTTPD$ServerSocketFactory;
    .locals 1

    .prologue
    .line 2106
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD;->serverSocketFactory:Lkiller/core/httpserver/NanoHTTPD$ServerSocketFactory;

    return-object v0
.end method

.method public getTempFileManagerFactory()Lkiller/core/httpserver/NanoHTTPD$TempFileManagerFactory;
    .locals 1

    .prologue
    .line 2118
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD;->tempFileManagerFactory:Lkiller/core/httpserver/NanoHTTPD$TempFileManagerFactory;

    return-object v0
.end method

.method public final isAlive()Z
    .locals 1

    .prologue
    .line 2102
    invoke-virtual {p0}, Lkiller/core/httpserver/NanoHTTPD;->wasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeSecure(Ljavax/net/ssl/SSLServerSocketFactory;[Ljava/lang/String;)V
    .locals 1
    .param p1, "sslServerSocketFactory"    # Ljavax/net/ssl/SSLServerSocketFactory;
    .param p2, "sslProtocols"    # [Ljava/lang/String;

    .prologue
    .line 2125
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$SecureServerSocketFactory;

    invoke-direct {v0, p1, p2}, Lkiller/core/httpserver/NanoHTTPD$SecureServerSocketFactory;-><init>(Ljavax/net/ssl/SSLServerSocketFactory;[Ljava/lang/String;)V

    iput-object v0, p0, Lkiller/core/httpserver/NanoHTTPD;->serverSocketFactory:Lkiller/core/httpserver/NanoHTTPD$ServerSocketFactory;

    .line 2126
    return-void
.end method

.method public serve(Ljava/lang/String;Lkiller/core/httpserver/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lkiller/core/httpserver/NanoHTTPD$Response;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Lkiller/core/httpserver/NanoHTTPD$Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkiller/core/httpserver/NanoHTTPD$Method;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lkiller/core/httpserver/NanoHTTPD$Response;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2220
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lkiller/core/httpserver/NanoHTTPD$Response$Status;->NOT_FOUND:Lkiller/core/httpserver/NanoHTTPD$Response$Status;

    const-string v1, "text/plain"

    const-string v2, "Not Found"

    invoke-static {v0, v1, v2}, Lkiller/core/httpserver/NanoHTTPD;->newFixedLengthResponse(Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lkiller/core/httpserver/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method public serve(Lkiller/core/httpserver/NanoHTTPD$IHTTPSession;)Lkiller/core/httpserver/NanoHTTPD$Response;
    .locals 9
    .param p1, "session"    # Lkiller/core/httpserver/NanoHTTPD$IHTTPSession;

    .prologue
    .line 2183
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2184
    .local v5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Lkiller/core/httpserver/NanoHTTPD$IHTTPSession;->getMethod()Lkiller/core/httpserver/NanoHTTPD$Method;

    move-result-object v2

    .line 2185
    .local v2, "method":Lkiller/core/httpserver/NanoHTTPD$Method;
    sget-object v0, Lkiller/core/httpserver/NanoHTTPD$Method;->PUT:Lkiller/core/httpserver/NanoHTTPD$Method;

    invoke-virtual {v0, v2}, Lkiller/core/httpserver/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lkiller/core/httpserver/NanoHTTPD$Method;->POST:Lkiller/core/httpserver/NanoHTTPD$Method;

    invoke-virtual {v0, v2}, Lkiller/core/httpserver/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2187
    :cond_0
    :try_start_0
    invoke-interface {p1, v5}, Lkiller/core/httpserver/NanoHTTPD$IHTTPSession;->parseBody(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lkiller/core/httpserver/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2195
    :cond_1
    invoke-interface {p1}, Lkiller/core/httpserver/NanoHTTPD$IHTTPSession;->getParms()Ljava/util/Map;

    move-result-object v4

    .line 2196
    .local v4, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "NanoHttpd.QUERY_STRING"

    invoke-interface {p1}, Lkiller/core/httpserver/NanoHTTPD$IHTTPSession;->getQueryParameterString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2197
    invoke-interface {p1}, Lkiller/core/httpserver/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lkiller/core/httpserver/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lkiller/core/httpserver/NanoHTTPD;->serve(Ljava/lang/String;Lkiller/core/httpserver/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lkiller/core/httpserver/NanoHTTPD$Response;

    move-result-object v0

    .end local v4    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v0

    .line 2188
    :catch_0
    move-exception v6

    .line 2189
    .local v6, "ioe":Ljava/io/IOException;
    sget-object v0, Lkiller/core/httpserver/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lkiller/core/httpserver/NanoHTTPD$Response$Status;

    const-string v1, "text/plain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lkiller/core/httpserver/NanoHTTPD;->newFixedLengthResponse(Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lkiller/core/httpserver/NanoHTTPD$Response;

    move-result-object v0

    goto :goto_0

    .line 2190
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 2191
    .local v7, "re":Lkiller/core/httpserver/NanoHTTPD$ResponseException;
    invoke-virtual {v7}, Lkiller/core/httpserver/NanoHTTPD$ResponseException;->getStatus()Lkiller/core/httpserver/NanoHTTPD$Response$Status;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {v7}, Lkiller/core/httpserver/NanoHTTPD$ResponseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lkiller/core/httpserver/NanoHTTPD;->newFixedLengthResponse(Lkiller/core/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lkiller/core/httpserver/NanoHTTPD$Response;

    move-result-object v0

    goto :goto_0
.end method

.method public setAsyncRunner(Lkiller/core/httpserver/NanoHTTPD$AsyncRunner;)V
    .locals 0
    .param p1, "asyncRunner"    # Lkiller/core/httpserver/NanoHTTPD$AsyncRunner;

    .prologue
    .line 2230
    iput-object p1, p0, Lkiller/core/httpserver/NanoHTTPD;->asyncRunner:Lkiller/core/httpserver/NanoHTTPD$AsyncRunner;

    .line 2231
    return-void
.end method

.method public setServerSocketFactory(Lkiller/core/httpserver/NanoHTTPD$ServerSocketFactory;)V
    .locals 0
    .param p1, "serverSocketFactory"    # Lkiller/core/httpserver/NanoHTTPD$ServerSocketFactory;

    .prologue
    .line 2110
    iput-object p1, p0, Lkiller/core/httpserver/NanoHTTPD;->serverSocketFactory:Lkiller/core/httpserver/NanoHTTPD$ServerSocketFactory;

    .line 2111
    return-void
.end method

.method public setTempFileManagerFactory(Lkiller/core/httpserver/NanoHTTPD$TempFileManagerFactory;)V
    .locals 0
    .param p1, "tempFileManagerFactory"    # Lkiller/core/httpserver/NanoHTTPD$TempFileManagerFactory;

    .prologue
    .line 2240
    iput-object p1, p0, Lkiller/core/httpserver/NanoHTTPD;->tempFileManagerFactory:Lkiller/core/httpserver/NanoHTTPD$TempFileManagerFactory;

    .line 2241
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2250
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lkiller/core/httpserver/NanoHTTPD;->start(I)V

    .line 2251
    return-void
.end method

.method public start(I)V
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2257
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lkiller/core/httpserver/NanoHTTPD;->start(IZ)V

    .line 2258
    return-void
.end method

.method public start(IZ)V
    .locals 4
    .param p1, "timeout"    # I
    .param p2, "daemon"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2271
    invoke-virtual {p0}, Lkiller/core/httpserver/NanoHTTPD;->getServerSocketFactory()Lkiller/core/httpserver/NanoHTTPD$ServerSocketFactory;

    move-result-object v1

    invoke-interface {v1}, Lkiller/core/httpserver/NanoHTTPD$ServerSocketFactory;->create()Ljava/net/ServerSocket;

    move-result-object v1

    iput-object v1, p0, Lkiller/core/httpserver/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    .line 2272
    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 2274
    invoke-virtual {p0, p1}, Lkiller/core/httpserver/NanoHTTPD;->createServerRunnable(I)Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;

    move-result-object v0

    .line 2275
    .local v0, "serverRunnable":Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lkiller/core/httpserver/NanoHTTPD;->myThread:Ljava/lang/Thread;

    .line 2276
    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v1, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 2277
    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD;->myThread:Ljava/lang/Thread;

    const-string v2, "NanoHttpd Main Listener"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2278
    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2279
    :goto_0
    invoke-static {v0}, Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;->access$1000(Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;->access$1100(Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2281
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2282
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2288
    :cond_0
    invoke-static {v0}, Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;->access$1100(Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2289
    invoke-static {v0}, Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;->access$1100(Lkiller/core/httpserver/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 2291
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 2298
    :try_start_0
    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-static {v1}, Lkiller/core/httpserver/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    .line 2299
    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD;->asyncRunner:Lkiller/core/httpserver/NanoHTTPD$AsyncRunner;

    invoke-interface {v1}, Lkiller/core/httpserver/NanoHTTPD$AsyncRunner;->closeAll()V

    .line 2300
    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD;->myThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 2301
    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2306
    :cond_0
    :goto_0
    return-void

    .line 2303
    :catch_0
    move-exception v0

    .line 2304
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lkiller/core/httpserver/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Could not stop all connections"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected useGzipWhenAccepted(Lkiller/core/httpserver/NanoHTTPD$Response;)Z
    .locals 2
    .param p1, "r"    # Lkiller/core/httpserver/NanoHTTPD$Response;

    .prologue
    .line 2094
    invoke-virtual {p1}, Lkiller/core/httpserver/NanoHTTPD$Response;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lkiller/core/httpserver/NanoHTTPD$Response;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lkiller/core/httpserver/NanoHTTPD$Response;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final wasStarted()Z
    .locals 1

    .prologue
    .line 2309
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD;->myThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
