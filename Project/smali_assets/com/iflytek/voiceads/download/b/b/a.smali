.class public Lcom/iflytek/voiceads/download/b/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/voiceads/download/b/b/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/voiceads/download/d/b;

.field private b:Lcom/iflytek/voiceads/download/b/a;

.field private c:Lcom/iflytek/voiceads/download/d/a;

.field private d:Lcom/iflytek/voiceads/download/b/b/a$a;

.field private e:Ljava/io/InputStream;

.field private f:J


# direct methods
.method public constructor <init>(Lcom/iflytek/voiceads/download/d/b;Lcom/iflytek/voiceads/download/b/a;Lcom/iflytek/voiceads/download/d/a;Lcom/iflytek/voiceads/download/b/b/a$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iflytek/voiceads/download/b/b/a;->a:Lcom/iflytek/voiceads/download/d/b;

    iput-object p2, p0, Lcom/iflytek/voiceads/download/b/b/a;->b:Lcom/iflytek/voiceads/download/b/a;

    iput-object p3, p0, Lcom/iflytek/voiceads/download/b/b/a;->c:Lcom/iflytek/voiceads/download/d/a;

    invoke-virtual {p1}, Lcom/iflytek/voiceads/download/d/b;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/voiceads/download/b/b/a;->f:J

    iput-object p4, p0, Lcom/iflytek/voiceads/download/b/b/a;->d:Lcom/iflytek/voiceads/download/b/b/a$a;

    return-void
.end method

.method private a()V
    .locals 11

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/iflytek/voiceads/download/b/b/a;->a:Lcom/iflytek/voiceads/download/d/b;

    invoke-virtual {v3}, Lcom/iflytek/voiceads/download/d/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/iflytek/voiceads/download/e/a; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x2710

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Accept"

    const-string v3, "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Language"

    const-string v3, "zh-CN"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Charset"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/voiceads/download/b/b/a;->a:Lcom/iflytek/voiceads/download/d/b;

    invoke-virtual {v1}, Lcom/iflytek/voiceads/download/d/b;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/iflytek/voiceads/download/b/b/a;->f:J

    add-long/2addr v4, v6

    iget-object v1, p0, Lcom/iflytek/voiceads/download/b/b/a;->c:Lcom/iflytek/voiceads/download/d/a;

    invoke-virtual {v1}, Lcom/iflytek/voiceads/download/d/a;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/iflytek/voiceads/download/b/b/a;->a:Lcom/iflytek/voiceads/download/d/b;

    invoke-virtual {v6}, Lcom/iflytek/voiceads/download/d/b;->c()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xce

    if-eq v1, v3, :cond_1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_5

    :cond_1
    invoke-direct {p0}, Lcom/iflytek/voiceads/download/b/b/a;->b()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/voiceads/download/b/b/a;->e:Ljava/io/InputStream;

    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/b/b/a;->c:Lcom/iflytek/voiceads/download/d/a;

    invoke-virtual {v1}, Lcom/iflytek/voiceads/download/d/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v6, "rwd"

    invoke-direct {v3, v1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v1, 0x1000

    new-array v4, v1, [B

    move v1, v2

    :goto_0
    iget-object v2, p0, Lcom/iflytek/voiceads/download/b/b/a;->e:Ljava/io/InputStream;

    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_3

    iget-object v1, p0, Lcom/iflytek/voiceads/download/b/b/a;->d:Lcom/iflytek/voiceads/download/b/b/a$a;

    invoke-interface {v1}, Lcom/iflytek/voiceads/download/b/b/a$a;->d()V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/iflytek/voiceads/download/e/a; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-void

    :cond_3
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v3, v4, v5, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/iflytek/voiceads/download/b/b/a;->d:Lcom/iflytek/voiceads/download/b/b/a$a;

    monitor-enter v2
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/iflytek/voiceads/download/e/a; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v5, p0, Lcom/iflytek/voiceads/download/b/b/a;->a:Lcom/iflytek/voiceads/download/d/b;

    iget-wide v6, p0, Lcom/iflytek/voiceads/download/b/b/a;->f:J

    int-to-long v8, v1

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/voiceads/download/d/b;->a(J)V

    iget-object v5, p0, Lcom/iflytek/voiceads/download/b/b/a;->d:Lcom/iflytek/voiceads/download/b/b/a$a;

    invoke-interface {v5}, Lcom/iflytek/voiceads/download/b/b/a$a;->c()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/iflytek/voiceads/download/e/a; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catch_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_1
    :try_start_5
    new-instance v2, Lcom/iflytek/voiceads/download/e/a;

    const/4 v3, 0x4

    const-string v4, "Protocol error"

    invoke-direct {v2, v3, v4, v0}, Lcom/iflytek/voiceads/download/e/a;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v0

    :cond_5
    :try_start_6
    new-instance v2, Lcom/iflytek/voiceads/download/e/a;

    const/16 v3, 0x8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnSupported response code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/iflytek/voiceads/download/e/a;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_6
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/iflytek/voiceads/download/e/a; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_3
    :try_start_7
    new-instance v2, Lcom/iflytek/voiceads/download/e/a;

    const/4 v3, 0x5

    const-string v4, "IO error"

    invoke-direct {v2, v3, v4, v0}, Lcom/iflytek/voiceads/download/e/a;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    :goto_4
    new-instance v2, Lcom/iflytek/voiceads/download/e/a;

    const/4 v3, 0x7

    const-string v4, "illegal error"

    invoke-direct {v2, v3, v4, v0}, Lcom/iflytek/voiceads/download/e/a;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v0

    :goto_5
    new-instance v2, Lcom/iflytek/voiceads/download/e/a;

    const/16 v3, 0x9

    const-string v4, "other error"

    invoke-direct {v2, v3, v4, v0}, Lcom/iflytek/voiceads/download/e/a;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_5

    :catch_5
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/b/a;->c:Lcom/iflytek/voiceads/download/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/b/a;->c:Lcom/iflytek/voiceads/download/d/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/download/d/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/iflytek/voiceads/download/e/a;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/iflytek/voiceads/download/e/a;-><init>(I)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/voiceads/download/b/b/a;->b()V

    invoke-direct {p0}, Lcom/iflytek/voiceads/download/b/b/a;->a()V
    :try_end_0
    .catch Lcom/iflytek/voiceads/download/e/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/iflytek/voiceads/download/b/b/a;->d:Lcom/iflytek/voiceads/download/b/b/a$a;

    invoke-interface {v1}, Lcom/iflytek/voiceads/download/b/b/a$a;->e()V

    iget-object v1, p0, Lcom/iflytek/voiceads/download/b/b/a;->c:Lcom/iflytek/voiceads/download/d/a;

    invoke-virtual {v1, v0}, Lcom/iflytek/voiceads/download/d/a;->a(Lcom/iflytek/voiceads/download/e/a;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/b/a;->c:Lcom/iflytek/voiceads/download/d/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/download/d/a;->a(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/b/a;->b:Lcom/iflytek/voiceads/download/b/a;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/b/b/a;->c:Lcom/iflytek/voiceads/download/d/a;

    invoke-interface {v0, v1}, Lcom/iflytek/voiceads/download/b/a;->a(Lcom/iflytek/voiceads/download/d/a;)V

    goto :goto_0
.end method
