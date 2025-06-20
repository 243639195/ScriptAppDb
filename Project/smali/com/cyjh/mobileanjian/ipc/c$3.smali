.class final Lcom/cyjh/mobileanjian/ipc/c$3;
.super Ljava/lang/Thread;
.source "RootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mobileanjian/ipc/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/cyjh/mobileanjian/ipc/c;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/c;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    iput-object p3, p0, Lcom/cyjh/mobileanjian/ipc/c$3;->a:Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 161
    :cond_0
    invoke-static {}, Lcom/goldcoast/sdk/domain/EntryPoint;->instance()Lcom/goldcoast/sdk/domain/EntryPoint;

    move-result-object v0

    new-instance v1, Lcom/cyjh/mobileanjian/ipc/c$3$1;

    invoke-direct {v1, p0}, Lcom/cyjh/mobileanjian/ipc/c$3$1;-><init>(Lcom/cyjh/mobileanjian/ipc/c$3;)V

    invoke-virtual {v0, v1}, Lcom/goldcoast/sdk/domain/EntryPoint;->analyse(Lcom/goldcoast/sdk/domain/AnalyseResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 212
    :catch_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    const/4 v1, 0x0

    .line 1031
    iput-boolean v1, v0, Lcom/cyjh/mobileanjian/ipc/c;->d:Z

    .line 213
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    const/4 v1, 0x1

    .line 2031
    iput-boolean v1, v0, Lcom/cyjh/mobileanjian/ipc/c;->f:Z

    .line 214
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    .line 3031
    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c;->c:Landroid/os/Handler;

    const/4 v1, 0x3

    const-string v2, "Exception occurs when startThirdRoot()"

    .line 214
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
