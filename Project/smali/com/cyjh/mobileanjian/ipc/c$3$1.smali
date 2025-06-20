.class final Lcom/cyjh/mobileanjian/ipc/c$3$1;
.super Ljava/lang/Object;
.source "RootManager.java"

# interfaces
.implements Lcom/goldcoast/sdk/domain/AnalyseResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mobileanjian/ipc/c$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/c$3;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/c$3;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    const/4 v1, 0x0

    .line 10031
    iput-boolean v1, v0, Lcom/cyjh/mobileanjian/ipc/c;->d:Z

    .line 202
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    .line 11031
    iget-boolean v0, v0, Lcom/cyjh/mobileanjian/ipc/c;->f:Z

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    .line 12031
    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c;->c:Landroid/os/Handler;

    const/4 v1, 0x3

    .line 203
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    const/4 v0, 0x1

    .line 13031
    iput-boolean v0, p1, Lcom/cyjh/mobileanjian/ipc/c;->f:Z

    .line 207
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/c;->a()V

    return-void
.end method

.method public final onFailed(Ljava/lang/String;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    const/4 v1, 0x0

    .line 6031
    iput-boolean v1, v0, Lcom/cyjh/mobileanjian/ipc/c;->d:Z

    .line 185
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    .line 7031
    iget-boolean v0, v0, Lcom/cyjh/mobileanjian/ipc/c;->f:Z

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    .line 8031
    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c;->c:Landroid/os/Handler;

    const/4 v1, 0x3

    .line 186
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 187
    :cond_0
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    const/4 v0, 0x1

    .line 9031
    iput-boolean v0, p1, Lcom/cyjh/mobileanjian/ipc/c;->f:Z

    .line 189
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/c;->a()V

    return-void
.end method

.method public final onProgress(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 5

    .line 166
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    const/4 v1, 0x0

    .line 1031
    iput-boolean v1, v0, Lcom/cyjh/mobileanjian/ipc/c;->d:Z

    .line 171
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    const/4 v2, 0x1

    .line 2031
    iput-boolean v2, v0, Lcom/cyjh/mobileanjian/ipc/c;->f:Z

    .line 172
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    .line 3031
    iput-boolean v2, v0, Lcom/cyjh/mobileanjian/ipc/c;->e:Z

    .line 173
    invoke-static {}, Lcom/cyjh/mq/a/a;->a()Ljava/io/File;

    move-result-object v0

    const/4 v3, 0x2

    .line 174
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "chmod 777 /dev/input/*"

    aput-object v4, v3, v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 176
    invoke-static {}, Lcom/goldcoast/sdk/domain/EntryPoint;->instance()Lcom/goldcoast/sdk/domain/EntryPoint;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/goldcoast/sdk/domain/EntryPoint;->exec([Ljava/lang/String;)Z

    .line 177
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    .line 4031
    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c;->c:Landroid/os/Handler;

    const/4 v1, 0x3

    .line 177
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 178
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c$3$1;->a:Lcom/cyjh/mobileanjian/ipc/c$3;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c$3;->b:Lcom/cyjh/mobileanjian/ipc/c;

    .line 5031
    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/c;->c:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    .line 178
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
