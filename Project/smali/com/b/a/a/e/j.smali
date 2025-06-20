.class public final Lcom/b/a/a/e/j;
.super Ljava/lang/Object;
.source "Http2Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final a:Ljava/util/concurrent/ExecutorService;

.field static final synthetic s:Z = true


# instance fields
.field final b:Z

.field final c:Lcom/b/a/a/e/s;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/b/a/a/e/ab;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/lang/String;

.field f:I

.field g:I

.field h:Z

.field final i:Lcom/b/a/a/e/aj;

.field j:J

.field k:J

.field l:Lcom/b/a/a/e/al;

.field final m:Lcom/b/a/a/e/al;

.field n:Z

.field final o:Ljava/net/Socket;

.field final p:Lcom/b/a/a/e/af;

.field final q:Lcom/b/a/a/e/u;

.field final r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/concurrent/ExecutorService;

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/b/a/a/e/ai;",
            ">;"
        }
    .end annotation
.end field

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 69
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp Http2Connection"

    const/4 v7, 0x1

    .line 71
    invoke-static {v0, v7}, Lcom/b/a/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/b/a/a/e/j;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Lcom/b/a/a/e/r;)V
    .locals 13

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 101
    iput-wide v0, p0, Lcom/b/a/a/e/j;->j:J

    .line 110
    new-instance v0, Lcom/b/a/a/e/al;

    invoke-direct {v0}, Lcom/b/a/a/e/al;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/e/j;->l:Lcom/b/a/a/e/al;

    .line 116
    new-instance v0, Lcom/b/a/a/e/al;

    invoke-direct {v0}, Lcom/b/a/a/e/al;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/e/j;->m:Lcom/b/a/a/e/al;

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/b/a/a/e/j;->n:Z

    .line 777
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/b/a/a/e/j;->r:Ljava/util/Set;

    .line 126
    iget-object v1, p1, Lcom/b/a/a/e/r;->f:Lcom/b/a/a/e/aj;

    iput-object v1, p0, Lcom/b/a/a/e/j;->i:Lcom/b/a/a/e/aj;

    .line 127
    iget-boolean v1, p1, Lcom/b/a/a/e/r;->g:Z

    iput-boolean v1, p0, Lcom/b/a/a/e/j;->b:Z

    .line 128
    iget-object v1, p1, Lcom/b/a/a/e/r;->e:Lcom/b/a/a/e/s;

    iput-object v1, p0, Lcom/b/a/a/e/j;->c:Lcom/b/a/a/e/s;

    .line 130
    iget-boolean v1, p1, Lcom/b/a/a/e/r;->g:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    iput v1, p0, Lcom/b/a/a/e/j;->g:I

    .line 131
    iget-boolean v1, p1, Lcom/b/a/a/e/r;->g:Z

    if-eqz v1, :cond_1

    .line 132
    iget v1, p0, Lcom/b/a/a/e/j;->g:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/b/a/a/e/j;->g:I

    .line 135
    :cond_1
    iget-boolean v1, p1, Lcom/b/a/a/e/r;->g:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput v2, p0, Lcom/b/a/a/e/j;->v:I

    .line 141
    iget-boolean v1, p1, Lcom/b/a/a/e/r;->g:Z

    const/4 v2, 0x7

    if-eqz v1, :cond_3

    .line 142
    iget-object v1, p0, Lcom/b/a/a/e/j;->l:Lcom/b/a/a/e/al;

    const/high16 v4, 0x1000000

    invoke-virtual {v1, v2, v4}, Lcom/b/a/a/e/al;->a(II)Lcom/b/a/a/e/al;

    .line 145
    :cond_3
    iget-object v1, p1, Lcom/b/a/a/e/r;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    .line 148
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x3c

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v4, "OkHttp %s Push Observer"

    new-array v11, v3, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    aput-object v12, v11, v0

    .line 150
    invoke-static {v4, v11}, Lcom/b/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/b/a/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v11

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/b/a/a/e/j;->t:Ljava/util/concurrent/ExecutorService;

    .line 151
    iget-object v0, p0, Lcom/b/a/a/e/j;->m:Lcom/b/a/a/e/al;

    const v1, 0xffff

    invoke-virtual {v0, v2, v1}, Lcom/b/a/a/e/al;->a(II)Lcom/b/a/a/e/al;

    .line 152
    iget-object v0, p0, Lcom/b/a/a/e/j;->m:Lcom/b/a/a/e/al;

    const/4 v1, 0x5

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/e/al;->a(II)Lcom/b/a/a/e/al;

    .line 153
    iget-object v0, p0, Lcom/b/a/a/e/j;->m:Lcom/b/a/a/e/al;

    invoke-virtual {v0}, Lcom/b/a/a/e/al;->d()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/b/a/a/e/j;->k:J

    .line 154
    iget-object v0, p1, Lcom/b/a/a/e/r;->a:Ljava/net/Socket;

    iput-object v0, p0, Lcom/b/a/a/e/j;->o:Ljava/net/Socket;

    .line 155
    new-instance v0, Lcom/b/a/a/e/af;

    iget-object v1, p1, Lcom/b/a/a/e/r;->d:Lcom/b/b/g;

    iget-boolean v2, p0, Lcom/b/a/a/e/j;->b:Z

    invoke-direct {v0, v1, v2}, Lcom/b/a/a/e/af;-><init>(Lcom/b/b/g;Z)V

    iput-object v0, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    .line 157
    new-instance v0, Lcom/b/a/a/e/u;

    new-instance v1, Lcom/b/a/a/e/y;

    iget-object p1, p1, Lcom/b/a/a/e/r;->c:Lcom/b/b/h;

    iget-boolean v2, p0, Lcom/b/a/a/e/j;->b:Z

    invoke-direct {v1, p1, v2}, Lcom/b/a/a/e/y;-><init>(Lcom/b/b/h;Z)V

    invoke-direct {v0, p0, v1}, Lcom/b/a/a/e/u;-><init>(Lcom/b/a/a/e/j;Lcom/b/a/a/e/y;)V

    iput-object v0, p0, Lcom/b/a/a/e/j;->q:Lcom/b/a/a/e/u;

    return-void
