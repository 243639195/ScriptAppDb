.class public Lkiller/elfin/runner/BillScriptRunner;
.super Ljava/lang/Object;
.source "BillScriptRunner.java"

# interfaces
.implements Lkiller/elfin/runner/ScriptRunner;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/ds/daisi/activity/ElfinPayActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ds/daisi/activity/ElfinPayActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/ds/daisi/activity/ElfinPayActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "BillScriptRunner"

    iput-object v0, p0, Lkiller/elfin/runner/BillScriptRunner;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lkiller/elfin/runner/BillScriptRunner;->activity:Ljava/lang/ref/WeakReference;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lkiller/elfin/runner/BillScriptRunner;Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V
    .locals 0
    .param p0, "x0"    # Lkiller/elfin/runner/BillScriptRunner;
    .param p1, "x1"    # Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lkiller/elfin/runner/BillScriptRunner;->btnRunScriptPerformClick(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V

    return-void
.end method

.method private btnRunScriptPerformClick(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V
    .locals 2
    .param p1, "scriptUipSetFragment"    # Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    .prologue
    .line 110
    if-nez p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string v1, "btnRunScript"

    invoke-static {p1, v1}, Lkiller/core/util/ClassUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 114
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    goto :goto_0
.end method

.method private getScriptUipSetFragment()Lcom/ds/daisi/fragment/ScriptUipSetFragment;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lkiller/elfin/runner/BillScriptRunner;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lkiller/elfin/runner/BillScriptRunner;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mScriptUipSetFragment"

    invoke-static {v0, v1}, Lkiller/core/util/ClassUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    .line 123
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getScriptCfg()Ljava/lang/String;
    .locals 6

    .prologue
    .line 80
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v2

    iget-object v2, v2, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v2}, Lcom/ds/daisi/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object v0

    .line 81
    .local v0, "cfgFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 83
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 88
    :goto_0
    return-object v2

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "BillScriptRunner"

    const-string v3, "getScriptCfg"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getScriptUip()Ljava/lang/String;
    .locals 6

    .prologue
    .line 93
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v2

    iget-object v2, v2, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v2}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v1

    .line 94
    .local v1, "uioFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 96
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 101
    :goto_0
    return-object v2

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BillScriptRunner"

    const-string v3, "getScriptUip"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isScriptStarted()Z
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mq/sdk/MqRunner;->isScriptStarted()Z

    move-result v0

    return v0
.end method

.method public runScript()V
    .locals 4

    .prologue
    .line 35
    iget-object v2, p0, Lkiller/elfin/runner/BillScriptRunner;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ds/daisi/activity/ElfinPayActivity;

    .line 36
    .local v1, "payActivity":Lcom/ds/daisi/activity/ElfinPayActivity;
    if-nez v1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-direct {p0}, Lkiller/elfin/runner/BillScriptRunner;->getScriptUipSetFragment()Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    move-result-object v0

    .line 40
    .local v0, "fragment":Lcom/ds/daisi/fragment/ScriptUipSetFragment;
    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/ds/daisi/AppContext;->isScriptStopRunning:Z

    .line 42
    new-instance v2, Lkiller/elfin/runner/BillScriptRunner$1;

    invoke-direct {v2, p0, v0}, Lkiller/elfin/runner/BillScriptRunner$1;-><init>(Lkiller/elfin/runner/BillScriptRunner;Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V

    invoke-virtual {v1, v2}, Lcom/ds/daisi/activity/ElfinPayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stopScript()V
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mq/sdk/MqRunner;->stop()V

    .line 76
    return-void
.end method

.method public updateUISetting(Ljava/lang/String;)V
    .locals 3
    .param p1, "cfg"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v1, p0, Lkiller/elfin/runner/BillScriptRunner;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 62
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v1}, Lcom/ds/daisi/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, p1, v2}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ds/daisi/AppContext;->updateEngineScript()V

    .line 66
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/ds/daisi/entity/ScriptUIEvent;

    invoke-direct {v2}, Lcom/ds/daisi/entity/ScriptUIEvent;-><init>()V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_1
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BillScriptRunner"

    const-string v2, "updateUISetting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
