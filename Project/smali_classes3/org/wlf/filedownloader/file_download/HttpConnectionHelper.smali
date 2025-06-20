.class public Lorg/wlf/filedownloader/file_download/HttpConnectionHelper;
.super Ljava/lang/Object;
.source "HttpConnectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    return-void
.end method

.method public static createDetectConnection(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "connectTimeout"    # I
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;

    invoke-direct {v0, p0, p1, p2}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 54
    .local v0, "requestParam":Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;
    invoke-virtual {v0, p3}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->setRequestMethod(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, p4}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->setHeaders(Ljava/util/Map;)V

    .line 57
    invoke-static {v0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper;->createHttpUrlConnection(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)Ljava/net/HttpURLConnection;

    move-result-object v1

    return-object v1
.end method

.method public static createDownloadFileConnection(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p0, "requestParam"    # Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper;->createHttpUrlConnection(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method private static createHttpUrlConnection(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)Ljava/net/HttpURLConnection;
    .locals 14
    .param p0, "requestParam"    # Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    .line 115
    if-nez p0, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 189
    :goto_0
    return-object v0

    .line 119
    :cond_0
    sget-object v8, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "headBuffer\uff0ccreateHttpUrlConnection\uff0c\u53d1\u9001\u7684\u8bf7\u6c42\u53c2\u6570\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->access$000(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->access$100(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/wlf/filedownloader/util/UrlUtil;->getASCIIEncodedUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "encodedUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 123
    new-instance v8, Ljava/lang/IllegalAccessException;

    const-string v9, "URL Illegal !"

    invoke-direct {v8, v9}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 126
    :cond_1
    const/4 v0, 0x0

    .line 128
    .local v0, "conn":Ljava/net/HttpURLConnection;
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 129
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "https"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 131
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 132
    .local v2, "httpsConn":Ljavax/net/ssl/HttpsURLConnection;
    invoke-static {v2}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper;->initTrustSSL(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 133
    move-object v0, v2

    .line 138
    .end local v2    # "httpsConn":Ljavax/net/ssl/HttpsURLConnection;
    :goto_1
    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->access$200(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 139
    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->access$200(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 140
    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->access$300(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 141
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 145
    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->access$400(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v8}, Lorg/wlf/filedownloader/util/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 147
    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->access$400(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 149
    .local v5, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v8, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u81ea\u5b9a\u4e49\u5934\u4fe1\u606f\u5927\u5c0f\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 152
    .local v4, "key":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 155
    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->access$400(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 156
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v0, v4, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget-object v8, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u6dfb\u52a0\u81ea\u5b9a\u4e49\u5934\u4fe1\u606f\uff0curl\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\uff0ckey\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\uff0cvalue\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 135
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    check-cast v0, Ljava/net/HttpURLConnection;

    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    goto/16 :goto_1

    .line 162
    :cond_4
    const-string v8, "Accept-Encoding"

    const-string v9, "identity"

    invoke-virtual {v0, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->access$100(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 166
    const-string v8, "Charset"

    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->access$100(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_5
    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->access$500(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)J

    move-result-wide v8

    cmp-long v8, v8, v12

    if-lez v8, :cond_6

    .line 171
    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->access$600(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)J

    move-result-wide v8

    cmp-long v8, v8, v12

    if-lez v8, :cond_7

    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->access$600(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)J

    move-result-wide v8

    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->access$500(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_7

    .line 172
    const-string v8, "Range"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bytes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->access$500(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->access$600(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_3
    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->access$700(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 179
    const-string v8, "If-Range"

    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->access$700(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_6
    :goto_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    goto/16 :goto_0

    .line 175
    :cond_7
    const-string v8, "Range"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bytes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->access$500(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 181
    :cond_8
    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->access$800(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 182
    const-string v8, "If-Range"

    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->access$800(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private static getFileNameFromCommonServerResponseHeader(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "responseHeaderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .line 395
    invoke-static {p0}, Lorg/wlf/filedownloader/util/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    :cond_0
    return-object v1
.end method

.method private static getFileNameFromPhpServerResponseHeader(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "responseHeaderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 406
    invoke-static {p0}, Lorg/wlf/filedownloader/util/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-object v2

    .line 410
    :cond_1
    const-string v5, "Content-Disposition"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 412
    .local v1, "contentDispositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 416
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 417
    .local v0, "contentDisposition":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 420
    const-string v5, "filename="

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 422
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 423
    .local v4, "start":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 424
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, "fileName":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getFileNameFromResponseHeader(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "responseHeaderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p0}, Lorg/wlf/filedownloader/util/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    const/4 v0, 0x0

    .line 390
    :cond_0
    :goto_0
    return-object v0

    .line 381
    :cond_1
    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper;->getFileNameFromCommonServerResponseHeader(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper;->getFileNameFromPhpServerResponseHeader(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 390
    goto :goto_0
.end method

.method private static getFileSizeFromCommonServerResponseHeader(Ljava/util/Map;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)J"
        }
    .end annotation

    .prologue
    .local p0, "responseHeaderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-wide/16 v4, -0x1

    .line 316
    invoke-static {p0}, Lorg/wlf/filedownloader/util/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-wide v4

    .line 320
    :cond_1
    const-string v3, "Content-Length"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 322
    .local v1, "contentLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 326
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 328
    .local v0, "contentLengthStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 329
    const-wide/16 v4, -0x1

    .line 331
    .local v4, "fileSize":J
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_0

    .line 332
    :catch_0
    move-exception v2

    .line 333
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getFileSizeFromPhpServerResponseHeader(Ljava/util/Map;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)J"
        }
    .end annotation

    .prologue
    .local p0, "responseHeaderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-wide/16 v4, -0x1

    .line 343
    invoke-static {p0}, Lorg/wlf/filedownloader/util/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-wide v4

    .line 347
    :cond_1
    const-string v3, "Accept-Length"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 349
    .local v1, "contentLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 353
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 355
    .local v0, "contentLengthStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 356
    const-wide/16 v4, -0x1

    .line 358
    .local v4, "fileSize":J
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_0

    .line 359
    :catch_0
    move-exception v2

    .line 360
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFileSizeFromResponseHeader(Ljava/util/Map;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)J"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "responseHeaderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p0}, Lorg/wlf/filedownloader/util/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    const-wide/16 v0, -0x1

    .line 311
    :cond_0
    :goto_0
    return-wide v0

    .line 304
    :cond_1
    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper;->getFileSizeFromCommonServerResponseHeader(Ljava/util/Map;)J

    move-result-wide v0

    .line 306
    .local v0, "fileSize":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 308
    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper;->getFileSizeFromPhpServerResponseHeader(Ljava/util/Map;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getLastModifiedFromResponseHeader(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "responseHeaderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .line 441
    invoke-static {p0}, Lorg/wlf/filedownloader/util/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-object v1

    .line 445
    :cond_1
    const-string v2, "Last-Modified"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 447
    .local v0, "contentLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 451
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 453
    .local v1, "lastModified":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getStringHeaders(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 459
    :try_start_0
    invoke-static {p0}, Lorg/wlf/filedownloader/util/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 470
    :goto_0
    return-object v3

    .line 463
    :cond_0
    invoke-static {p0}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper;->getWritableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 464
    .local v0, "copyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 465
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 466
    .end local v0    # "copyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 467
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getWritableMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 482
    .local p0, "readOnlyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 484
    .local v5, "readAndWriteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 486
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 487
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 489
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 490
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 492
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v4, "readAndWriteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 495
    .local v6, "readOnlyValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 496
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 497
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 498
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 500
    .end local v7    # "value":Ljava/lang/String;
    :cond_1
    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 503
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "readAndWriteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "readOnlyValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-object v5
.end method

.method private static initTrustSSL(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 6
    .param p0, "conn"    # Ljavax/net/ssl/HttpsURLConnection;

    .prologue
    .line 72
    :try_start_0
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 73
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    new-instance v5, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$1;

    invoke-direct {v5}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$1;-><init>()V

    aput-object v5, v3, v4

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 89
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 90
    new-instance v2, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$2;

    invoke-direct {v2}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$2;-><init>()V

    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
