.class Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "LruDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;


# direct methods
.method private constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Ljava/io/OutputStream;)V
    .locals 0

    .line 923
    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    .line 924
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Ljava/io/OutputStream;Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;)V
    .locals 0

    .line 923
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 949
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 951
    :catch_0
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    return-void
.end method

.method public flush()V
    .locals 2

    .line 958
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 960
    :catch_0
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    return-void
.end method

.method public write(I)V
    .locals 1

    .line 930
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 932
    :catch_0
    iget-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 939
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 940
    iget-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 942
    :catch_0
    iget-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    return-void
.end method
