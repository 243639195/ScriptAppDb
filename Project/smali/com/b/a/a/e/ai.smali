.class final Lcom/b/a/a/e/ai;
.super Ljava/lang/Object;
.source "Ping.java"


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;

.field private b:J

.field private c:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/b/a/a/e/ai;->a:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, -0x1

    .line 26
    iput-wide v0, p0, Lcom/b/a/a/e/ai;->b:J

    .line 27
    iput-wide v0, p0, Lcom/b/a/a/e/ai;->c:J

    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    .line 33
    iget-wide v0, p0, Lcom/b/a/a/e/ai;->b:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 34
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/e/ai;->b:J

    return-void
.end method

.method final b()V
    .locals 5

    .line 38
    iget-wide v0, p0, Lcom/b/a/a/e/ai;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v0, p0, Lcom/b/a/a/e/ai;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/e/ai;->c:J

    .line 40
    iget-object v0, p0, Lcom/b/a/a/e/ai;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 38
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method final c()V
    .locals 6

    .line 44
    iget-wide v0, p0, Lcom/b/a/a/e/ai;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v0, p0, Lcom/b/a/a/e/ai;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    iget-wide v0, p0, Lcom/b/a/a/e/ai;->b:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/b/a/a/e/ai;->c:J

    .line 46
    iget-object v0, p0, Lcom/b/a/a/e/ai;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 44
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
