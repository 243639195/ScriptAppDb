.class public Lcom/cyjh/share/util/DownloadUtil;
.super Ljava/lang/Object;
.source "DownloadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "DownloadUtil"

.field private static downloadUtil:Lcom/cyjh/share/util/DownloadUtil;


# instance fields
.field private downLoadLength:I

.field private mCall:Lokhttp3/Call;

.field private final okHttpClient:Lokhttp3/OkHttpClient;

.field private randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/cyjh/share/util/DownloadUtil;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method static synthetic access$000(Lcom/cyjh/share/util/DownloadUtil;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/cyjh/share/util/DownloadUtil;->downLoadLength:I

    return p0
.end method

.method static synthetic access$002(Lcom/cyjh/share/util/DownloadUtil;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/cyjh/share/util/DownloadUtil;->downLoadLength:I

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/cyjh/share/util/DownloadUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static get()Lcom/cyjh/share/util/DownloadUtil;
    .locals 1

    .line 30
    sget-object v0, Lcom/cyjh/share/util/DownloadUtil;->downloadUtil:Lcom/cyjh/share/util/DownloadUtil;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/cyjh/share/util/DownloadUtil;

    invoke-direct {v0}, Lcom/cyjh/share/util/DownloadUtil;-><init>()V

    sput-object v0, Lcom/cyjh/share/util/DownloadUtil;->downloadUtil:Lcom/cyjh/share/util/DownloadUtil;

    .line 33
    :cond_0
    sget-object v0, Lcom/cyjh/share/util/DownloadUtil;->downloadUtil:Lcom/cyjh/share/util/DownloadUtil;

    return-object v0
.end method


# virtual methods
.method public cancelDownload()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/cyjh/share/util/DownloadUtil;->mCall:Lokhttp3/Call;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/cyjh/share/util/DownloadUtil;->mCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_0
    return-void
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/cyjh/share/util/DownloadUtil$OnDownloadListener;)V
    .locals 3

    .line 123
    sget-object v0, Lcom/cyjh/share/util/DownloadUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download 1 --> downLoadLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/cyjh/share/util/DownloadUtil;->downLoadLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",contentLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance p4, Lokhttp3/Request$Builder;

    invoke-direct {p4}, Lokhttp3/Request$Builder;-><init>()V

    .line 127
    invoke-virtual {p4, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 130
    iget-object p4, p0, Lcom/cyjh/share/util/DownloadUtil;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p4, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/share/util/DownloadUtil;->mCall:Lokhttp3/Call;

    .line 132
    iget-object p1, p0, Lcom/cyjh/share/util/DownloadUtil;->mCall:Lokhttp3/Call;

    new-instance p4, Lcom/cyjh/share/util/DownloadUtil$2;

    invoke-direct {p4, p0, p5, p2, p3}, Lcom/cyjh/share/util/DownloadUtil$2;-><init>(Lcom/cyjh/share/util/DownloadUtil;Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p4}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;)V
    .locals 3

    .line 48
    sget-object v0, Lcom/cyjh/share/util/DownloadUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download 1 --> destFileDir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",destFileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 50
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/cyjh/share/util/DownloadUtil;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/share/util/DownloadUtil;->mCall:Lokhttp3/Call;

    .line 55
    iget-object p1, p0, Lcom/cyjh/share/util/DownloadUtil;->mCall:Lokhttp3/Call;

    new-instance v0, Lcom/cyjh/share/util/DownloadUtil$1;

    invoke-direct {v0, p0, p4, p2, p3}, Lcom/cyjh/share/util/DownloadUtil$1;-><init>(Lcom/cyjh/share/util/DownloadUtil;Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
