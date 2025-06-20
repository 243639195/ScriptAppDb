.class final Lcom/cyjh/mq/c/d$1;
.super Landroid/os/Handler;
.source "MqmHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mq/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mq/c/d;

.field private b:Lcom/cyjh/mobileanjian/ipc/view/ExToast;


# direct methods
.method constructor <init>(Lcom/cyjh/mq/c/d;Landroid/os/Looper;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 111
    iput-object p1, p0, Lcom/cyjh/mq/c/d$1;->b:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 116
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 263
    :pswitch_0
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/view/b;

    iget-object v3, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 38079
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    .line 263
    invoke-direct {v0, v3}, Lcom/cyjh/mobileanjian/ipc/view/b;-><init>(Landroid/content/Context;)V

    .line 264
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    .line 265
    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v3

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, v1, p1}, Lcom/cyjh/mobileanjian/ipc/view/b;->a(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 258
    :pswitch_1
    iget-object v0, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 36079
    iget-object v0, v0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 36423
    iget-object v0, v0, Lcom/cyjh/mq/c/b;->q:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    if-eqz v0, :cond_a

    .line 259
    iget-object v0, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 37079
    iget-object v0, v0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 37423
    iget-object v0, v0, Lcom/cyjh/mq/c/b;->q:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    .line 259
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;->doSpecialFuction(ILjava/lang/String;)V

    return-void

    .line 253
    :pswitch_2
    iget-object v0, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 34079
    iget-object v0, v0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 34338
    iget-object v0, v0, Lcom/cyjh/mq/c/b;->o:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    if-eqz v0, :cond_a

    .line 254
    iget-object v0, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 35079
    iget-object v0, v0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 35338
    iget-object v0, v0, Lcom/cyjh/mq/c/b;->o:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    .line 254
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/cyjh/mq/sdk/inf/OnElfCallback;->callback(ILjava/lang/String;)V

    return-void

    .line 248
    :pswitch_3
    iget-object v0, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 32079
    iget-object v0, v0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 32334
    iget-object v0, v0, Lcom/cyjh/mq/c/b;->n:Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;

    if-eqz v0, :cond_a

    .line 249
    iget-object v0, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 33079
    iget-object v0, v0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 33334
    iget-object v0, v0, Lcom/cyjh/mq/c/b;->n:Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;

    .line 249
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;->callback(Ljava/lang/String;)V

    return-void

    .line 242
    :pswitch_4
    iget-object v0, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 30079
    iget-object v0, v0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 30328
    iget-object v0, v0, Lcom/cyjh/mq/c/b;->m:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;

    if-eqz v0, :cond_a

    .line 244
    iget-object v0, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 31079
    iget-object v0, v0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 31328
    iget-object v0, v0, Lcom/cyjh/mq/c/b;->m:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;

    .line 244
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;->onCallback(ILjava/lang/String;)V

    return-void

    .line 194
    :pswitch_5
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 27079
    iget-object v0, v0, Lcom/cyjh/mq/c/d;->d:Lcom/cyjh/mobileanjian/ipc/ui/h;

    .line 197
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 201
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void

    .line 27076
    :pswitch_6
    sget-object v0, Lcom/cyjh/mq/a/a;->h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;

    if-eqz v0, :cond_a

    .line 188
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;->onKeyEvent(I)V

    return-void

    .line 180
    :pswitch_7
    iget-object v0, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 25079
    iget-object v0, v0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 25275
    iget-object v0, v0, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz v0, :cond_a

    .line 181
    iget-object v0, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 26079
    iget-object v0, v0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 26275
    iget-object v0, v0, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    .line 181
    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;->onUpdateControlBarPos(FII)V

    return-void

    .line 134
    :pswitch_8
    iget-object p1, p0, Lcom/cyjh/mq/c/d$1;->b:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    if-eqz p1, :cond_a

    .line 135
    iget-object p1, p0, Lcom/cyjh/mq/c/d$1;->b:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->hide()V

    return-void

    .line 156
    :pswitch_9
    iget-object p1, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 16079
    iget-object p1, p1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 16265
    iget-object p1, p1, Lcom/cyjh/mq/c/b;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    if-eqz p1, :cond_1

    .line 157
    iget-object p1, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 17079
    iget-object p1, p1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 17265
    iget-object p1, p1, Lcom/cyjh/mq/c/b;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    .line 157
    invoke-interface {p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;->onResume()V

    .line 158
    :cond_1
    iget-object p1, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 18079
    iget-object p1, p1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 18275
    iget-object p1, p1, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz p1, :cond_a

    .line 159
    iget-object p1, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 19079
    iget-object p1, p1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 19275
    iget-object p1, p1, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    .line 159
    invoke-interface {p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;->onResume()V

    return-void

    .line 150
    :pswitch_a
    iget-object p1, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 12079
    iget-object p1, p1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 12265
    iget-object p1, p1, Lcom/cyjh/mq/c/b;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    if-eqz p1, :cond_2

    .line 151
    iget-object p1, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 13079
    iget-object p1, p1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 13265
    iget-object p1, p1, Lcom/cyjh/mq/c/b;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    .line 151
    invoke-interface {p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;->onPause()V

    .line 152
    :cond_2
    iget-object p1, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 14079
    iget-object p1, p1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 14275
    iget-object p1, p1, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz p1, :cond_a

    .line 153
    iget-object p1, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 15079
    iget-object p1, p1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 15275
    iget-object p1, p1, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    .line 153
    invoke-interface {p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;->onPause()V

    return-void

    .line 224
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    .line 225
    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    .line 227
    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    .line 228
    new-instance p1, Lcom/cyjh/mobileanjian/ipc/ui/c;

    iget-object v1, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 29079
    iget-object v1, v1, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    .line 228
    new-instance v2, Lcom/cyjh/mq/c/d$1$2;

    invoke-direct {v2, p0}, Lcom/cyjh/mq/c/d$1$2;-><init>(Lcom/cyjh/mq/c/d$1;)V

    invoke-direct {p1, v1, v0, v2}, Lcom/cyjh/mobileanjian/ipc/ui/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/ui/c$a;)V

    .line 239
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/c;->a()V

    return-void

    .line 205
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    .line 206
    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    .line 208
    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    .line 209
    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    .line 210
    new-instance p1, Lcom/cyjh/mobileanjian/ipc/ui/b;

    iget-object v2, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 28079
    iget-object v2, v2, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    .line 210
    new-instance v3, Lcom/cyjh/mq/c/d$1$1;

    invoke-direct {v3, p0}, Lcom/cyjh/mq/c/d$1$1;-><init>(Lcom/cyjh/mq/c/d$1;)V

    invoke-direct {p1, v2, v0, v1, v3}, Lcom/cyjh/mobileanjian/ipc/ui/b;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/cyjh/mobileanjian/ipc/ui/b$a;)V

    .line 221
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/b;->a()V

    return-void

    .line 120
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 1079
    iget-object v0, v0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    .line 121
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 2079
    iget-object v0, v0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    .line 123
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 144
    :pswitch_e
    iget-object p1, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 8079
    iget-object p1, p1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 8265
    iget-object p1, p1, Lcom/cyjh/mq/c/b;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    if-eqz p1, :cond_4

    .line 145
    iget-object p1, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 9079
    iget-object p1, p1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 9265
    iget-object p1, p1, Lcom/cyjh/mq/c/b;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    .line 145
    invoke-interface {p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;->onScriptIsRunning()V

    .line 146
    :cond_4
    iget-object p1, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 10079
    iget-object p1, p1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 10275
    iget-object p1, p1, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz p1, :cond_a

    .line 147
    iget-object p1, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 11079
    iget-object p1, p1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 11275
    iget-object p1, p1, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    .line 147
    invoke-interface {p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;->onScriptIsRunning()V

    return-void

    :pswitch_f
    const-string v0, "JAVA_RUNNER"

    const-string v3, "ScriptRunnerLite WHAT_STOP SCRIPT_STOPPED"

    .line 162
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 20079
    iget-object v0, v0, Lcom/cyjh/mq/c/d;->d:Lcom/cyjh/mobileanjian/ipc/ui/h;

    .line 20102
    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/h;->f:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 20103
    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/h;->g:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 20104
    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/h;->h:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 20105
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a()V

    .line 20106
    iput v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/h;->b:I

    .line 20107
    iput v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/h;->i:I

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x20

    if-ge v1, v3, :cond_6

    .line 20110
    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/h;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 20111
    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    if-eqz v3, :cond_5

    .line 20112
    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/h;->c:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20114
    :cond_6
    new-array v1, v3, [Lcom/cyjh/mobileanjian/ipc/ui/j;

    iput-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/h;->d:[Lcom/cyjh/mobileanjian/ipc/ui/j;

    .line 20115
    iput v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/h;->e:I

    .line 164
    iget-object v0, p0, Lcom/cyjh/mq/c/d$1;->b:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    if-eqz v0, :cond_7

    .line 166
    iget-object v0, p0, Lcom/cyjh/mq/c/d$1;->b:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->hide()V

    .line 168
    :cond_7
    iget-object v0, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 21079
    iget-object v0, v0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 21265
    iget-object v0, v0, Lcom/cyjh/mq/c/b;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    if-eqz v0, :cond_8

    const-string v0, "JAVA_RUNNER"

    const-string v1, "ScriptRunnerLite WHAT_STOP mConnection.getBasicScriptListener()"

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 22079
    iget-object v0, v0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 22265
    iget-object v0, v0, Lcom/cyjh/mq/c/b;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    .line 170
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;->onStopScript(ILjava/lang/String;)V

    .line 173
    :cond_8
    iget-object v0, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 23079
    iget-object v0, v0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 23275
    iget-object v0, v0, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz v0, :cond_a

    const-string v0, "JAVA_RUNNER"

    const-string v1, "ScriptRunnerLite WHAT_STOP mConnection.getOnScriptListener() != null"

    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 24079
    iget-object v0, v0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 24275
    iget-object v0, v0, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    .line 175
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;->onStopScript(ILjava/lang/String;)V

    return-void

    .line 138
    :pswitch_10
    iget-object p1, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 4079
    iget-object p1, p1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 4265
    iget-object p1, p1, Lcom/cyjh/mq/c/b;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    if-eqz p1, :cond_9

    .line 139
    iget-object p1, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 5079
    iget-object p1, p1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 5265
    iget-object p1, p1, Lcom/cyjh/mq/c/b;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    .line 139
    invoke-interface {p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;->onStartScript()V

    .line 140
    :cond_9
    iget-object p1, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 6079
    iget-object p1, p1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 6275
    iget-object p1, p1, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz p1, :cond_a

    .line 141
    iget-object p1, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 7079
    iget-object p1, p1, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 7275
    iget-object p1, p1, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    .line 141
    invoke-interface {p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;->onStartScript()V

    return-void

    :cond_a
    :goto_1
    return-void

    .line 126
    :pswitch_11
    iget-object v0, p0, Lcom/cyjh/mq/c/d$1;->b:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    if-nez v0, :cond_b

    .line 128
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    iget-object v3, p0, Lcom/cyjh/mq/c/d$1;->a:Lcom/cyjh/mq/c/d;

    .line 3079
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    .line 128
    invoke-direct {v0, v3}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cyjh/mq/c/d$1;->b:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    .line 130
    :cond_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    .line 131
    iget-object v0, p0, Lcom/cyjh/mq/c/d$1;->b:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result p1

    invoke-virtual {v0, v3, v2, v1, p1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->show(Ljava/lang/CharSequence;III)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
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
