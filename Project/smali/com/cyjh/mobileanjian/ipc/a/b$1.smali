.class final Lcom/cyjh/mobileanjian/ipc/a/b$1;
.super Landroid/os/Handler;
.source "ScriptRunnerLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/a/b;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/a/b;Landroid/os/Looper;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a/b$1;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4061
    :pswitch_0
    sget-object v0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b$1;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    .line 3028
    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/a/b;->f:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b$1;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    .line 4028
    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/a/b;->f:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    .line 57
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;->onStopScript(ILjava/lang/String;)V

    return-void

    .line 51
    :pswitch_2
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a/b$1;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    .line 1028
    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/a/b;->f:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a/b$1;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    .line 2028
    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/a/b;->f:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    .line 52
    invoke-interface {p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;->onStartScript()V

    return-void

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
