.class public Lcom/cyjh/feedback/lib/executor/ThreadPoolProxyFactory;
.super Ljava/lang/Object;
.source "ThreadPoolProxyFactory.java"


# static fields
.field private static sNormalThreadPool:Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNormalThreadPool()Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;
    .locals 2

    .line 13
    sget-object v0, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxyFactory;->sNormalThreadPool:Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;

    if-nez v0, :cond_1

    .line 14
    const-class v0, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxyFactory;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxyFactory;->sNormalThreadPool:Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;

    invoke-direct {v1}, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;-><init>()V

    sput-object v1, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxyFactory;->sNormalThreadPool:Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;

    .line 18
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 20
    :cond_1
    :goto_0
    sget-object v0, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxyFactory;->sNormalThreadPool:Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;

    return-object v0
.end method
