.class public Lcom/ds/daisi/services/BootService;
.super Lcom/ds/daisi/services/BaseService;
.source "BootService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/services/BootService$MyServiceHandler;
    }
.end annotation


# static fields
.field public static final MSG_DEFAULT:I = 0x110

.field public static final START_DELAY:I = 0x1


# instance fields
.field private mFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mServiceHandler:Lcom/ds/daisi/services/BootService$MyServiceHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/ds/daisi/services/BaseService;-><init>()V

    .line 27
    new-instance v0, Lcom/ds/daisi/services/BootService$MyServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ds/daisi/services/BootService$MyServiceHandler;-><init>(Lcom/ds/daisi/services/BootService$1;)V

    iput-object v0, p0, Lcom/ds/daisi/services/BootService;->mServiceHandler:Lcom/ds/daisi/services/BootService$MyServiceHandler;

    return-void
.end method

.method static synthetic access$100(Lcom/ds/daisi/services/BootService;)Lcom/ds/daisi/services/BootService$MyServiceHandler;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ds/daisi/services/BootService;->mServiceHandler:Lcom/ds/daisi/services/BootService$MyServiceHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ds/daisi/services/BootService;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ds/daisi/services/BootService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 43
    invoke-super {p0}, Lcom/ds/daisi/services/BaseService;->onCreate()V

    .line 44
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/ds/daisi/services/BootService;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 66
    invoke-super {p0}, Lcom/ds/daisi/services/BaseService;->onDestroy()V

    .line 67
    iget-object v0, p0, Lcom/ds/daisi/services/BootService;->mServiceHandler:Lcom/ds/daisi/services/BootService$MyServiceHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ds/daisi/services/BootService$MyServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/ds/daisi/services/BootService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/ds/daisi/services/BootService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    .line 49
    iget-object v0, p0, Lcom/ds/daisi/services/BootService;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/ds/daisi/services/BootService$1;

    invoke-direct {v1, p0}, Lcom/ds/daisi/services/BootService$1;-><init>(Lcom/ds/daisi/services/BootService;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/services/BootService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/ds/daisi/services/BaseService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
