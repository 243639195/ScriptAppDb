.class final Lcom/cyjh/event/Injector$1;
.super Landroid/os/Handler;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/event/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 175
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 179
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 202
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/cyjh/event/b;

    .line 203
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    .line 1065
    iget-boolean v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->d:Z

    if-eqz v0, :cond_1

    .line 204
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    .line 1163
    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->c:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;

    if-eqz v0, :cond_0

    .line 205
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    .line 2163
    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->c:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;

    .line 205
    iget v1, p1, Lcom/cyjh/event/b;->a:I

    iget-object v2, p1, Lcom/cyjh/event/b;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;->onCallback(ILjava/lang/String;)V

    .line 207
    :cond_0
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    .line 2168
    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->b:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    if-eqz v0, :cond_2

    .line 208
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    .line 3168
    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->b:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    .line 208
    iget v1, p1, Lcom/cyjh/event/b;->a:I

    iget-object p1, p1, Lcom/cyjh/event/b;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/cyjh/mq/sdk/inf/OnElfCallback;->callback(ILjava/lang/String;)V

    return-void

    .line 212
    :cond_1
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    goto :goto_0

    .line 199
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {p1}, Lcom/cyjh/event/Injector;->a([B)V

    return-void

    .line 193
    :pswitch_2
    invoke-static {}, Lcom/cyjh/event/Injector;->a()V

    return-void

    .line 196
    :pswitch_3
    invoke-static {}, Lcom/cyjh/event/Injector;->b()V

    return-void

    .line 190
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/cyjh/event/b;

    invoke-static {p1}, Lcom/cyjh/event/Injector;->d(Lcom/cyjh/event/b;)V

    return-void

    .line 187
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/cyjh/event/b;

    invoke-static {p1}, Lcom/cyjh/event/Injector;->c(Lcom/cyjh/event/b;)V

    return-void

    .line 184
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/cyjh/event/b;

    invoke-static {p1}, Lcom/cyjh/event/Injector;->b(Lcom/cyjh/event/b;)V

    return-void

    .line 181
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/cyjh/event/b;

    invoke-static {p1}, Lcom/cyjh/event/Injector;->a(Lcom/cyjh/event/b;)V

    return-void

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
