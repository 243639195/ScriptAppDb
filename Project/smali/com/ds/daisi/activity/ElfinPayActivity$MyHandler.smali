.class Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;
.super Landroid/os/Handler;
.source "ElfinPayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/ElfinPayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ds/daisi/activity/ElfinPayActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/ElfinPayActivity;)V
    .locals 1

    .line 1010
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1011
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/ElfinPayActivity;Lcom/ds/daisi/activity/ElfinPayActivity$1;)V
    .locals 0

    .line 1007
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;-><init>(Lcom/ds/daisi/activity/ElfinPayActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1016
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/ds/daisi/activity/ElfinPayActivity;

    if-nez v2, :cond_0

    return-void

    .line 1020
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3f4

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1052
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1053
    invoke-static {v2, v0, v1}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$1300(Lcom/ds/daisi/activity/ElfinPayActivity;J)V

    goto :goto_0

    .line 1044
    :pswitch_1
    invoke-static {v2}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$100(Lcom/ds/daisi/activity/ElfinPayActivity;)Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;

    move-result-object p1

    const/16 v0, 0x3ef

    invoke-virtual {p1, v0}, Lcom/ds/daisi/activity/ElfinPayActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1045
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    const-string p1, "yyyy-MM-dd"

    .line 1046
    invoke-static {v0, v1, p1}, Lcom/cyjh/share/util/AppUtils;->timeStamp2Date(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1047
    invoke-static {p1}, Lcom/cyjh/share/util/AppUtils;->timeToStamp(Ljava/lang/String;)J

    move-result-wide v5

    div-long/2addr v5, v3

    sub-long v3, v5, v0

    .line 1049
    invoke-static {v2, v3, v4}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$1300(Lcom/ds/daisi/activity/ElfinPayActivity;J)V

    goto :goto_0

    .line 1041
    :pswitch_2
    invoke-static {v2}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$1200(Lcom/ds/daisi/activity/ElfinPayActivity;)V

    goto :goto_0

    .line 1036
    :pswitch_3
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object v1

    const/4 v3, 0x5

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->loadAd(Landroid/content/Context;IIJ)V

    goto :goto_0

    .line 1033
    :pswitch_4
    invoke-static {v2}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$1100(Lcom/ds/daisi/activity/ElfinPayActivity;)V

    goto :goto_0

    .line 1027
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 1029
    invoke-static {v2, p1}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$1000(Lcom/ds/daisi/activity/ElfinPayActivity;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1057
    :cond_1
    invoke-static {v2}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$1400(Lcom/ds/daisi/activity/ElfinPayActivity;)V

    goto :goto_0

    .line 1023
    :cond_2
    invoke-static {v2}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$900(Lcom/ds/daisi/activity/ElfinPayActivity;)V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3ed
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
