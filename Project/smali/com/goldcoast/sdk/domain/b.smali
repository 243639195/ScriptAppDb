.class final Lcom/goldcoast/sdk/domain/b;
.super Ljava/lang/Object;
.source "EntryPoint.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/ConditionVariable;

.field final synthetic b:Lcom/goldcoast/sdk/domain/EntryPoint;


# direct methods
.method constructor <init>(Lcom/goldcoast/sdk/domain/EntryPoint;Landroid/os/ConditionVariable;)V
    .locals 0

    .line 1267
    iput-object p1, p0, Lcom/goldcoast/sdk/domain/b;->b:Lcom/goldcoast/sdk/domain/EntryPoint;

    iput-object p2, p0, Lcom/goldcoast/sdk/domain/b;->a:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1270
    iget-object v0, p0, Lcom/goldcoast/sdk/domain/b;->b:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-static {v0}, Lcom/goldcoast/sdk/domain/EntryPoint;->h(Lcom/goldcoast/sdk/domain/EntryPoint;)Z

    const-string v0, "timeout"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1272
    :goto_0
    invoke-static {}, Lcom/goldcoast/sdk/domain/EntryPoint;->a()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1273
    iget-object v3, p0, Lcom/goldcoast/sdk/domain/b;->b:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-virtual {v3}, Lcom/goldcoast/sdk/domain/EntryPoint;->getStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "ok"

    goto :goto_2

    .line 1277
    :cond_0
    iget-object v3, p0, Lcom/goldcoast/sdk/domain/b;->b:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-static {v3}, Lcom/goldcoast/sdk/domain/EntryPoint;->i(Lcom/goldcoast/sdk/domain/EntryPoint;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "failed"

    goto :goto_2

    :cond_1
    const-wide/16 v3, 0x3e8

    .line 1283
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 1285
    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1287
    :goto_1
    invoke-static {}, Lcom/goldcoast/sdk/c/g;->a()Lcom/goldcoast/sdk/c/g;

    const-string v3, "timer: loop"

    invoke-static {v3}, Lcom/goldcoast/sdk/c/g;->a(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    const/4 v2, -0x1

    .line 1289
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x4c696bc3

    if-eq v3, v4, :cond_4

    const/16 v4, 0xddc

    if-eq v3, v4, :cond_3

    goto :goto_3

    :cond_3
    const-string v3, "ok"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    const-string v3, "failed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v0, -0x1

    :goto_4
    packed-switch v0, :pswitch_data_0

    .line 1297
    invoke-static {}, Lcom/goldcoast/sdk/c/g;->a()Lcom/goldcoast/sdk/c/g;

    const-string v0, "timer: $$$ timeout"

    invoke-static {v0}, Lcom/goldcoast/sdk/c/g;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 1294
    :pswitch_0
    invoke-static {}, Lcom/goldcoast/sdk/c/g;->a()Lcom/goldcoast/sdk/c/g;

    const-string v0, "timer: $$$ failed"

    invoke-static {v0}, Lcom/goldcoast/sdk/c/g;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 1291
    :pswitch_1
    iget-object v0, p0, Lcom/goldcoast/sdk/domain/b;->b:Lcom/goldcoast/sdk/domain/EntryPoint;

    const-string v2, "$$$ success"

    invoke-static {v0, v2, v1}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Lcom/goldcoast/sdk/domain/EntryPoint;Ljava/lang/String;I)V

    .line 1305
    :goto_5
    iget-object v0, p0, Lcom/goldcoast/sdk/domain/b;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
