.class public Lcom/iflytek/voiceads/download/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/voiceads/download/b/a/a$a;
.implements Lcom/iflytek/voiceads/download/b/b/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/voiceads/download/b/d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Lcom/iflytek/voiceads/download/b/a;

.field private c:Lcom/iflytek/voiceads/download/d/a;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/voiceads/download/b/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/iflytek/voiceads/download/b/d$a;

.field private f:J

.field private g:J

.field private volatile h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/iflytek/voiceads/download/b/a;Lcom/iflytek/voiceads/download/d/a;Lcom/iflytek/voiceads/download/b/d$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/voiceads/download/b/d;->f:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/iflytek/voiceads/download/b/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/iflytek/voiceads/download/b/d;->a:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/iflytek/voiceads/download/b/d;->b:Lcom/iflytek/voiceads/download/b/a;

    iput-object p3, p0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    iput-object p4, p0, Lcom/iflytek/voiceads/download/b/d;->e:Lcom/iflytek/voiceads/download/b/d$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/voiceads/download/b/d;->d:Ljava/util/List;

    return-void
.end method

.method private f()V
    .locals 6

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/voiceads/download/b/d;->g:J

    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/download/d/a;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/voiceads/download/d/b;

    iget-wide v2, p0, Lcom/iflytek/voiceads/download/b/d;->g:J

    invoke-virtual {v0}, Lcom/iflytek/voiceads/download/d/b;->d()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/iflytek/voiceads/download/b/d;->g:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    iget-wide v2, p0, Lcom/iflytek/voiceads/download/b/d;->g:J

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/voiceads/download/d/a;->b(J)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/download/d/a;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    new-instance v0, Lcom/iflytek/voiceads/download/b/a/a;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/b/d;->b:Lcom/iflytek/voiceads/download/b/a;

    iget-object v2, p0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    invoke-direct {v0, v1, v2, p0}, Lcom/iflytek/voiceads/download/b/a/a;-><init>(Lcom/iflytek/voiceads/download/b/a;Lcom/iflytek/voiceads/download/d/a;Lcom/iflytek/voiceads/download/b/a/a$a;)V

    iget-object v1, p0, Lcom/iflytek/voiceads/download/b/d;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/download/d/a;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/voiceads/download/d/b;

    new-instance v2, Lcom/iflytek/voiceads/download/b/b/a;

    iget-object v3, p0, Lcom/iflytek/voiceads/download/b/d;->b:Lcom/iflytek/voiceads/download/b/a;

    iget-object v4, p0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    invoke-direct {v2, v0, v3, v4, p0}, Lcom/iflytek/voiceads/download/b/b/a;-><init>(Lcom/iflytek/voiceads/download/d/b;Lcom/iflytek/voiceads/download/b/a;Lcom/iflytek/voiceads/download/d/a;Lcom/iflytek/voiceads/download/b/b/a$a;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/d;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/d;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/download/d/a;->a(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/d;->b:Lcom/iflytek/voiceads/download/b/a;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    invoke-interface {v0, v1}, Lcom/iflytek/voiceads/download/b/a;->a(Lcom/iflytek/voiceads/download/d/a;)V

    goto :goto_0
.end method

.method public a(JZ)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/iflytek/voiceads/download/d/a;->a(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/iflytek/voiceads/download/d/a;->a(J)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    invoke-virtual {v2}, Lcom/iflytek/voiceads/download/d/a;->d()J

    move-result-wide v8

    const/4 v12, 0x2

    int-to-long v2, v12

    div-long v14, v8, v2

    const/4 v2, 0x0

    move v10, v2

    :goto_0
    if-ge v10, v12, :cond_2

    int-to-long v2, v10

    mul-long v4, v14, v2

    const/4 v2, 0x1

    if-ne v10, v2, :cond_0

    move-wide v6, v8

    :goto_1
    new-instance v2, Lcom/iflytek/voiceads/download/d/b;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    invoke-virtual {v3}, Lcom/iflytek/voiceads/download/d/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v2 .. v7}, Lcom/iflytek/voiceads/download/d/b;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/iflytek/voiceads/download/b/b/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/voiceads/download/b/d;->b:Lcom/iflytek/voiceads/download/b/a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    move-object/from16 v0, p0

    invoke-direct {v3, v2, v4, v5, v0}, Lcom/iflytek/voiceads/download/b/b/a;-><init>(Lcom/iflytek/voiceads/download/d/b;Lcom/iflytek/voiceads/download/b/a;Lcom/iflytek/voiceads/download/d/a;Lcom/iflytek/voiceads/download/b/b/a$a;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/voiceads/download/b/d;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/voiceads/download/b/d;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_0

    :cond_0
    add-long v2, v4, v14

    const-wide/16 v6, 0x1

    sub-long v6, v2, v6

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/iflytek/voiceads/download/d/b;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    invoke-virtual {v3}, Lcom/iflytek/voiceads/download/d/a;->b()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    invoke-virtual {v6}, Lcom/iflytek/voiceads/download/d/a;->d()J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lcom/iflytek/voiceads/download/d/b;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/iflytek/voiceads/download/b/b/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/voiceads/download/b/d;->b:Lcom/iflytek/voiceads/download/b/a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    move-object/from16 v0, p0

    invoke-direct {v3, v2, v4, v5, v0}, Lcom/iflytek/voiceads/download/b/b/a;-><init>(Lcom/iflytek/voiceads/download/d/b;Lcom/iflytek/voiceads/download/b/a;Lcom/iflytek/voiceads/download/d/a;Lcom/iflytek/voiceads/download/b/b/a$a;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/voiceads/download/b/d;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/voiceads/download/b/d;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    invoke-virtual {v2, v11}, Lcom/iflytek/voiceads/download/d/a;->a(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/iflytek/voiceads/download/d/a;->a(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/voiceads/download/b/d;->b:Lcom/iflytek/voiceads/download/b/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    invoke-interface {v2, v3}, Lcom/iflytek/voiceads/download/b/a;->a(Lcom/iflytek/voiceads/download/d/a;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/d;->e:Lcom/iflytek/voiceads/download/b/d$a;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    invoke-interface {v0, v1}, Lcom/iflytek/voiceads/download/b/d$a;->d(Lcom/iflytek/voiceads/download/d/a;)V

    return-void
.end method

.method public c()V
    .locals 6

    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/voiceads/download/b/d;->f:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-direct {p0}, Lcom/iflytek/voiceads/download/b/d;->f()V

    iget-object v2, p0, Lcom/iflytek/voiceads/download/b/d;->b:Lcom/iflytek/voiceads/download/b/a;

    iget-object v3, p0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    invoke-interface {v2, v3}, Lcom/iflytek/voiceads/download/b/a;->a(Lcom/iflytek/voiceads/download/d/a;)V

    iput-wide v0, p0, Lcom/iflytek/voiceads/download/b/d;->f:J

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    monitor-exit p0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 4

    invoke-direct {p0}, Lcom/iflytek/voiceads/download/b/d;->f()V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/download/d/a;->e()J

    move-result-wide v0

    iget-object v2, p0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    invoke-virtual {v2}, Lcom/iflytek/voiceads/download/d/a;->d()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/download/d/a;->a(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/d;->b:Lcom/iflytek/voiceads/download/b/a;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    invoke-interface {v0, v1}, Lcom/iflytek/voiceads/download/b/a;->a(Lcom/iflytek/voiceads/download/d/a;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/d;->e:Lcom/iflytek/voiceads/download/b/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/d;->e:Lcom/iflytek/voiceads/download/b/d$a;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    invoke-interface {v0, v1}, Lcom/iflytek/voiceads/download/b/d$a;->c(Lcom/iflytek/voiceads/download/d/a;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/download/b/d;->e:Lcom/iflytek/voiceads/download/b/d$a;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/b/d;->c:Lcom/iflytek/voiceads/download/d/a;

    invoke-interface {v0, v1}, Lcom/iflytek/voiceads/download/b/d$a;->d(Lcom/iflytek/voiceads/download/d/a;)V

    return-void
.end method