.end method

.method private b(Ljava/util/List;Z)Lcom/b/a/a/e/ab;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/b/a/a/e/c;",
            ">;Z)",
            "Lcom/b/a/a/e/ab;"
        }
    .end annotation

    xor-int/lit8 v6, p2, 0x1

    .line 216
    iget-object v7, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    monitor-enter v7

    .line 217
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 218
    :try_start_1
    iget-boolean v0, p0, Lcom/b/a/a/e/j;->h:Z

    if-eqz v0, :cond_0

    .line 219
    new-instance p1, Lcom/b/a/a/e/a;

    invoke-direct {p1}, Lcom/b/a/a/e/a;-><init>()V

    throw p1

    .line 221
    :cond_0
    iget v8, p0, Lcom/b/a/a/e/j;->g:I

    .line 222
    iget v0, p0, Lcom/b/a/a/e/j;->g:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/b/a/a/e/j;->g:I

    .line 223
    new-instance v9, Lcom/b/a/a/e/ab;

    const/4 v4, 0x0

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/b/a/a/e/ab;-><init>(ILcom/b/a/a/e/j;ZZLjava/util/List;)V

    if-eqz p2, :cond_2

    .line 224
    iget-wide v0, p0, Lcom/b/a/a/e/j;->k:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    iget-wide v0, v9, Lcom/b/a/a/e/ab;->b:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    .line 225
    :goto_1
    invoke-virtual {v9}, Lcom/b/a/a/e/ab;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    iget-object v0, p0, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :try_start_2
    iget-object v0, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    invoke-virtual {v0, v6, v8, p1}, Lcom/b/a/a/e/af;->a(ZILjava/util/List;)V

    .line 236
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_4

    .line 239
    iget-object p1, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    invoke-virtual {p1}, Lcom/b/a/a/e/af;->b()V

    :cond_4
    return-object v9

    :catchall_0
    move-exception p1

    .line 228
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 236
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method static d(I)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 1

    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/e/j;->m:Lcom/b/a/a/e/al;

    invoke-virtual {v0}, Lcom/b/a/a/e/al;->c()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(I)Lcom/b/a/a/e/ab;
    .locals 1

    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/b/a/a/e/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/util/List;Z)Lcom/b/a/a/e/ab;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/b/a/a/e/c;",
            ">;Z)",
            "Lcom/b/a/a/e/ab;"
        }
    .end annotation

    .line 205
    invoke-direct {p0, p1, p2}, Lcom/b/a/a/e/j;->b(Ljava/util/List;Z)Lcom/b/a/a/e/ab;

    move-result-object p1

    return-object p1
.end method

