.class final Lcom/goldcoast/sdk/domain/e;
.super Ljava/lang/Object;
.source "EntryPoint.java"

# interfaces
.implements Lcom/b/a/h;


# instance fields
.field final synthetic a:Landroid/os/ConditionVariable;

.field final synthetic b:[Z

.field final synthetic c:Lcom/goldcoast/sdk/domain/EntryPoint;


# direct methods
.method constructor <init>(Lcom/goldcoast/sdk/domain/EntryPoint;Landroid/os/ConditionVariable;[Z)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/goldcoast/sdk/domain/e;->c:Lcom/goldcoast/sdk/domain/EntryPoint;

    iput-object p2, p0, Lcom/goldcoast/sdk/domain/e;->a:Landroid/os/ConditionVariable;

    iput-object p3, p0, Lcom/goldcoast/sdk/domain/e;->b:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/as;)V
    .locals 6

    .line 480
    invoke-virtual {p1}, Lcom/b/a/as;->e()Lcom/b/a/au;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/au;->d()Ljava/lang/String;

    move-result-object p1

    .line 481
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/goldcoast/sdk/domain/e;->c:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-static {v0, p1}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Lcom/goldcoast/sdk/domain/EntryPoint;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "Exception:\n %s\n"

    const/4 v2, 0x1

    .line 489
    new-array v3, v2, [Ljava/lang/Object;

    .line 490
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 489
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 491
    iget-object v3, p0, Lcom/goldcoast/sdk/domain/e;->c:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-static {v3}, Lcom/goldcoast/sdk/domain/EntryPoint;->d(Lcom/goldcoast/sdk/domain/EntryPoint;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const-string v0, "Exception:\n %s\n$$$ failed"

    .line 493
    new-array v1, v2, [Ljava/lang/Object;

    .line 494
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    .line 493
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    .line 496
    :cond_0
    iget-object p1, p0, Lcom/goldcoast/sdk/domain/e;->c:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-static {p1, v1, v0}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Lcom/goldcoast/sdk/domain/EntryPoint;Ljava/lang/String;I)V

    .line 499
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/goldcoast/sdk/domain/e;->a:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public final a(Ljava/io/IOException;)V
    .locals 4

    .line 504
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "stack"

    .line 505
    iget-object v2, p0, Lcom/goldcoast/sdk/domain/e;->c:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-virtual {v2, p1}, Lcom/goldcoast/sdk/domain/EntryPoint;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-object v0, p0, Lcom/goldcoast/sdk/domain/e;->b:[Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    .line 507
    iget-object v0, p0, Lcom/goldcoast/sdk/domain/e;->c:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-static {v0}, Lcom/goldcoast/sdk/domain/EntryPoint;->d(Lcom/goldcoast/sdk/domain/EntryPoint;)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 508
    iget-object v0, p0, Lcom/goldcoast/sdk/domain/e;->c:Lcom/goldcoast/sdk/domain/EntryPoint;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/goldcoast/sdk/domain/e;->c:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-virtual {v3, p1}, Lcom/goldcoast/sdk/domain/EntryPoint;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n$$$ failed\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Lcom/goldcoast/sdk/domain/EntryPoint;Ljava/lang/String;I)V

    goto :goto_0

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/goldcoast/sdk/domain/e;->c:Lcom/goldcoast/sdk/domain/EntryPoint;

    iget-object v1, p0, Lcom/goldcoast/sdk/domain/e;->c:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-virtual {v1, p1}, Lcom/goldcoast/sdk/domain/EntryPoint;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Lcom/goldcoast/sdk/domain/EntryPoint;Ljava/lang/String;I)V

    .line 512
    :goto_0
    iget-object p1, p0, Lcom/goldcoast/sdk/domain/e;->a:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
