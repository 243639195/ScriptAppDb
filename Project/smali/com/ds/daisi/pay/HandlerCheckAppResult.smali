.class public Lcom/ds/daisi/pay/HandlerCheckAppResult;
.super Ljava/lang/Object;
.source "HandlerCheckAppResult.java"

# interfaces
.implements Lcom/ds/daisi/pay/PayConstants;


# instance fields
.field private appContext:Lcom/ds/daisi/AppContext;

.field private commonLog:Lcom/ds/daisi/log/CommonLog;


# direct methods
.method public constructor <init>(Lcom/ds/daisi/AppContext;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/ds/daisi/log/CommonLog;

    invoke-direct {v0}, Lcom/ds/daisi/log/CommonLog;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/pay/HandlerCheckAppResult;->commonLog:Lcom/ds/daisi/log/CommonLog;

    .line 16
    iput-object p1, p0, Lcom/ds/daisi/pay/HandlerCheckAppResult;->appContext:Lcom/ds/daisi/AppContext;

    return-void
.end method

.method private sendDuTimeBroadcast(Ljava/lang/String;)V
    .locals 2

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_com.cyjh.elfin.fragment.OptionFragment_duetime"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.cyjh.elfin.fragment.OptionFragment_duetime"

    .line 44
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget-object p1, p0, Lcom/ds/daisi/pay/HandlerCheckAppResult;->appContext:Lcom/ds/daisi/AppContext;

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    .line 46
    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public onCheckAppResult(II)V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/ds/daisi/pay/HandlerCheckAppResult;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ICheckAppResult>>>iResult>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 28
    :pswitch_0
    iget-object p1, p0, Lcom/ds/daisi/pay/HandlerCheckAppResult;->appContext:Lcom/ds/daisi/AppContext;

    const/4 v0, 0x2

    iput v0, p1, Lcom/ds/daisi/AppContext;->STATE_APP:I

    goto :goto_0

    .line 25
    :pswitch_1
    iget-object p1, p0, Lcom/ds/daisi/pay/HandlerCheckAppResult;->appContext:Lcom/ds/daisi/AppContext;

    const/4 v0, 0x1

    iput v0, p1, Lcom/ds/daisi/AppContext;->STATE_APP:I

    goto :goto_0

    .line 22
    :pswitch_2
    iget-object p1, p0, Lcom/ds/daisi/pay/HandlerCheckAppResult;->appContext:Lcom/ds/daisi/AppContext;

    const/4 v0, 0x0

    iput v0, p1, Lcom/ds/daisi/AppContext;->STATE_APP:I

    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/pay/HandlerCheckAppResult;->appContext:Lcom/ds/daisi/AppContext;

    iput v0, p1, Lcom/ds/daisi/AppContext;->STATE_APP:I

    .line 37
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    iget-object p2, p0, Lcom/ds/daisi/pay/HandlerCheckAppResult;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ICheckAppResult>>>\u4f7f\u7528\u65f6\u95f4>>>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/ds/daisi/pay/HandlerCheckAppResult;->sendDuTimeBroadcast(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
