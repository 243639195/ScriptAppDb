.class Lcom/ds/daisi/services/VerifyService$1;
.super Landroid/os/Handler;
.source "VerifyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/services/VerifyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/services/VerifyService;


# direct methods
.method constructor <init>(Lcom/ds/daisi/services/VerifyService;Landroid/os/Looper;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/ds/daisi/services/VerifyService$1;->this$0:Lcom/ds/daisi/services/VerifyService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 41
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 42
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/services/VerifyService$1;->this$0:Lcom/ds/daisi/services/VerifyService;

    invoke-static {p1}, Lcom/ds/daisi/util/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 45
    iget-object p1, p0, Lcom/ds/daisi/services/VerifyService$1;->this$0:Lcom/ds/daisi/services/VerifyService;

    invoke-static {p1}, Lcom/ds/daisi/services/VerifyService;->access$000(Lcom/ds/daisi/services/VerifyService;)I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 46
    iget-object p1, p0, Lcom/ds/daisi/services/VerifyService$1;->this$0:Lcom/ds/daisi/services/VerifyService;

    invoke-static {p1, v0}, Lcom/ds/daisi/services/VerifyService;->access$002(Lcom/ds/daisi/services/VerifyService;I)I

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/ds/daisi/services/VerifyService$1;->this$0:Lcom/ds/daisi/services/VerifyService;

    invoke-static {p1}, Lcom/ds/daisi/services/VerifyService;->access$100(Lcom/ds/daisi/services/VerifyService;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/MqRunner;->isScriptStarted()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 49
    iget-object p1, p0, Lcom/ds/daisi/services/VerifyService$1;->this$0:Lcom/ds/daisi/services/VerifyService;

    invoke-static {p1, v0}, Lcom/ds/daisi/services/VerifyService;->access$102(Lcom/ds/daisi/services/VerifyService;Z)Z

    .line 51
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/MqRunner;->resume()V

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPause,\u6062\u590d\u8fd0\u884c"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/services/VerifyService$1;->this$0:Lcom/ds/daisi/services/VerifyService;

    invoke-static {v1}, Lcom/ds/daisi/services/VerifyService;->access$100(Lcom/ds/daisi/services/VerifyService;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ds/daisi/util/LogUtils;->logError(Ljava/lang/String;)V

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerifyService token\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ds/daisi/util/ScriptVerifyUtils;->acquireTokenKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iget-object p1, p0, Lcom/ds/daisi/services/VerifyService$1;->this$0:Lcom/ds/daisi/services/VerifyService;

    invoke-static {p1}, Lcom/ds/daisi/services/VerifyService;->access$200(Lcom/ds/daisi/services/VerifyService;)Lcom/ds/daisi/services/VerifyService$RequestCountTimers;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ds/daisi/services/VerifyService$RequestCountTimers;->start()Lcom/ds/daisi/timer/CountTimer;

    .line 56
    iget-object p1, p0, Lcom/ds/daisi/services/VerifyService$1;->this$0:Lcom/ds/daisi/services/VerifyService;

    invoke-static {p1}, Lcom/ds/daisi/services/VerifyService;->access$300(Lcom/ds/daisi/services/VerifyService;)Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/ds/daisi/services/VerifyService$1;->this$0:Lcom/ds/daisi/services/VerifyService;

    invoke-static {}, Lcom/ds/daisi/util/ScriptVerifyUtils;->acquireTokenKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ds/daisi/util/ScriptVerifyUtils;->acquireCodes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;->checkToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 59
    :cond_3
    iget-object p1, p0, Lcom/ds/daisi/services/VerifyService$1;->this$0:Lcom/ds/daisi/services/VerifyService;

    invoke-static {p1}, Lcom/ds/daisi/services/VerifyService;->access$008(Lcom/ds/daisi/services/VerifyService;)I

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkNetWorkCount="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/services/VerifyService$1;->this$0:Lcom/ds/daisi/services/VerifyService;

    invoke-static {v1}, Lcom/ds/daisi/services/VerifyService;->access$000(Lcom/ds/daisi/services/VerifyService;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ds/daisi/util/LogUtils;->logError(Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/ds/daisi/services/VerifyService$1;->this$0:Lcom/ds/daisi/services/VerifyService;

    invoke-static {p1}, Lcom/ds/daisi/services/VerifyService;->access$000(Lcom/ds/daisi/services/VerifyService;)I

    move-result p1

    const-wide/16 v1, 0x3a98

    packed-switch p1, :pswitch_data_0

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default checkNetworkCount++"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ds/daisi/services/VerifyService$1;->this$0:Lcom/ds/daisi/services/VerifyService;

    invoke-static {v3}, Lcom/ds/daisi/services/VerifyService;->access$000(Lcom/ds/daisi/services/VerifyService;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ds/daisi/util/LogUtils;->logError(Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/ds/daisi/services/VerifyService$1;->this$0:Lcom/ds/daisi/services/VerifyService;

    invoke-static {p1}, Lcom/ds/daisi/services/VerifyService;->access$400(Lcom/ds/daisi/services/VerifyService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 73
    :pswitch_0
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/MqRunner;->isScriptStarted()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 75
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/MqRunner;->pause()V

    .line 76
    iget-object p1, p0, Lcom/ds/daisi/services/VerifyService$1;->this$0:Lcom/ds/daisi/services/VerifyService;

    const/4 v3, 0x1

    invoke-static {p1, v3}, Lcom/ds/daisi/services/VerifyService;->access$102(Lcom/ds/daisi/services/VerifyService;Z)Z

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPause,\u6682\u505c\u8fd0\u884c"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ds/daisi/services/VerifyService$1;->this$0:Lcom/ds/daisi/services/VerifyService;

    invoke-static {v3}, Lcom/ds/daisi/services/VerifyService;->access$100(Lcom/ds/daisi/services/VerifyService;)Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ds/daisi/util/LogUtils;->logError(Ljava/lang/String;)V

    .line 79
    :cond_4
    iget-object p1, p0, Lcom/ds/daisi/services/VerifyService$1;->this$0:Lcom/ds/daisi/services/VerifyService;

    invoke-static {p1}, Lcom/ds/daisi/services/VerifyService;->access$400(Lcom/ds/daisi/services/VerifyService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 69
    :pswitch_1
    iget-object p1, p0, Lcom/ds/daisi/services/VerifyService$1;->this$0:Lcom/ds/daisi/services/VerifyService;

    invoke-static {p1}, Lcom/ds/daisi/services/VerifyService;->access$400(Lcom/ds/daisi/services/VerifyService;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 66
    :pswitch_2
    iget-object p1, p0, Lcom/ds/daisi/services/VerifyService$1;->this$0:Lcom/ds/daisi/services/VerifyService;

    invoke-static {p1}, Lcom/ds/daisi/services/VerifyService;->access$400(Lcom/ds/daisi/services/VerifyService;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 63
    :pswitch_3
    iget-object p1, p0, Lcom/ds/daisi/services/VerifyService$1;->this$0:Lcom/ds/daisi/services/VerifyService;

    invoke-static {p1}, Lcom/ds/daisi/services/VerifyService;->access$400(Lcom/ds/daisi/services/VerifyService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
