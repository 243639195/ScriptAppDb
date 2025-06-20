.class public Lcom/lidroid/xutils/http/callback/FileDownloadHandler;
.super Ljava/lang/Object;
.source "FileDownloadHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEntity(Lorg/apache/http/HttpEntity;Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p3

    move-object/from16 v7, p5

    const/4 v2, 0x0

    if-eqz p1, :cond_c

    .line 31
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_4

    .line 35
    :cond_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 38
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 39
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 40
    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    :cond_2
    const-wide/16 v4, 0x0

    if-eqz p4, :cond_3

    .line 50
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 51
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v9, 0x1

    invoke-direct {v6, v1, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v13, v2

    goto/16 :goto_3

    .line 53
    :cond_3
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    :goto_0
    move-wide v9, v4

    .line 55
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    const/4 v1, 0x0

    add-long v11, v4, v9

    .line 56
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :try_start_1
    new-instance v14, Ljava/io/BufferedOutputStream;

    invoke-direct {v14, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p2, :cond_4

    const/4 v6, 0x1

    move-object/from16 v1, p2

    move-wide v2, v11

    move-wide v4, v9

    .line 59
    :try_start_2
    invoke-interface/range {v1 .. v6}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_4

    .line 79
    invoke-static {v13}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    invoke-static {v14}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v8

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v2, v14

    goto/16 :goto_3

    :cond_4
    const/16 v1, 0x1000

    .line 63
    :try_start_3
    new-array v6, v1, [B

    move-wide v4, v9

    .line 65
    :goto_1
    invoke-virtual {v13, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    .line 74
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    if-eqz p2, :cond_5

    const/4 v6, 0x1

    move-object/from16 v1, p2

    move-wide v2, v11

    .line 76
    invoke-interface/range {v1 .. v6}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    :cond_5
    invoke-static {v13}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    invoke-static {v14}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 83
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 84
    new-instance v1, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    .line 88
    invoke-virtual {v8, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_6
    return-object v8

    .line 86
    :cond_7
    new-instance v1, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    return-object v8

    :cond_9
    const/4 v2, 0x0

    .line 66
    :try_start_4
    invoke-virtual {v14, v6, v2, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    int-to-long v1, v1

    add-long v9, v4, v1

    if-eqz p2, :cond_a

    const/4 v15, 0x0

    move-object/from16 v1, p2

    move-wide v2, v11

    move-wide v4, v9

    move-object/from16 v16, v6

    move v6, v15

    .line 69
    invoke-interface/range {v1 .. v6}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v1, :cond_b

    .line 79
    invoke-static {v13}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    invoke-static {v14}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v8

    :cond_a
    move-object/from16 v16, v6

    :cond_b
    move-wide v4, v9

    move-object/from16 v6, v16

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 79
    :goto_3
    invoke-static {v13}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    invoke-static {v2}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 81
    throw v1

    :cond_c
    :goto_4
    return-object v2
.end method
