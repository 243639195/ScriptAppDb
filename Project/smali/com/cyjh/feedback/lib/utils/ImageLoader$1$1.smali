.class Lcom/cyjh/feedback/lib/utils/ImageLoader$1$1;
.super Landroid/os/Handler;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/feedback/lib/utils/ImageLoader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cyjh/feedback/lib/utils/ImageLoader$1;


# direct methods
.method constructor <init>(Lcom/cyjh/feedback/lib/utils/ImageLoader$1;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader$1$1;->this$1:Lcom/cyjh/feedback/lib/utils/ImageLoader$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader$1$1;->this$1:Lcom/cyjh/feedback/lib/utils/ImageLoader$1;

    iget-object p1, p1, Lcom/cyjh/feedback/lib/utils/ImageLoader$1;->this$0:Lcom/cyjh/feedback/lib/utils/ImageLoader;

    invoke-static {p1}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->access$200(Lcom/cyjh/feedback/lib/utils/ImageLoader;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader$1$1;->this$1:Lcom/cyjh/feedback/lib/utils/ImageLoader$1;

    iget-object v0, v0, Lcom/cyjh/feedback/lib/utils/ImageLoader$1;->this$0:Lcom/cyjh/feedback/lib/utils/ImageLoader;

    invoke-static {v0}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->access$100(Lcom/cyjh/feedback/lib/utils/ImageLoader;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 102
    :try_start_0
    iget-object p1, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader$1$1;->this$1:Lcom/cyjh/feedback/lib/utils/ImageLoader$1;

    iget-object p1, p1, Lcom/cyjh/feedback/lib/utils/ImageLoader$1;->this$0:Lcom/cyjh/feedback/lib/utils/ImageLoader;

    invoke-static {p1}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->access$300(Lcom/cyjh/feedback/lib/utils/ImageLoader;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 104
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
