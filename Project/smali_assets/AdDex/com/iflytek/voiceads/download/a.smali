.class public Lcom/iflytek/voiceads/download/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/voiceads/download/a/b;
.implements Lcom/iflytek/voiceads/download/b/d$a;


# static fields
.field private static a:Lcom/iflytek/voiceads/download/a;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/voiceads/download/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/iflytek/voiceads/download/b/a;

.field private f:Lcom/iflytek/voiceads/download/c/a;

.field private g:Landroid/content/Context;

.field private h:Lcom/iflytek/voiceads/download/d/a;

.field private i:Lcom/iflytek/voiceads/download/DownloadService$a;

.field private j:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iflytek/voiceads/download/b;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/download/b;-><init>(Lcom/iflytek/voiceads/download/a;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/download/a;->j:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/iflytek/voiceads/download/a;->g:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/voiceads/download/a;->d:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/voiceads/download/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/voiceads/download/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/iflytek/voiceads/download/c/b;

    invoke-direct {v0, p1}, Lcom/iflytek/voiceads/download/c/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/download/a;->f:Lcom/iflytek/voiceads/download/c/a;

    new-instance v0, Lcom/iflytek/voiceads/download/b/b;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/a;->f:Lcom/iflytek/voiceads/download/c/a;

    invoke-direct {v0, v1}, Lcom/iflytek/voiceads/download/b/b;-><init>(Lcom/iflytek/voiceads/download/c/a;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/download/a;->e:Lcom/iflytek/voiceads/download/b/a;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/voiceads/download/a;Lcom/iflytek/voiceads/download/DownloadService$a;)Lcom/iflytek/voiceads/download/DownloadService$a;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/download/a;->i:Lcom/iflytek/voiceads/download/DownloadService$a;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/iflytek/voiceads/download/a/b;
    .locals 2

    const-class v1, Lcom/iflytek/voiceads/download/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iflytek/voiceads/download/a;->a:Lcom/iflytek/voiceads/download/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/voiceads/download/a;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/download/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/voiceads/download/a;->a:Lcom/iflytek/voiceads/download/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/iflytek/voiceads/download/a;->a:Lcom/iflytek/voiceads/download/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/iflytek/voiceads/download/a;)Lcom/iflytek/voiceads/download/d/a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/download/a;->h:Lcom/iflytek/voiceads/download/d/a;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/voiceads/download/a;)Lcom/iflytek/voiceads/download/DownloadService$a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/download/a;->i:Lcom/iflytek/voiceads/download/DownloadService$a;

    return-object v0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/iflytek/voiceads/download/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/voiceads/download/d/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/download/d/a;->g()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-direct {p0, v0}, Lcom/iflytek/voiceads/download/a;->e(Lcom/iflytek/voiceads/download/d/a;)V

    :cond_1
    return-void
.end method

.method private e(Lcom/iflytek/voiceads/download/d/a;)V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/voiceads/download/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/iflytek/voiceads/download/d/a;->a(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/a;->e:Lcom/iflytek/voiceads/download/b/a;

    invoke-interface {v0, p1}, Lcom/iflytek/voiceads/download/b/a;->a(Lcom/iflytek/voiceads/download/d/a;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/iflytek/voiceads/download/b/d;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/a;->b:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/iflytek/voiceads/download/a;->e:Lcom/iflytek/voiceads/download/b/a;

    invoke-direct {v0, v1, v2, p1, p0}, Lcom/iflytek/voiceads/download/b/d;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/iflytek/voiceads/download/b/a;Lcom/iflytek/voiceads/download/d/a;Lcom/iflytek/voiceads/download/b/d$a;)V

    iget-object v1, p0, Lcom/iflytek/voiceads/download/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/iflytek/voiceads/download/d/a;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/iflytek/voiceads/download/d/a;->a(I)V

    iget-object v1, p0, Lcom/iflytek/voiceads/download/a;->e:Lcom/iflytek/voiceads/download/b/a;

    invoke-interface {v1, p1}, Lcom/iflytek/voiceads/download/b/a;->a(Lcom/iflytek/voiceads/download/d/a;)V

    invoke-virtual {v0}, Lcom/iflytek/voiceads/download/b/d;->a()V

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/iflytek/voiceads/download/d/a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/download/a;->f:Lcom/iflytek/voiceads/download/c/a;

    invoke-interface {v0, p1}, Lcom/iflytek/voiceads/download/c/a;->a(I)Lcom/iflytek/voiceads/download/d/a;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/voiceads/download/d/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/voiceads/download/a;->f:Lcom/iflytek/voiceads/download/c/a;

    invoke-interface {v0}, Lcom/iflytek/voiceads/download/c/a;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/iflytek/voiceads/download/d/a;)V
    .locals 4

    iput-object p1, p0, Lcom/iflytek/voiceads/download/a;->h:Lcom/iflytek/voiceads/download/d/a;

    iget-object v0, p0, Lcom/iflytek/voiceads/download/a;->i:Lcom/iflytek/voiceads/download/DownloadService$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/download/a;->i:Lcom/iflytek/voiceads/download/DownloadService$a;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/download/DownloadService$a;->a(Lcom/iflytek/voiceads/download/d/a;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v0, "com.iflytek.voiceads.download.DownloadService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/a;->g:Landroid/content/Context;

    const-class v2, Lcom/iflytek/voiceads/download/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/iflytek/voiceads/download/a;->g:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/a;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/voiceads/download/a;->j:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "service not found"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/voiceads/download/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/voiceads/download/d/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/download/d/a;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/voiceads/download/a;->f:Lcom/iflytek/voiceads/download/c/a;

    invoke-interface {v2, v0}, Lcom/iflytek/voiceads/download/c/a;->b(Lcom/iflytek/voiceads/download/d/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearAllDownloaded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b(Lcom/iflytek/voiceads/download/d/a;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/download/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/iflytek/voiceads/download/a;->e(Lcom/iflytek/voiceads/download/d/a;)V

    return-void
.end method

.method public c(Lcom/iflytek/voiceads/download/d/a;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/download/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/iflytek/voiceads/download/d/a;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/iflytek/voiceads/download/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/voiceads/download/a;->c()V

    return-void
.end method

.method public d(Lcom/iflytek/voiceads/download/d/a;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/download/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/iflytek/voiceads/download/d/a;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/iflytek/voiceads/download/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
