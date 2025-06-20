.class Lcom/ds/daisi/AppContext$4;
.super Ljava/lang/Object;
.source "AppContext.java"

# interfaces
.implements Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnClickScriptRunCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/AppContext;->onStartScript()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/AppContext;


# direct methods
.method constructor <init>(Lcom/ds/daisi/AppContext;)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/ds/daisi/AppContext$4;->this$0:Lcom/ds/daisi/AppContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallbackFail()V
    .locals 0

    return-void
.end method

.method public onCallbackSuc(Ljava/lang/Object;)V
    .locals 4

    .line 629
    iget-object v0, p0, Lcom/ds/daisi/AppContext$4;->this$0:Lcom/ds/daisi/AppContext;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ds/daisi/AppContext;->access$402(Lcom/ds/daisi/AppContext;Z)Z

    .line 630
    check-cast p1, Ljava/lang/String;

    .line 631
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 632
    const-class v0, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;

    .line 633
    invoke-static {p1, v0}, Lcom/cyjh/share/util/GsonExUtil;->parsData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;

    if-eqz p1, :cond_0

    .line 634
    iget v0, p1, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->Code:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 635
    iget-object v0, p0, Lcom/ds/daisi/AppContext$4;->this$0:Lcom/ds/daisi/AppContext;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ds/daisi/AppContext;->access$402(Lcom/ds/daisi/AppContext;Z)Z

    .line 636
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    iget-object p1, p1, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/share/bean/response/ScriptStartRunInfo;

    iput-object p1, v0, Lcom/ds/daisi/entity/ParamsWrap;->mStartRunResponseInfo:Lcom/cyjh/share/bean/response/ScriptStartRunInfo;

    goto/16 :goto_2

    :cond_0
    if-eqz p1, :cond_7

    .line 639
    iget v0, p1, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->Code:I

    const/16 v2, 0x579

    if-eq v0, v2, :cond_1

    const/16 v0, 0x578

    iget v2, p1, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->Code:I

    if-ne v0, v2, :cond_2

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/ds/daisi/AppContext$4;->this$0:Lcom/ds/daisi/AppContext;

    const-string v2, ""

    iput-object v2, v0, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    .line 643
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    iget-object v2, p0, Lcom/ds/daisi/AppContext$4;->this$0:Lcom/ds/daisi/AppContext;

    iget-object v2, v2, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/cyjh/mq/sdk/MqRunner;->setRegCode(Ljava/lang/String;)V

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regCodeStatus"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-static {}, Lcom/cyjh/share/config/MyConfig;->getAppid()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v2

    .line 646
    invoke-static {v0, v2}, Lcom/cyjh/share/util/AppUtils;->deleteFileContent(Ljava/lang/String;Landroid/content/Context;)V

    .line 650
    :cond_2
    iget v0, p1, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->Code:I

    .line 651
    iget-object v2, p1, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->Message:Ljava/lang/String;

    const/16 v3, 0x44c

    if-eq v3, v0, :cond_4

    const/16 v3, 0x4b0

    if-eq v3, v0, :cond_4

    const/16 v3, 0x4b1

    if-eq v3, v0, :cond_4

    const/16 v3, 0x4b2

    if-eq v3, v0, :cond_4

    const/16 v3, 0x4b3

    if-eq v3, v0, :cond_4

    const/16 v3, 0x514

    if-ne v3, v0, :cond_3

    goto :goto_0

    .line 674
    :cond_3
    iget-object v1, p0, Lcom/ds/daisi/AppContext$4;->this$0:Lcom/ds/daisi/AppContext;

    iget-object p1, p1, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->Message:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/cyjh/share/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p1, 0x57c

    if-ne v0, p1, :cond_8

    .line 678
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    iget-object v0, p0, Lcom/ds/daisi/AppContext$4;->this$0:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ds/daisi/util/IntentUtils;->toCallBindRegCodeActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 658
    :cond_4
    :goto_0
    sget-boolean p1, Lcom/ds/daisi/dialog/TipsDialog;->sIsShow:Z

    if-eqz p1, :cond_5

    sget-boolean p1, Lcom/ds/daisi/dialog/TipsDialog;->sIsFloat:Z

    if-nez p1, :cond_5

    .line 659
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/ds/daisi/entity/MsgItem;

    const/16 v3, 0x3ee

    invoke-direct {v0, v3}, Lcom/ds/daisi/entity/MsgItem;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 661
    :cond_5
    sget-boolean p1, Lcom/ds/daisi/dialog/TipsDialog;->sIsShow:Z

    if-nez p1, :cond_6

    .line 662
    new-instance p1, Lcom/ds/daisi/dialog/TipsDialog;

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    invoke-direct {p1, v0, v1, v2}, Lcom/ds/daisi/dialog/TipsDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 663
    new-instance v0, Lcom/ds/daisi/AppContext$4$1;

    invoke-direct {v0, p0, p1}, Lcom/ds/daisi/AppContext$4$1;-><init>(Lcom/ds/daisi/AppContext$4;Lcom/ds/daisi/dialog/TipsDialog;)V

    invoke-virtual {p1, v0}, Lcom/ds/daisi/dialog/TipsDialog;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    invoke-virtual {p1}, Lcom/ds/daisi/dialog/TipsDialog;->show()V

    goto :goto_1

    .line 671
    :cond_6
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/ds/daisi/entity/MsgItem$UpdateMessageToDialog;

    invoke-direct {v0, v2}, Lcom/ds/daisi/entity/MsgItem$UpdateMessageToDialog;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    .line 682
    :cond_7
    iget-object p1, p0, Lcom/ds/daisi/AppContext$4;->this$0:Lcom/ds/daisi/AppContext;

    const v0, 0x7f0900db

    invoke-static {p1, v0}, Lcom/cyjh/share/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    .line 684
    :cond_8
    :goto_1
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/MqRunner;->isScriptStarted()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 685
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/MqRunner;->stop()V

    goto :goto_2

    .line 689
    :cond_9
    iget-object p1, p0, Lcom/ds/daisi/AppContext$4;->this$0:Lcom/ds/daisi/AppContext;

    const v0, 0x7f0900d9

    invoke-static {p1, v0}, Lcom/cyjh/share/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    .line 690
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/MqRunner;->isScriptStarted()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 691
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/MqRunner;->stop()V

    .line 694
    :cond_a
    :goto_2
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->cleanCallback()V

    return-void
.end method
