.class Lcom/ds/daisi/AppContext$9;
.super Ljava/lang/Object;
.source "AppContext.java"

# interfaces
.implements Lcom/cyjh/mq/sdk/inf/OnElfCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/AppContext;->initElf()V
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

    .line 1087
    iput-object p1, p0, Lcom/ds/daisi/AppContext$9;->this$0:Lcom/ds/daisi/AppContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private popDialog(Ljava/lang/String;)V
    .locals 3

    .line 1156
    sget-boolean v0, Lcom/ds/daisi/dialog/TipsDialog;->sIsShow:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/ds/daisi/dialog/TipsDialog;->sIsFloat:Z

    if-nez v0, :cond_0

    .line 1157
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/entity/MsgItem;

    const/16 v2, 0x3ee

    invoke-direct {v1, v2}, Lcom/ds/daisi/entity/MsgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1159
    :cond_0
    sget-boolean v0, Lcom/ds/daisi/dialog/TipsDialog;->sIsShow:Z

    if-nez v0, :cond_1

    .line 1160
    new-instance v0, Lcom/ds/daisi/dialog/TipsDialog;

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/ds/daisi/dialog/TipsDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 1161
    new-instance p1, Lcom/ds/daisi/AppContext$9$2;

    invoke-direct {p1, p0, v0}, Lcom/ds/daisi/AppContext$9$2;-><init>(Lcom/ds/daisi/AppContext$9;Lcom/ds/daisi/dialog/TipsDialog;)V

    invoke-virtual {v0, p1}, Lcom/ds/daisi/dialog/TipsDialog;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 1167
    invoke-virtual {v0}, Lcom/ds/daisi/dialog/TipsDialog;->show()V

    goto :goto_0

    .line 1169
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/entity/MsgItem$UpdateMessageToDialog;

    invoke-direct {v1, p1}, Lcom/ds/daisi/entity/MsgItem$UpdateMessageToDialog;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 5

    .line 1091
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code="

    .line 1092
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "json="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/cyjh/share/util/AppUtils;->timeStamp2Date(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    .line 1094
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    invoke-static {}, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxyFactory;->getNormalThreadPool()Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;

    move-result-object v1

    new-instance v2, Lcom/ds/daisi/AppContext$9$1;

    invoke-direct {v2, p0, v0}, Lcom/ds/daisi/AppContext$9$1;-><init>(Lcom/ds/daisi/AppContext$9;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->executeRunnable(Ljava/lang/Runnable;)V

    const/16 v0, 0x1f

    if-ne p1, v0, :cond_0

    .line 1105
    iget-object p1, p0, Lcom/ds/daisi/AppContext$9;->this$0:Lcom/ds/daisi/AppContext;

    const p2, 0x7f090076

    invoke-virtual {p1, p2}, Lcom/ds/daisi/AppContext;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ds/daisi/AppContext$9;->popDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    .line 1107
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "Message"

    .line 1108
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1133
    invoke-direct {p0, p1}, Lcom/ds/daisi/AppContext$9;->popDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x21

    if-ne p1, v0, :cond_2

    .line 1135
    iget-object p1, p0, Lcom/ds/daisi/AppContext$9;->this$0:Lcom/ds/daisi/AppContext;

    const p2, 0x7f0900f8

    invoke-virtual {p1, p2}, Lcom/ds/daisi/AppContext;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ds/daisi/AppContext$9;->popDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x22

    if-ne p1, v0, :cond_3

    .line 1137
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "Message"

    .line 1138
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1139
    invoke-direct {p0, p1}, Lcom/ds/daisi/AppContext$9;->popDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 p2, 0x23

    if-ne p1, p2, :cond_4

    .line 1141
    iget-object p1, p0, Lcom/ds/daisi/AppContext$9;->this$0:Lcom/ds/daisi/AppContext;

    const p2, 0x7f090155

    invoke-virtual {p1, p2}, Lcom/ds/daisi/AppContext;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ds/daisi/AppContext$9;->popDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 p2, 0x24

    if-ne p1, p2, :cond_5

    .line 1143
    invoke-static {}, Lcom/ds/daisi/AppContext;->access$700()Ljava/lang/String;

    move-result-object p1

    const-string p2, "initElf --> ENUM_SCRIPT_NEED_UPGRADE"

    invoke-static {p1, p2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/ds/daisi/entity/MsgItem;

    const/16 v0, 0x3ed

    invoke-direct {p2, v0}, Lcom/ds/daisi/entity/MsgItem;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const/16 p2, 0x25

    if-ne p1, p2, :cond_6

    .line 1146
    iget-object p1, p0, Lcom/ds/daisi/AppContext$9;->this$0:Lcom/ds/daisi/AppContext;

    const/4 p2, 0x4

    iput p2, p1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "zzz"

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppContext--initListener e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1151
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cyjh/share/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method
