.class public Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;
.super Ljava/lang/Object;
.source "HttpDownloader.java"

# interfaces
.implements Lorg/wlf/filedownloader/file_download/http_downloader/Download;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$OnRangeChangeListener;,
        Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$OnHttpDownloadListener;,
        Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final DEFAULT_REQUEST_METHOD:Ljava/lang/String; = "GET"

.field private static final MAX_REDIRECT_TIMES:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAcceptRangeType:Ljava/lang/String;

.field private mCharset:Ljava/lang/String;

.field private mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

.field private mConnectTimeout:I

.field private mETag:Ljava/lang/String;

.field private mHeaders:Ljava/util/Map;
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

.field private mLastModified:Ljava/lang/String;

.field private mOnHttpDownloadListener:Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$OnHttpDownloadListener;

.field private mOnRangeChangeListener:Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$OnRangeChangeListener;

.field private mRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

.field private mRequestMethod:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/http_downloader/Range;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "range"    # Lorg/wlf/filedownloader/file_download/http_downloader/Range;
    .param p3, "acceptRangeType"    # Ljava/lang/String;
    .param p4, "eTag"    # Ljava/lang/String;
    .param p5, "lastModified"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x3a98

    iput v0, p0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mConnectTimeout:I

    .line 41
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mCharset:Ljava/lang/String;

    .line 42
    const-string v0, "GET"

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mRequestMethod:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mUrl:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    .line 82
    iput-object p3, p0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mAcceptRangeType:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mETag:Ljava/lang/String;

    .line 84
    iput-object p5, p0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mLastModified:Ljava/lang/String;

    .line 85
    return-void
.end method

.method private notifyDownloadConnected(Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;J)V
    .locals 2
    .param p1, "inputStream"    # Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;
    .param p2, "startPosInTotal"    # J

    .prologue
    .line 342
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mOnHttpDownloadListener:Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$OnHttpDownloadListener;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mOnHttpDownloadListener:Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$OnHttpDownloadListener;

    invoke-interface {v0, p1, p2, p3}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$OnHttpDownloadListener;->onDownloadConnected(Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;J)V

    .line 345
    :cond_0
    return-void
.end method

