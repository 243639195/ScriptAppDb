.class public final Lcom/b/a/a/a/g;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field final a:Lcom/b/a/a/a/h;

.field final synthetic b:Lcom/b/a/a/a/f;

.field private c:Z


# virtual methods
.method public final a()V
    .locals 2

    .line 933
    iget-object v0, p0, Lcom/b/a/a/a/g;->b:Lcom/b/a/a/a/f;

    monitor-enter v0

    .line 934
    :try_start_0
    iget-boolean v1, p0, Lcom/b/a/a/a/g;->c:Z

    if-eqz v1, :cond_0

    .line 935
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 937
    :cond_0
    iget-object v1, p0, Lcom/b/a/a/a/g;->a:Lcom/b/a/a/a/h;

    iget-object v1, v1, Lcom/b/a/a/a/h;->f:Lcom/b/a/a/a/g;

    if-ne v1, p0, :cond_1

    .line 938
    iget-object v1, p0, Lcom/b/a/a/a/g;->b:Lcom/b/a/a/a/f;

    invoke-virtual {v1, p0}, Lcom/b/a/a/a/f;->a(Lcom/b/a/a/a/g;)V

    :cond_1
    const/4 v1, 0x1

    .line 940
    iput-boolean v1, p0, Lcom/b/a/a/a/g;->c:Z

    .line 941
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
