.class final Lcom/cyjh/mq/c/b$2;
.super Ljava/lang/Thread;
.source "IpcConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mq/c/b;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mq/c/b;


# direct methods
.method constructor <init>(Lcom/cyjh/mq/c/b;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/cyjh/mq/c/b$2;->a:Lcom/cyjh/mq/c/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/cyjh/mq/c/b$2;->a:Lcom/cyjh/mq/c/b;

    .line 1047
    iget-object v0, v0, Lcom/cyjh/mq/c/b;->g:Ljava/util/List;

    .line 360
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;

    .line 362
    iget-object v2, p0, Lcom/cyjh/mq/c/b$2;->a:Lcom/cyjh/mq/c/b;

    invoke-interface {v1, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;->onConnected(Lcom/cyjh/mq/c/b;)V

    goto :goto_0

    .line 1086
    :cond_0
    sget-object v0, Lcom/cyjh/mq/a/a;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;

    if-eqz v0, :cond_1

    .line 2086
    sget-object v0, Lcom/cyjh/mq/a/a;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;

    .line 366
    iget-object v1, p0, Lcom/cyjh/mq/c/b$2;->a:Lcom/cyjh/mq/c/b;

    .line 3047
    iget-object v1, v1, Lcom/cyjh/mq/c/b;->f:Lcom/cyjh/mq/b/a;

    .line 4015
    iget v1, v1, Lcom/cyjh/mq/b/a;->a:I

    .line 366
    invoke-interface {v0, v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;->onEngineStart(I)V

    :cond_1
    return-void
.end method
