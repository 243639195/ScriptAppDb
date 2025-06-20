.class Lcom/ds/daisi/services/VerifyService$RequestCountTimers;
.super Lcom/ds/daisi/timer/CountTimer;
.source "VerifyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/services/VerifyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestCountTimers"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/services/VerifyService;


# direct methods
.method public constructor <init>(Lcom/ds/daisi/services/VerifyService;JJ)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/ds/daisi/services/VerifyService$RequestCountTimers;->this$0:Lcom/ds/daisi/services/VerifyService;

    .line 156
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/ds/daisi/timer/CountTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "timer: onFinish()"

    .line 166
    invoke-static {v0}, Lcom/ds/daisi/util/LogUtils;->logError(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/ds/daisi/services/VerifyService$RequestCountTimers;->this$0:Lcom/ds/daisi/services/VerifyService;

    invoke-static {v0}, Lcom/ds/daisi/services/VerifyService;->access$400(Lcom/ds/daisi/services/VerifyService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
