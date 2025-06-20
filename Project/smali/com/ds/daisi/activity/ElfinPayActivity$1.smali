.class Lcom/ds/daisi/activity/ElfinPayActivity$1;
.super Ljava/lang/Object;
.source "ElfinPayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/activity/ElfinPayActivity;->initViewAfter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/ElfinPayActivity;


# direct methods
.method constructor <init>(Lcom/ds/daisi/activity/ElfinPayActivity;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity$1;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "appDayStatisPay"

    .line 251
    iget-object v1, p0, Lcom/ds/daisi/activity/ElfinPayActivity$1;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-static {v0, v1}, Lcom/cyjh/share/util/AppUtils;->isAppDayActivity(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-string v5, "yyyy-MM-dd"

    invoke-static {v1, v2, v5}, Lcom/cyjh/share/util/AppUtils;->timeStamp2Date(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity$1;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$100(Lcom/ds/daisi/activity/ElfinPayActivity;)Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

    move-result-object v0

    const/16 v2, 0x3ef

    invoke-virtual {v0, v2}, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const-string v0, "appDayStatisPay"

    .line 256
    iget-object v2, p0, Lcom/ds/daisi/activity/ElfinPayActivity$1;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-static {v0, v2, v1}, Lcom/cyjh/share/util/AppUtils;->writeDateToFile(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    :cond_0
    invoke-static {v1}, Lcom/cyjh/share/util/AppUtils;->timeToStamp(Ljava/lang/String;)J

    move-result-wide v0

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v7, v0, v5

    div-long/2addr v7, v3

    .line 260
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity$1;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$100(Lcom/ds/daisi/activity/ElfinPayActivity;)Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

    move-result-object v0

    const/16 v1, 0x3f2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
