.class public final Lcom/cyjh/mobileanjian/ipc/d$a;
.super Ljava/lang/Thread;
.source "RootShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/d;


# direct methods
.method private constructor <init>(Lcom/cyjh/mobileanjian/ipc/d;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/mobileanjian/ipc/d;B)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/d$a;-><init>(Lcom/cyjh/mobileanjian/ipc/d;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 1018
    iput-object v1, v0, Lcom/cyjh/mobileanjian/ipc/d;->g:Ljava/lang/Process;

    .line 73
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    .line 2018
    iget-object v2, v2, Lcom/cyjh/mobileanjian/ipc/d;->g:Ljava/lang/Process;

    .line 73
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3018
    iput-object v1, v0, Lcom/cyjh/mobileanjian/ipc/d;->e:Ljava/io/DataOutputStream;

    .line 74
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    .line 4018
    iget-object v1, v1, Lcom/cyjh/mobileanjian/ipc/d;->g:Ljava/lang/Process;

    .line 74
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 5018
    iput-object v1, v0, Lcom/cyjh/mobileanjian/ipc/d;->f:Ljava/io/InputStream;

    .line 75
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    .line 6018
    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/d;->e:Ljava/io/DataOutputStream;

    const-string v1, "echo \"rootOK\"\n"

    .line 75
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    .line 7018
    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/d;->e:Ljava/io/DataOutputStream;

    .line 76
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 77
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    .line 8018
    iget-object v1, v1, Lcom/cyjh/mobileanjian/ipc/d;->g:Ljava/lang/Process;

    .line 9092
    new-instance v2, Lcom/cyjh/mobileanjian/ipc/d$1;

    const-string v3, ""

    invoke-direct {v2, v0, v3, v1}, Lcom/cyjh/mobileanjian/ipc/d$1;-><init>(Lcom/cyjh/mobileanjian/ipc/d;Ljava/lang/String;Ljava/lang/Process;)V

    .line 9120
    new-instance v1, Lcom/cyjh/mobileanjian/ipc/d$2;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/cyjh/mobileanjian/ipc/d$2;-><init>(Lcom/cyjh/mobileanjian/ipc/d;Ljava/lang/String;Z)V

    .line 9160
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 9177
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9179
    :try_start_2
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 9183
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "go straight here, mRoot = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/cyjh/mobileanjian/ipc/d;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9185
    iget-boolean v1, v0, Lcom/cyjh/mobileanjian/ipc/d;->d:Z

    if-nez v1, :cond_1

    .line 9186
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/d;->g:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 9187
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/d;->b:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

    if-eqz v1, :cond_0

    .line 9188
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/d;->b:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

    invoke-interface {v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;->onRefused()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 9191
    :cond_0
    :try_start_3
    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/d;->e:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 9193
    :try_start_4
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    return-void

    :catch_2
    move-exception v0

    .line 80
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    .line 10018
    iget-object v1, v1, Lcom/cyjh/mobileanjian/ipc/d;->g:Ljava/lang/Process;

    if-eqz v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    .line 11018
    iget-object v1, v1, Lcom/cyjh/mobileanjian/ipc/d;->g:Ljava/lang/Process;

    .line 81
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    .line 12018
    iget-object v1, v1, Lcom/cyjh/mobileanjian/ipc/d;->b:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

    if-eqz v1, :cond_3

    .line 83
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/d$a;->a:Lcom/cyjh/mobileanjian/ipc/d;

    .line 13018
    iget-object v1, v1, Lcom/cyjh/mobileanjian/ipc/d;->b:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

    .line 83
    invoke-interface {v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;->onRefused()V

    .line 84
    :cond_3
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method
