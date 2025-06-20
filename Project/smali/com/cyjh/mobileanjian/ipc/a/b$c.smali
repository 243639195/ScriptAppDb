.class public final Lcom/cyjh/mobileanjian/ipc/a/b$c;
.super Ljava/lang/Thread;
.source "ScriptRunnerLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/a/b;


# direct methods
.method public constructor <init>(Lcom/cyjh/mobileanjian/ipc/a/b;Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a/b$c;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    .line 249
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 254
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 255
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b$c;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    const/4 v1, 0x1

    .line 1028
    iput-boolean v1, v0, Lcom/cyjh/mobileanjian/ipc/a/b;->c:Z

    .line 1056
    :goto_0
    sget-object v0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b$c;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    .line 2028
    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/a/b;->g:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 258
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/a/b$a;

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Take Request:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/a/b$a;->g:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 272
    :pswitch_0
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/a/b$c;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/a/b;->e()Lcom/cyjh/mqm/MQLanguageStub;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/a/b$a;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/cyjh/mqm/MQLanguageStub;->SetRegCode(Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :pswitch_1
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/a/b$c;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/a/b;->e()Lcom/cyjh/mqm/MQLanguageStub;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/a/b$a;->l:I

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/a/b$a;->m:I

    invoke-static {v2, v0}, Lcom/cyjh/mqm/MQLanguageStub;->SetHeartBeatTime(II)V

    goto :goto_0

    .line 266
    :pswitch_2
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/a/b$c;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/a/b;->e()Lcom/cyjh/mqm/MQLanguageStub;

    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/a/b$a;->i:Ljava/lang/String;

    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/a/b$a;->j:Ljava/lang/String;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/a/b$a;->k:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/cyjh/mqm/MQLanguageStub;->InitElf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :pswitch_3
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/a/b$c;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/a/b;->e()Lcom/cyjh/mqm/MQLanguageStub;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/a/b$a;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/cyjh/mqm/MQLanguageStub;->InitHost(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b$c;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    .line 3028
    iput-boolean v1, v0, Lcom/cyjh/mobileanjian/ipc/a/b;->b:Z

    goto :goto_0

    .line 275
    :pswitch_4
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b$c;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/a/b;->a(Lcom/cyjh/mobileanjian/ipc/a/b;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 282
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 285
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 286
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 287
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b$c;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    const/4 v1, 0x0

    .line 4028
    iput-boolean v1, v0, Lcom/cyjh/mobileanjian/ipc/a/b;->c:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
