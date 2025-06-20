.class public Lkiller/cloud/client/CloudService;
.super Ljava/lang/Object;
.source "CloudService.java"


# static fields
.field public static final CLOSE:I = 0x3e8

.field public static final HOT_UPDATE:I = 0x9c42

.field public static final LOGIN:I = 0x44c

.field public static final LOGIN_SUCCESS:I = 0x44e

.field public static final ON_START:I = 0x1006

.field public static final ON_STOP:I = 0x1005

.field public static final SAVE_SETTING:I = 0xce4

.field public static final SET_SCRIPT_DATA:I = 0x9c43

.field public static final START_SCRIPT:I = 0xc1d

.field public static final STOP_SCRIPT:I = 0xc1e

.field private static instance:Lkiller/cloud/client/CloudService;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "CloudService"

    iput-object v0, p0, Lkiller/cloud/client/CloudService;->TAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static get()Lkiller/cloud/client/CloudService;
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lkiller/cloud/client/CloudService;->instance:Lkiller/cloud/client/CloudService;

    if-nez v0, :cond_1

    .line 132
    const-class v1, Lkiller/cloud/client/CloudService;

    monitor-enter v1

    .line 133
    :try_start_0
    sget-object v0, Lkiller/cloud/client/CloudService;->instance:Lkiller/cloud/client/CloudService;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lkiller/cloud/client/CloudService;

    invoke-direct {v0}, Lkiller/cloud/client/CloudService;-><init>()V

    sput-object v0, Lkiller/cloud/client/CloudService;->instance:Lkiller/cloud/client/CloudService;

    .line 136
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_1
    sget-object v0, Lkiller/cloud/client/CloudService;->instance:Lkiller/cloud/client/CloudService;

    return-object v0

    .line 136
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public commandHotUpdate(Lkiller/cloud/client/CloudMessage;)V
    .locals 7
    .param p1, "message"    # Lkiller/cloud/client/CloudMessage;

    .prologue
    const/16 v6, 0xa

    .line 85
    iget-object v1, p1, Lkiller/cloud/client/CloudMessage;->hotUpdateUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lkiller/elfin/config/GlobalConfig;->getScriptVersion()J

    move-result-wide v2

    iget-wide v4, p1, Lkiller/cloud/client/CloudMessage;->version:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    sget-object v1, Lkiller/elfin/Free;->runner:Lkiller/elfin/runner/ScriptRunner;

    invoke-interface {v1}, Lkiller/elfin/runner/ScriptRunner;->isScriptStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    sget-object v1, Lkiller/elfin/Free;->runner:Lkiller/elfin/runner/ScriptRunner;

    invoke-interface {v1}, Lkiller/elfin/runner/ScriptRunner;->stopScript()V

    .line 91
    :cond_2
    const-string v1, "[\u4e91\u63a7]\u70ed\u66f4\u65b0"

    const/16 v2, 0x7d0

    invoke-static {v1, v2, v6, v6}, Lkiller/elfin/util/ToastUtil;->toast(Ljava/lang/String;III)V

    .line 92
    new-instance v0, Lkiller/core/entity/ScriptVersionInfo;

    invoke-direct {v0}, Lkiller/core/entity/ScriptVersionInfo;-><init>()V

    .line 93
    .local v0, "versionInfo":Lkiller/core/entity/ScriptVersionInfo;
    iget-object v1, p1, Lkiller/cloud/client/CloudMessage;->hotUpdateUrl:Ljava/lang/String;

    iput-object v1, v0, Lkiller/core/entity/ScriptVersionInfo;->downloadUrl:Ljava/lang/String;

    .line 94
    iget-wide v2, p1, Lkiller/cloud/client/CloudMessage;->version:J

    iput-wide v2, v0, Lkiller/core/entity/ScriptVersionInfo;->version:J

    .line 95
    invoke-static {}, Lkiller/elfin/update/ScriptDownload;->get()Lkiller/elfin/update/ScriptDownload;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkiller/elfin/update/ScriptDownload;->download(Lkiller/core/entity/ScriptVersionInfo;)V

    goto :goto_0
.end method

.method public commandSaveScriptCfg(Lkiller/cloud/client/CloudMessage;)V
    .locals 4
    .param p1, "message"    # Lkiller/cloud/client/CloudMessage;

    .prologue
    const/16 v3, 0xa

    .line 76
    iget-object v1, p1, Lkiller/cloud/client/CloudMessage;->scriptCfg:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 77
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    sget-object v1, Lkiller/elfin/Free;->runner:Lkiller/elfin/runner/ScriptRunner;

    iget-object v2, p1, Lkiller/cloud/client/CloudMessage;->scriptCfg:Ljava/lang/String;

    invoke-interface {v1, v2}, Lkiller/elfin/runner/ScriptRunner;->updateUISetting(Ljava/lang/String;)V

    .line 81
    const-string v1, "[\u4e91\u63a7]\u4fee\u6539\u754c\u9762\u914d\u7f6e"

    const/16 v2, 0x7d0

    invoke-static {v1, v2, v3, v3}, Lkiller/elfin/util/ToastUtil;->toast(Ljava/lang/String;III)V

    goto :goto_0
