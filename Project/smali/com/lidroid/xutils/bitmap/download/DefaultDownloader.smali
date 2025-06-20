.class public Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;
.super Lcom/lidroid/xutils/bitmap/download/Downloader;
.source "DefaultDownloader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/lidroid/xutils/bitmap/download/Downloader;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadToStream(Ljava/lang/String;Ljava/io/OutputStream;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)J
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask<",
            "*>;)J"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    if-eqz v2, :cond_9

    .line 40
    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_0

    goto/16 :goto_a

    :cond_0
    const/4 v5, 0x0

    .line 45
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->trustAllHttpsURLConnection()V

    const-wide/16 v6, 0x0

    :try_start_0
    const-string v8, "/"

    .line 51
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 52
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v8}, Ljava/io/FileInputStream;->available()I

    move-result v1

    int-to-long v9, v1

    .line 54
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 55
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;->getDefaultExpiry()J

    move-result-wide v13
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    add-long v15, v11, v13

    move-object v5, v1

    move-wide v11, v15

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v5, v1

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v5, v1

    goto/16 :goto_6

    :cond_1
    :try_start_2
    const-string v8, "assets/"

    .line 56
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const/4 v9, 0x7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v8

    int-to-long v9, v8

    .line 59
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide v11, 0x7fffffffffffffffL

    move-object v5, v8

    goto :goto_1

    .line 62
    :cond_2
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;->getDefaultConnectTimeout()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;->getDefaultReadTimeout()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 66
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 67
    :try_start_3
    invoke-virtual {v1}, Ljava/net/URLConnection;->getExpiration()J

    move-result-wide v9

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v5, v9, v11

    if-gez v5, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;->getDefaultExpiry()J

    move-result-wide v11

    const/4 v5, 0x0

    add-long v13, v9, v11

    goto :goto_0

    :cond_3
    move-wide v13, v9

    .line 69
    :goto_0
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    int-to-long v9, v1

    move-object v5, v8

    move-wide v11, v13

    .line 72
    :goto_1
    :try_start_4
    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    const/16 v1, 0x1000

    .line 74
    new-array v1, v1, [B

    .line 76
    new-instance v8, Ljava/io/BufferedOutputStream;

    move-object/from16 v13, p2

    invoke-direct {v8, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 77
    :goto_2
    invoke-virtual {v5, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_5

    .line 83
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 88
    invoke-static {v5}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_8

    :cond_5
    const/4 v14, 0x0

    .line 78
    :try_start_5
    invoke-virtual {v8, v1, v14, v13}, Ljava/io/BufferedOutputStream;->write([BII)V

    int-to-long v13, v13

    add-long v3, v6, v13

    .line 80
    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_6

    goto :goto_3

    .line 81
    :cond_6
    invoke-virtual {v2, v9, v10, v3, v4}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->updateProgress(JJ)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-wide v6, v3

    goto :goto_2

    .line 88
    :cond_7
    :goto_3
    invoke-static {v5}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const-wide/16 v1, -0x1

    return-wide v1

    :cond_8
    :goto_4
    invoke-static {v5}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const-wide/16 v1, -0x1

    return-wide v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v5, v8

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v5, v8

    goto :goto_7

    :catchall_2
    move-exception v0

    :goto_5
    move-object v1, v0

    goto :goto_9

    :catch_2
    move-exception v0

    :goto_6
    move-object v1, v0

    .line 86
    :goto_7
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 88
    invoke-static {v5}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const-wide/16 v11, -0x1

    :goto_8
    return-wide v11

    :goto_9
    invoke-static {v5}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 89
    throw v1

    :cond_9
    :goto_a
    const-wide/16 v1, -0x1

    return-wide v1
.end method
