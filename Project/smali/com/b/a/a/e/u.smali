.class final Lcom/b/a/a/e/u;
.super Lcom/b/a/a/b;
.source "Http2Connection.java"

# interfaces
.implements Lcom/b/a/a/e/aa;


# instance fields
.field final a:Lcom/b/a/a/e/y;

.field final synthetic c:Lcom/b/a/a/e/j;


# direct methods
.method constructor <init>(Lcom/b/a/a/e/j;Lcom/b/a/a/e/y;)V
    .locals 3

    .line 556
    iput-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    .line 557
    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/b/a/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    iput-object p2, p0, Lcom/b/a/a/e/u;->a:Lcom/b/a/a/e/y;

    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 5

    if-nez p1, :cond_0

    .line 741
    iget-object v0, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    monitor-enter v0

    .line 742
    :try_start_0
    iget-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-wide v1, p1, Lcom/b/a/a/e/j;->k:J

    const/4 v3, 0x0

    add-long v3, v1, p2

    iput-wide v3, p1, Lcom/b/a/a/e/j;->k:J

    .line 743
    iget-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 744
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    invoke-virtual {v0, p1}, Lcom/b/a/a/e/j;->a(I)Lcom/b/a/a/e/ab;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 748
    monitor-enter p1

    .line 749
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lcom/b/a/a/e/ab;->a(J)V

    .line 750
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_1
    return-void
.end method

.method public final a(ILcom/b/a/a/e/b;)V
    .locals 1

    .line 648
    invoke-static {p1}, Lcom/b/a/a/e/j;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/a/e/j;->c(ILcom/b/a/a/e/b;)V

    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    invoke-virtual {v0, p1}, Lcom/b/a/a/e/j;->b(I)Lcom/b/a/a/e/ab;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 654
    invoke-virtual {p1, p2}, Lcom/b/a/a/e/ab;->c(Lcom/b/a/a/e/b;)V

    :cond_1
    return-void
.end method

.method public final a(ILcom/b/b/i;)V
    .locals 4

    .line 720
    invoke-virtual {p2}, Lcom/b/b/i;->g()I

    .line 725
    iget-object p2, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    monitor-enter p2

    .line 726
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object v0, v0, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object v1, v1, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/b/a/a/e/ab;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/a/e/ab;

    .line 727
    iget-object v1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/b/a/a/e/j;->h:Z

    .line 728
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    array-length p2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, v0, v1

    .line 3091
    iget v3, v2, Lcom/b/a/a/e/ab;->c:I

    if-le v3, p1, :cond_0

    .line 732
    invoke-virtual {v2}, Lcom/b/a/a/e/ab;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 733
    sget-object v3, Lcom/b/a/a/e/b;->e:Lcom/b/a/a/e/b;

    invoke-virtual {v2, v3}, Lcom/b/a/a/e/ab;->c(Lcom/b/a/a/e/b;)V

    .line 734
    iget-object v3, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    .line 4091
    iget v2, v2, Lcom/b/a/a/e/ab;->c:I

    .line 734
    invoke-virtual {v3, v2}, Lcom/b/a/a/e/j;->b(I)Lcom/b/a/a/e/ab;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 728
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/b/a/a/e/c;",
            ">;)V"
        }
    .end annotation

    .line 762
    iget-object v0, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/a/e/j;->a(ILjava/util/List;)V

    return-void
.end method

