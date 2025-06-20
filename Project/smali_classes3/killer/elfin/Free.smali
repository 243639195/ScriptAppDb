.class public Lkiller/elfin/Free;
.super Ljava/lang/Object;
.source "Free.java"


# static fields
.field private static final BILL_TEMPLATE:I = 0x3e9

.field private static final FREE_TEMPLATE:I = 0x3ea

.field public static runner:Lkiller/elfin/runner/ScriptRunner;

.field private static templateType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput v0, Lkiller/elfin/Free;->templateType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAtcFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 86
    sget v0, Lkiller/elfin/Free;->templateType:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    .line 87
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/Script;->getAtcFile()Ljava/io/File;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 88
    :cond_0
    sget v0, Lkiller/elfin/Free;->templateType:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_1

    .line 89
    invoke-static {}, Lcom/cyjh/elfin/AppContext;->getInstance()Lcom/cyjh/elfin/AppContext;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/AppContext;->mScript:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getAtcFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCfgFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 77
    sget v0, Lkiller/elfin/Free;->templateType:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    .line 78
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 79
    :cond_0
    sget v0, Lkiller/elfin/Free;->templateType:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_1

    .line 80
    invoke-static {}, Lcom/cyjh/elfin/AppContext;->getInstance()Lcom/cyjh/elfin/AppContext;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/AppContext;->mScript:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 68
    sget v0, Lkiller/elfin/Free;->templateType:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    .line 69
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 70
    :cond_0
    sget v0, Lkiller/elfin/Free;->templateType:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_1

    .line 71
    invoke-static {}, Lcom/cyjh/elfin/AppContext;->getInstance()Lcom/cyjh/elfin/AppContext;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Lkiller/elfin/Free;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 62
    const-string v1, "config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 64
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static hotUpdate()V
    .locals 6

    .prologue
    .line 53
    :try_start_0
    invoke-static {}, Lkiller/elfin/update/ScriptUpdateHelper;->get()Lkiller/elfin/update/ScriptUpdateHelper;

    move-result-object v1

    invoke-static {}, Lkiller/elfin/config/GlobalConfig;->getScriptUpdateUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lkiller/elfin/config/GlobalConfig;->getScriptVersion()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lkiller/elfin/update/ScriptUpdateHelper;->updateScript(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 55
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Free"

    const-string v2, "hotUpdate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static init(Ljava/lang/Object;)V
    .locals 1
    .param p0, "activity"    # Ljava/lang/Object;

    .prologue
    .line 28
    instance-of v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity;

    if-eqz v0, :cond_1

    .line 29
    new-instance v0, Lkiller/elfin/runner/BillScriptRunner;

    check-cast p0, Lcom/ds/daisi/activity/ElfinPayActivity;

    .end local p0    # "activity":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lkiller/elfin/runner/BillScriptRunner;-><init>(Lcom/ds/daisi/activity/ElfinPayActivity;)V

    sput-object v0, Lkiller/elfin/Free;->runner:Lkiller/elfin/runner/ScriptRunner;

    .line 30
    const/16 v0, 0x3e9

    sput v0, Lkiller/elfin/Free;->templateType:I

    .line 35
    :cond_0
    :goto_0
    invoke-static {}, Lkiller/elfin/config/GlobalConfig;->initConfig()V

    .line 36
    invoke-static {}, Lkiller/elfin/Free;->hotUpdate()V

    .line 37
    return-void

    .line 31
    .restart local p0    # "activity":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lcom/cyjh/elfin/activity/ElfinFreeActivity;

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Lkiller/elfin/runner/FreeScriptRunner;

    check-cast p0, Lcom/cyjh/elfin/activity/ElfinFreeActivity;

    .end local p0    # "activity":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lkiller/elfin/runner/FreeScriptRunner;-><init>(Lcom/cyjh/elfin/activity/ElfinFreeActivity;)V

    sput-object v0, Lkiller/elfin/Free;->runner:Lkiller/elfin/runner/ScriptRunner;

    .line 33
    const/16 v0, 0x3ea

    sput v0, Lkiller/elfin/Free;->templateType:I

    goto :goto_0
.end method

.method public static initScript()V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Lkiller/elfin/Free;->updateEngineScript()V

    .line 104
    sget v0, Lkiller/elfin/Free;->templateType:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1

    .line 105
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/entity/ScriptUIEvent;

    invoke-direct {v1}, Lcom/ds/daisi/entity/ScriptUIEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 106
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/cyjh/share/event/RTDFileUIEvent;

    invoke-direct {v1}, Lcom/cyjh/share/event/RTDFileUIEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    sget v0, Lkiller/elfin/Free;->templateType:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    .line 108
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/entity/ScriptUIEvent;

    invoke-direct {v1}, Lcom/cyjh/elfin/entity/ScriptUIEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 109
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/cyjh/share/event/RTDFileUIEvent;

    invoke-direct {v1}, Lcom/cyjh/share/event/RTDFileUIEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static onScriptStart()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lkiller/elfin/config/GlobalConfig;->isRunScriptUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lkiller/elfin/Free;->hotUpdate()V

    .line 49
    :cond_0
    return-void
.end method

.method public static onScriptStop()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lkiller/elfin/config/GlobalConfig;->isStopScriptUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lkiller/elfin/Free;->hotUpdate()V

    .line 43
    :cond_0
    return-void
.end method

.method public static updateEngineScript()V
    .locals 2

    .prologue
    .line 95
    sget v0, Lkiller/elfin/Free;->templateType:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1

    .line 96
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ds/daisi/AppContext;->updateEngineScript()V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    sget v0, Lkiller/elfin/Free;->templateType:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    .line 98
    invoke-static {}, Lcom/cyjh/elfin/AppContext;->getInstance()Lcom/cyjh/elfin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/AppContext;->updateEngineScript()V

    goto :goto_0
.end method
