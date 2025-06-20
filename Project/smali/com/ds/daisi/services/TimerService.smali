.class public Lcom/ds/daisi/services/TimerService;
.super Lcom/ds/daisi/services/BaseService;
.source "TimerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/services/TimerService$TimerRunnable;
    }
.end annotation


# static fields
.field private static final NETWORK_LOOP_COUNT:I = 0x5

.field private static final NETWORK_LOOP_DELAY_TIME:I = 0xc8

.field private static final NETWORK_LOOP_MESSAGE:I = 0x110


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mTimerRunnable:Lcom/ds/daisi/services/TimerService$TimerRunnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/ds/daisi/services/BaseService;-><init>()V

    .line 59
    new-instance v0, Lcom/ds/daisi/services/TimerService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ds/daisi/services/TimerService$1;-><init>(Lcom/ds/daisi/services/TimerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ds/daisi/services/TimerService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/ds/daisi/services/TimerService;)Landroid/os/Handler;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/ds/daisi/services/TimerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/ds/daisi/services/TimerService;->mTimerRunnable:Lcom/ds/daisi/services/TimerService$TimerRunnable;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/ds/daisi/services/TimerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ds/daisi/services/TimerService;->mTimerRunnable:Lcom/ds/daisi/services/TimerService$TimerRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/ds/daisi/services/TimerService;->mTimerRunnable:Lcom/ds/daisi/services/TimerService$TimerRunnable;

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 24
    new-instance v0, Lcom/ds/daisi/services/TimerService$TimerRunnable;

    invoke-direct {v0, p0}, Lcom/ds/daisi/services/TimerService$TimerRunnable;-><init>(Lcom/ds/daisi/services/TimerService;)V

    iput-object v0, p0, Lcom/ds/daisi/services/TimerService;->mTimerRunnable:Lcom/ds/daisi/services/TimerService$TimerRunnable;

    .line 25
    iget-object v0, p0, Lcom/ds/daisi/services/TimerService;->mTimerRunnable:Lcom/ds/daisi/services/TimerService$TimerRunnable;

    invoke-static {v0}, Lcom/ds/daisi/services/TimerService$TimerRunnable;->access$000(Lcom/ds/daisi/services/TimerService$TimerRunnable;)V

    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/ds/daisi/services/BaseService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