.method public final a(Lcom/b/a/a/e/al;)V
    .locals 12

    .line 661
    iget-object v0, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    monitor-enter v0

    .line 662
    :try_start_0
    iget-object v1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object v1, v1, Lcom/b/a/a/e/j;->m:Lcom/b/a/a/e/al;

    invoke-virtual {v1}, Lcom/b/a/a/e/al;->d()I

    move-result v1

    .line 664
    iget-object v2, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object v2, v2, Lcom/b/a/a/e/j;->m:Lcom/b/a/a/e/al;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0xa

    if-ge v4, v5, :cond_1

    .line 1124
    invoke-virtual {p1, v4}, Lcom/b/a/a/e/al;->a(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1125
    invoke-virtual {p1, v4}, Lcom/b/a/a/e/al;->b(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/b/a/a/e/al;->a(II)Lcom/b/a/a/e/al;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1693
    :cond_1
    sget-object v2, Lcom/b/a/a/e/j;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/b/a/a/e/x;

    const-string v5, "OkHttp %s ACK Settings"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object v8, v8, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-direct {v4, p0, v5, v7, p1}, Lcom/b/a/a/e/x;-><init>(Lcom/b/a/a/e/u;Ljava/lang/String;[Ljava/lang/Object;Lcom/b/a/a/e/al;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 666
    iget-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object p1, p1, Lcom/b/a/a/e/j;->m:Lcom/b/a/a/e/al;

    invoke-virtual {p1}, Lcom/b/a/a/e/al;->d()I

    move-result p1

    const/4 v2, -0x1

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_4

    sub-int/2addr p1, v1

    int-to-long v1, p1

    .line 669
    iget-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-boolean p1, p1, Lcom/b/a/a/e/j;->n:Z

    if-nez p1, :cond_3

    .line 670
    iget-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    .line 2299
    iget-wide v8, p1, Lcom/b/a/a/e/j;->k:J

    const/4 v10, 0x0

    add-long v10, v8, v1

    iput-wide v10, p1, Lcom/b/a/a/e/j;->k:J

    cmp-long v8, v1, v4

    if-lez v8, :cond_2

    .line 2300
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 671
    :cond_2
    iget-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iput-boolean v6, p1, Lcom/b/a/a/e/j;->n:Z

    .line 673
    :cond_3
    iget-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object p1, p1, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 674
    iget-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object p1, p1, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object v7, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object v7, v7, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    new-array v7, v7, [Lcom/b/a/a/e/ab;

    invoke-interface {p1, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, [Lcom/b/a/a/e/ab;

    goto :goto_1

    :cond_4
    move-wide v1, v4

    .line 677
    :cond_5
    :goto_1
    sget-object p1, Lcom/b/a/a/e/j;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/b/a/a/e/w;

    const-string v9, "OkHttp %s settings"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object v10, v10, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    aput-object v10, v6, v3

    invoke-direct {v8, p0, v9, v6}, Lcom/b/a/a/e/w;-><init>(Lcom/b/a/a/e/u;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 682
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_6

    cmp-long p1, v1, v4

    if-eqz p1, :cond_6

    .line 684
    array-length p1, v7

    :goto_2
    if-ge v3, p1, :cond_6

    aget-object v0, v7, v3

    .line 685
    monitor-enter v0

    .line 686
    :try_start_1
    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/e/ab;->a(J)V

    .line 687
    monitor-exit v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_6
    return-void

    :catchall_1
    move-exception p1

    .line 682
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final a(ZII)V
    .locals 7

    if-eqz p1, :cond_1

    .line 709
    iget-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    invoke-virtual {p1, p2}, Lcom/b/a/a/e/j;->c(I)Lcom/b/a/a/e/ai;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 711
    invoke-virtual {p1}, Lcom/b/a/a/e/ai;->b()V

    :cond_0
    return-void

    .line 715
    :cond_1
    iget-object v1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    .line 2351
    sget-object p1, Lcom/b/a/a/e/j;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/b/a/a/e/m;

    const-string v2, "OkHttp %s ping %08x%08x"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v4, v1, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x1

    .line 2352
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    move-object v0, v6

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/b/a/a/e/m;-><init>(Lcom/b/a/a/e/j;Ljava/lang/String;[Ljava/lang/Object;II)V

    .line 2351
    invoke-interface {p1, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(ZILcom/b/b/h;I)V
    .locals 1

    .line 584
    invoke-static {p2}, Lcom/b/a/a/e/j;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    invoke-virtual {v0, p2, p3, p4, p1}, Lcom/b/a/a/e/j;->a(ILcom/b/b/h;IZ)V

    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    invoke-virtual {v0, p2}, Lcom/b/a/a/e/j;->a(I)Lcom/b/a/a/e/ab;

    move-result-object v0

    if-nez v0, :cond_1

    .line 590
    iget-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    sget-object v0, Lcom/b/a/a/e/b;->b:Lcom/b/a/a/e/b;

    invoke-virtual {p1, p2, v0}, Lcom/b/a/a/e/j;->a(ILcom/b/a/a/e/b;)V

    int-to-long p1, p4

    .line 591
    invoke-interface {p3, p1, p2}, Lcom/b/b/h;->f(J)V

    return-void

    .line 594
    :cond_1
    invoke-virtual {v0, p3, p4}, Lcom/b/a/a/e/ab;->a(Lcom/b/b/h;I)V

    if-eqz p1, :cond_2

    .line 596
    invoke-virtual {v0}, Lcom/b/a/a/e/ab;->f()V

    :cond_2
    return-void
.end method

.method public final a(ZILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/b/a/a/e/c;",
            ">;)V"
        }
    .end annotation

    .line 602
    invoke-static {p2}, Lcom/b/a/a/e/j;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    invoke-virtual {v0, p2, p3, p1}, Lcom/b/a/a/e/j;->a(ILjava/util/List;Z)V

    return-void

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    monitor-enter v0

    .line 609
    :try_start_0
    iget-object v1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-boolean v1, v1, Lcom/b/a/a/e/j;->h:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    .line 611
    :cond_1
    iget-object v1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    invoke-virtual {v1, p2}, Lcom/b/a/a/e/j;->a(I)Lcom/b/a/a/e/ab;

    move-result-object v1

    if-nez v1, :cond_4

    .line 615
    iget-object v1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget v1, v1, Lcom/b/a/a/e/j;->f:I

    if-gt p2, v1, :cond_2

    monitor-exit v0

    return-void

    .line 618
    :cond_2
    rem-int/lit8 v1, p2, 0x2

    iget-object v2, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget v2, v2, Lcom/b/a/a/e/j;->g:I

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    if-ne v1, v2, :cond_3

    monitor-exit v0

    return-void

    .line 621
    :cond_3
    new-instance v1, Lcom/b/a/a/e/ab;

    iget-object v6, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    const/4 v7, 0x0

    move-object v4, v1

    move v5, p2

    move v8, p1

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/b/a/a/e/ab;-><init>(ILcom/b/a/a/e/j;ZZLjava/util/List;)V

    .line 623
    iget-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iput p2, p1, Lcom/b/a/a/e/j;->f:I

    .line 624
    iget-object p1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object p1, p1, Lcom/b/a/a/e/j;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    sget-object p1, Lcom/b/a/a/e/j;->a:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/b/a/a/e/v;

    const-string v2, "OkHttp %s stream %d"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    iget-object v5, v5, Lcom/b/a/a/e/j;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v4

    invoke-direct {p3, p0, v2, v3, v1}, Lcom/b/a/a/e/v;-><init>(Lcom/b/a/a/e/u;Ljava/lang/String;[Ljava/lang/Object;Lcom/b/a/a/e/ab;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 638
    monitor-exit v0

    return-void

    .line 640
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    invoke-virtual {v1, p3}, Lcom/b/a/a/e/ab;->a(Ljava/util/List;)V

    if-eqz p1, :cond_5

    .line 644
    invoke-virtual {v1}, Lcom/b/a/a/e/ab;->f()V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 640
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected final b()V
    .locals 5

    .line 562
    sget-object v0, Lcom/b/a/a/e/b;->c:Lcom/b/a/a/e/b;

    .line 563
    sget-object v1, Lcom/b/a/a/e/b;->c:Lcom/b/a/a/e/b;

    .line 565
    :try_start_0
    iget-object v2, p0, Lcom/b/a/a/e/u;->a:Lcom/b/a/a/e/y;

    invoke-virtual {v2, p0}, Lcom/b/a/a/e/y;->a(Lcom/b/a/a/e/aa;)V

    .line 566
    :cond_0
    iget-object v2, p0, Lcom/b/a/a/e/u;->a:Lcom/b/a/a/e/y;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Lcom/b/a/a/e/y;->a(ZLcom/b/a/a/e/aa;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 568
    sget-object v2, Lcom/b/a/a/e/b;->a:Lcom/b/a/a/e/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    :try_start_1
    sget-object v0, Lcom/b/a/a/e/b;->f:Lcom/b/a/a/e/b;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 575
    :try_start_2
    iget-object v1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/b/a/a/e/j;->a(Lcom/b/a/a/e/b;Lcom/b/a/a/e/b;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 578
    :catch_0
    iget-object v0, p0, Lcom/b/a/a/e/u;->a:Lcom/b/a/a/e/y;

    invoke-static {v0}, Lcom/b/a/a/c;->a(Ljava/io/Closeable;)V

    return-void

    :catch_1
    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    .line 571
    :catch_2
    :goto_1
    :try_start_3
    sget-object v2, Lcom/b/a/a/e/b;->b:Lcom/b/a/a/e/b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 572
    :try_start_4
    sget-object v0, Lcom/b/a/a/e/b;->b:Lcom/b/a/a/e/b;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 575
    :try_start_5
    iget-object v1, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    :goto_2
    :try_start_6
    iget-object v3, p0, Lcom/b/a/a/e/u;->c:Lcom/b/a/a/e/j;

    invoke-virtual {v3, v0, v1}, Lcom/b/a/a/e/j;->a(Lcom/b/a/a/e/b;Lcom/b/a/a/e/b;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 578
    :catch_3
    iget-object v0, p0, Lcom/b/a/a/e/u;->a:Lcom/b/a/a/e/y;

    invoke-static {v0}, Lcom/b/a/a/c;->a(Ljava/io/Closeable;)V

    throw v2
.end method
