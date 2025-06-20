.class public Lcom/iflytek/voiceads/download/b/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/voiceads/download/b/a/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/voiceads/download/b/a;

.field private b:Lcom/iflytek/voiceads/download/d/a;

.field private c:Lcom/iflytek/voiceads/download/b/a/a$a;

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/iflytek/voiceads/download/b/a;Lcom/iflytek/voiceads/download/d/a;Lcom/iflytek/voiceads/download/b/a/a$a;)V
    .locals 1

    const/16 v0, 0x2710

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/iflytek/voiceads/download/b/a/a;->d:I

    iput v0, p0, Lcom/iflytek/voiceads/download/b/a/a;->e:I

    iput-object p1, p0, Lcom/iflytek/voiceads/download/b/a/a;->a:Lcom/iflytek/voiceads/download/b/a;

    iput-object p2, p0, Lcom/iflytek/voiceads/download/b/a/a;->b:Lcom/iflytek/voiceads/download/d/a;

    iput-object p3, p0, Lcom/iflytek/voiceads/download/b/a/a;->c:Lcom/iflytek/voiceads/download/b/a/a$a;

    return-void
.end method

.method private a()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/voiceads/download/e/a;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/iflytek/voiceads/download/b/a/a;->b:Lcom/iflytek/voiceads/download/d/a;

    invoke-virtual {v2}, Lcom/iflytek/voiceads/download/d/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x2710

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Range"

    const-string v2, "bytes=0-"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/iflytek/voiceads/download/b/a/a;->a(Ljava/net/HttpURLConnection;Z)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void

    :cond_1
    const/16 v2, 0xce

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    :try_start_2
    invoke-direct {p0, v0, v1}, Lcom/iflytek/voiceads/download/b/a/a;->a(Ljava/net/HttpURLConnection;Z)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    :try_start_3
    new-instance v2, Lcom/iflytek/voiceads/download/e/a;

    const/4 v3, 0x2

    const-string v4, "Bad url."

    invoke-direct {v2, v3, v4, v0}, Lcom/iflytek/voiceads/download/e/a;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v0

    :cond_3
    :try_start_4
    new-instance v2, Lcom/iflytek/voiceads/download/e/a;

    const/4 v3, 0x3

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
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    :try_start_5
    new-instance v2, Lcom/iflytek/voiceads/download/e/a;

    const/4 v3, 0x4

    const-string v4, "Protocol error"

    invoke-direct {v2, v3, v4, v0}, Lcom/iflytek/voiceads/download/e/a;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    :goto_4
    new-instance v2, Lcom/iflytek/voiceads/download/e/a;

    const/4 v3, 0x5

    const-string v4, "IO error"

    invoke-direct {v2, v3, v4, v0}, Lcom/iflytek/voiceads/download/e/a;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v0

    :goto_5
    new-instance v2, Lcom/iflytek/voiceads/download/e/a;

    const/4 v3, 0x5

    const-string v4, "Unknown error"

    invoke-direct {v2, v3, v4, v0}, Lcom/iflytek/voiceads/download/e/a;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    :catch_5
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method private a(Ljava/net/HttpURLConnection;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/voiceads/download/e/a;
        }
    .end annotation

    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    new-instance v0, Lcom/iflytek/voiceads/download/e/a;

    const/4 v1, 0x6

    const-string v2, "length <= 0"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/voiceads/download/e/a;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/iflytek/voiceads/download/b/a/a;->b:Lcom/iflytek/voiceads/download/d/a;

    invoke-virtual {v2}, Lcom/iflytek/voiceads/download/d/a;->k()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Lcom/iflytek/voiceads/download/e/a;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/iflytek/voiceads/download/e/a;-><init>(I)V

    throw v0

    :cond_3
    iget-object v2, p0, Lcom/iflytek/voiceads/download/b/a/a;->c:Lcom/iflytek/voiceads/download/b/a/a$a;

    invoke-interface {v2, v0, v1, p2}, Lcom/iflytek/voiceads/download/b/a/a$a;->a(JZ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/voiceads/download/b/a/a;->a()V
    :try_end_0
    .catch Lcom/iflytek/voiceads/download/e/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/iflytek/voiceads/download/b/a/a;->c:Lcom/iflytek/voiceads/download/b/a/a$a;

    invoke-interface {v1}, Lcom/iflytek/voiceads/download/b/a/a$a;->b()V

    iget-object v1, p0, Lcom/iflytek/voiceads/download/b/a/a;->b:Lcom/iflytek/voiceads/download/d/a;

    invoke-virtual {v1, v0}, Lcom/iflytek/voiceads/download/d/a;->a(Lcom/iflytek/voiceads/download/e/a;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/a/a;->b:Lcom/iflytek/voiceads/download/d/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/download/d/a;->a(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/a/a;->a:Lcom/iflytek/voiceads/download/b/a;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/b/a/a;->b:Lcom/iflytek/voiceads/download/d/a;

    invoke-interface {v0, v1}, Lcom/iflytek/voiceads/download/b/a;->a(Lcom/iflytek/voiceads/download/d/a;)V

    goto :goto_0
.end method
