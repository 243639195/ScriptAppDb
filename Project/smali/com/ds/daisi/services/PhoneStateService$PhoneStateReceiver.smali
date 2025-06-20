.class public Lcom/ds/daisi/services/PhoneStateService$PhoneStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/services/PhoneStateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhoneStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/services/PhoneStateService;


# direct methods
.method public constructor <init>(Lcom/ds/daisi/services/PhoneStateService;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/ds/daisi/services/PhoneStateService$PhoneStateReceiver;->this$0:Lcom/ds/daisi/services/PhoneStateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 92
    iget-object v0, p0, Lcom/ds/daisi/services/PhoneStateService$PhoneStateReceiver;->this$0:Lcom/ds/daisi/services/PhoneStateService;

    iget-object v0, v0, Lcom/ds/daisi/services/PhoneStateService;->commonLog:Lcom/ds/daisi/log/CommonLog;

    const-string v1, ">>>>>>>>>\u7535\u8bdd\u5e7f\u64ad\u76d1\u542c\u5df2\u8fdb\u6765"

    invoke-virtual {v0, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/ds/daisi/services/PhoneStateService$PhoneStateReceiver;->this$0:Lcom/ds/daisi/services/PhoneStateService;

    iget-object v0, v0, Lcom/ds/daisi/services/PhoneStateService;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>action>>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    const-string v0, "android.intent.action.NEW_OUTGOING_CALL"

    .line 94
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "android.intent.action.PHONE_STATE"

    .line 96
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "phone"

    .line 98
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 99
    iget-object p2, p0, Lcom/ds/daisi/services/PhoneStateService$PhoneStateReceiver;->this$0:Lcom/ds/daisi/services/PhoneStateService;

    iget-object p2, p2, Lcom/ds/daisi/services/PhoneStateService;->appContext:Lcom/ds/daisi/AppContext;

    iget-object p2, p2, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 100
    iget-object v0, p0, Lcom/ds/daisi/services/PhoneStateService$PhoneStateReceiver;->this$0:Lcom/ds/daisi/services/PhoneStateService;

    iget-object v0, v0, Lcom/ds/daisi/services/PhoneStateService;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tm.getCallState()>>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "com.cyjh.elfin.activity.SettingActivity.swtCallStop"

    .line 110
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 111
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/MqRunner;->stop()V

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object p1, p0, Lcom/ds/daisi/services/PhoneStateService$PhoneStateReceiver;->this$0:Lcom/ds/daisi/services/PhoneStateService;

    iget-object p1, p1, Lcom/ds/daisi/services/PhoneStateService;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ee7\u7eed\u9009\u9879>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.cyjh.elfin.activity.SettingActivity.swtCallStop"

    invoke-interface {p2, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    const-string p1, "com.cyjh.elfin.activity.SettingActivity.swtCallStop"

    .line 104
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 105
    iget-object p1, p0, Lcom/ds/daisi/services/PhoneStateService$PhoneStateReceiver;->this$0:Lcom/ds/daisi/services/PhoneStateService;

    iget-object p1, p1, Lcom/ds/daisi/services/PhoneStateService;->commonLog:Lcom/ds/daisi/log/CommonLog;

    const-string p2, "\u505c\u6b62\u811a\u672c>>>>>"

    invoke-virtual {p1, p2}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 106
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/MqRunner;->stop()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