.end method

.method public commandScriptStart()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 99
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mq/sdk/MqRunner;->isScriptStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    sget-object v0, Lkiller/elfin/Free;->runner:Lkiller/elfin/runner/ScriptRunner;

    invoke-interface {v0}, Lkiller/elfin/runner/ScriptRunner;->runScript()V

    .line 101
    const-string v0, "[\u4e91\u63a7]\u542f\u52a8\u811a\u672c"

    const/16 v1, 0x7d0

    invoke-static {v0, v1, v2, v2}, Lkiller/elfin/util/ToastUtil;->toast(Ljava/lang/String;III)V

    .line 103
    :cond_0
    return-void
.end method

.method public commandScriptStop()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 106
    sget-object v0, Lkiller/elfin/Free;->runner:Lkiller/elfin/runner/ScriptRunner;

    invoke-interface {v0}, Lkiller/elfin/runner/ScriptRunner;->stopScript()V

    .line 107
    const-string v0, "[\u4e91\u63a7]\u505c\u6b62\u811a\u672c"

    const/16 v1, 0x7d0

    invoke-static {v0, v1, v2, v2}, Lkiller/elfin/util/ToastUtil;->toast(Ljava/lang/String;III)V

    .line 108
    return-void
.end method

.method public getScriptCfg()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    sget-object v1, Lkiller/elfin/Free;->runner:Lkiller/elfin/runner/ScriptRunner;

    invoke-interface {v1}, Lkiller/elfin/runner/ScriptRunner;->getScriptCfg()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "scriptCfg":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "{}"

    .end local v0    # "scriptCfg":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public login(Lkiller/cloud/client/CloudClient;)V
    .locals 2
    .param p1, "client"    # Lkiller/cloud/client/CloudClient;

    .prologue
    .line 65
    new-instance v0, Lkiller/cloud/client/CloudMessage;

    invoke-direct {v0}, Lkiller/cloud/client/CloudMessage;-><init>()V

    .line 66
    .local v0, "message":Lkiller/cloud/client/CloudMessage;
    const/16 v1, 0x44c

    iput v1, v0, Lkiller/cloud/client/CloudMessage;->action:I

    .line 67
    invoke-static {}, Lkiller/elfin/config/GlobalConfig;->getCloudAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lkiller/cloud/client/CloudMessage;->appId:Ljava/lang/String;

    .line 68
    invoke-static {}, Lkiller/elfin/config/GlobalConfig;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lkiller/cloud/client/CloudMessage;->deviceName:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lkiller/cloud/client/CloudService;->getScriptCfg()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lkiller/cloud/client/CloudMessage;->scriptCfg:Ljava/lang/String;

    .line 70
    invoke-static {}, Lkiller/elfin/Free;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/share/util/AppUtils;->acquireDevicesId(Landroid/content/Context;)Lcom/cyjh/share/bean/request/DeviceInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/cyjh/share/bean/request/DeviceInfo;->DeviceCode:Ljava/lang/String;

    iput-object v1, v0, Lkiller/cloud/client/CloudMessage;->deviceId:Ljava/lang/String;

    .line 71
    sget-object v1, Lkiller/elfin/Free;->runner:Lkiller/elfin/runner/ScriptRunner;

    invoke-interface {v1}, Lkiller/elfin/runner/ScriptRunner;->isScriptStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    :goto_0
    iput-object v1, v0, Lkiller/cloud/client/CloudMessage;->running:Ljava/lang/String;

    .line 72
    invoke-virtual {p1, v0}, Lkiller/cloud/client/CloudClient;->sendCloudMessage(Lkiller/cloud/client/CloudMessage;)V

    .line 73
    return-void

    .line 71
    :cond_0
    const-string v1, "1"

    goto :goto_0
.end method

