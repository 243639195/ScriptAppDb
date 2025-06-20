.class public Lorg/wlf/filedownloader/file_download/CloseConnectionTask;
.super Ljava/lang/Object;
.source "CloseConnectionTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field private mURLConnection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;->mURLConnection:Ljava/net/HttpURLConnection;

    .line 18
    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;->mInputStream:Ljava/io/InputStream;

    .line 21
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;->mURLConnection:Ljava/net/HttpURLConnection;

    .line 22
    iput-object p2, p0, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;->mInputStream:Ljava/io/InputStream;

    .line 23
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 28
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 30
    :try_start_0
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;->mURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/CloseConnectionTask;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 40
    :cond_1
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
