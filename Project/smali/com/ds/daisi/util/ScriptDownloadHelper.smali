.class public Lcom/ds/daisi/util/ScriptDownloadHelper;
.super Ljava/lang/Object;
.source "ScriptDownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/util/ScriptDownloadHelper$ScriptDownloadTask;
    }
.end annotation


# static fields
.field public static HOT_SCRIPT_CHECK_UPDATE_WHEN_START_RUN:I = 0x3ec

.field public static HOT_SCRIPT_DOWNLOAD_IMMEDIATELY:I = 0x3e9

.field public static HOT_SCRIPT_DOWNLOAD_IMMEDIATELY_AND_ENGINE_RUNNING:I = 0x3eb

.field public static HOT_SCRIPT_DOWNLOAD_NEXT_TIME:I = 0x3ea

.field private static TAG:Ljava/lang/String; = "ScriptDownloadHelper"

.field private static instance:Lcom/ds/daisi/util/ScriptDownloadHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentType:I

.field mOnDownloadListener:Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;

.field private mScriptId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget v0, Lcom/ds/daisi/util/ScriptDownloadHelper;->HOT_SCRIPT_DOWNLOAD_NEXT_TIME:I

    iput v0, p0, Lcom/ds/daisi/util/ScriptDownloadHelper;->mCurrentType:I

    .line 84
    new-instance v0, Lcom/ds/daisi/util/ScriptDownloadHelper$1;

    invoke-direct {v0, p0}, Lcom/ds/daisi/util/ScriptDownloadHelper$1;-><init>(Lcom/ds/daisi/util/ScriptDownloadHelper;)V

    iput-object v0, p0, Lcom/ds/daisi/util/ScriptDownloadHelper;->mOnDownloadListener:Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;

    return-void
.end method