.method public loginSuccess(Lkiller/cloud/client/CloudClient;Lkiller/cloud/client/CloudMessage;)V
    .locals 5
    .param p1, "client"    # Lkiller/cloud/client/CloudClient;
    .param p2, "message"    # Lkiller/cloud/client/CloudMessage;

    .prologue
    .line 48
    const/4 v3, 0x1

    iput-boolean v3, p1, Lkiller/cloud/client/CloudClient;->isLogin:Z

    .line 49
    new-instance v0, Lkiller/core/entity/CloudDevice;

    invoke-direct {v0}, Lkiller/core/entity/CloudDevice;-><init>()V

    .line 50
    .local v0, "cloudDevice":Lkiller/core/entity/CloudDevice;
    iget-object v3, p2, Lkiller/cloud/client/CloudMessage;->deviceId:Ljava/lang/String;

    iput-object v3, v0, Lkiller/core/entity/CloudDevice;->deviceId:Ljava/lang/String;

    .line 51
    iget-object v3, p2, Lkiller/cloud/client/CloudMessage;->deviceName:Ljava/lang/String;

    iput-object v3, v0, Lkiller/core/entity/CloudDevice;->deviceName:Ljava/lang/String;

    .line 52
    iput-object v0, p1, Lkiller/cloud/client/CloudClient;->cloudDevice:Lkiller/core/entity/CloudDevice;

    .line 53
    invoke-static {}, Lkiller/elfin/Free;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 54
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_0

    .line 55
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 56
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "cloudDeviceId"

    iget-object v4, p2, Lkiller/cloud/client/CloudMessage;->deviceId:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    const-string v3, "cloudDeviceName"

    iget-object v4, p2, Lkiller/cloud/client/CloudMessage;->deviceName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-virtual {p0, p2}, Lkiller/cloud/client/CloudService;->commandHotUpdate(Lkiller/cloud/client/CloudMessage;)V

    .line 62
    return-void
.end method

.method public onScriptStart(Lkiller/cloud/client/CloudClient;)V
    .locals 2
    .param p1, "client"    # Lkiller/cloud/client/CloudClient;

    .prologue
    .line 118
    new-instance v0, Lkiller/cloud/client/CloudMessage;

    invoke-direct {v0}, Lkiller/cloud/client/CloudMessage;-><init>()V

    .line 119
    .local v0, "message":Lkiller/cloud/client/CloudMessage;
    const/16 v1, 0x1006

    iput v1, v0, Lkiller/cloud/client/CloudMessage;->action:I

    .line 120
    invoke-virtual {p0}, Lkiller/cloud/client/CloudService;->getScriptCfg()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lkiller/cloud/client/CloudMessage;->scriptCfg:Ljava/lang/String;

    .line 121
    const-string v1, "\u811a\u672c\u5f00\u59cb\u8fd0\u884c"

    iput-object v1, v0, Lkiller/cloud/client/CloudMessage;->message:Ljava/lang/String;

    .line 122
    invoke-virtual {p1, v0}, Lkiller/cloud/client/CloudClient;->sendCloudMessage(Lkiller/cloud/client/CloudMessage;)V

    .line 123
    return-void
.end method

.method public onScriptStop(Lkiller/cloud/client/CloudClient;)V
    .locals 2
    .param p1, "client"    # Lkiller/cloud/client/CloudClient;

    .prologue
    .line 111
    new-instance v0, Lkiller/cloud/client/CloudMessage;

    invoke-direct {v0}, Lkiller/cloud/client/CloudMessage;-><init>()V

    .line 112
    .local v0, "message":Lkiller/cloud/client/CloudMessage;
    const/16 v1, 0x1005

    iput v1, v0, Lkiller/cloud/client/CloudMessage;->action:I

    .line 113
    const-string v1, "\u811a\u672c\u505c\u6b62\u8fd0\u884c"

    iput-object v1, v0, Lkiller/cloud/client/CloudMessage;->message:Ljava/lang/String;

    .line 114
    invoke-virtual {p1, v0}, Lkiller/cloud/client/CloudClient;->sendCloudMessage(Lkiller/cloud/client/CloudMessage;)V

    .line 115
    return-void
.end method

.method public setRunData(Lkiller/cloud/client/CloudClient;Ljava/lang/String;)V
    .locals 2
    .param p1, "client"    # Lkiller/cloud/client/CloudClient;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 37
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    new-instance v0, Lkiller/cloud/client/CloudMessage;

    invoke-direct {v0}, Lkiller/cloud/client/CloudMessage;-><init>()V

    .line 39
    .local v0, "message":Lkiller/cloud/client/CloudMessage;
    const v1, 0x9c43

    iput v1, v0, Lkiller/cloud/client/CloudMessage;->action:I

    .line 40
    iget-object v1, p1, Lkiller/cloud/client/CloudClient;->cloudDevice:Lkiller/core/entity/CloudDevice;

    iget-object v1, v1, Lkiller/core/entity/CloudDevice;->deviceId:Ljava/lang/String;

    iput-object v1, v0, Lkiller/cloud/client/CloudMessage;->deviceId:Ljava/lang/String;

    .line 41
    iput-object p2, v0, Lkiller/cloud/client/CloudMessage;->scriptData:Ljava/lang/String;

    .line 42
    invoke-virtual {p1, v0}, Lkiller/cloud/client/CloudClient;->sendCloudMessage(Lkiller/cloud/client/CloudMessage;)V

    .line 45
    .end local v0    # "message":Lkiller/cloud/client/CloudMessage;
    :cond_0
    return-void
.end method
