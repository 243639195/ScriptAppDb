.class Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;
.super Ljava/lang/Object;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReleaseManager"
.end annotation


# instance fields
.field private isEncodeComplete:Z

.field private isFailed:Z

.field private isReleased:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isComplete(Z)Z
    .locals 1

    .line 641
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->isFailed:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->isEncodeComplete:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->isReleased:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method declared-synchronized onEncodeComplete()Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 625
    :try_start_0
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->isEncodeComplete:Z

    const/4 v0, 0x0

    .line 626
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->isComplete(Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 624
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onFailed()Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 630
    :try_start_0
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->isFailed:Z

    const/4 v0, 0x0

    .line 631
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->isComplete(Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 629
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized release(Z)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 620
    :try_start_0
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->isReleased:Z

    .line 621
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->isComplete(Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 619
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 635
    :try_start_0
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->isEncodeComplete:Z

    .line 636
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->isReleased:Z

    .line 637
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->isFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 634
    monitor-exit p0

    throw v0
.end method
