.class final Lcom/ds/daisi/zbar/decode/DecodeThread;
.super Ljava/lang/Thread;
.source "DecodeThread.java"


# instance fields
.field activity:Lcom/ds/daisi/activity/SweepCodeActivity;

.field private handler:Landroid/os/Handler;

.field private final handlerInitLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/ds/daisi/activity/SweepCodeActivity;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ds/daisi/zbar/decode/DecodeThread;->activity:Lcom/ds/daisi/activity/SweepCodeActivity;

    .line 21
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/ds/daisi/zbar/decode/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 1

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/ds/daisi/zbar/decode/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :catch_0
    iget-object v0, p0, Lcom/ds/daisi/zbar/decode/DecodeThread;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public run()V
    .locals 2

    .line 35
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 36
    new-instance v0, Lcom/ds/daisi/zbar/decode/DecodeHandler;

    iget-object v1, p0, Lcom/ds/daisi/zbar/decode/DecodeThread;->activity:Lcom/ds/daisi/activity/SweepCodeActivity;

    invoke-direct {v0, v1}, Lcom/ds/daisi/zbar/decode/DecodeHandler;-><init>(Lcom/ds/daisi/activity/SweepCodeActivity;)V

    iput-object v0, p0, Lcom/ds/daisi/zbar/decode/DecodeThread;->handler:Landroid/os/Handler;

    .line 37
    iget-object v0, p0, Lcom/ds/daisi/zbar/decode/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 38
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
