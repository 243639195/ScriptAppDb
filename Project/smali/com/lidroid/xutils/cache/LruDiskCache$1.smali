.class Lcom/lidroid/xutils/cache/LruDiskCache$1;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/cache/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/xutils/cache/LruDiskCache;


# direct methods
.method constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/lidroid/xutils/cache/LruDiskCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    monitor-enter v0

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 158
    monitor-exit v0

    return-object v2

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$1(Lcom/lidroid/xutils/cache/LruDiskCache;)V

    .line 161
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache;)V

    .line 163
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$1;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$4(Lcom/lidroid/xutils/cache/LruDiskCache;I)V

    .line 156
    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
