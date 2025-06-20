.class public final Lcom/ds/daisi/zbar/decode/InactivityTimer;
.super Ljava/lang/Object;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/zbar/decode/InactivityTimer$DaemonThreadFactory;
    }
.end annotation


# static fields
.field private static final INACTIVITY_DELAY_SECONDS:I = 0x12c


# instance fields
.field private final activity:Landroid/app/Activity;

.field private inactivityFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final inactivityTimer:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/ds/daisi/zbar/decode/InactivityTimer$DaemonThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ds/daisi/zbar/decode/InactivityTimer$DaemonThreadFactory;-><init>(Lcom/ds/daisi/zbar/decode/InactivityTimer$1;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/zbar/decode/InactivityTimer;->inactivityTimer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 22
    iput-object v1, p0, Lcom/ds/daisi/zbar/decode/InactivityTimer;->inactivityFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 25
    iput-object p1, p0, Lcom/ds/daisi/zbar/decode/InactivityTimer;->activity:Landroid/app/Activity;

    .line 26
    invoke-virtual {p0}, Lcom/ds/daisi/zbar/decode/InactivityTimer;->onActivity()V

    return-void
.end method

.method private cancel()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/ds/daisi/zbar/decode/InactivityTimer;->inactivityFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/ds/daisi/zbar/decode/InactivityTimer;->inactivityFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/ds/daisi/zbar/decode/InactivityTimer;->inactivityFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivity()V
    .locals 5

    .line 30
    invoke-direct {p0}, Lcom/ds/daisi/zbar/decode/InactivityTimer;->cancel()V

    .line 31
    iget-object v0, p0, Lcom/ds/daisi/zbar/decode/InactivityTimer;->inactivityTimer:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/ds/daisi/zbar/decode/FinishListener;

    iget-object v2, p0, Lcom/ds/daisi/zbar/decode/InactivityTimer;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/ds/daisi/zbar/decode/FinishListener;-><init>(Landroid/app/Activity;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x12c

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/zbar/decode/InactivityTimer;->inactivityFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/ds/daisi/zbar/decode/InactivityTimer;->cancel()V

    .line 43
    iget-object v0, p0, Lcom/ds/daisi/zbar/decode/InactivityTimer;->inactivityTimer:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void
.end method
