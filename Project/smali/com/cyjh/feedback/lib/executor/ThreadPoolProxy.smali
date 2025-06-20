.class public Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;
.super Ljava/lang/Object;
.source "ThreadPoolProxy.java"


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE_SECONDS:I = 0x1e

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final M_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->CPU_COUNT:I

    .line 23
    sget v0, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->CPU_COUNT:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->CORE_POOL_SIZE:I

    .line 24
    sget v0, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->MAXIMUM_POOL_SIZE:I

    .line 63
    new-instance v0, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy$1;

    invoke-direct {v0}, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy$1;-><init>()V

    sput-object v0, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->M_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-direct {p0}, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->initThreadPoolExecutor()V

    return-void
.end method

.method private initThreadPoolExecutor()V
    .locals 11

    .line 34
    iget-object v0, p0, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    :cond_0
    const-class v0, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;

    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    :cond_1
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v8, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 38
    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    .line 39
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v3, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->CORE_POOL_SIZE:I

    sget v4, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v9, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->M_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 42
    :cond_2
    monitor-exit v0

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public executeRunnable(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeRunnable(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    return-void
.end method
