.class public final Lcom/cyjh/mobileanjian/ipc/a/b;
.super Ljava/lang/Object;
.source "ScriptRunnerLite.java"

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/a/b$a;,
        Lcom/cyjh/mobileanjian/ipc/a/b$c;,
        Lcom/cyjh/mobileanjian/ipc/a/b$b;
    }
.end annotation


# static fields
.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static final j:I = 0x3

.field private static final k:I = 0x19


# instance fields
.field public volatile a:Z

.field b:Z

.field public c:Z

.field public d:Lcom/cyjh/mobileanjian/ipc/a/b$c;

.field public e:Lcom/cyjh/mq/sdk/entity/Script4Run;

.field public f:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

.field public g:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/cyjh/mobileanjian/ipc/a/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/cyjh/mqm/MQLanguageStub;

.field private m:Landroid/os/Handler;

.field private n:Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->a:Z

    .line 36
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->b:Z

    .line 37
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->c:Z

    .line 44
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->g:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 46
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/a/b$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/a/b$1;-><init>(Lcom/cyjh/mobileanjian/ipc/a/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->m:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->n:Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;

    return-void
.end method

.method private a(II)V
    .locals 11

    .line 217
    :try_start_0
    new-instance v10, Lcom/cyjh/mobileanjian/ipc/a/b$a;

    const/4 v2, 0x3

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v9, ""

    move-object v0, v10

    move-object v1, p0

    move v7, p1

    move v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/cyjh/mobileanjian/ipc/a/b$a;-><init>(Lcom/cyjh/mobileanjian/ipc/a/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 218
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->g:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v10}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 221
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/ipc/a/b;)V
    .locals 11

    .line 5145
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 5149
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->a:Z

    .line 5150
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 6061
    sget-object v1, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 5151
    sget v2, Lcom/cyjh/mqsdk/R$string;->toast_on_start_script:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cyjh/mobileanjian/ipc/a/b;->c(Ljava/lang/String;)V

    .line 5153
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/a/b;->g()V

    .line 5158
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/a/b;->e()Lcom/cyjh/mqm/MQLanguageStub;

    move-result-object v2

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getLcPath()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getAtcPath()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getConfigPath()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    .line 5159
    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getAppId()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    .line 5160
    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getUserName()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    .line 5161
    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getTrialTime()I

    move-result v8

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    .line 5162
    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getEncryptKey()J

    move-result-wide v9

    .line 5158
    invoke-virtual/range {v2 .. v10}, Lcom/cyjh/mqm/MQLanguageStub;->Run(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)I

    move-result v1

    const/16 v2, 0x66

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 7061
    :cond_0
    sget-object v2, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 5169
    sget v4, Lcom/cyjh/mqsdk/R$string;->toast_run_failed:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    .line 5170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 5169
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cyjh/mobileanjian/ipc/a/b;->c(Ljava/lang/String;)V

    .line 5174
    :goto_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->m:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 5175
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->m:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x2

    .line 5176
    iput v2, v0, Landroid/os/Message;->what:I

    .line 5177
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 5178
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/log/NativeLog;->getExtraLog()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5179
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 8061
    :cond_1
    sget-object v0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 5182
    sget v1, Lcom/cyjh/mqsdk/R$string;->toast_on_stop_script:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cyjh/mobileanjian/ipc/a/b;->c(Ljava/lang/String;)V

    .line 5184
    invoke-static {}, Lcom/cyjh/event/c;->c()V

    .line 5185
    invoke-static {}, Lcom/cyjh/event/Injector;->release()V

    .line 5186
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/log/NativeLog;->reset()V

    .line 5188
    iput-boolean v3, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->a:Z

    :cond_2
    return-void
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 238
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->f:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    :cond_0
    return-void
.end method

