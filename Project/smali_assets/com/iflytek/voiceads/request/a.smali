.class public Lcom/iflytek/voiceads/request/a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/voiceads/request/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/net/URL;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:Z

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private i:Lcom/iflytek/voiceads/request/a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/voiceads/request/a;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/voiceads/request/a;->g:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/voiceads/request/a;->h:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/voiceads/request/a;->i:Lcom/iflytek/voiceads/request/a$a;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private a()V
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/request/a;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/iflytek/voiceads/request/a;->a(Ljava/net/HttpURLConnection;)V

    iget v1, p0, Lcom/iflytek/voiceads/request/a;->e:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v1, p0, Lcom/iflytek/voiceads/request/a;->e:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "User-Agent"

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/iflytek/voiceads/param/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v3, v1, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    :try_start_2
    invoke-direct {p0, v2}, Lcom/iflytek/voiceads/request/a;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iflytek/voiceads/request/a;->b([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_4
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Http Request Failed!"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, v1}, Lcom/iflytek/voiceads/request/a;->a(Ljava/lang/Exception;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    :goto_2
    :try_start_5
    const-string v3, "IFLY_AD_SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runGet error!\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x1155b

    invoke-direct {p0, v0, v3}, Lcom/iflytek/voiceads/request/a;->a(Ljava/lang/Exception;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in close1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in close1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v2, :cond_4

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_5
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    const-string v2, "IFLY_AD_SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in close1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2

    :catch_5
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/Exception;I)V
    .locals 6

    const-wide/16 v4, 0x1

    iget-object v0, p0, Lcom/iflytek/voiceads/request/a;->i:Lcom/iflytek/voiceads/request/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/request/a;->i:Lcom/iflytek/voiceads/request/a$a;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/voiceads/request/a$a;->a(Ljava/lang/Exception;I)V

    :cond_0
    iget-boolean v0, p0, Lcom/iflytek/voiceads/request/a;->g:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/voiceads/request/a;->f:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/iflytek/voiceads/request/a;->d:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/iflytek/voiceads/request/a;->b:Landroid/content/Context;

    const-string v3, "reqDuration"

    invoke-static {v2, v3, v0, v1}, Lcom/iflytek/voiceads/utils/c;->a(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/iflytek/voiceads/request/a;->b:Landroid/content/Context;

    const-string v1, "reqFailCnt"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/c;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/iflytek/voiceads/request/a;->b:Landroid/content/Context;

    const-string v3, "reqFailCnt"

    add-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Lcom/iflytek/voiceads/utils/c;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/iflytek/voiceads/request/a;->b:Landroid/content/Context;

    const-string v3, "impDuration"

    invoke-static {v2, v3, v0, v1}, Lcom/iflytek/voiceads/utils/c;->a(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/iflytek/voiceads/request/a;->b:Landroid/content/Context;

    const-string v1, "impFailCnt"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/c;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/iflytek/voiceads/request/a;->b:Landroid/content/Context;

    const-string v3, "impFailCnt"

    add-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Lcom/iflytek/voiceads/utils/c;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/iflytek/voiceads/request/a;->b:Landroid/content/Context;

    const-string v3, "clkDuration"

    invoke-static {v2, v3, v0, v1}, Lcom/iflytek/voiceads/utils/c;->a(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/iflytek/voiceads/request/a;->b:Landroid/content/Context;

    const-string v1, "clkFailCnt"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/c;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/iflytek/voiceads/request/a;->b:Landroid/content/Context;

    const-string v3, "clkFailCnt"

    add-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Lcom/iflytek/voiceads/utils/c;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .locals 2

    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/iflytek/voiceads/request/g;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_0
    sget-object v0, Lcom/iflytek/voiceads/request/g;->a:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v0, Lcom/iflytek/voiceads/request/g;->a:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_1
    return-void
.end method

.method private a([B)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/request/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private a(Ljava/io/InputStream;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_0
    array-length v3, v2

    invoke-virtual {v0, v2, v5, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 9

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/request/a;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/iflytek/voiceads/request/a;->a(Ljava/net/HttpURLConnection;)V

    iget v1, p0, Lcom/iflytek/voiceads/request/a;->e:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v1, p0, Lcom/iflytek/voiceads/request/a;->e:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "Charset"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "User-Agent"

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/iflytek/voiceads/param/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    :try_start_2
    iget-object v1, p0, Lcom/iflytek/voiceads/request/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    :goto_1
    :try_start_3
    const-string v4, "IFLY_AD_SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runPost error!\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    const v4, 0x1155b

    invoke-direct {p0, v0, v4}, Lcom/iflytek/voiceads/request/a;->a(Ljava/lang/Exception;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const-string v4, "IFLY_AD_SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HttpRequest response code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xc8

    if-ne v4, v1, :cond_6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v2

    :try_start_6
    invoke-direct {p0, v2}, Lcom/iflytek/voiceads/request/a;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iflytek/voiceads/request/a;->b([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_3
    if-eqz v2, :cond_4

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_5
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in close2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :try_start_8
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Http Request Failed."

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4, v1}, Lcom/iflytek/voiceads/request/a;->a(Ljava/lang/Exception;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    :goto_4
    if-eqz v3, :cond_7

    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :cond_9
    :goto_5
    throw v0

    :catch_2
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in close2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_3
    move-exception v1

    const-string v2, "IFLY_AD_SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in close2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v3, v2

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_4

    :catchall_4
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_1

    :catch_5
    move-exception v1

    move-object v3, v2

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto/16 :goto_1

    :catch_6
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto/16 :goto_1
.end method

.method private b([B)V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/iflytek/voiceads/request/a;->i:Lcom/iflytek/voiceads/request/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/request/a;->i:Lcom/iflytek/voiceads/request/a$a;

    invoke-interface {v0, p1}, Lcom/iflytek/voiceads/request/a$a;->a([B)V

    :cond_0
    iget-boolean v0, p0, Lcom/iflytek/voiceads/request/a;->g:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/voiceads/request/a;->f:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/iflytek/voiceads/request/a;->d:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/iflytek/voiceads/request/a;->b:Landroid/content/Context;

    const-string v3, "reqDuration"

    invoke-static {v2, v3, v0, v1}, Lcom/iflytek/voiceads/utils/c;->a(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/iflytek/voiceads/request/a;->b:Landroid/content/Context;

    const-string v1, "reqFailCnt"

    invoke-static {v0, v1, v4, v5}, Lcom/iflytek/voiceads/utils/c;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/iflytek/voiceads/request/a;->b:Landroid/content/Context;

    const-string v3, "impDuration"

    invoke-static {v2, v3, v0, v1}, Lcom/iflytek/voiceads/utils/c;->a(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/iflytek/voiceads/request/a;->b:Landroid/content/Context;

    const-string v1, "impFailCnt"

    invoke-static {v0, v1, v4, v5}, Lcom/iflytek/voiceads/utils/c;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/iflytek/voiceads/request/a;->b:Landroid/content/Context;

    const-string v3, "clkDuration"

    invoke-static {v2, v3, v0, v1}, Lcom/iflytek/voiceads/utils/c;->a(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/iflytek/voiceads/request/a;->b:Landroid/content/Context;

    const-string v1, "clkFailCnt"

    invoke-static {v0, v1, v4, v5}, Lcom/iflytek/voiceads/utils/c;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/voiceads/request/a;->d:I

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/voiceads/request/a;->b:Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/iflytek/voiceads/request/a$a;)V
    .locals 2

    iget-boolean v0, p0, Lcom/iflytek/voiceads/request/a;->g:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/voiceads/request/a;->f:J

    :cond_0
    iput-object p1, p0, Lcom/iflytek/voiceads/request/a;->i:Lcom/iflytek/voiceads/request/a$a;

    invoke-virtual {p0}, Lcom/iflytek/voiceads/request/a;->start()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 4

    iget-object v0, p0, Lcom/iflytek/voiceads/request/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, p3}, Lcom/iflytek/voiceads/request/a;->a([B)V

    :try_start_0
    invoke-static {p1, p2}, Lcom/iflytek/voiceads/request/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/voiceads/request/a;->a:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/voiceads/request/a;->g:Z

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/voiceads/request/a;->c:I

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/voiceads/request/a;->e:I

    return-void
.end method

.method public run()V
    .locals 2

    iget v0, p0, Lcom/iflytek/voiceads/request/a;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/iflytek/voiceads/request/a;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/voiceads/request/a;->a()V

    goto :goto_0
.end method
