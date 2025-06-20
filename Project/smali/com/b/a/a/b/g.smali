.class public final Lcom/b/a/a/b/g;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# static fields
.field static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/b/a/a;

.field private c:Lcom/b/a/aw;

.field private final d:Lcom/b/a/n;

.field private final e:Ljava/lang/Object;

.field private final f:Lcom/b/a/a/b/f;

.field private g:I

.field private h:Lcom/b/a/a/b/c;

.field private i:Z

.field private j:Z

.field private k:Lcom/b/a/a/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/b/a/n;Lcom/b/a/a;Ljava/lang/Object;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    .line 88
    iput-object p2, p0, Lcom/b/a/a/b/g;->a:Lcom/b/a/a;

    .line 89
    new-instance p1, Lcom/b/a/a/b/f;

    invoke-direct {p0}, Lcom/b/a/a/b/g;->f()Lcom/b/a/a/b/d;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/b/a/a/b/f;-><init>(Lcom/b/a/a;Lcom/b/a/a/b/d;)V

    iput-object p1, p0, Lcom/b/a/a/b/g;->f:Lcom/b/a/a/b/f;

    .line 90
    iput-object p3, p0, Lcom/b/a/a/b/g;->e:Ljava/lang/Object;

    return-void
.end method

.method private a(IIIZ)Lcom/b/a/a/b/c;
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-boolean v1, p0, Lcom/b/a/a/b/g;->i:Z

    if-eqz v1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "released"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/b/a/a/b/g;->k:Lcom/b/a/a/c/c;

    if-eqz v1, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "codec != null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 152
    :cond_1
    iget-boolean v1, p0, Lcom/b/a/a/b/g;->j:Z

    if-eqz v1, :cond_2

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    if-eqz v1, :cond_3

    .line 156
    iget-boolean v2, v1, Lcom/b/a/a/b/c;->a:Z

    if-nez v2, :cond_3

    .line 157
    monitor-exit v0

    return-object v1

    .line 161
    :cond_3
    sget-object v1, Lcom/b/a/a/a;->a:Lcom/b/a/a/a;

    iget-object v2, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    iget-object v3, p0, Lcom/b/a/a/b/g;->a:Lcom/b/a/a;

    invoke-virtual {v1, v2, v3, p0}, Lcom/b/a/a/a;->a(Lcom/b/a/n;Lcom/b/a/a;Lcom/b/a/a/b/g;)Lcom/b/a/a/b/c;

    .line 162
    iget-object v1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    if-eqz v1, :cond_4

    .line 163
    iget-object p1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    monitor-exit v0

    return-object p1

    .line 166
    :cond_4
    iget-object v1, p0, Lcom/b/a/a/b/g;->c:Lcom/b/a/aw;

    .line 167
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_5

    .line 171
    iget-object v0, p0, Lcom/b/a/a/b/g;->f:Lcom/b/a/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/a/b/f;->b()Lcom/b/a/aw;

    move-result-object v1

    .line 177
    :cond_5
    iget-object v2, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    monitor-enter v2

    .line 178
    :try_start_1
    iput-object v1, p0, Lcom/b/a/a/b/g;->c:Lcom/b/a/aw;

    const/4 v0, 0x0

    .line 179
    iput v0, p0, Lcom/b/a/a/b/g;->g:I

    .line 180
    new-instance v0, Lcom/b/a/a/b/c;

    iget-object v3, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    invoke-direct {v0, v3, v1}, Lcom/b/a/a/b/c;-><init>(Lcom/b/a/n;Lcom/b/a/aw;)V

    .line 181
    invoke-virtual {p0, v0}, Lcom/b/a/a/b/g;->a(Lcom/b/a/a/b/c;)V

    .line 182
    iget-boolean v1, p0, Lcom/b/a/a/b/g;->j:Z

    if-eqz v1, :cond_6

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 183
    :cond_6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 186
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/b/a/a/b/c;->a(IIIZ)V

    .line 187
    invoke-direct {p0}, Lcom/b/a/a/b/g;->f()Lcom/b/a/a/b/d;

    move-result-object p1

    invoke-virtual {v0}, Lcom/b/a/a/b/c;->a()Lcom/b/a/aw;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/b/a/a/b/d;->b(Lcom/b/a/aw;)V

    const/4 p1, 0x0

    .line 190
    iget-object p2, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    monitor-enter p2

    .line 192
    :try_start_2
    sget-object p3, Lcom/b/a/a/a;->a:Lcom/b/a/a/a;

    iget-object p4, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    invoke-virtual {p3, p4, v0}, Lcom/b/a/a/a;->b(Lcom/b/a/n;Lcom/b/a/a/b/c;)V

    .line 196
    invoke-virtual {v0}, Lcom/b/a/a/b/c;->d()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 197
    sget-object p1, Lcom/b/a/a/a;->a:Lcom/b/a/a/a;

    iget-object p3, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    iget-object p4, p0, Lcom/b/a/a/b/g;->a:Lcom/b/a/a;

    invoke-virtual {p1, p3, p4, p0}, Lcom/b/a/a/a;->b(Lcom/b/a/n;Lcom/b/a/a;Lcom/b/a/a/b/g;)Ljava/net/Socket;

    move-result-object p1

    .line 198
    iget-object v0, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    .line 200
    :cond_7
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    invoke-static {p1}, Lcom/b/a/a/c;->a(Ljava/net/Socket;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 200
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 183
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 167
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method private a(IIIZZ)Lcom/b/a/a/b/c;
    .locals 3

    .line 121
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/b/a/a/b/g;->a(IIIZ)Lcom/b/a/a/b/c;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    monitor-enter v1

    .line 126
    :try_start_0
    iget v2, v0, Lcom/b/a/a/b/c;->b:I

    if-nez v2, :cond_0

    .line 127
    monitor-exit v1

    return-object v0

    .line 129
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-virtual {v0, p5}, Lcom/b/a/a/b/c;->a(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/b/a/a/b/g;->d()V

    goto :goto_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    .line 129
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private a(ZZZ)Ljava/net/Socket;
    .locals 1

    .line 259
    sget-boolean v0, Lcom/b/a/a/b/g;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 262
    iput-object v0, p0, Lcom/b/a/a/b/g;->k:Lcom/b/a/a/c/c;

    :cond_1
    const/4 p3, 0x1

    if-eqz p2, :cond_2

    .line 265
    iput-boolean p3, p0, Lcom/b/a/a/b/g;->i:Z

    .line 268
    :cond_2
    iget-object p2, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    if-eqz p2, :cond_6

    if-eqz p1, :cond_3

    .line 270
    iget-object p1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    iput-boolean p3, p1, Lcom/b/a/a/b/c;->a:Z

    .line 272
    :cond_3
    iget-object p1, p0, Lcom/b/a/a/b/g;->k:Lcom/b/a/a/c/c;

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/b/a/a/b/g;->i:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    iget-boolean p1, p1, Lcom/b/a/a/b/c;->a:Z

    if-eqz p1, :cond_6

    .line 273
    :cond_4
    iget-object p1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    invoke-direct {p0, p1}, Lcom/b/a/a/b/g;->c(Lcom/b/a/a/b/c;)V

    .line 274
    iget-object p1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    iget-object p1, p1, Lcom/b/a/a/b/c;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 275
    iget-object p1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p1, Lcom/b/a/a/b/c;->e:J

    .line 276
    sget-object p1, Lcom/b/a/a/a;->a:Lcom/b/a/a/a;

    iget-object p2, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    iget-object p3, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    invoke-virtual {p1, p2, p3}, Lcom/b/a/a/a;->a(Lcom/b/a/n;Lcom/b/a/a/b/c;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 277
    iget-object p1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    invoke-virtual {p1}, Lcom/b/a/a/b/c;->b()Ljava/net/Socket;

    move-result-object p1

    goto :goto_0

    :cond_5
    move-object p1, v0

    .line 280
    :goto_0
    iput-object v0, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    goto :goto_1

    :cond_6
    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method private c(Lcom/b/a/a/b/c;)V
    .locals 3

    .line 349
    iget-object v0, p1, Lcom/b/a/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 350
    iget-object v2, p1, Lcom/b/a/a/b/c;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 351
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 352
    iget-object p1, p1, Lcom/b/a/a/b/c;->d:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private f()Lcom/b/a/a/b/d;
    .locals 2

    .line 227
    sget-object v0, Lcom/b/a/a/a;->a:Lcom/b/a/a/a;

    iget-object v1, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    invoke-virtual {v0, v1}, Lcom/b/a/a/a;->a(Lcom/b/a/n;)Lcom/b/a/a/b/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/b/a/a/c/c;
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    monitor-enter v0

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/b/a/a/b/g;->k:Lcom/b/a/a/c/c;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 223
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Lcom/b/a/ai;Z)Lcom/b/a/a/c/c;
    .locals 6

    .line 94
    invoke-virtual {p1}, Lcom/b/a/ai;->a()I

    move-result v1

    .line 95
    invoke-virtual {p1}, Lcom/b/a/ai;->b()I

    move-result v2

    .line 96
    invoke-virtual {p1}, Lcom/b/a/ai;->c()I

    move-result v3

    .line 97
    invoke-virtual {p1}, Lcom/b/a/ai;->q()Z

    move-result v4

    move-object v0, p0

    move v5, p2

    .line 100
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/b/a/a/b/g;->a(IIIZZ)Lcom/b/a/a/b/c;

    move-result-object p2

    .line 102
    invoke-virtual {p2, p1, p0}, Lcom/b/a/a/b/c;->a(Lcom/b/a/ai;Lcom/b/a/a/b/g;)Lcom/b/a/a/c/c;

    move-result-object p1

    .line 104
    iget-object p2, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    monitor-enter p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :try_start_1
    iput-object p1, p0, Lcom/b/a/a/b/g;->k:Lcom/b/a/a/c/c;

    .line 106
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    .line 107
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 109
    new-instance p2, Lcom/b/a/a/b/e;

    invoke-direct {p2, p1}, Lcom/b/a/a/b/e;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public final a(Lcom/b/a/a/b/c;)V
    .locals 2

    .line 340
    sget-boolean v0, Lcom/b/a/a/b/g;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 343
    :cond_1
    iput-object p1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    .line 344
    iget-object p1, p1, Lcom/b/a/a/b/c;->d:Ljava/util/List;

    new-instance v0, Lcom/b/a/a/b/h;

    iget-object v1, p0, Lcom/b/a/a/b/g;->e:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/b/a/a/b/h;-><init>(Lcom/b/a/a/b/g;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/io/IOException;)V
    .locals 6

    .line 305
    iget-object v0, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    monitor-enter v0

    .line 306
    :try_start_0
    instance-of v1, p1, Lcom/b/a/a/e/am;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 307
    check-cast p1, Lcom/b/a/a/e/am;

    .line 308
    iget-object v1, p1, Lcom/b/a/a/e/am;->a:Lcom/b/a/a/e/b;

    sget-object v5, Lcom/b/a/a/e/b;->e:Lcom/b/a/a/e/b;

    if-ne v1, v5, :cond_0

    .line 309
    iget v1, p0, Lcom/b/a/a/b/g;->g:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/b/a/a/b/g;->g:I

    .line 313
    :cond_0
    iget-object p1, p1, Lcom/b/a/a/e/am;->a:Lcom/b/a/a/e/b;

    sget-object v1, Lcom/b/a/a/e/b;->e:Lcom/b/a/a/e/b;

    if-ne p1, v1, :cond_1

    iget p1, p0, Lcom/b/a/a/b/g;->g:I

    if-le p1, v4, :cond_6

    .line 315
    :cond_1
    iput-object v2, p0, Lcom/b/a/a/b/g;->c:Lcom/b/a/aw;

    goto :goto_0

    .line 317
    :cond_2
    iget-object v1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    .line 318
    invoke-virtual {v1}, Lcom/b/a/a/b/c;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, p1, Lcom/b/a/a/e/a;

    if-eqz v1, :cond_6

    .line 322
    :cond_3
    iget-object v1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    iget v1, v1, Lcom/b/a/a/b/c;->b:I

    if-nez v1, :cond_5

    .line 323
    iget-object v1, p0, Lcom/b/a/a/b/g;->c:Lcom/b/a/aw;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 324
    iget-object v1, p0, Lcom/b/a/a/b/g;->f:Lcom/b/a/a/b/f;

    iget-object v5, p0, Lcom/b/a/a/b/g;->c:Lcom/b/a/aw;

    invoke-virtual {v1, v5, p1}, Lcom/b/a/a/b/f;->a(Lcom/b/a/aw;Ljava/io/IOException;)V

    .line 326
    :cond_4
    iput-object v2, p0, Lcom/b/a/a/b/g;->c:Lcom/b/a/aw;

    :cond_5
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    .line 329
    :goto_1
    invoke-direct {p0, p1, v3, v4}, Lcom/b/a/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object p1

    .line 330
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    invoke-static {p1}, Lcom/b/a/a/c;->a(Ljava/net/Socket;)V

    return-void

    :catchall_0
    move-exception p1

    .line 330
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(ZLcom/b/a/a/c/c;)V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    monitor-enter v0

    if-eqz p2, :cond_2

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/b/a/a/b/g;->k:Lcom/b/a/a/c/c;

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    iget v2, v1, Lcom/b/a/a/b/c;->b:I

    add-int/2addr v2, p2

    iput v2, v1, Lcom/b/a/a/b/c;->b:I

    :cond_1
    const/4 v1, 0x0

    .line 215
    invoke-direct {p0, p1, v1, p2}, Lcom/b/a/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object p1

    .line 216
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-static {p1}, Lcom/b/a/a/c;->a(Ljava/net/Socket;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 210
    :cond_2
    :goto_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/a/a/b/g;->k:Lcom/b/a/a/c/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 216
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b()Lcom/b/a/a/b/c;
    .locals 1

    monitor-enter p0

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/b/a/a/b/c;)Ljava/net/Socket;
    .locals 3

    .line 368
    sget-boolean v0, Lcom/b/a/a/b/g;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/b/g;->k:Lcom/b/a/a/c/c;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    iget-object v0, v0, Lcom/b/a/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    iget-object v0, v0, Lcom/b/a/a/b/c;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 373
    invoke-direct {p0, v1, v2, v2}, Lcom/b/a/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 376
    iput-object p1, p0, Lcom/b/a/a/b/g;->h:Lcom/b/a/a/b/c;

    .line 377
    iget-object p1, p1, Lcom/b/a/a/b/c;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 369
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final c()V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 237
    :try_start_0
    invoke-direct {p0, v2, v1, v2}, Lcom/b/a/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 238
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-static {v1}, Lcom/b/a/a/c;->a(Ljava/net/Socket;)V

    return-void

    :catchall_0
    move-exception v1

    .line 238
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final d()V
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/b/a/a/b/g;->d:Lcom/b/a/n;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 246
    :try_start_0
    invoke-direct {p0, v1, v2, v2}, Lcom/b/a/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 247
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-static {v1}, Lcom/b/a/a/c;->a(Ljava/net/Socket;)V

    return-void

    :catchall_0
    move-exception v1

    .line 247
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final e()Z
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/b/a/a/b/g;->c:Lcom/b/a/aw;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/b/a/a/b/g;->f:Lcom/b/a/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/a/b/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 387
    invoke-virtual {p0}, Lcom/b/a/a/b/g;->b()Lcom/b/a/a/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0}, Lcom/b/a/a/b/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/b/g;->a:Lcom/b/a/a;

    invoke-virtual {v0}, Lcom/b/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
