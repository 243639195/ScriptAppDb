.class Lcom/ds/daisi/timer/CountTimer$1;
.super Landroid/os/Handler;
.source "CountTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/timer/CountTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/timer/CountTimer;


# direct methods
.method constructor <init>(Lcom/ds/daisi/timer/CountTimer;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/ds/daisi/timer/CountTimer$1;->this$0:Lcom/ds/daisi/timer/CountTimer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 87
    iget-object p1, p0, Lcom/ds/daisi/timer/CountTimer$1;->this$0:Lcom/ds/daisi/timer/CountTimer;

    monitor-enter p1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/ds/daisi/timer/CountTimer$1;->this$0:Lcom/ds/daisi/timer/CountTimer;

    invoke-static {v0}, Lcom/ds/daisi/timer/CountTimer;->access$000(Lcom/ds/daisi/timer/CountTimer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    monitor-exit p1

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/timer/CountTimer$1;->this$0:Lcom/ds/daisi/timer/CountTimer;

    invoke-static {v0}, Lcom/ds/daisi/timer/CountTimer;->access$100(Lcom/ds/daisi/timer/CountTimer;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    sub-long v4, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-gtz v2, :cond_1

    .line 95
    iget-object v0, p0, Lcom/ds/daisi/timer/CountTimer$1;->this$0:Lcom/ds/daisi/timer/CountTimer;

    invoke-virtual {v0}, Lcom/ds/daisi/timer/CountTimer;->onFinish()V

    goto :goto_1

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/ds/daisi/timer/CountTimer$1;->this$0:Lcom/ds/daisi/timer/CountTimer;

    invoke-static {v2}, Lcom/ds/daisi/timer/CountTimer;->access$200(Lcom/ds/daisi/timer/CountTimer;)J

    move-result-wide v2

    cmp-long v6, v4, v2

    const/4 v2, 0x1

    if-gez v6, :cond_2

    .line 98
    invoke-virtual {p0, v2}, Lcom/ds/daisi/timer/CountTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v5}, Lcom/ds/daisi/timer/CountTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 100
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 101
    iget-object v3, p0, Lcom/ds/daisi/timer/CountTimer$1;->this$0:Lcom/ds/daisi/timer/CountTimer;

    invoke-virtual {v3, v4, v5}, Lcom/ds/daisi/timer/CountTimer;->onTick(J)V

    .line 104
    iget-object v3, p0, Lcom/ds/daisi/timer/CountTimer$1;->this$0:Lcom/ds/daisi/timer/CountTimer;

    invoke-static {v3}, Lcom/ds/daisi/timer/CountTimer;->access$200(Lcom/ds/daisi/timer/CountTimer;)J

    move-result-wide v3

    const/4 v5, 0x0

    add-long v8, v6, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    sub-long v5, v8, v3

    :goto_0
    cmp-long v3, v5, v0

    if-gez v3, :cond_3

    .line 108
    iget-object v3, p0, Lcom/ds/daisi/timer/CountTimer$1;->this$0:Lcom/ds/daisi/timer/CountTimer;

    invoke-static {v3}, Lcom/ds/daisi/timer/CountTimer;->access$200(Lcom/ds/daisi/timer/CountTimer;)J

    move-result-wide v3

    const/4 v7, 0x0

    add-long v7, v5, v3

    move-wide v5, v7

    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {p0, v2}, Lcom/ds/daisi/timer/CountTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v5, v6}, Lcom/ds/daisi/timer/CountTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 112
    :goto_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