.method final a(IJ)V
    .locals 9

    .line 319
    sget-object v0, Lcom/b/a/a/e/j;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/b/a/a/e/l;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/b/a/a/e/l;-><init>(Lcom/b/a/a/e/j;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(ILcom/b/a/a/e/b;)V
    .locals 8

    .line 304
    sget-object v0, Lcom/b/a/a/e/j;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/b/a/a/e/k;

    const-string v3, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/b/a/a/e/k;-><init>(Lcom/b/a/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILcom/b/a/a/e/b;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(ILcom/b/b/h;IZ)V
    .locals 9

    .line 827
    new-instance v5, Lcom/b/b/f;

    invoke-direct {v5}, Lcom/b/b/f;-><init>()V

    int-to-long v0, p3

    .line 828
    invoke-interface {p2, v0, v1}, Lcom/b/b/h;->a(J)V

    .line 829
    invoke-interface {p2, v5, v0, v1}, Lcom/b/b/h;->a(Lcom/b/b/f;J)J

    .line 830
    invoke-virtual {v5}, Lcom/b/b/f;->b()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-eqz p2, :cond_0

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/b/b/f;->b()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " != "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 831
    :cond_0
    iget-object p2, p0, Lcom/b/a/a/e/j;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/b/a/a/e/p;

    const-string v2, "OkHttp %s Push Data[%s]"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    move-object v0, v8

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/b/a/a/e/p;-><init>(Lcom/b/a/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILcom/b/b/f;IZ)V

    invoke-interface {p2, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/b/a/a/e/c;",
            ">;)V"
        }
    .end annotation

    .line 780
    monitor-enter p0

    .line 781
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/e/j;->r:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    sget-object p2, Lcom/b/a/a/e/b;->b:Lcom/b/a/a/e/b;

    invoke-virtual {p0, p1, p2}, Lcom/b/a/a/e/j;->a(ILcom/b/a/a/e/b;)V

    .line 783
    monitor-exit p0

    return-void

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/e/j;->r:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 786
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    iget-object v0, p0, Lcom/b/a/a/e/j;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/b/a/a/e/n;

    const-string v3, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/b/a/a/e/n;-><init>(Lcom/b/a/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 786
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final a(ILjava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/b/a/a/e/c;",
            ">;Z)V"
        }
    .end annotation

    .line 805
    iget-object v0, p0, Lcom/b/a/a/e/j;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/b/a/a/e/o;

    const-string v3, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/b/a/a/e/o;-><init>(Lcom/b/a/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(IZLcom/b/b/f;J)V
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 265
    iget-object p4, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    invoke-virtual {p4, p2, p1, p3, v3}, Lcom/b/a/a/e/af;->a(ZILcom/b/b/f;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_4

    .line 271
    monitor-enter p0

    .line 273
    :goto_1
    :try_start_0
    iget-wide v4, p0, Lcom/b/a/a/e/j;->k:J

    cmp-long v2, v4, v0

    if-gtz v2, :cond_2

    .line 276
    iget-object v2, p0, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 277
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 279
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 285
    :cond_2
    :try_start_1
    iget-wide v4, p0, Lcom/b/a/a/e/j;->k:J

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 286
    iget-object v4, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    invoke-virtual {v4}, Lcom/b/a/a/e/af;->c()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 287
    iget-wide v4, p0, Lcom/b/a/a/e/j;->k:J

    int-to-long v6, v2

    sub-long v8, v4, v6

    iput-wide v8, p0, Lcom/b/a/a/e/j;->k:J

    .line 288
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    sub-long v4, p4, v6

    .line 291
    iget-object p4, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    if-eqz p2, :cond_3

    cmp-long p5, v4, v0

    if-nez p5, :cond_3

    const/4 p5, 0x1

    goto :goto_2

    :cond_3
    const/4 p5, 0x0

    :goto_2
    invoke-virtual {p4, p5, p1, p3, v2}, Lcom/b/a/a/e/af;->a(ZILcom/b/b/f;I)V

    move-wide p4, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 282
    :catch_0
    :try_start_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 288
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    return-void
.end method

.method final a(Lcom/b/a/a/e/b;Lcom/b/a/a/e/b;)V
    .locals 6

    .line 408
    sget-boolean v0, Lcom/b/a/a/e/j;->s:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_0
    const/4 v0, 0x0

    .line 1384
    :try_start_0
    iget-object v1, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1386
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1387
    :try_start_2
    iget-boolean v2, p0, Lcom/b/a/a/e/j;->h:Z

    if-eqz v2, :cond_1

    .line 1388
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 1390
    :try_start_4
    iput-boolean v2, p0, Lcom/b/a/a/e/j;->h:Z

    .line 1391
    iget v2, p0, Lcom/b/a/a/e/j;->f:I

    .line 1392
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1395
    :try_start_5
    iget-object v3, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    sget-object v4, Lcom/b/a/a/c;->a:[B

    invoke-virtual {v3, v2, p1, v4}, Lcom/b/a/a/e/af;->a(ILcom/b/a/a/e/b;[B)V

    .line 1396
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1392
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p1

    :catchall_1
    move-exception p1

    .line 1396
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    .line 418
    :goto_1
    monitor-enter p0

    .line 419
    :try_start_9
    iget-object v1, p0, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 420
    iget-object v1, p0, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/b/a/a/e/ab;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/b/a/a/e/ab;

    .line 421
    iget-object v2, p0, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_2

    :cond_2
    move-object v1, v0

    .line 423
    :goto_2
    iget-object v2, p0, Lcom/b/a/a/e/j;->u:Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 424
    iget-object v2, p0, Lcom/b/a/a/e/j;->u:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/b/a/a/e/j;->u:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lcom/b/a/a/e/ai;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/b/a/a/e/ai;

    .line 425
    iput-object v0, p0, Lcom/b/a/a/e/j;->u:Ljava/util/Map;

    move-object v0, v2

    .line 427
    :cond_3
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 430
    array-length v3, v1

    move-object v4, p1

    const/4 p1, 0x0

    :goto_3
    if-ge p1, v3, :cond_5

    aget-object v5, v1, p1

    .line 432
    :try_start_a
    invoke-virtual {v5, p2}, Lcom/b/a/a/e/ab;->a(Lcom/b/a/a/e/b;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4

    :catch_1
    move-exception v5

    if-eqz v4, :cond_4

    move-object v4, v5

    :cond_4
    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    move-object p1, v4

    :cond_6
    if-eqz v0, :cond_7

    .line 440
    array-length p2, v0

    :goto_5
    if-ge v2, p2, :cond_7

    aget-object v1, v0, v2

    .line 441
    invoke-virtual {v1}, Lcom/b/a/a/e/ai;->c()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 447
    :cond_7
    :try_start_b
    iget-object p2, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    invoke-virtual {p2}, Lcom/b/a/a/e/af;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_6

    :catch_2
    move-exception p2

    if-nez p1, :cond_8

    move-object p1, p2

    .line 454
    :cond_8
    :goto_6
    :try_start_c
    iget-object p2, p0, Lcom/b/a/a/e/j;->o:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_7

    :catch_3
    move-exception p1

    :goto_7
    if-eqz p1, :cond_9

    .line 459
    throw p1

    :cond_9
    return-void

    :catchall_2
    move-exception p1

    .line 427
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw p1
.end method

.method final declared-synchronized b(I)Lcom/b/a/a/e/ab;
    .locals 1

    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/b/a/a/e/ab;

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 176
    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .locals 4

    .line 1476
    iget-object v0, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    invoke-virtual {v0}, Lcom/b/a/a/e/af;->a()V

    .line 1477
    iget-object v0, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    iget-object v1, p0, Lcom/b/a/a/e/j;->l:Lcom/b/a/a/e/al;

    invoke-virtual {v0, v1}, Lcom/b/a/a/e/af;->b(Lcom/b/a/a/e/al;)V

    .line 1478
    iget-object v0, p0, Lcom/b/a/a/e/j;->l:Lcom/b/a/a/e/al;

    invoke-virtual {v0}, Lcom/b/a/a/e/al;->d()I

    move-result v0

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    .line 1480
    iget-object v2, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    const/4 v3, 0x0

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Lcom/b/a/a/e/af;->a(IJ)V

    .line 1483
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/b/a/a/e/j;->q:Lcom/b/a/a/e/u;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method final b(ILcom/b/a/a/e/b;)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/b/a/a/e/j;->p:Lcom/b/a/a/e/af;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/a/e/af;->a(ILcom/b/a/a/e/b;)V

    return-void
.end method

.method final declared-synchronized c(I)Lcom/b/a/a/e/ai;
    .locals 1

    monitor-enter p0

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/e/j;->u:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/e/j;->u:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/b/a/a/e/ai;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final c(ILcom/b/a/a/e/b;)V
    .locals 8

    .line 848
    iget-object v0, p0, Lcom/b/a/a/e/j;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/b/a/a/e/q;

    const-string v3, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/b/a/a/e/q;-><init>(Lcom/b/a/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILcom/b/a/a/e/b;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    .line 500
    :try_start_0
    iget-boolean v0, p0, Lcom/b/a/a/e/j;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .locals 2

    .line 404
    sget-object v0, Lcom/b/a/a/e/b;->a:Lcom/b/a/a/e/b;

    sget-object v1, Lcom/b/a/a/e/b;->f:Lcom/b/a/a/e/b;

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/e/j;->a(Lcom/b/a/a/e/b;Lcom/b/a/a/e/b;)V

    return-void
.end method
