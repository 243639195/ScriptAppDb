.class Lcom/ds/daisi/services/TimerService$TimerRunnable;
.super Ljava/lang/Object;
.source "TimerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/services/TimerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimerRunnable"
.end annotation


# instance fields
.field private count:I

.field final synthetic this$0:Lcom/ds/daisi/services/TimerService;


# direct methods
.method constructor <init>(Lcom/ds/daisi/services/TimerService;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/ds/daisi/services/TimerService$TimerRunnable;->this$0:Lcom/ds/daisi/services/TimerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/ds/daisi/services/TimerService$TimerRunnable;->count:I

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/services/TimerService$TimerRunnable;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/ds/daisi/services/TimerService$TimerRunnable;->onStart()V

    return-void
.end method

.method private onStart()V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/ds/daisi/services/TimerService$TimerRunnable;->this$0:Lcom/ds/daisi/services/TimerService;

    invoke-static {v0}, Lcom/ds/daisi/services/TimerService;->access$100(Lcom/ds/daisi/services/TimerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 36
    iget-object v0, p0, Lcom/ds/daisi/services/TimerService$TimerRunnable;->this$0:Lcom/ds/daisi/services/TimerService;

    invoke-static {v0}, Lcom/ds/daisi/services/TimerService;->access$100(Lcom/ds/daisi/services/TimerService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 41
    iget-object v0, p0, Lcom/ds/daisi/services/TimerService$TimerRunnable;->this$0:Lcom/ds/daisi/services/TimerService;

    invoke-static {v0}, Lcom/ds/daisi/util/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    const-wide/16 v1, 0xc8

    if-eqz v0, :cond_1

    .line 42
    iget v0, p0, Lcom/ds/daisi/services/TimerService$TimerRunnable;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ds/daisi/services/TimerService$TimerRunnable;->count:I

    const-string v0, "zzz"

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TimerService--run--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/ds/daisi/services/TimerService$TimerRunnable;->count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget v0, p0, Lcom/ds/daisi/services/TimerService$TimerRunnable;->count:I

    const/4 v3, 0x5

    if-gt v0, v3, :cond_0

    .line 45
    iget-object v0, p0, Lcom/ds/daisi/services/TimerService$TimerRunnable;->this$0:Lcom/ds/daisi/services/TimerService;

    invoke-static {v0}, Lcom/ds/daisi/services/TimerService;->access$100(Lcom/ds/daisi/services/TimerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    iget-object v0, p0, Lcom/ds/daisi/services/TimerService$TimerRunnable;->this$0:Lcom/ds/daisi/services/TimerService;

    invoke-static {v0}, Lcom/ds/daisi/services/TimerService;->access$100(Lcom/ds/daisi/services/TimerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/services/TimerService$TimerRunnable;->this$0:Lcom/ds/daisi/services/TimerService;

    invoke-static {v0}, Lcom/ds/daisi/services/TimerService;->access$100(Lcom/ds/daisi/services/TimerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 50
    iget-object v0, p0, Lcom/ds/daisi/services/TimerService$TimerRunnable;->this$0:Lcom/ds/daisi/services/TimerService;

    invoke-static {v0}, Lcom/ds/daisi/services/TimerService;->access$100(Lcom/ds/daisi/services/TimerService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x110

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/ds/daisi/services/TimerService$TimerRunnable;->this$0:Lcom/ds/daisi/services/TimerService;

    invoke-static {v0}, Lcom/ds/daisi/services/TimerService;->access$100(Lcom/ds/daisi/services/TimerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    iget-object v0, p0, Lcom/ds/daisi/services/TimerService$TimerRunnable;->this$0:Lcom/ds/daisi/services/TimerService;

    invoke-static {v0}, Lcom/ds/daisi/services/TimerService;->access$100(Lcom/ds/daisi/services/TimerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
