.class public Lcom/b/b/a;
.super Lcom/b/b/y;
.source "AsyncTimeout.java"


# static fields
.field private static final a:J

.field private static final c:J

.field private static d:Lcom/b/b/a;


# instance fields
.field private e:Z

.field private f:Lcom/b/b/a;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/b/b/a;->a:J

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v1, Lcom/b/b/a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/b/b/a;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/b/b/y;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(Lcom/b/b/a;JZ)V
    .locals 7

    const-class v0, Lcom/b/b/a;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lcom/b/b/a;->d:Lcom/b/b/a;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lcom/b/b/a;

    invoke-direct {v1}, Lcom/b/b/a;-><init>()V

    sput-object v1, Lcom/b/b/a;->d:Lcom/b/b/a;

    .line 87
    new-instance v1, Lcom/b/b/d;

    invoke-direct {v1}, Lcom/b/b/d;-><init>()V

    invoke-virtual {v1}, Lcom/b/b/d;->start()V

    .line 90
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_1

    if-eqz p3, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/b/b/a;->d()J

    move-result-wide v3

    const/4 p3, 0x0

    sub-long v5, v3, v1

    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const/4 p3, 0x0

    add-long v3, v1, p1

    iput-wide v3, p0, Lcom/b/b/a;->g:J

    goto :goto_0

    :cond_1
    cmp-long v5, p1, v3

    if-eqz v5, :cond_2

    add-long v3, v1, p1

    .line 96
    iput-wide v3, p0, Lcom/b/b/a;->g:J

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_6

    .line 98
    invoke-virtual {p0}, Lcom/b/b/a;->d()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/b/b/a;->g:J

    .line 1144
    :goto_0
    iget-wide p1, p0, Lcom/b/b/a;->g:J

    const/4 p3, 0x0

    sub-long v3, p1, v1

    .line 105
    sget-object p1, Lcom/b/b/a;->d:Lcom/b/b/a;

    .line 106
    :goto_1
    iget-object p2, p1, Lcom/b/b/a;->f:Lcom/b/b/a;

    if-eqz p2, :cond_4

    iget-object p2, p1, Lcom/b/b/a;->f:Lcom/b/b/a;

    .line 2144
    iget-wide p2, p2, Lcom/b/b/a;->g:J

    const/4 v5, 0x0

    sub-long v5, p2, v1

    cmp-long p2, v3, v5

    if-gez p2, :cond_3

    goto :goto_2

    .line 105
    :cond_3
    iget-object p1, p1, Lcom/b/b/a;->f:Lcom/b/b/a;

    goto :goto_1

    .line 107
    :cond_4
    :goto_2
    iget-object p2, p1, Lcom/b/b/a;->f:Lcom/b/b/a;

    iput-object p2, p0, Lcom/b/b/a;->f:Lcom/b/b/a;

    .line 108
    iput-object p0, p1, Lcom/b/b/a;->f:Lcom/b/b/a;

    .line 109
    sget-object p0, Lcom/b/b/a;->d:Lcom/b/b/a;

    if-ne p1, p0, :cond_5

    .line 110
    const-class p0, Lcom/b/b/a;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 115
    :cond_5
    monitor-exit v0

    return-void

    .line 100
    :cond_6
    :try_start_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 84
    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized a(Lcom/b/b/a;)Z
    .locals 3

    const-class v0, Lcom/b/b/a;

    monitor-enter v0

    .line 127
    :try_start_0
    sget-object v1, Lcom/b/b/a;->d:Lcom/b/b/a;

    :goto_0
    if-eqz v1, :cond_1

    .line 128
    iget-object v2, v1, Lcom/b/b/a;->f:Lcom/b/b/a;

    if-ne v2, p0, :cond_0

    .line 129
    iget-object v2, p0, Lcom/b/b/a;->f:Lcom/b/b/a;

    iput-object v2, v1, Lcom/b/b/a;->f:Lcom/b/b/a;

    const/4 v1, 0x0

    .line 130
    iput-object v1, p0, Lcom/b/b/a;->f:Lcom/b/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 131
    monitor-exit v0

    return p0

    .line 127
    :cond_0
    :try_start_1
    iget-object v1, v1, Lcom/b/b/a;->f:Lcom/b/b/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 136
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 126
    monitor-exit v0

    throw p0
