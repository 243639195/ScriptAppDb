.class public Lcom/iflytek/voiceads/c/a;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/iflytek/voiceads/request/a$a;

.field private b:Lcom/iflytek/voiceads/param/a;

.field private c:Landroid/content/Context;

.field private d:Lcom/iflytek/voiceads/d/b;

.field private e:Lcom/iflytek/voiceads/listener/IFLYNativeListener;

.field private f:Lcom/iflytek/voiceads/c/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/voiceads/listener/IFLYNativeListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iflytek/voiceads/c/b;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/c/b;-><init>(Lcom/iflytek/voiceads/c/a;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/c/a;->a:Lcom/iflytek/voiceads/request/a$a;

    iput-object p1, p0, Lcom/iflytek/voiceads/c/a;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/iflytek/voiceads/c/a;->e:Lcom/iflytek/voiceads/listener/IFLYNativeListener;

    new-instance v0, Lcom/iflytek/voiceads/param/a;

    invoke-direct {v0, p2}, Lcom/iflytek/voiceads/param/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/c/a;->b:Lcom/iflytek/voiceads/param/a;

    new-instance v0, Lcom/iflytek/voiceads/d/b;

    iget-object v1, p0, Lcom/iflytek/voiceads/c/a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/voiceads/d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/c/a;->d:Lcom/iflytek/voiceads/d/b;

    new-instance v0, Lcom/iflytek/voiceads/c/d;

    invoke-direct {v0}, Lcom/iflytek/voiceads/c/d;-><init>()V

    iput-object v0, p0, Lcom/iflytek/voiceads/c/a;->f:Lcom/iflytek/voiceads/c/d;

    iget-object v0, p0, Lcom/iflytek/voiceads/c/a;->f:Lcom/iflytek/voiceads/c/d;

    iget-object v1, p0, Lcom/iflytek/voiceads/c/a;->e:Lcom/iflytek/voiceads/listener/IFLYNativeListener;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/c/d;->a(Lcom/iflytek/voiceads/listener/IFLYNativeListener;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/voiceads/c/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/c/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/voiceads/c/a;)Lcom/iflytek/voiceads/c/d;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/c/a;->f:Lcom/iflytek/voiceads/c/d;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/voiceads/c/a;)Lcom/iflytek/voiceads/d/b;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/c/a;->d:Lcom/iflytek/voiceads/d/b;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/voiceads/c/a;)Lcom/iflytek/voiceads/param/a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/c/a;->b:Lcom/iflytek/voiceads/param/a;

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/voiceads/c/a;)Lcom/iflytek/voiceads/listener/IFLYNativeListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/c/a;->e:Lcom/iflytek/voiceads/listener/IFLYNativeListener;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/c/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/voiceads/c/a;->b:Lcom/iflytek/voiceads/param/a;

    iget-object v2, p0, Lcom/iflytek/voiceads/c/a;->a:Lcom/iflytek/voiceads/request/a$a;

    invoke-static {v0, v1, v2}, Lcom/iflytek/voiceads/request/f;->a(Landroid/content/Context;Lcom/iflytek/voiceads/param/a;Lcom/iflytek/voiceads/request/a$a;)V
    :try_end_0
    .catch Lcom/iflytek/voiceads/config/AdError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/iflytek/voiceads/c/a;->f:Lcom/iflytek/voiceads/c/d;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/voiceads/c/d;->a(ILjava/lang/Object;)V

    const-string v1, "IFLY_AD_SDK"

    invoke-virtual {v0}, Lcom/iflytek/voiceads/config/AdError;->getErrorDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "IFLY_AD_SDK"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/c/a;->b:Lcom/iflytek/voiceads/param/a;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/voiceads/param/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
