.class public Lcom/iflytek/voiceads/b/e;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/voiceads/b/e$a;,
        Lcom/iflytek/voiceads/b/e$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/iflytek/voiceads/b/e$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/iflytek/voiceads/b/e$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/iflytek/voiceads/b/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/voiceads/b/e;->b:Lcom/iflytek/voiceads/b/e$b;

    return-void
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/iflytek/voiceads/b/e;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/iflytek/voiceads/b/e;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v2, v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/voiceads/b/e;->b:Lcom/iflytek/voiceads/b/e$b;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "network error!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/iflytek/voiceads/b/e$b;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Lcom/iflytek/voiceads/b/e$a;

    invoke-direct {v2, v1}, Lcom/iflytek/voiceads/b/e$a;-><init>(Ljava/io/InputStream;)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    iget-object v3, p0, Lcom/iflytek/voiceads/b/e;->b:Lcom/iflytek/voiceads/b/e$b;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/iflytek/voiceads/b/e$b;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/iflytek/voiceads/b/e;->b:Lcom/iflytek/voiceads/b/e$b;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "I/O error!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/iflytek/voiceads/b/e$b;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/iflytek/voiceads/b/e;->b:Lcom/iflytek/voiceads/b/e$b;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Incorrect URL!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/iflytek/voiceads/b/e$b;->a(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    :goto_3
    :try_start_5
    iget-object v1, p0, Lcom/iflytek/voiceads/b/e;->b:Lcom/iflytek/voiceads/b/e$b;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "network error!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/iflytek/voiceads/b/e$b;->a(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, Lcom/iflytek/voiceads/b/e;->start()V

    return-void
.end method

.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/voiceads/b/e;->b()V

    return-void
.end method