.end method

.method static e()Lcom/b/b/a;
    .locals 10

    .line 341
    sget-object v0, Lcom/b/b/a;->d:Lcom/b/b/a;

    iget-object v0, v0, Lcom/b/b/a;->f:Lcom/b/b/a;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 345
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 346
    const-class v0, Lcom/b/b/a;

    sget-wide v4, Lcom/b/b/a;->a:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 347
    sget-object v0, Lcom/b/b/a;->d:Lcom/b/b/a;

    iget-object v0, v0, Lcom/b/b/a;->f:Lcom/b/b/a;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v6, v4, v2

    sget-wide v2, Lcom/b/b/a;->c:J

    cmp-long v0, v6, v2

    if-ltz v0, :cond_0

    sget-object v0, Lcom/b/b/a;->d:Lcom/b/b/a;

    return-object v0

    :cond_0
    return-object v1

    .line 352
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 3144
    iget-wide v4, v0, Lcom/b/b/a;->g:J

    sub-long v6, v4, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v6, v2

    if-lez v4, :cond_2

    const-wide/32 v2, 0xf4240

    .line 358
    div-long v4, v6, v2

    mul-long v2, v2, v4

    sub-long v8, v6, v2

    .line 360
    const-class v0, Lcom/b/b/a;

    long-to-int v2, v8

    invoke-virtual {v0, v4, v5, v2}, Ljava/lang/Object;->wait(JI)V

    return-object v1

    .line 365
    :cond_2
    sget-object v2, Lcom/b/b/a;->d:Lcom/b/b/a;

    iget-object v3, v0, Lcom/b/b/a;->f:Lcom/b/b/a;

    iput-object v3, v2, Lcom/b/b/a;->f:Lcom/b/b/a;

    .line 366
    iput-object v1, v0, Lcom/b/b/a;->f:Lcom/b/b/a;

    return-object v0
.end method

.method static synthetic f()Lcom/b/b/a;
    .locals 1

    .line 40
    sget-object v0, Lcom/b/b/a;->d:Lcom/b/b/a;

    return-object v0
.end method

.method static synthetic g()Lcom/b/b/a;
    .locals 1

    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/b/b/a;->d:Lcom/b/b/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 293
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 295
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method final a(Z)V
    .locals 1

    .line 273
    invoke-virtual {p0}, Lcom/b/b/a;->a_()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 274
    invoke-virtual {p0, p1}, Lcom/b/b/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_0
    return-void
.end method

.method public final a_()Z
    .locals 2

    .line 119
    iget-boolean v0, p0, Lcom/b/b/a;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 120
    :cond_0
    iput-boolean v1, p0, Lcom/b/b/a;->e:Z

    .line 121
    invoke-static {p0}, Lcom/b/b/a;->a(Lcom/b/b/a;)Z

    move-result v0

    return v0
.end method

.method final b(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1

    .line 283
    invoke-virtual {p0}, Lcom/b/b/a;->a_()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 284
    :cond_0
    invoke-virtual {p0, p1}, Lcom/b/b/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final c()V
    .locals 6

    .line 72
    iget-boolean v0, p0, Lcom/b/b/a;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/b/b/a;->b_()J

    move-result-wide v0

    .line 74
    invoke-virtual {p0}, Lcom/b/b/a;->c_()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_1

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x1

    .line 78
    iput-boolean v3, p0, Lcom/b/b/a;->e:Z

    .line 79
    invoke-static {p0, v0, v1, v2}, Lcom/b/b/a;->a(Lcom/b/b/a;JZ)V

    return-void
.end method