.method static synthetic access$100(Lcom/ds/daisi/util/ScriptDownloadHelper;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ds/daisi/util/ScriptDownloadHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/ds/daisi/util/ScriptDownloadHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ds/daisi/util/ScriptDownloadHelper;Ljava/io/File;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/ds/daisi/util/ScriptDownloadHelper;->afterDownloadSuccess(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ds/daisi/util/ScriptDownloadHelper;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/ds/daisi/util/ScriptDownloadHelper;->afterDownloadFailure()V

    return-void
.end method

.method private afterDownloadFailure()V
    .locals 2

    .line 120
    invoke-static {}, Lcom/cyjh/share/util/SpUtil;->getInstance()Lcom/cyjh/share/util/SpUtil;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/share/util/SpUtil;->getInstance()Lcom/cyjh/share/util/SpUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/share/util/SpUtil;->getLastAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/share/util/SpUtil;->setAppVersion(Ljava/lang/String;)V

    return-void
.end method

.method private afterDownloadSuccess(Ljava/io/File;)V
    .locals 4

    .line 105
    sget-object v0, Lcom/ds/daisi/util/ScriptDownloadHelper;->TAG:Ljava/lang/String;

    const-string v1, "afterDownloadSuccess --> 1 \u5f00\u59cb\u89e3\u538b\u2026\u2026"

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/ds/daisi/util/ScriptDownloadHelper;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/ds/daisi/constant/Constants;->SD_CARD_SCRIPT_ASSETS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cyjh/share/util/FileUtil;->createDataDataFileDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 107
    invoke-static {p1, v0}, Lcom/cyjh/share/util/ZipUtil;->unzipFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 108
    sget-object v1, Lcom/ds/daisi/util/ScriptDownloadHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "afterDownloadSuccess --> 2 \u89e3\u538b\u662f\u5426\u6210\u529f\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 110
    invoke-static {p1}, Lcom/cyjh/share/util/FileUtil;->deleteSingleFile(Ljava/io/File;)Z

    .line 111
    iget-object p1, p0, Lcom/ds/daisi/util/ScriptDownloadHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/ds/daisi/util/ScriptUtil;->isValidScriptId(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/ds/daisi/util/ScriptDownloadHelper;->initScript()V

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {}, Lcom/cyjh/share/util/SpUtil;->getInstance()Lcom/cyjh/share/util/SpUtil;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/share/util/SpUtil;->getInstance()Lcom/cyjh/share/util/SpUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/share/util/SpUtil;->getLastAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cyjh/share/util/SpUtil;->setAppVersion(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static get()Lcom/ds/daisi/util/ScriptDownloadHelper;
    .locals 2

    .line 42
    sget-object v0, Lcom/ds/daisi/util/ScriptDownloadHelper;->instance:Lcom/ds/daisi/util/ScriptDownloadHelper;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/ds/daisi/util/ScriptDownloadHelper;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/ds/daisi/util/ScriptDownloadHelper;->instance:Lcom/ds/daisi/util/ScriptDownloadHelper;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/ds/daisi/util/ScriptDownloadHelper;

    invoke-direct {v1}, Lcom/ds/daisi/util/ScriptDownloadHelper;-><init>()V

    sput-object v1, Lcom/ds/daisi/util/ScriptDownloadHelper;->instance:Lcom/ds/daisi/util/ScriptDownloadHelper;

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_1
    :goto_0
    sget-object v0, Lcom/ds/daisi/util/ScriptDownloadHelper;->instance:Lcom/ds/daisi/util/ScriptDownloadHelper;

    return-object v0
.end method

.method private initScript()V
    .locals 3

    .line 124
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ds/daisi/AppContext;->updateEngineScript()V

    .line 125
    invoke-static {}, Lcom/cyjh/share/util/SpUtil;->getInstance()Lcom/cyjh/share/util/SpUtil;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/share/util/SpUtil;->getInstance()Lcom/cyjh/share/util/SpUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/share/util/SpUtil;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/share/util/SpUtil;->setLastAppVersion(Ljava/lang/String;)V

    .line 126
    iget v0, p0, Lcom/ds/daisi/util/ScriptDownloadHelper;->mCurrentType:I

    sget v1, Lcom/ds/daisi/util/ScriptDownloadHelper;->HOT_SCRIPT_DOWNLOAD_IMMEDIATELY_AND_ENGINE_RUNNING:I

    if-ne v0, v1, :cond_0

    .line 127
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mq/sdk/MqRunner;->isScriptStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mq/sdk/MqRunner;->stop()V

    .line 130
    :cond_0
    sget v0, Lcom/ds/daisi/util/ScriptDownloadHelper;->HOT_SCRIPT_CHECK_UPDATE_WHEN_START_RUN:I

    iget v1, p0, Lcom/ds/daisi/util/ScriptDownloadHelper;->mCurrentType:I

    if-ne v0, v1, :cond_1

    .line 131
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mq/sdk/MqRunner;->start()V

    .line 133
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/entity/ScriptUIEvent;

    iget v2, p0, Lcom/ds/daisi/util/ScriptDownloadHelper;->mCurrentType:I

    invoke-direct {v1, v2}, Lcom/ds/daisi/entity/ScriptUIEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 134
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/cyjh/share/event/RTDFileUIEvent;

    invoke-direct {v1}, Lcom/cyjh/share/event/RTDFileUIEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private scriptDownloadTask(Ljava/lang/String;)V
    .locals 4

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ds/daisi/util/ScriptDownloadHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ds/daisi/constant/Constants;->SD_CARD_SCRIPT_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    sget-object v1, Lcom/ds/daisi/util/ScriptDownloadHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadScriptOperate --> path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",scriptDownloadUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v1, Lcom/ds/daisi/util/ScriptDownloadHelper$ScriptDownloadTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ds/daisi/util/ScriptDownloadHelper$ScriptDownloadTask;-><init>(Lcom/ds/daisi/util/ScriptDownloadHelper;Lcom/ds/daisi/util/ScriptDownloadHelper$1;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-virtual {v1, v2}, Lcom/ds/daisi/util/ScriptDownloadHelper$ScriptDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public downloadScriptOperate(Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/ds/daisi/util/ScriptDownloadHelper;->scriptDownloadTask(Ljava/lang/String;)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;I)Lcom/ds/daisi/util/ScriptDownloadHelper;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/ds/daisi/util/ScriptDownloadHelper;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/ds/daisi/util/ScriptDownloadHelper;->mScriptId:Ljava/lang/String;

    .line 55
    iput p3, p0, Lcom/ds/daisi/util/ScriptDownloadHelper;->mCurrentType:I

    return-object p0
.end method
