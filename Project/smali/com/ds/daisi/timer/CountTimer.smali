.class public abstract Lcom/ds/daisi/timer/CountTimer;
.super Ljava/lang/Object;
.source "CountTimer.java"


# static fields
.field private static final MSG:I = 0x1


# instance fields
.field private mCancelled:Z

.field private final mCountdownInterval:J

.field private mHandler:Landroid/os/Handler;

.field private final mMillisInFuture:J

.field private mStopTimeInFuture:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/ds/daisi/timer/CountTimer;->mCancelled:Z

    .line 82
    new-instance v0, Lcom/ds/daisi/timer/CountTimer$1;

    invoke-direct {v0, p0}, Lcom/ds/daisi/timer/CountTimer$1;-><init>(Lcom/ds/daisi/timer/CountTimer;)V

    iput-object v0, p0, Lcom/ds/daisi/timer/CountTimer;->mHandler:Landroid/os/Handler;

    .line 39
    iput-wide p1, p0, Lcom/ds/daisi/timer/CountTimer;->mMillisInFuture:J

    .line 40
    iput-wide p3, p0, Lcom/ds/daisi/timer/CountTimer;->mCountdownInterval:J

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/timer/CountTimer;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcom/ds/daisi/timer/CountTimer;->mCancelled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/ds/daisi/timer/CountTimer;)J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/ds/daisi/timer/CountTimer;->mStopTimeInFuture:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/ds/daisi/timer/CountTimer;)J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/ds/daisi/timer/CountTimer;->mCountdownInterval:J

    return-wide v0
.end method


# virtual methods
.method public final declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 47
    :try_start_0
    iput-boolean v0, p0, Lcom/ds/daisi/timer/CountTimer;->mCancelled:Z

    .line 48
    iget-object v1, p0, Lcom/ds/daisi/timer/CountTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 46
    monitor-exit p0

    throw v0
.end method

.method public abstract onFinish()V
.end method

.method public abstract onTick(J)V
.end method

.method public final declared-synchronized start()Lcom/ds/daisi/timer/CountTimer;
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 55
    :try_start_0
    iput-boolean v0, p0, Lcom/ds/daisi/timer/CountTimer;->mCancelled:Z

    .line 56
    iget-wide v0, p0, Lcom/ds/daisi/timer/CountTimer;->mMillisInFuture:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/ds/daisi/timer/CountTimer;->onFinish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-object p0

    .line 60
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ds/daisi/timer/CountTimer;->mMillisInFuture:J

    const/4 v4, 0x0

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/ds/daisi/timer/CountTimer;->mStopTimeInFuture:J

    .line 61
    iget-object v0, p0, Lcom/ds/daisi/timer/CountTimer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ds/daisi/timer/CountTimer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    .line 54
    monitor-exit p0

    throw v0
.end method
