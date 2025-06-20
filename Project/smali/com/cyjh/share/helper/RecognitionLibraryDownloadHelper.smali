.class public Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;
.super Ljava/lang/Object;
.source "RecognitionLibraryDownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$OnDownloadListener;,
        Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$DeleteZipTask;,
        Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$LibraryDownloadTask;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "RecognitionLibraryDownloadHelper"

.field private static instance:Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;


# instance fields
.field private mCallback:Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$OnDownloadListener;

.field private mContext:Landroid/content/Context;

.field mOnDownloadListener:Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$1;

    invoke-direct {v0, p0}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$1;-><init>(Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;)V

    iput-object v0, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->mOnDownloadListener:Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;)Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$OnDownloadListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->mCallback:Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$OnDownloadListener;

    return-object p0
.end method

.method public static get()Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;
    .locals 2

    .line 31
    sget-object v0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->instance:Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;

    if-nez v0, :cond_1

    .line 32
    const-class v0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->instance:Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;

    invoke-direct {v1}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;-><init>()V

    sput-object v1, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->instance:Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;

    .line 36
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 38
    :cond_1
    :goto_0
    sget-object v0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->instance:Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;

    return-object v0
.end method

.method private libraryDownloadTask(Ljava/lang/String;)V
    .locals 4

    .line 60
    invoke-virtual {p0}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->isRecognitionLibraryAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object p1, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->mCallback:Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$OnDownloadListener;

    if-eqz p1, :cond_1

    .line 62
    iget-object p1, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->mCallback:Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$OnDownloadListener;

    invoke-interface {p1}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$OnDownloadListener;->alreadyExist()V

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tessdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    sget-object v1, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "libraryDownloadTask --> path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v1, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$LibraryDownloadTask;

    iget-object v2, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$LibraryDownloadTask;-><init>(Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;Landroid/content/Context;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-virtual {v1, v2}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$LibraryDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public download(Ljava/lang/String;Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$OnDownloadListener;)V
    .locals 3

    .line 47
    sget-object v0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download --> url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iput-object p2, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->mCallback:Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$OnDownloadListener;

    .line 49
    invoke-direct {p0, p1}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->libraryDownloadTask(Ljava/lang/String;)V

    return-void
.end method

.method public init(Landroid/content/Context;)Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public isRecognitionLibraryAvailable()Z
    .locals 6

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tessdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/io/File;

    const-string v2, "chi_sim.traineddata"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v2, Ljava/io/File;

    const-string v3, "eng.traineddata"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
