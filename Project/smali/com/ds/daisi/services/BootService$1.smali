.class Lcom/ds/daisi/services/BootService$1;
.super Ljava/util/TimerTask;
.source "BootService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/services/BootService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/services/BootService;


# direct methods
.method constructor <init>(Lcom/ds/daisi/services/BootService;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/ds/daisi/services/BootService$1;->this$0:Lcom/ds/daisi/services/BootService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 52
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ds/daisi/AppContext;->isInitEngineComplete:Z

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/ds/daisi/services/BootService$1;->this$0:Lcom/ds/daisi/services/BootService;

    invoke-static {v0}, Lcom/ds/daisi/services/BootService;->access$100(Lcom/ds/daisi/services/BootService;)Lcom/ds/daisi/services/BootService$MyServiceHandler;

    move-result-object v0

    const/16 v1, 0x110

    invoke-virtual {v0, v1}, Lcom/ds/daisi/services/BootService$MyServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 54
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ds/daisi/AppContext;->isInitEngineComplete:Z

    .line 55
    iget-object v0, p0, Lcom/ds/daisi/services/BootService$1;->this$0:Lcom/ds/daisi/services/BootService;

    invoke-static {v0}, Lcom/ds/daisi/services/BootService;->access$200(Lcom/ds/daisi/services/BootService;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/ds/daisi/services/BootService$1;->this$0:Lcom/ds/daisi/services/BootService;

    invoke-static {v0}, Lcom/ds/daisi/services/BootService;->access$200(Lcom/ds/daisi/services/BootService;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method