.method private a(Lcom/cyjh/mq/sdk/entity/Script4Run;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 140
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 11

    .line 193
    :try_start_0
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->c:Z

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/a/b$c;

    const-string v1, "ScriptRunnerLite_Request"

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/a/b$c;-><init>(Lcom/cyjh/mobileanjian/ipc/a/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->d:Lcom/cyjh/mobileanjian/ipc/a/b$c;

    .line 196
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->d:Lcom/cyjh/mobileanjian/ipc/a/b$c;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/a/b$c;->start()V

    .line 198
    :cond_0
    new-instance v10, Lcom/cyjh/mobileanjian/ipc/a/b$a;

    const/4 v2, 0x1

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Lcom/cyjh/mobileanjian/ipc/a/b$a;-><init>(Lcom/cyjh/mobileanjian/ipc/a/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->g:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v10}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 201
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 207
    :try_start_0
    new-instance v10, Lcom/cyjh/mobileanjian/ipc/a/b$a;

    const/4 v2, 0x2

    const-string v3, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    move-object v0, v10

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/cyjh/mobileanjian/ipc/a/b$a;-><init>(Lcom/cyjh/mobileanjian/ipc/a/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 208
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->g:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v10}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 211
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(ZIIII)V
    .locals 6

    .line 130
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/a/b;->f()Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;->SetImageCrop(ZIIII)V

    return-void
.end method

.method private static synthetic a(Lcom/cyjh/mobileanjian/ipc/a/b;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->c:Z

    return p1
.end method

.method private static synthetic b(Lcom/cyjh/mobileanjian/ipc/a/b;)Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->f:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 11

    .line 227
    :try_start_0
    new-instance v10, Lcom/cyjh/mobileanjian/ipc/a/b$a;

    const/4 v2, 0x4

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/cyjh/mobileanjian/ipc/a/b$a;-><init>(Lcom/cyjh/mobileanjian/ipc/a/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 228
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->g:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v10}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 231
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic c(Lcom/cyjh/mobileanjian/ipc/a/b;)Lcom/cyjh/mq/sdk/entity/Script4Run;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->m:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static synthetic d(Lcom/cyjh/mobileanjian/ipc/a/b;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->g:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p0
.end method

.method private static synthetic e(Lcom/cyjh/mobileanjian/ipc/a/b;)Z
    .locals 1

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->b:Z

    return v0
.end method

.method private i()V
    .locals 11

    .line 145
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->a:Z

    .line 150
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3061
    sget-object v1, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 151
    sget v2, Lcom/cyjh/mqsdk/R$string;->toast_on_start_script:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cyjh/mobileanjian/ipc/a/b;->c(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/a/b;->g()V

    .line 158
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/a/b;->e()Lcom/cyjh/mqm/MQLanguageStub;

    move-result-object v2

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getLcPath()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getAtcPath()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getConfigPath()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    .line 159
    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getAppId()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    .line 160
    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getUserName()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    .line 161
    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getTrialTime()I

    move-result v8

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    .line 162
    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/entity/Script4Run;->getEncryptKey()J

    move-result-wide v9

    .line 158
    invoke-virtual/range {v2 .. v10}, Lcom/cyjh/mqm/MQLanguageStub;->Run(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)I

    move-result v1

    const/16 v2, 0x66

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 4061
    :cond_1
    sget-object v2, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 169
    sget v4, Lcom/cyjh/mqsdk/R$string;->toast_run_failed:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 169
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cyjh/mobileanjian/ipc/a/b;->c(Ljava/lang/String;)V

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->m:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->m:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x2

    .line 176
    iput v2, v0, Landroid/os/Message;->what:I

    .line 177
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 178
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/log/NativeLog;->getExtraLog()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 179
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5061
    :cond_2
    sget-object v0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 182
    sget v1, Lcom/cyjh/mqsdk/R$string;->toast_on_stop_script:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cyjh/mobileanjian/ipc/a/b;->c(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/cyjh/event/c;->c()V

    .line 185
    invoke-static {}, Lcom/cyjh/event/Injector;->release()V

    .line 186
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/log/NativeLog;->reset()V

    .line 188
    iput-boolean v3, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 84
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->a:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->f:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->f:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    invoke-interface {v0}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;->onScriptIsRunning()V

    return-void

    .line 89
    :cond_0
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/a/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/a/b$b;-><init>(Lcom/cyjh/mobileanjian/ipc/a/b;B)V

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/a/b$b;->start()V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/a/b;->e()Lcom/cyjh/mqm/MQLanguageStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mqm/MQLanguageStub;->Resume()I

    return-void
.end method

.method public final c()V
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/a/b;->e()Lcom/cyjh/mqm/MQLanguageStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mqm/MQLanguageStub;->Pause()I

    return-void
.end method

.method public final d()V
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stop: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/a/b;->e()Lcom/cyjh/mqm/MQLanguageStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mqm/MQLanguageStub;->Stop()I

    return-void
.end method

.method public final e()Lcom/cyjh/mqm/MQLanguageStub;
    .locals 6

    .line 110
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->l:Lcom/cyjh/mqm/MQLanguageStub;

    if-nez v0, :cond_1

    .line 111
    new-instance v0, Lcom/cyjh/mqm/MQLanguageStub;

    invoke-direct {v0}, Lcom/cyjh/mqm/MQLanguageStub;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->l:Lcom/cyjh/mqm/MQLanguageStub;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Application: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1056
    sget-object v1, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 2056
    sget-object v2, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    .line 113
    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->l:Lcom/cyjh/mqm/MQLanguageStub;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    .line 2061
    sget-object v4, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 117
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lib"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-virtual {v1, v2, v0, v3}, Lcom/cyjh/mqm/MQLanguageStub;->SetLocalDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->l:Lcom/cyjh/mqm/MQLanguageStub;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cyjh/mqm/MQLanguageStub;->SetWriteLog2File(Z)V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->l:Lcom/cyjh/mqm/MQLanguageStub;

    return-object v0
.end method

.method public final f()Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->n:Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/a/b;->e()Lcom/cyjh/mqm/MQLanguageStub;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;-><init>(Lcom/cyjh/mqm/MQLanguageStub;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->n:Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->n:Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;

    return-object v0
.end method

.method public final g()V
    .locals 2

    .line 3056
    sget-object v0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    const-string v1, "window"

    .line 133
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 135
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/a/b;->f()Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;->SetScreenRotation(I)V

    return-void
.end method

.method public final declared-synchronized h()Z
    .locals 1

    monitor-enter p0

    .line 245
    :try_start_0
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