.method private notifyRangeChanged(Lorg/wlf/filedownloader/file_download/http_downloader/Range;Lorg/wlf/filedownloader/file_download/http_downloader/Range;)Z
    .locals 1
    .param p1, "oldRange"    # Lorg/wlf/filedownloader/file_download/http_downloader/Range;
    .param p2, "newRange"    # Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    .prologue
    .line 334
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mOnRangeChangeListener:Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$OnRangeChangeListener;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mOnRangeChangeListener:Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$OnRangeChangeListener;

    invoke-interface {v0, p1, p2}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$OnRangeChangeListener;->onRangeChanged(Lorg/wlf/filedownloader/file_download/http_downloader/Range;Lorg/wlf/filedownloader/file_download/http_downloader/Range;)Z

    move-result v0

    .line 337
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public download()V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;
        }
    .end annotation

    .prologue
    .line 147
    const/16 v21, 0x1

    .line 149
    .local v21, "hasException":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mUrl:Ljava/lang/String;

    .line 151
    .local v3, "url":Ljava/lang/String;
    const/4 v13, 0x0

    .line 152
    .local v13, "conn":Ljava/net/HttpURLConnection;
    const/16 v22, 0x0

    .line 155
    .local v22, "inputStream":Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;
    :try_start_0
    new-instance v2, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mConnectTimeout:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mCharset:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    iget-wide v6, v6, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->startPos:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    iget-wide v8, v8, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->endPos:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mETag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mLastModified:Ljava/lang/String;

    invoke-direct/range {v2 .. v11}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;-><init>(Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 157
    .local v2, "requestParam":Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mRequestMethod:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->setRequestMethod(Ljava/lang/String;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mHeaders:Ljava/util/Map;

    invoke-virtual {v2, v4}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->setHeaders(Ljava/util/Map;)V

    .line 160
    invoke-static {v2}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper;->createDownloadFileConnection(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)Ljava/net/HttpURLConnection;

    move-result-object v13

    .line 162
    const/16 v26, 0x0

    .line 163
    .local v26, "redirectTimes":I
    :goto_0
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    div-int/lit8 v4, v4, 0x64

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    const/4 v4, 0x5

    move/from16 v0, v26

    if-ge v0, v4, :cond_0

    .line 164
    const-string v4, "Location"

    invoke-virtual {v13, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->setUrl(Ljava/lang/String;)V

    .line 165
    invoke-static {v2}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper;->createDownloadFileConnection(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)Ljava/net/HttpURLConnection;

    move-result-object v13

    .line 166
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 169
    :cond_0
    sget-object v4, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".download 1\u3001\u51c6\u5907\u4e0b\u8f7d\uff0c\u91cd\u5b9a\u5411\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u6b21"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff0c\u6700\u5927\u91cd\u5b9a\u5411\u6b21\u6570\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff0curl\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v4, 0x5

    move/from16 v0, v26

    if-le v0, v4, :cond_1

    .line 174
    new-instance v4, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;

    const-string v5, "over max redirect:5!"

    sget-object v6, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;->TYPE_REDIRECT_COUNT_OVER_LIMITS:Ljava/lang/String;

    invoke-direct {v4, v3, v5, v6}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    .end local v2    # "requestParam":Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;
    .end local v26    # "redirectTimes":I
    :catch_0
    move-exception v19

    .line 307
    .local v19, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    .line 308
    const/16 v21, 0x1

    .line 309
    move-object/from16 v0, v19

    instance-of v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;

    if-eqz v4, :cond_15

    .line 311
    check-cast v19, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;

    .end local v19    # "e":Ljava/lang/Exception;
    throw v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    :catchall_0
    move-exception v4

    :goto_2
    new-instance v12, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;

    move-object/from16 v0, v22

    invoke-direct {v12, v13, v0}, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;-><init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V

    .line 319
    .local v12, "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    if-eqz v5, :cond_16

    .line 320
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v12}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 325
    :goto_3
    sget-object v5, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".download 5\u3001Http\u6587\u4ef6\u4e0b\u8f7d\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\uff0curl\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    throw v4

    .line 178
    .end local v12    # "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    .restart local v2    # "requestParam":Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;
    .restart local v26    # "redirectTimes":I
    :cond_1
    if-nez v13, :cond_2

    .line 179
    :try_start_2
    new-instance v4, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;

    const-string v5, "the connection is null:5!"

    sget-object v6, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;->TYPE_NULL_POINTER:Ljava/lang/String;

    invoke-direct {v4, v3, v5, v6}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 183
    :cond_2
    sget-object v4, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".download Response Headers:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper;->getStringHeaders(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v27

    .line 189
    .local v27, "responseCode":I
    const/16 v4, 0xc8

    move/from16 v0, v27

    if-eq v0, v4, :cond_3

    const/16 v4, 0xce

    move/from16 v0, v27

    if-ne v0, v4, :cond_13

    .line 192
    :cond_3
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    int-to-long v14, v4

    .line 194
    .local v14, "contentLength":J
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-gtz v4, :cond_4

    .line 196
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper;->getFileSizeFromResponseHeader(Ljava/util/Map;)J

    move-result-wide v14

    .line 199
    :cond_4
    sget-object v4, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".download 2\u3001\u5f97\u5230\u670d\u52a1\u5668\u8fd4\u56de\u7684\u8d44\u6e90contentLength\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff0c\u4f20\u5165\u7684range\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    invoke-virtual {v6}, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff0curl\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-gtz v4, :cond_5

    .line 204
    new-instance v4, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;

    const-string v5, "content length illegal,get url file failed!"

    sget-object v6, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;->TYPE_RESOURCES_SIZE_ILLEGAL:Ljava/lang/String;

    invoke-direct {v4, v3, v5, v6}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 209
    :cond_5
    const/16 v4, 0xc8

    move/from16 v0, v27

    if-ne v0, v4, :cond_b

    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    invoke-static {v4}, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->isLegal(Lorg/wlf/filedownloader/file_download/http_downloader/Range;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    iget-wide v4, v4, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->startPos:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    invoke-virtual {v4}, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->getLength()J

    move-result-wide v4

    cmp-long v4, v4, v14

    if-eqz v4, :cond_a

    .line 213
    :cond_6
    new-instance v25, Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    const-wide/16 v4, 0x0

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v5, v14, v15}, Lorg/wlf/filedownloader/file_download/http_downloader/Range;-><init>(JJ)V

    .line 215
    .local v25, "newRange":Lorg/wlf/filedownloader/file_download/http_downloader/Range;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->notifyRangeChanged(Lorg/wlf/filedownloader/file_download/http_downloader/Range;Lorg/wlf/filedownloader/file_download/http_downloader/Range;)Z

    move-result v18

    .line 216
    .local v18, "continueDownload":Z
    if-eqz v18, :cond_9

    .line 217
    new-instance v4, Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    move-object/from16 v0, v25

    iget-wide v6, v0, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->startPos:J

    move-object/from16 v0, v25

    iget-wide v8, v0, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->endPos:J

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/wlf/filedownloader/file_download/http_downloader/Range;-><init>(JJ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    .line 276
    .end local v18    # "continueDownload":Z
    .end local v25    # "newRange":Lorg/wlf/filedownloader/file_download/http_downloader/Range;
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mETag:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 277
    const-string v4, "ETag"

    invoke-virtual {v13, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 279
    .local v20, "eTag":Ljava/lang/String;
    sget-object v4, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".download 3\u3001\u5f97\u5230\u670d\u52a1\u5668\u8fd4\u56de\u7684\u8d44\u6e90eTag\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff0c\u4f20\u5165\u7684eTag\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mETag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff0curl\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mETag:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 283
    :cond_8
    new-instance v4, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;

    const-string v5, "eTag is not equal,please delete the old one then re-download!"

    sget-object v6, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;->TYPE_ETAG_CHANGED:Ljava/lang/String;

    invoke-direct {v4, v3, v5, v6}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 219
    .end local v20    # "eTag":Ljava/lang/String;
    .restart local v18    # "continueDownload":Z
    .restart local v25    # "newRange":Lorg/wlf/filedownloader/file_download/http_downloader/Range;
    :cond_9
    new-instance v4, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;

    const-string v5, "contentRange validate failed!"

    sget-object v6, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;->TYPE_CONTENT_RANGE_VALIDATE_FAIL:Ljava/lang/String;

    invoke-direct {v4, v3, v5, v6}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 224
    .end local v18    # "continueDownload":Z
    .end local v25    # "newRange":Lorg/wlf/filedownloader/file_download/http_downloader/Range;
    :cond_a
    new-instance v4, Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    const-wide/16 v6, 0x0

    invoke-direct {v4, v6, v7, v14, v15}, Lorg/wlf/filedownloader/file_download/http_downloader/Range;-><init>(JJ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    goto :goto_4

    .line 228
    :cond_b
    const/16 v4, 0xce

    move/from16 v0, v27

    if-ne v0, v4, :cond_7

    .line 230
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mETag:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 231
    const-string v4, "ETag"

    invoke-virtual {v13, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 233
    .restart local v20    # "eTag":Ljava/lang/String;
    sget-object v4, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".download 3\u3001\u5f97\u5230\u670d\u52a1\u5668\u8fd4\u56de\u7684\u8d44\u6e90eTag\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff0c\u4f20\u5165\u7684eTag\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mETag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff0curl\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mETag:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 237
    :cond_c
    new-instance v4, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;

    const-string v5, "eTag is not equal,please delete the old one then re-download!"

    sget-object v6, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;->TYPE_ETAG_CHANGED:Ljava/lang/String;

    invoke-direct {v4, v3, v5, v6}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 241
    .end local v20    # "eTag":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    invoke-static {v4}, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->isLegal(Lorg/wlf/filedownloader/file_download/http_downloader/Range;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    invoke-virtual {v4}, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->getLength()J

    move-result-wide v4

    cmp-long v4, v4, v14

    if-lez v4, :cond_f

    .line 242
    :cond_e
    new-instance v25, Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    const-wide/16 v4, 0x0

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v5, v14, v15}, Lorg/wlf/filedownloader/file_download/http_downloader/Range;-><init>(JJ)V

    .line 244
    .restart local v25    # "newRange":Lorg/wlf/filedownloader/file_download/http_downloader/Range;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->notifyRangeChanged(Lorg/wlf/filedownloader/file_download/http_downloader/Range;Lorg/wlf/filedownloader/file_download/http_downloader/Range;)Z

    move-result v18

    .line 245
    .restart local v18    # "continueDownload":Z
    if-eqz v18, :cond_11

    .line 246
    new-instance v4, Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    move-object/from16 v0, v25

    iget-wide v6, v0, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->startPos:J

    move-object/from16 v0, v25

    iget-wide v8, v0, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->endPos:J

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/wlf/filedownloader/file_download/http_downloader/Range;-><init>(JJ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    .line 253
    .end local v18    # "continueDownload":Z
    .end local v25    # "newRange":Lorg/wlf/filedownloader/file_download/http_downloader/Range;
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mAcceptRangeType:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 254
    const/16 v24, 0x0

    .line 255
    .local v24, "isRangeValidateSucceed":Z
    const-string v4, "Content-Range"

    invoke-virtual {v13, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 257
    .local v16, "contentRange":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lorg/wlf/filedownloader/file_download/http_downloader/ContentRangeInfo;->getContentRangeInfo(Ljava/lang/String;)Lorg/wlf/filedownloader/file_download/http_downloader/ContentRangeInfo;

    move-result-object v17

    .line 258
    .local v17, "contentRangeInfo":Lorg/wlf/filedownloader/file_download/http_downloader/ContentRangeInfo;
    if-eqz v17, :cond_10

    .line 259
    new-instance v29, Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    move-object/from16 v0, v17

    iget-wide v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/ContentRangeInfo;->startPos:J

    move-object/from16 v0, v17

    iget-wide v6, v0, Lorg/wlf/filedownloader/file_download/http_downloader/ContentRangeInfo;->endPos:J

    move-object/from16 v0, v29

    invoke-direct {v0, v4, v5, v6, v7}, Lorg/wlf/filedownloader/file_download/http_downloader/Range;-><init>(JJ)V

    .line 260
    .local v29, "serverResponseRange":Lorg/wlf/filedownloader/file_download/http_downloader/Range;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mAcceptRangeType:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v5, v0, Lorg/wlf/filedownloader/file_download/http_downloader/ContentRangeInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual/range {v29 .. v29}, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->getLength()J

    move-result-wide v4

    cmp-long v4, v4, v14

    if-nez v4, :cond_10

    .line 263
    const/16 v24, 0x1

    .line 267
    .end local v29    # "serverResponseRange":Lorg/wlf/filedownloader/file_download/http_downloader/Range;
    :cond_10
    if-nez v24, :cond_7

    .line 269
    new-instance v4, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;

    const-string v5, "contentRange validate failed!"

    sget-object v6, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;->TYPE_CONTENT_RANGE_VALIDATE_FAIL:Ljava/lang/String;

    invoke-direct {v4, v3, v5, v6}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 248
    .end local v16    # "contentRange":Ljava/lang/String;
    .end local v17    # "contentRangeInfo":Lorg/wlf/filedownloader/file_download/http_downloader/ContentRangeInfo;
    .end local v24    # "isRangeValidateSucceed":Z
    .restart local v18    # "continueDownload":Z
    .restart local v25    # "newRange":Lorg/wlf/filedownloader/file_download/http_downloader/Range;
    :cond_11
    new-instance v4, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;

    const-string v5, "contentRange validate failed!"

    sget-object v6, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;->TYPE_CONTENT_RANGE_VALIDATE_FAIL:Ljava/lang/String;

    invoke-direct {v4, v3, v5, v6}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 289
    .end local v18    # "continueDownload":Z
    .end local v25    # "newRange":Lorg/wlf/filedownloader/file_download/http_downloader/Range;
    :cond_12
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v28

    .line 291
    .local v28, "serverInputStream":Ljava/io/InputStream;
    new-instance v23, Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v14, v15}, Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;-><init>(Ljava/io/InputStream;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    .end local v22    # "inputStream":Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;
    .local v23, "inputStream":Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;
    :try_start_3
    sget-object v4, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".download 4\u3001\u51c6\u5907\u5904\u7406\u6570\u636e\uff0c\u83b7\u53d6\u670d\u52a1\u5668\u8fd4\u56de\u7684\u8d44\u6e90\u957f\u5ea6\u4e3a\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff0c\u83b7\u53d6\u670d\u52a1\u5668\u8fd4\u56de\u7684\u8f93\u5165\u6d41\u957f\u5ea6\u4e3a\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;->available()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff0c\u9700\u8981\u5904\u7406\u7684\u533a\u57df\u4e3a\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    invoke-virtual {v6}, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff0curl\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mRange:Lorg/wlf/filedownloader/file_download/http_downloader/Range;

    iget-wide v4, v4, Lorg/wlf/filedownloader/file_download/http_downloader/Range;->startPos:J

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v5}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->notifyDownloadConnected(Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 305
    const/16 v21, 0x0

    .line 318
    new-instance v12, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;

    move-object/from16 v0, v23

    invoke-direct {v12, v13, v0}, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;-><init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V

    .line 319
    .restart local v12    # "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    if-eqz v4, :cond_14

    .line 320
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v12}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 325
    :goto_5
    sget-object v4, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".download 5\u3001Http\u6587\u4ef6\u4e0b\u8f7d\u3010\u5df2\u7ed3\u675f\u3011\uff0c\u662f\u5426\u6709\u5f02\u5e38\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff0curl\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/wlf/filedownloader/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void

    .line 302
    .end local v12    # "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    .end local v14    # "contentLength":J
    .end local v23    # "inputStream":Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;
    .end local v28    # "serverInputStream":Ljava/io/InputStream;
    .restart local v22    # "inputStream":Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;
    :cond_13
    :try_start_4
    new-instance v4, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ResponseCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " error,can not read server "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "data!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;->TYPE_RESPONSE_CODE_ERROR:Ljava/lang/String;

    invoke-direct {v4, v3, v5, v6}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 322
    .end local v22    # "inputStream":Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;
    .restart local v12    # "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    .restart local v14    # "contentLength":J
    .restart local v23    # "inputStream":Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;
    .restart local v28    # "serverInputStream":Ljava/io/InputStream;
    :cond_14
    invoke-virtual {v12}, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;->run()V

    goto :goto_5

    .line 314
    .end local v2    # "requestParam":Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;
    .end local v12    # "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    .end local v14    # "contentLength":J
    .end local v23    # "inputStream":Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;
    .end local v26    # "redirectTimes":I
    .end local v27    # "responseCode":I
    .end local v28    # "serverInputStream":Ljava/io/InputStream;
    .restart local v19    # "e":Ljava/lang/Exception;
    .restart local v22    # "inputStream":Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;
    :cond_15
    :try_start_5
    new-instance v4, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;

    move-object/from16 v0, v19

    invoke-direct {v4, v3, v0}, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$HttpDownloadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 322
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v12    # "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    :cond_16
    invoke-virtual {v12}, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;->run()V

    goto/16 :goto_3

    .line 318
    .end local v12    # "closeConnectionTask":Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
    .end local v22    # "inputStream":Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;
    .restart local v2    # "requestParam":Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;
    .restart local v14    # "contentLength":J
    .restart local v23    # "inputStream":Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;
    .restart local v26    # "redirectTimes":I
    .restart local v27    # "responseCode":I
    .restart local v28    # "serverInputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object/from16 v22, v23

    .end local v23    # "inputStream":Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;
    .restart local v22    # "inputStream":Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;
    goto/16 :goto_2

    .line 306
    .end local v22    # "inputStream":Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;
    .restart local v23    # "inputStream":Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;
    :catch_1
    move-exception v19

    move-object/from16 v22, v23

    .end local v23    # "inputStream":Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;
    .restart local v22    # "inputStream":Lorg/wlf/filedownloader/file_download/http_downloader/ContentLengthInputStream;
    goto/16 :goto_1
.end method

.method public setCloseConnectionEngine(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "closeConnectionEngine"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mCloseConnectionEngine:Ljava/util/concurrent/ExecutorService;

    .line 112
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0
    .param p1, "connectTimeout"    # I

    .prologue
    .line 138
    iput p1, p0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mConnectTimeout:I

    .line 139
    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
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

    .prologue
    .line 129
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mHeaders:Ljava/util/Map;

    .line 130
    return-void
.end method

.method public setOnHttpDownloadListener(Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$OnHttpDownloadListener;)V
    .locals 0
    .param p1, "onHttpDownloadListener"    # Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$OnHttpDownloadListener;

    .prologue
    .line 93
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mOnHttpDownloadListener:Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$OnHttpDownloadListener;

    .line 94
    return-void
.end method

.method public setOnRangeChangeListener(Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$OnRangeChangeListener;)V
    .locals 0
    .param p1, "onRangeChangeListener"    # Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$OnRangeChangeListener;

    .prologue
    .line 102
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mOnRangeChangeListener:Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader$OnRangeChangeListener;

    .line 103
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestMethod"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/http_downloader/HttpDownloader;->mRequestMethod:Ljava/lang/String;

    .line 121
    return-void
.end method
