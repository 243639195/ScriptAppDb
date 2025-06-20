.class public Lcom/ds/daisi/services/VerifyService;
.super Lcom/ds/daisi/services/BaseService;
.source "VerifyService.java"

# interfaces
.implements Lcom/ds/daisi/mvp/views/CheckTokenView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/services/VerifyService$RequestCountTimers;
    }
.end annotation


# static fields
.field public static final CHECK_TOKEN_MESSAGE:I = 0x50

.field private static final NO_NETWORK_TIME_ONE:I = 0x3a98

.field private static final NO_NETWORK_TIME_THREE:I = 0x1388

.field private static final NO_NETWORK_TIME_TWO:I = 0x2710


# instance fields
.field private checkNetworkCount:I

.field private countTimers:Lcom/ds/daisi/services/VerifyService$RequestCountTimers;

.field private isPause:Z

.field private mHandler:Landroid/os/Handler;

.field private reqErrorCount:I

.field private verifyTokenPresenter:Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/ds/daisi/services/BaseService;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/ds/daisi/services/VerifyService;->checkNetworkCount:I

    .line 36
    iput v0, p0, Lcom/ds/daisi/services/VerifyService;->reqErrorCount:I

    .line 37
    iput-boolean v0, p0, Lcom/ds/daisi/services/VerifyService;->isPause:Z

    .line 38
    new-instance v0, Lcom/ds/daisi/services/VerifyService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ds/daisi/services/VerifyService$1;-><init>(Lcom/ds/daisi/services/VerifyService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ds/daisi/services/VerifyService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/services/VerifyService;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/ds/daisi/services/VerifyService;->checkNetworkCount:I

    return p0
.end method

.method static synthetic access$002(Lcom/ds/daisi/services/VerifyService;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/ds/daisi/services/VerifyService;->checkNetworkCount:I

    return p1
.end method

.method static synthetic access$008(Lcom/ds/daisi/services/VerifyService;)I
    .locals 2

    .line 27
    iget v0, p0, Lcom/ds/daisi/services/VerifyService;->checkNetworkCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ds/daisi/services/VerifyService;->checkNetworkCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/ds/daisi/services/VerifyService;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/ds/daisi/services/VerifyService;->isPause:Z

    return p0
.end method

.method static synthetic access$102(Lcom/ds/daisi/services/VerifyService;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/ds/daisi/services/VerifyService;->isPause:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ds/daisi/services/VerifyService;)Lcom/ds/daisi/services/VerifyService$RequestCountTimers;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ds/daisi/services/VerifyService;->countTimers:Lcom/ds/daisi/services/VerifyService$RequestCountTimers;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ds/daisi/services/VerifyService;)Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ds/daisi/services/VerifyService;->verifyTokenPresenter:Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ds/daisi/services/VerifyService;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ds/daisi/services/VerifyService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public checkToken(Lcom/ds/daisi/entity/TokenBean;)V
    .locals 0

    .line 111
    iget p1, p0, Lcom/ds/daisi/services/VerifyService;->reqErrorCount:I

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 112
    iput p1, p0, Lcom/ds/daisi/services/VerifyService;->reqErrorCount:I

    :cond_0
    return-void
.end method

.method public checkTokenFail(Ljava/lang/String;)V
    .locals 4

    .line 126
    iget v0, p0, Lcom/ds/daisi/services/VerifyService;->reqErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ds/daisi/services/VerifyService;->reqErrorCount:I

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reqErrorCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ds/daisi/services/VerifyService;->reqErrorCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ds/daisi/util/LogUtils;->logError(Ljava/lang/String;)V

    .line 128
    iget v0, p0, Lcom/ds/daisi/services/VerifyService;->reqErrorCount:I

    const/16 v1, 0x50

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 139
    :pswitch_0
    invoke-static {p0, p1}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/MqRunner;->isScriptStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 141
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/MqRunner;->stop()V

    goto :goto_0

    .line 136
    :pswitch_1
    iget-object p1, p0, Lcom/ds/daisi/services/VerifyService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 133
    :pswitch_2
    iget-object p1, p0, Lcom/ds/daisi/services/VerifyService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 130
    :pswitch_3
    iget-object p1, p0, Lcom/ds/daisi/services/VerifyService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public generatorToken(Lcom/ds/daisi/entity/TokenBean;)V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/ds/daisi/services/BaseService;->onCreate()V

    .line 94
    new-instance v0, Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;

    invoke-direct {v0, p0}, Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;-><init>(Lcom/ds/daisi/mvp/views/CheckTokenView;)V

    iput-object v0, p0, Lcom/ds/daisi/services/VerifyService;->verifyTokenPresenter:Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 173
    invoke-super {p0}, Lcom/ds/daisi/services/BaseService;->onDestroy()V

    .line 174
    iget-object v0, p0, Lcom/ds/daisi/services/VerifyService;->countTimers:Lcom/ds/daisi/services/VerifyService$RequestCountTimers;

    invoke-virtual {v0}, Lcom/ds/daisi/services/VerifyService$RequestCountTimers;->cancel()V

    .line 175
    iget-object v0, p0, Lcom/ds/daisi/services/VerifyService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    iget-object v0, p0, Lcom/ds/daisi/services/VerifyService;->verifyTokenPresenter:Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;

    invoke-virtual {v0}, Lcom/ds/daisi/mvp/presenters/VerifyTokenPresenter;->cancelReqAboutToken()V

    const-string v0, "stop VerifyService"

    .line 177
    invoke-static {v0}, Lcom/ds/daisi/util/LogUtils;->logError(Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    .line 99
    new-instance v6, Lcom/ds/daisi/services/VerifyService$RequestCountTimers;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ds/daisi/services/VerifyService$RequestCountTimers;-><init>(Lcom/ds/daisi/services/VerifyService;JJ)V

    iput-object v6, p0, Lcom/ds/daisi/services/VerifyService;->countTimers:Lcom/ds/daisi/services/VerifyService$RequestCountTimers;

    .line 100
    iget-object v0, p0, Lcom/ds/daisi/services/VerifyService;->countTimers:Lcom/ds/daisi/services/VerifyService$RequestCountTimers;

    invoke-virtual {v0}, Lcom/ds/daisi/services/VerifyService$RequestCountTimers;->start()Lcom/ds/daisi/timer/CountTimer;

    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/ds/daisi/services/BaseService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
