.class public Lcom/iflytek/voiceads/view/b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/voiceads/view/b$b;,
        Lcom/iflytek/voiceads/view/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/voiceads/utils/a$c;

.field private b:Lcom/iflytek/voiceads/view/b$a;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/iflytek/voiceads/view/b$a;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v0, Lcom/iflytek/voiceads/utils/a$c;->a:Lcom/iflytek/voiceads/utils/a$c;

    iput-object v0, p0, Lcom/iflytek/voiceads/view/b;->a:Lcom/iflytek/voiceads/utils/a$c;

    iput-object p2, p0, Lcom/iflytek/voiceads/view/b;->b:Lcom/iflytek/voiceads/view/b$a;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/iflytek/voiceads/utils/a$c;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/view/b;->a:Lcom/iflytek/voiceads/utils/a$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/iflytek/voiceads/view/b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/iflytek/voiceads/view/b$b;->b:Lcom/iflytek/voiceads/view/b$b;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/iflytek/voiceads/view/b;->a(Landroid/os/Message;Lcom/iflytek/voiceads/view/b$b;I)V

    return-void
.end method

.method public a(II)V
    .locals 3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/voiceads/view/b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/iflytek/voiceads/view/b$b;->b:Lcom/iflytek/voiceads/view/b$b;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/iflytek/voiceads/view/b;->a(Landroid/os/Message;Lcom/iflytek/voiceads/view/b$b;I)V

    return-void
.end method

.method public a(Landroid/os/Message;I)V
    .locals 1

    sget-object v0, Lcom/iflytek/voiceads/view/b$b;->b:Lcom/iflytek/voiceads/view/b$b;

    invoke-virtual {p0, p1, v0, p2}, Lcom/iflytek/voiceads/view/b;->a(Landroid/os/Message;Lcom/iflytek/voiceads/view/b$b;I)V

    return-void
.end method

.method protected a(Landroid/os/Message;Lcom/iflytek/voiceads/view/b$b;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/iflytek/voiceads/view/b;->a()Lcom/iflytek/voiceads/utils/a$c;

    move-result-object v0

    sget-object v1, Lcom/iflytek/voiceads/utils/a$c;->f:Lcom/iflytek/voiceads/utils/a$c;

    if-ne v0, v1, :cond_0

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "Ad status is exit, invalid request!"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    sget-object v0, Lcom/iflytek/voiceads/view/b$b;->a:Lcom/iflytek/voiceads/view/b$b;

    if-ne v0, p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/iflytek/voiceads/view/b;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/iflytek/voiceads/utils/a$c;->a:Lcom/iflytek/voiceads/utils/a$c;

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/view/b;->a(Lcom/iflytek/voiceads/utils/a$c;)V

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/iflytek/voiceads/utils/a$c;->b:Lcom/iflytek/voiceads/utils/a$c;

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/view/b;->a(Lcom/iflytek/voiceads/utils/a$c;)V

    goto :goto_1

    :pswitch_3
    sget-object v0, Lcom/iflytek/voiceads/utils/a$c;->c:Lcom/iflytek/voiceads/utils/a$c;

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/view/b;->a(Lcom/iflytek/voiceads/utils/a$c;)V

    goto :goto_1

    :pswitch_4
    sget-object v0, Lcom/iflytek/voiceads/utils/a$c;->d:Lcom/iflytek/voiceads/utils/a$c;

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/view/b;->a(Lcom/iflytek/voiceads/utils/a$c;)V

    goto :goto_1

    :pswitch_5
    sget-object v0, Lcom/iflytek/voiceads/utils/a$c;->e:Lcom/iflytek/voiceads/utils/a$c;

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/view/b;->a(Lcom/iflytek/voiceads/utils/a$c;)V

    goto :goto_1

    :pswitch_6
    sget-object v0, Lcom/iflytek/voiceads/utils/a$c;->f:Lcom/iflytek/voiceads/utils/a$c;

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/view/b;->a(Lcom/iflytek/voiceads/utils/a$c;)V

    goto :goto_1

    :cond_1
    int-to-long v0, p3

    invoke-virtual {p0, p1, v0, v1}, Lcom/iflytek/voiceads/view/b;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public declared-synchronized a(Lcom/iflytek/voiceads/utils/a$c;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "IFLY_AD_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatus: pre="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/voiceads/view/b;->a:Lcom/iflytek/voiceads/utils/a$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/view/b;->a:Lcom/iflytek/voiceads/utils/a$c;

    sget-object v1, Lcom/iflytek/voiceads/utils/a$c;->f:Lcom/iflytek/voiceads/utils/a$c;

    if-ne v0, v1, :cond_0

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "Invalid setting of ad status, current status is already exit!"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/iflytek/voiceads/view/b;->a:Lcom/iflytek/voiceads/utils/a$c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/voiceads/view/b;->b:Lcom/iflytek/voiceads/view/b$a;

    invoke-interface {v0, p1}, Lcom/iflytek/voiceads/view/b$a;->a(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/iflytek/voiceads/utils/a$c;->e:Lcom/iflytek/voiceads/utils/a$c;

    invoke-virtual {p0, v1}, Lcom/iflytek/voiceads/view/b;->a(Lcom/iflytek/voiceads/utils/a$c;)V

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process handle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/voiceads/view/b;->b:Lcom/iflytek/voiceads/view/b$a;

    invoke-interface {v0}, Lcom/iflytek/voiceads/view/b$a;->a()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/iflytek/voiceads/view/b;->b:Lcom/iflytek/voiceads/view/b$a;

    invoke-interface {v0}, Lcom/iflytek/voiceads/view/b$a;->b()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/iflytek/voiceads/view/b;->b:Lcom/iflytek/voiceads/view/b$a;

    invoke-interface {v0, p1}, Lcom/iflytek/voiceads/view/b$a;->b(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/iflytek/voiceads/view/b;->b:Lcom/iflytek/voiceads/view/b$a;

    invoke-interface {v0, p1}, Lcom/iflytek/voiceads/view/b$a;->c(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/iflytek/voiceads/view/b;->b:Lcom/iflytek/voiceads/view/b$a;

    invoke-interface {v0}, Lcom/iflytek/voiceads/view/b$a;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
