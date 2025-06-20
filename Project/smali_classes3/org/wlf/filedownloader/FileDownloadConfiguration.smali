.class public Lorg/wlf/filedownloader/FileDownloadConfiguration;
.super Ljava/lang/Object;
.source "FileDownloadConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/FileDownloadConfiguration$1;,
        Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBuilder:Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;

.field private mFileDetectEngine:Ljava/util/concurrent/ExecutorService;

.field private mFileDownloadEngine:Ljava/util/concurrent/ExecutorService;

.field private mFileOperationEngine:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    const-class v0, Lorg/wlf/filedownloader/FileDownloadConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/FileDownloadConfiguration;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;)V
    .locals 2
    .param p1, "builder"    # Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    if-nez p1, :cond_0

    .line 192
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "builder can not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    iput-object p1, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;

    .line 195
    invoke-static {p1}, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->access$200(Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;)I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration;->mFileDownloadEngine:Ljava/util/concurrent/ExecutorService;

    .line 196
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration;->mFileDetectEngine:Ljava/util/concurrent/ExecutorService;

    .line 197
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration;->mFileOperationEngine:Ljava/util/concurrent/ExecutorService;

    .line 198
    return-void
.end method

.method synthetic constructor <init>(Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;Lorg/wlf/filedownloader/FileDownloadConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;
    .param p2, "x1"    # Lorg/wlf/filedownloader/FileDownloadConfiguration$1;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/FileDownloadConfiguration;-><init>(Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lorg/wlf/filedownloader/FileDownloadConfiguration;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static createDefault(Landroid/content/Context;)Lorg/wlf/filedownloader/FileDownloadConfiguration;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    new-instance v0, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;

    invoke-direct {v0, p0}, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->build()Lorg/wlf/filedownloader/FileDownloadConfiguration;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;

    invoke-static {v0}, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->access$700(Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;)I

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;

    invoke-static {v0}, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->access$300(Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getFileDetectEngine()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration;->mFileDetectEngine:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getFileDownloadDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;

    invoke-static {v0}, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->access$400(Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileDownloadEngine()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration;->mFileDownloadEngine:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getFileOperationEngine()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration;->mFileOperationEngine:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getRetryDownloadTimes()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;

    invoke-static {v0}, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->access$600(Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;)I

    move-result v0

    return v0
.end method

.method public isDebugMode()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/wlf/filedownloader/FileDownloadConfiguration;->mBuilder:Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;

    invoke-static {v0}, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->access$500(Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;)Z

    move-result v0

    return v0
.end method
