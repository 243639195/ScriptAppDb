.class public Lcom/ds/daisi/AppContext;
.super Landroid/app/Application;
.source "AppContext.java"

# interfaces
.implements Lcom/ds/daisi/constant/APPConstant;
.implements Lcom/ds/daisi/pay/PayConstants;
.implements Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;
.implements Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/AppContext$ScreenOrientationConversion;,
        Lcom/ds/daisi/AppContext$ShakeListener;
    }
.end annotation


# static fields
.field private static final FLAG_RESET_TIME:I = 0xbb8

.field private static final LOG_TAG:Ljava/lang/String; = "ELFIN"

.field private static final TAG:Ljava/lang/String; = "AppContext"

.field private static appContext:Lcom/ds/daisi/AppContext;

.field private static mRequestQueue:Lcom/android/volley/RequestQueue;

.field public static sIsBooted:Z


# instance fields
.field public ExpireTime:J

.field public STATE_APP:I

.field public STATE_SCRIPT:I

.field public checkedScreenOrientation:Z

.field public commonLog:Lcom/ds/daisi/log/CommonLog;

.field public display:Landroid/view/Display;

.field public dueTime:I

.field flag:Z

.field public isDisableVolumeKey:Z

.field public isEmulator:Z

.field public isEntryMainActivity:Z

.field public isForceUpdate:Z

.field public isInitEngineComplete:Z

.field private isPreventRepeatedVolume:Z

.field public isScriptStopRunning:Z

.field private isStatisStopScript:Z

.field public isUseSdcardScript:Z

.field private mAppFilePath:Ljava/lang/String;

.field public mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

.field private mHandler:Landroid/os/Handler;

.field public mLunchType:Ljava/lang/String;

.field public mPathPackagenameLog:Ljava/lang/String;

.field public mScreenConversion:Lcom/ds/daisi/AppContext$ScreenOrientationConversion;

.field public mScript:Lcom/ds/daisi/entity/Script;

.field public mScriptType:Z

.field public mSharedUsed:Landroid/content/SharedPreferences;

.field public mUipHelper:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

.field private mqRunner:Lcom/cyjh/mq/sdk/MqRunner;

.field public oldRegCode:Ljava/lang/String;

.field private onSpecialMqCmdCallback:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

.field public payCheckType:I

.field public regCode:Ljava/lang/String;

.field public runTime:I

.field public script4Run:Lcom/cyjh/mq/sdk/entity/Script4Run;

.field public sharedPreferences:Landroid/content/SharedPreferences;

.field public tokenKey:J

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 112
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 120
    new-instance v0, Lcom/ds/daisi/log/CommonLog;

    invoke-direct {v0}, Lcom/ds/daisi/log/CommonLog;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/AppContext;->commonLog:Lcom/ds/daisi/log/CommonLog;

    const/4 v0, 0x3

    .line 138
    iput v0, p0, Lcom/ds/daisi/AppContext;->STATE_APP:I

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    .line 164
    iput-boolean v0, p0, Lcom/ds/daisi/AppContext;->checkedScreenOrientation:Z

    .line 172
    iput-boolean v0, p0, Lcom/ds/daisi/AppContext;->isDisableVolumeKey:Z

    const/4 v1, 0x1

    .line 173
    iput-boolean v1, p0, Lcom/ds/daisi/AppContext;->isStatisStopScript:Z

    .line 174
    iput-boolean v0, p0, Lcom/ds/daisi/AppContext;->isInitEngineComplete:Z

    const-string v2, ""

    .line 178
    iput-object v2, p0, Lcom/ds/daisi/AppContext;->oldRegCode:Ljava/lang/String;

    const-string v2, ""

    .line 179
    iput-object v2, p0, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    .line 184
    iput-boolean v0, p0, Lcom/ds/daisi/AppContext;->isForceUpdate:Z

    .line 188
    iput-boolean v0, p0, Lcom/ds/daisi/AppContext;->isEntryMainActivity:Z

    .line 192
    iput-boolean v0, p0, Lcom/ds/daisi/AppContext;->isEmulator:Z

    .line 197
    iput-boolean v1, p0, Lcom/ds/daisi/AppContext;->isScriptStopRunning:Z

    .line 200
    new-instance v2, Lcom/ds/daisi/AppContext$1;

    invoke-direct {v2, p0}, Lcom/ds/daisi/AppContext$1;-><init>(Lcom/ds/daisi/AppContext;)V

    iput-object v2, p0, Lcom/ds/daisi/AppContext;->mHandler:Landroid/os/Handler;

    .line 542
    new-instance v2, Lcom/ds/daisi/AppContext$3;

    invoke-direct {v2, p0}, Lcom/ds/daisi/AppContext$3;-><init>(Lcom/ds/daisi/AppContext;)V

    iput-object v2, p0, Lcom/ds/daisi/AppContext;->onSpecialMqCmdCallback:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    .line 711
    iput-boolean v1, p0, Lcom/ds/daisi/AppContext;->flag:Z

    .line 825
    iput-boolean v0, p0, Lcom/ds/daisi/AppContext;->isPreventRepeatedVolume:Z

    return-void
.end method

.method static synthetic access$100(Lcom/ds/daisi/AppContext;)Lcom/cyjh/mq/sdk/MqRunner;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/ds/daisi/AppContext;->mqRunner:Lcom/cyjh/mq/sdk/MqRunner;

    return-object p0
.end method

.method static synthetic access$402(Lcom/ds/daisi/AppContext;Z)Z
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/ds/daisi/AppContext;->isStatisStopScript:Z

    return p1
.end method

.method static synthetic access$500(Lcom/ds/daisi/AppContext;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/ds/daisi/AppContext;->scriptParamsRunSet()V

    return-void
.end method

.method static synthetic access$602(Lcom/ds/daisi/AppContext;Z)Z
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/ds/daisi/AppContext;->isPreventRepeatedVolume:Z

    return p1
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 112
    sget-object v0, Lcom/ds/daisi/AppContext;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ds/daisi/AppContext;)Landroid/os/Handler;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/ds/daisi/AppContext;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private createDirs()V
    .locals 2

    .line 279
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ds/daisi/AppContext;->mPathPackagenameLog:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method private createElfinFloatView()V
    .locals 3

    .line 411
    new-instance v0, Lcom/ds/daisi/floatview/DeleteFloatView;

    invoke-direct {v0, p0}, Lcom/ds/daisi/floatview/DeleteFloatView;-><init>(Landroid/content/Context;)V

    .line 412
    new-instance v1, Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-direct {v1, p0, v0}, Lcom/ds/daisi/floatview/ElfinFloatView;-><init>(Landroid/content/Context;Lcom/ds/daisi/floatview/DeleteFloatView;)V

    iput-object v1, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    .line 413
    iget-object v1, p0, Lcom/ds/daisi/AppContext;->windowManager:Landroid/view/WindowManager;

    invoke-virtual {v0}, Lcom/ds/daisi/floatview/DeleteFloatView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    iget-object v2, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {v2}, Lcom/ds/daisi/floatview/ElfinFloatView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    invoke-virtual {p0}, Lcom/ds/daisi/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->rotateScreen()V

    :cond_0
    return-void
.end method

.method private ddyStaticsJudgeOperate()V
    .locals 4

    .line 1176
    sget-object v0, Lcom/ds/daisi/AppContext;->TAG:Ljava/lang/String;

    const-string v1, "ddyStaticsJudgeOperate --> 1"

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    invoke-static {}, Lcom/cyjh/share/helper/DdyEnvironmentHelper;->get()Lcom/cyjh/share/helper/DdyEnvironmentHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/share/helper/DdyEnvironmentHelper;->isDdy()Z

    move-result v0

    .line 1178
    sget-object v1, Lcom/ds/daisi/AppContext;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ddyStaticsJudgeOperate --> 2 isDdyEnvironment="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 1180
    invoke-static {}, Lcom/cyjh/share/helper/DdyStatisticsHelper;->get()Lcom/cyjh/share/helper/DdyStatisticsHelper;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/AppContext$10;

    invoke-direct {v1, p0}, Lcom/ds/daisi/AppContext$10;-><init>(Lcom/ds/daisi/AppContext;)V

    invoke-virtual {v0, p0, v1}, Lcom/cyjh/share/helper/DdyStatisticsHelper;->init(Landroid/content/Context;Lcom/cyjh/share/helper/DdyStatisticsHelper$DdyDailyStatisticsListener;)Lcom/cyjh/share/helper/DdyStatisticsHelper;

    .line 1187
    invoke-static {}, Lcom/cyjh/share/helper/DdyStatisticsHelper;->get()Lcom/cyjh/share/helper/DdyStatisticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/share/helper/DdyStatisticsHelper;->startTimer()V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/ds/daisi/AppContext;
    .locals 1

    .line 255
    sget-object v0, Lcom/ds/daisi/AppContext;->appContext:Lcom/ds/daisi/AppContext;

    return-object v0
.end method

.method public static getmRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    .line 265
    sget-object v0, Lcom/ds/daisi/AppContext;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method private initHostToEngine()V
    .locals 4

    .line 1070
    invoke-static {}, Lcom/cyjh/share/config/MyConfig;->getApp3DomainName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cyjh/share/config/MyConfig;->getApp3DomainName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cyjh/share/config/MyConfig;->getApp3DomainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1071
    :goto_0
    sget-object v1, Lcom/ds/daisi/AppContext;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initHostToEngine --> baseUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cyjh/mq/sdk/MqRunner;->initHost(Ljava/lang/String;)V

    return-void
.end method

.method private initMQScript()V
    .locals 18

    move-object/from16 v1, p0

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ds/daisi/AppContext;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ds/daisi/constant/Constants;->SD_CARD_SCRIPT_ASSETS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 322
    new-instance v3, Ljava/io/File;

    const-string v4, "script.lc"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    new-instance v4, Ljava/io/File;

    const-string v5, "script.prop"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    new-instance v5, Ljava/io/File;

    const-string v6, "script.atc"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    new-instance v6, Ljava/io/File;

    const-string v7, "script.ui"

    invoke-direct {v6, v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    new-instance v7, Ljava/io/File;

    const-string v8, "script.uip"

    invoke-direct {v7, v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    new-instance v8, Ljava/io/File;

    const-string v9, "script.rtd"

    invoke-direct {v8, v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    new-instance v2, Ljava/io/File;

    iget-object v9, v1, Lcom/ds/daisi/AppContext;->mAppFilePath:Ljava/lang/String;

    const-string v10, "script.lc"

    invoke-static {v9, v10}, Lcom/ds/daisi/util/FileUtils;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    new-instance v9, Ljava/io/File;

    iget-object v10, v1, Lcom/ds/daisi/AppContext;->mAppFilePath:Ljava/lang/String;

    const-string v11, "script.prop"

    invoke-static {v10, v11}, Lcom/ds/daisi/util/FileUtils;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcom/ds/daisi/AppContext;->mAppFilePath:Ljava/lang/String;

    const-string v12, "script.atc"

    invoke-static {v11, v12}, Lcom/ds/daisi/util/FileUtils;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    new-instance v11, Ljava/io/File;

    iget-object v12, v1, Lcom/ds/daisi/AppContext;->mAppFilePath:Ljava/lang/String;

    const-string v13, "script.ui"

    invoke-static {v12, v13}, Lcom/ds/daisi/util/FileUtils;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    new-instance v12, Ljava/io/File;

    iget-object v13, v1, Lcom/ds/daisi/AppContext;->mAppFilePath:Ljava/lang/String;

    const-string v14, "script.uip"

    invoke-static {v13, v14}, Lcom/ds/daisi/util/FileUtils;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    new-instance v13, Ljava/io/File;

    iget-object v14, v1, Lcom/ds/daisi/AppContext;->mAppFilePath:Ljava/lang/String;

    const-string v15, "script.rtd"

    invoke-static {v14, v15}, Lcom/ds/daisi/util/FileUtils;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    new-instance v14, Ljava/io/File;

    iget-object v15, v1, Lcom/ds/daisi/AppContext;->mAppFilePath:Ljava/lang/String;

    move-object/from16 v16, v2

    const-string v2, "script.cfg"

    invoke-static {v15, v2}, Lcom/ds/daisi/util/FileUtils;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v1, Lcom/ds/daisi/AppContext;->isUseSdcardScript:Z

    .line 337
    sget-object v2, Lcom/ds/daisi/AppContext;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    const-string v3, "initMQScript --> 1 isUseSdcardScript="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/ds/daisi/AppContext;->isUseSdcardScript:Z

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_2
    invoke-static {v2}, Lcom/ds/daisi/util/JsonUtils;->parPropJson(Ljava/io/InputStream;)Lcom/ds/daisi/entity/Script;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/ds/daisi/AppContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "script.prop"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_2

    :goto_3
    iput-object v2, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    .line 347
    iget-object v2, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    iget-boolean v3, v1, Lcom/ds/daisi/AppContext;->isUseSdcardScript:Z

    if-eqz v3, :cond_3

    move-object/from16 v3, v17

    goto :goto_4

    :cond_3
    move-object/from16 v3, v16

    :goto_4
    invoke-virtual {v2, v3}, Lcom/ds/daisi/entity/Script;->setLcFile(Ljava/io/File;)V

    .line 348
    iget-object v2, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    iget-boolean v3, v1, Lcom/ds/daisi/AppContext;->isUseSdcardScript:Z

    if-eqz v3, :cond_4

    goto :goto_5

    :cond_4
    move-object v4, v9

    :goto_5
    invoke-virtual {v2, v4}, Lcom/ds/daisi/entity/Script;->setPropFile(Ljava/io/File;)V

    .line 349
    iget-object v2, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    iget-boolean v3, v1, Lcom/ds/daisi/AppContext;->isUseSdcardScript:Z

    if-eqz v3, :cond_5

    goto :goto_6

    :cond_5
    move-object v5, v10

    :goto_6
    invoke-virtual {v2, v5}, Lcom/ds/daisi/entity/Script;->setAtcFile(Ljava/io/File;)V

    .line 350
    iget-object v2, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    iget-boolean v3, v1, Lcom/ds/daisi/AppContext;->isUseSdcardScript:Z

    if-eqz v3, :cond_6

    goto :goto_7

    :cond_6
    move-object v6, v11

    :goto_7
    invoke-virtual {v2, v6}, Lcom/ds/daisi/entity/Script;->setUiFile(Ljava/io/File;)V

    .line 351
    iget-object v2, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    iget-boolean v3, v1, Lcom/ds/daisi/AppContext;->isUseSdcardScript:Z

    if-eqz v3, :cond_7

    goto :goto_8

    :cond_7
    move-object v7, v12

    :goto_8
    invoke-virtual {v2, v7}, Lcom/ds/daisi/entity/Script;->setUipFile(Ljava/io/File;)V

    .line 352
    iget-object v2, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    iget-boolean v3, v1, Lcom/ds/daisi/AppContext;->isUseSdcardScript:Z

    if-eqz v3, :cond_8

    move-object v13, v8

    :cond_8
    invoke-virtual {v2, v13}, Lcom/ds/daisi/entity/Script;->setRtdFile(Ljava/io/File;)V

    .line 354
    iget-object v2, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v2, v14}, Lcom/ds/daisi/entity/Script;->setCfgFile(Ljava/io/File;)V

    .line 355
    sget-object v2, Lcom/ds/daisi/AppContext;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initMQScript --> 3 cfgFile absolutePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v4}, Lcom/ds/daisi/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",isUseSdcardScript="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/ds/daisi/AppContext;->isUseSdcardScript:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    sget-object v2, Lcom/ds/daisi/AppContext;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initMQScript --> 4 AppId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v4}, Lcom/ds/daisi/entity/Script;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",Version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v4}, Lcom/ds/daisi/entity/Script;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 358
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 359
    sget-object v3, Lcom/ds/daisi/AppContext;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initMQScript --> ex= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void
.end method

.method private initPath()V
    .locals 2

    .line 269
    invoke-virtual {p0}, Lcom/ds/daisi/AppContext;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/AppContext;->mAppFilePath:Ljava/lang/String;

    .line 270
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-virtual {p0}, Lcom/ds/daisi/AppContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ds/daisi/util/FileUtils;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "log"

    invoke-static {v0, v1}, Lcom/ds/daisi/util/FileUtils;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/AppContext;->mPathPackagenameLog:Ljava/lang/String;

    .line 272
    invoke-direct {p0}, Lcom/ds/daisi/AppContext;->createDirs()V

    return-void
.end method

.method private initScript4Run()V
    .locals 4

    .line 287
    new-instance v0, Lcom/cyjh/mq/sdk/entity/Script4Run;

    iget-object v1, p0, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v1}, Lcom/ds/daisi/entity/Script;->getLcFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    .line 288
    invoke-virtual {v2}, Lcom/ds/daisi/entity/Script;->getAtcFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v3}, Lcom/ds/daisi/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/cyjh/mq/sdk/entity/Script4Run;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ds/daisi/AppContext;->script4Run:Lcom/cyjh/mq/sdk/entity/Script4Run;

    return-void
.end method

.method private initShake()V
    .locals 3

    const-string v0, "vibrator"

    .line 379
    invoke-virtual {p0, v0}, Lcom/ds/daisi/AppContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 380
    new-instance v1, Lcom/ds/daisi/AppContext$ShakeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ds/daisi/AppContext$ShakeListener;-><init>(Landroid/content/Context;Lcom/ds/daisi/AppContext$1;)V

    .line 381
    new-instance v2, Lcom/ds/daisi/AppContext$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/ds/daisi/AppContext$2;-><init>(Lcom/ds/daisi/AppContext;Lcom/ds/daisi/AppContext$ShakeListener;Landroid/os/Vibrator;)V

    invoke-static {v1, v2}, Lcom/ds/daisi/AppContext$ShakeListener;->access$300(Lcom/ds/daisi/AppContext$ShakeListener;Lcom/ds/daisi/AppContext$ShakeListener$OnShakeListener;)V

    return-void
.end method

.method private initUmeng()V
    .locals 3

    const-string v0, "Umeng"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 260
    invoke-static {p0, v1, v0, v2, v1}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 261
    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->openActivityDurationTrack(Z)V

    return-void
.end method

.method private initlService()V
    .locals 2

    .line 311
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ds/daisi/services/PhoneStateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ds/daisi/AppContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private isDesktop()Ljava/lang/String;
    .locals 2

    const-string v0, "activity"

    .line 604
    invoke-virtual {p0, v0}, Lcom/ds/daisi/AppContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 606
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 607
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private runScriptWithAppStatus()V
    .locals 1

    .line 489
    iget v0, p0, Lcom/ds/daisi/AppContext;->STATE_APP:I

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f090126

    .line 507
    invoke-virtual {p0, v0}, Lcom/ds/daisi/AppContext;->showToast(I)V

    goto :goto_0

    :pswitch_0
    const v0, 0x7f090125

    .line 501
    invoke-virtual {p0, v0}, Lcom/ds/daisi/AppContext;->showToast(I)V

    goto :goto_0

    :pswitch_1
    const v0, 0x7f090110

    .line 504
    invoke-virtual {p0}, Lcom/ds/daisi/AppContext;->runScript()V

    goto :goto_0

    .line 498
    :pswitch_2
    invoke-virtual {p0}, Lcom/ds/daisi/AppContext;->runScript()V

    goto :goto_0

    :pswitch_3
    const v0, 0x7f090127

    .line 494
    invoke-virtual {p0, v0}, Lcom/ds/daisi/AppContext;->showToast(I)V

    .line 495
    invoke-virtual {p0}, Lcom/ds/daisi/AppContext;->runScript()V

    goto :goto_0

    .line 491
    :pswitch_4
    invoke-virtual {p0}, Lcom/ds/daisi/AppContext;->runScript()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private scriptParamsRunSet()V
    .locals 4

    .line 528
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->script4Run:Lcom/cyjh/mq/sdk/entity/Script4Run;

    const v1, 0x7f090122

    invoke-virtual {p0, v1}, Lcom/ds/daisi/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/mq/sdk/entity/Script4Run;->appId:Ljava/lang/String;

    .line 529
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->script4Run:Lcom/cyjh/mq/sdk/entity/Script4Run;

    const v1, 0x7f09012d

    invoke-virtual {p0, v1}, Lcom/ds/daisi/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/mq/sdk/entity/Script4Run;->username:Ljava/lang/String;

    .line 531
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mqRunner:Lcom/cyjh/mq/sdk/MqRunner;

    iget-object v1, p0, Lcom/ds/daisi/AppContext;->script4Run:Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-virtual {v0, v1}, Lcom/cyjh/mq/sdk/MqRunner;->setScript(Lcom/cyjh/mq/sdk/entity/Script4Run;)Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/cyjh/mq/sdk/inf/IRunner;->setOnScriptListener(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;)Lcom/cyjh/mq/sdk/inf/IRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/mq/sdk/inf/IRunner;->start()V

    return-void
.end method

.method private startVibrator()V
    .locals 4

    const-string v0, "vibrator"

    .line 404
    invoke-virtual {p0, v0}, Lcom/ds/daisi/AppContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 405
    iget-object v1, p0, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "com.cyjh.elfin.activity.SettingActivity.swtVibration"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x3e8

    .line 406
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 250
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 251
    invoke-static {p1}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public backApp()V
    .locals 3

    .line 585
    invoke-direct {p0}, Lcom/ds/daisi/AppContext;->isDesktop()Ljava/lang/String;

    move-result-object v0

    .line 586
    invoke-virtual {p0}, Lcom/ds/daisi/AppContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ds/daisi/AppContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 588
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    .line 589
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    .line 590
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    invoke-virtual {p0, v0}, Lcom/ds/daisi/AppContext;->startActivity(Landroid/content/Intent;)V

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ds/daisi/floatview/ElfinFloatView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public checkJarApp()V
    .locals 0

    .line 482
    invoke-direct {p0}, Lcom/ds/daisi/AppContext;->runScriptWithAppStatus()V

    return-void
.end method

.method public deleteFloatView()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ds/daisi/floatview/ElfinFloatView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 445
    iput-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    :cond_1
    return-void
.end method

.method public getInteger(I)I
    .locals 1

    .line 369
    invoke-virtual {p0}, Lcom/ds/daisi/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1
.end method

.method public initElf()V
    .locals 6

    .line 1076
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v0

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getBaseRequestParams(Landroid/content/Context;)Lcom/cyjh/share/bean/request/BaseRequestValueInfo;

    move-result-object v0

    .line 1077
    new-instance v1, Ljava/lang/String;

    const-string v2, "LS0tLS1CRUdJTiBQVUJMSUMgS0VZLS0tLS0KTUlHZk1BMEdDU3FHU0liM0RRRUJBUVVBQTRHTkFEQ0JpUUtCZ1FDd0NHMWN5VzFtVHRZcGJlR01MKzVNUFlsVApXR1B2QXhwbEFMV2FJNXZNY2NQZUdZRnJsRERhRG10SmhWUnpiNHpTcUgwaTdtZFVtaFlrLzFLMXhQd3hUNHduClI2d013V0l2dVlLNEdtMk1wQko3ZDBRVmhQVndOS3FJbTlNaUZkTElqTTRjZEhTclRKeGRrVW5XUkE0dWVkaW8KUnZIQXF4Nmo5MjdyUjAwV3d3SURBUUFCCi0tLS0tRU5EIFBVQkxJQyBLRVktLS0tLQo="

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 1078
    new-instance v2, Ljava/lang/String;

    const-string v4, "LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlDV3dJQkFBS0JnUUN5blpzRnUraTRLRWQ2SHZzU2Z3UERMdEkrQllCS0JIaWZKbVdjM3plQUdXMkFZWEw1Cm9aeUw4TjJqTDZLa1Z3aU9Za28xVW05Y0N2RkNxMFpQc2s0MVhBTGZOZzZLZkZDdDhLcEJ6MnY3OU84bHA2enUKQ2VEVXBTK2ExY3Y0T1g5N3hGMWNxN0ZJNW9KQTZQWksrSWg2Uy9kMHhuMk0vNFkrOVNCSVFKbkRnd0lEQVFBQgpBb0dBQSszY1MzdXB1cEN3UklCMVRNcUhLUDVaQTZKQ3JkNG1wU0djR2ZUOXdlU2lvd1lCd3lTMG8rTndOMkhFCml5YndUNVF4Um1FQ01CMG0xNEpGc1ZwenhwdjVBaHdyVHM2OEtJVkdsUVlzN015enpyVThFNis4Vm8veFI5U2wKREJnSmNPSm1GUE9PQ05CTTNQcHI2Zlp6VjNDUnhmY3crZWpaaUlzdGc0RXErd2tDUVFEUGIvT0EwR0lLaW5lVQptSFZZZzh3RFVFRUx6bEVuQXU2QytpRGNhb2NuMHhiRlQvU3N0c3UyRlJVSnZHRWFYNFdPRUdwS1JsQXZleElBCkZPdzFMWUMzQWtFQTNHNVRmejd1ZlRSREFqTWhDQ3VNLzZqU3lQT3k0Ull5RmJBNEc2eDdsdzIzMVNhOHBPU0YKNDlUeFNDR2k1SCtoZWVubnprTzFlVzJaWXdLM0JLWHZsUUpBYVZ0TTY5SHEyYnUyUEl5cW5RaGpxQk1zMWxnMQpzNEN6cjJabkprd2MxVWRMTzIvK3IzSXdTUXl3SUwvQytlZ21KeCtEUExJMXE4ZndQb1poNmlod1JRSkFSWkFqCmxZSjhyTkp6V3h4YmprS0FLcVpTYnN4SlpUTWw5eVkzYnJST0JHdDEyalJ4VC9BMk9LSVl5dFNpblUyUjNmRnQKRC9EYU1rbmVJQnJaT3dSS3lRSkFTSGtIV2R0Rk5pbTViWmtyUXd3TnR1S2pOMDV6NVNYUC91SWR3Y0xXN3hETApPSHFqQ0hBNC83dUZ5enA1bFZpNmNDVWVuNWpBeUN5NnpkMXA2SzJmeVE9PQotLS0tLUVORCBSU0EgUFJJVkFURSBLRVktLS0tLQo="

    invoke-static {v4, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    .line 1079
    new-instance v4, Lcom/cyjh/share/bean/request/EngineParams;

    invoke-direct {v4, v0}, Lcom/cyjh/share/bean/request/EngineParams;-><init>(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)V

    .line 1080
    invoke-virtual {p0}, Lcom/ds/daisi/AppContext;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/cyjh/share/bean/request/EngineParams;->PackageName:Ljava/lang/String;

    .line 1081
    invoke-static {}, Lcom/cyjh/share/config/MyConfig;->getApp3DomainName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cyjh/share/config/MyConfig;->getApp3DomainName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cyjh/share/config/MyConfig;->getApp3DomainName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v4, Lcom/cyjh/share/bean/request/EngineParams;->BaseURL:Ljava/lang/String;

    .line 1082
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/Script;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/cyjh/share/bean/request/EngineParams;->PayAppId:Ljava/lang/String;

    .line 1083
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/Script;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/Script;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    :cond_3
    :goto_1
    iput-boolean v3, v4, Lcom/cyjh/share/bean/request/EngineParams;->ScriptType:Z

    .line 1084
    iget-boolean v0, v4, Lcom/cyjh/share/bean/request/EngineParams;->ScriptType:Z

    iput-boolean v0, p0, Lcom/ds/daisi/AppContext;->mScriptType:Z

    .line 1085
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/Script;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f09012d

    invoke-virtual {p0, v0}, Lcom/ds/daisi/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/Script;->getVersion()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, v4, Lcom/cyjh/share/bean/request/EngineParams;->AppVersion:Ljava/lang/String;

    .line 1087
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-static {v4}, Lcom/cyjh/share/util/GsonExUtil;->class2Data(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ds/daisi/AppContext$9;

    invoke-direct {v4, p0}, Lcom/ds/daisi/AppContext$9;-><init>(Lcom/ds/daisi/AppContext;)V

    invoke-virtual {v0, v3, v2, v1, v4}, Lcom/cyjh/mq/sdk/MqRunner;->initElf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mq/sdk/inf/OnElfCallback;)V

    return-void
.end method

.method public initEngine()V
    .locals 7

    .line 1045
    invoke-direct {p0}, Lcom/ds/daisi/AppContext;->initHostToEngine()V

    .line 1046
    invoke-virtual {p0}, Lcom/ds/daisi/AppContext;->initElf()V

    const v0, 0x7f090122

    .line 1048
    invoke-virtual {p0, v0}, Lcom/ds/daisi/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f09012d

    invoke-virtual {p0, v0}, Lcom/ds/daisi/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/ds/daisi/AppContext$8;

    invoke-direct {v6, p0}, Lcom/ds/daisi/AppContext$8;-><init>(Lcom/ds/daisi/AppContext;)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Lcom/cyjh/mq/sdk/MqBridge;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;)V

    const-string v0, ""

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x0

    .line 1054
    invoke-static {p0, v0, v1, v2, v3}, Lcom/goldcoast/sdk/domain/EntryPoint;->init(Landroid/app/Application;Ljava/lang/String;Lcom/goldcoast/sdk/domain/AnalyseResult;IB)V

    .line 1055
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/AppContext;->mqRunner:Lcom/cyjh/mq/sdk/MqRunner;

    return-void
.end method

.method public initMeasure()V
    .locals 2

    const-string v0, "window"

    .line 298
    invoke-virtual {p0, v0}, Lcom/ds/daisi/AppContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/ds/daisi/AppContext;->windowManager:Landroid/view/WindowManager;

    .line 299
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 300
    iget-object v1, p0, Lcom/ds/daisi/AppContext;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 301
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/AppContext;->display:Landroid/view/Display;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 451
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 452
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->rotateScreen()V

    .line 455
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 456
    iput-boolean v2, p0, Lcom/ds/daisi/AppContext;->checkedScreenOrientation:Z

    .line 457
    iget-object p1, p0, Lcom/ds/daisi/AppContext;->mScreenConversion:Lcom/ds/daisi/AppContext$ScreenOrientationConversion;

    if-eqz p1, :cond_2

    .line 458
    iget-object p1, p0, Lcom/ds/daisi/AppContext;->mScreenConversion:Lcom/ds/daisi/AppContext$ScreenOrientationConversion;

    invoke-interface {p1}, Lcom/ds/daisi/AppContext$ScreenOrientationConversion;->onLandscapeOrientation()V

    goto :goto_0

    .line 460
    :cond_1
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v2, :cond_2

    const/4 p1, 0x0

    .line 461
    iput-boolean p1, p0, Lcom/ds/daisi/AppContext;->checkedScreenOrientation:Z

    .line 462
    iget-object p1, p0, Lcom/ds/daisi/AppContext;->mScreenConversion:Lcom/ds/daisi/AppContext$ScreenOrientationConversion;

    if-eqz p1, :cond_2

    .line 463
    iget-object p1, p0, Lcom/ds/daisi/AppContext;->mScreenConversion:Lcom/ds/daisi/AppContext$ScreenOrientationConversion;

    invoke-interface {p1}, Lcom/ds/daisi/AppContext$ScreenOrientationConversion;->onPortraitOrientation()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 14

    .line 213
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 214
    sput-object p0, Lcom/ds/daisi/AppContext;->appContext:Lcom/ds/daisi/AppContext;

    .line 215
    invoke-static {}, Lcom/ds/daisi/net/URL/MyBuildConfig;->isOutputLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ELFIN"

    .line 217
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->init(Ljava/lang/String;)Lcom/orhanobut/logger/Settings;

    move-result-object v0

    sget-object v1, Lcom/orhanobut/logger/LogLevel;->FULL:Lcom/orhanobut/logger/LogLevel;

    invoke-virtual {v0, v1}, Lcom/orhanobut/logger/Settings;->setLogLevel(Lcom/orhanobut/logger/LogLevel;)Lcom/orhanobut/logger/Settings;

    goto :goto_0

    :cond_0
    const-string v0, "ELFIN"

    .line 219
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->init(Ljava/lang/String;)Lcom/orhanobut/logger/Settings;

    move-result-object v0

    sget-object v1, Lcom/orhanobut/logger/LogLevel;->NONE:Lcom/orhanobut/logger/LogLevel;

    invoke-virtual {v0, v1}, Lcom/orhanobut/logger/Settings;->setLogLevel(Lcom/orhanobut/logger/LogLevel;)Lcom/orhanobut/logger/Settings;

    .line 221
    :goto_0
    invoke-static {}, Lcom/ds/daisi/net/URL/MyBuildConfig;->isOutputLog()Z

    move-result v2

    sget-object v3, Lcom/ds/daisi/net/URL/MyBuildConfig;->AUTHORITY_PAY:Ljava/lang/String;

    .line 222
    invoke-virtual {p0}, Lcom/ds/daisi/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1f3

    .line 223
    invoke-virtual {p0}, Lcom/ds/daisi/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    const-string v10, "5.6.0"

    const-string v11, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCwCG1cyW1mTtYpbeGML+5MPYlTWGPvAxplALWaI5vMccPeGYFrlDDaDmtJhVRzb4zSqH0i7mdUmhYk/1K1xPwxT4wnR6wMwWIvuYK4Gm2MpBJ7d0QVhPVwNKqIm9MiFdLIjM4cdHSrTJxdkUnWRA4uedioRvHAqx6j927rR00WwwIDAQAB"

    const-string v12, "MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBALKdmwW76LgoR3oe+xJ/A8Mu0j4FgEoEeJ8mZZzfN4AZbYBhcvmhnIvw3aMvoqRXCI5iSjVSb1wK8UKrRk+yTjVcAt82Dop8UK3wqkHPa/v07yWnrO4J4NSlL5rVy/g5f3vEXVyrsUjmgkDo9kr4iHpL93TGfYz/hj71IEhAmcODAgMBAAECgYAD7dxLe6m6kLBEgHVMyoco/lkDokKt3ialIZwZ9P3B5KKjBgHDJLSj43A3YcSLJvBPlDFGYQIwHSbXgkWxWnPGm/kCHCtOzrwohUaVBizszLPOtTwTr7xWj/FH1KUMGAlw4mYU844I0Ezc+mvp9nNXcJHF9zD56NmIiy2DgSr7CQJBAM9v84DQYgqKd5SYdViDzANQQQvOUScC7oL6INxqhyfTFsVP9Ky2y7YVFQm8YRpfhY4QakpGUC97EgAU7DUtgLcCQQDcblN/Pu59NEMCMyEIK4z/qNLI87LhFjIVsDgbrHuXDbfVJryk5IXj1PFIIaLkf6F56efOQ7V5bZljArcEpe+VAkBpW0zr0erZu7Y8jKqdCGOoEyzWWDWzgLOvZmcmTBzVR0s7b/6vcjBJDLAgv8L56CYnH4M8sjWrx/A+hmHqKHBFAkBFkCOVgnys0nNbHFuOQoAqplJuzEllMyX3JjdutE4Ea3XaNHFP8DY4ohjK1KKdTZHd8W0P8NoySd4gGtk7BErJAkBIeQdZ20U2KbltmStDDA224qM3TnPlJc/+4h3BwtbvEMs4eqMIcDj/u4XLOnmVWLpwJR6fmMDILLrN3WnorZ/J"

    const v0, 0x7f0900a1

    .line 226
    invoke-virtual {p0, v0}, Lcom/ds/daisi/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 221
    invoke-static/range {v2 .. v13}, Lcom/cyjh/share/config/MyConfig;->init(ZLjava/lang/String;JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->setContext(Landroid/content/Context;)V

    .line 228
    invoke-static {p0}, Lcom/iflytek/voiceads/dex/DexLoader;->initIFLYADModule(Landroid/content/Context;)V

    .line 229
    invoke-direct {p0}, Lcom/ds/daisi/AppContext;->initUmeng()V

    const-string v0, "mqm"

    .line 230
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/ds/daisi/log/AppCrashHandler;->getInstance()Lcom/ds/daisi/log/AppCrashHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ds/daisi/log/AppCrashHandler;->init(Lcom/ds/daisi/AppContext;)V

    const-string v0, "AppContext"

    const/4 v1, 0x0

    .line 232
    invoke-virtual {p0, v0, v1}, Lcom/ds/daisi/AppContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "user_message"

    .line 233
    invoke-virtual {p0, v0, v1}, Lcom/ds/daisi/AppContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/AppContext;->mSharedUsed:Landroid/content/SharedPreferences;

    .line 234
    invoke-direct {p0}, Lcom/ds/daisi/AppContext;->initPath()V

    .line 235
    invoke-virtual {p0}, Lcom/ds/daisi/AppContext;->initMeasure()V

    .line 236
    invoke-direct {p0}, Lcom/ds/daisi/AppContext;->initMQScript()V

    .line 237
    invoke-direct {p0}, Lcom/ds/daisi/AppContext;->initShake()V

    .line 238
    invoke-direct {p0}, Lcom/ds/daisi/AppContext;->initlService()V

    .line 239
    invoke-direct {p0}, Lcom/ds/daisi/AppContext;->initScript4Run()V

    .line 240
    invoke-virtual {p0}, Lcom/ds/daisi/AppContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/ds/daisi/AppContext;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 241
    invoke-static {}, Lcom/cyjh/share/net/volley/VollerHttpManager;->getInstance()Lcom/cyjh/share/net/volley/VollerHttpManager;

    move-result-object v0

    sget-object v1, Lcom/ds/daisi/AppContext;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v1}, Lcom/cyjh/share/net/volley/VollerHttpManager;->init(Lcom/android/volley/RequestQueue;)V

    .line 242
    invoke-static {p0}, Lorg/litepal/LitePal;->initialize(Landroid/content/Context;)V

    .line 243
    invoke-static {}, Lcom/cyjh/share/util/SpUtil;->getInstance()Lcom/cyjh/share/util/SpUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/cyjh/share/util/SpUtil;->init(Landroid/content/SharedPreferences;)V

    .line 244
    sget-object v0, Lcom/cyjh/share/util/WebInjectFileHelper;->INSTANCE:Lcom/cyjh/share/util/WebInjectFileHelper;

    invoke-virtual {v0, p0}, Lcom/cyjh/share/util/WebInjectFileHelper;->copyWebInjectFile(Landroid/content/Context;)V

    .line 245
    invoke-static {}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->get()Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->init(Landroid/content/Context;)Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;

    return-void
.end method

.method public onKeyEvent(I)V
    .locals 3

    .line 830
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "com.cyjh.elfin.activity.SettingActivity.swtVolumeKeyCtrl"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x72

    if-ne p1, v0, :cond_5

    .line 832
    invoke-static {p0}, Lcom/ds/daisi/util/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 833
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    const v0, 0x7f0900f1

    invoke-static {p1, v0}, Lcom/cyjh/share/util/ToastUtils;->showToastShort(Landroid/content/Context;I)V

    return-void

    .line 836
    :cond_0
    iget-boolean p1, p0, Lcom/ds/daisi/AppContext;->isForceUpdate:Z

    if-eqz p1, :cond_1

    .line 837
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    const v0, 0x7f0901b8

    invoke-static {p1, v0}, Lcom/cyjh/share/util/ToastUtils;->showToastShort(Landroid/content/Context;I)V

    return-void

    .line 840
    :cond_1
    iget-boolean p1, p0, Lcom/ds/daisi/AppContext;->isEntryMainActivity:Z

    if-nez p1, :cond_2

    .line 841
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    const v0, 0x7f0901ba

    invoke-static {p1, v0}, Lcom/cyjh/share/util/ToastUtils;->showToastShort(Landroid/content/Context;I)V

    return-void

    .line 844
    :cond_2
    iget-boolean p1, p0, Lcom/ds/daisi/AppContext;->isPreventRepeatedVolume:Z

    if-eqz p1, :cond_3

    .line 845
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    const v0, 0x7f0901b9

    invoke-static {p1, v0}, Lcom/cyjh/share/util/ToastUtils;->showToastShort(Landroid/content/Context;I)V

    return-void

    .line 848
    :cond_3
    iput-boolean v2, p0, Lcom/ds/daisi/AppContext;->isPreventRepeatedVolume:Z

    .line 849
    iget-object p1, p0, Lcom/ds/daisi/AppContext;->mqRunner:Lcom/cyjh/mq/sdk/MqRunner;

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/MqRunner;->isScriptStarted()Z

    move-result p1

    if-nez p1, :cond_4

    .line 850
    invoke-direct {p0}, Lcom/ds/daisi/AppContext;->scriptParamsRunSet()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ds/daisi/AppContext;->isPreventRepeatedVolume:Z

    goto :goto_0

    .line 880
    :cond_4
    iget-object p1, p0, Lcom/ds/daisi/AppContext;->mqRunner:Lcom/cyjh/mq/sdk/MqRunner;

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/MqRunner;->stop()V

    const/4 p1, 0x0

    .line 881
    iput-boolean p1, p0, Lcom/ds/daisi/AppContext;->isPreventRepeatedVolume:Z

    .line 883
    :goto_0
    iget-object p1, p0, Lcom/ds/daisi/AppContext;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/ds/daisi/AppContext$7;

    invoke-direct {v0, p0}, Lcom/ds/daisi/AppContext$7;-><init>(Lcom/ds/daisi/AppContext;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method public onKillProcess()V
    .locals 0

    .line 1063
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onKillProcess(Landroid/content/Context;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 717
    iget v0, p0, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    .line 718
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    const v1, 0x7f090154

    invoke-virtual {p0, v1}, Lcom/ds/daisi/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/MyToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 720
    iput v0, p0, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    .line 721
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ds/daisi/AppContext;->flag:Z

    if-eqz v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->checkBtnState()V

    .line 723
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->upadateElfinImages()V

    const/4 v0, 0x0

    .line 724
    iput-boolean v0, p0, Lcom/ds/daisi/AppContext;->flag:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x2

    .line 734
    iput v0, p0, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    .line 736
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->checkBtnState()V

    .line 738
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->upadateElfinImages()V

    const/4 v0, 0x1

    .line 739
    iput-boolean v0, p0, Lcom/ds/daisi/AppContext;->flag:Z

    :cond_0
    return-void
.end method

.method public onScriptIsRunning()V
    .locals 1

    const/4 v0, 0x2

    .line 745
    iput v0, p0, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    return-void
.end method

.method public onStartScript()V
    .locals 6

    const/4 v0, 0x0

    .line 624
    iput-boolean v0, p0, Lcom/ds/daisi/AppContext;->isScriptStopRunning:Z

    const/4 v0, 0x2

    .line 702
    iput v0, p0, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    .line 703
    invoke-direct {p0}, Lcom/ds/daisi/AppContext;->startVibrator()V

    .line 704
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->checkBtnState()V

    .line 706
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->upadateElfinImages()V

    .line 708
    :cond_0
    invoke-direct {p0}, Lcom/ds/daisi/AppContext;->ddyStaticsJudgeOperate()V

    invoke-static {}, Lkiller/App;->onScriptStart()V

    return-void
.end method

.method public onStopScript(ILjava/lang/String;)V
    .locals 5

    invoke-static {}, Lkiller/App;->onScriptStop()V

    .line 750
    invoke-static {}, Lcom/cyjh/share/helper/DdyStatisticsHelper;->get()Lcom/cyjh/share/helper/DdyStatisticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/share/helper/DdyStatisticsHelper;->stopTimer()V

    const/4 v0, 0x1

    .line 751
    iput-boolean v0, p0, Lcom/ds/daisi/AppContext;->isScriptStopRunning:Z

    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 753
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v2

    iget-object v2, v2, Lcom/cyjh/share/manager/VariableAndConstantsManager;->mDeviceInfo:Lcom/cyjh/share/bean/request/DeviceInfo;

    iget-object v2, v2, Lcom/cyjh/share/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 754
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v2

    iget-object v2, v2, Lcom/cyjh/share/manager/VariableAndConstantsManager;->mDeviceInfo:Lcom/cyjh/share/bean/request/DeviceInfo;

    iget-object v2, v2, Lcom/cyjh/share/bean/request/DeviceInfo;->DeviceCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 755
    :cond_0
    invoke-static {p0}, Lcom/cyjh/share/util/AppUtils;->acquireDevicesId(Landroid/content/Context;)Lcom/cyjh/share/bean/request/DeviceInfo;

    move-result-object v2

    .line 756
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v3

    iget-object v3, v3, Lcom/cyjh/share/manager/VariableAndConstantsManager;->mDeviceInfo:Lcom/cyjh/share/bean/request/DeviceInfo;

    iget-object v4, v2, Lcom/cyjh/share/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    iput-object v4, v3, Lcom/cyjh/share/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    .line 757
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v3

    iget-object v3, v3, Lcom/cyjh/share/manager/VariableAndConstantsManager;->mDeviceInfo:Lcom/cyjh/share/bean/request/DeviceInfo;

    iget-object v2, v2, Lcom/cyjh/share/bean/request/DeviceInfo;->DeviceCode:Ljava/lang/String;

    iput-object v2, v3, Lcom/cyjh/share/bean/request/DeviceInfo;->DeviceCode:Ljava/lang/String;

    const-string v2, "\u4fdd\u5b58\u7684\u5bf9\u8c61id\u4e22\u5931"

    .line 758
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    :cond_1
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v2

    iget-object v2, v2, Lcom/cyjh/share/manager/VariableAndConstantsManager;->mDeviceInfo:Lcom/cyjh/share/bean/request/DeviceInfo;

    invoke-static {v2}, Lcom/cyjh/share/util/GsonExUtil;->class2Data(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 761
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\r\\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "returnCode="

    .line 762
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\\r\\n"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 p2, 0x0

    invoke-static {v2, v3, p2}, Lcom/cyjh/share/util/AppUtils;->timeMillis2Date(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\\r\\n"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    invoke-static {}, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxyFactory;->getNormalThreadPool()Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;

    move-result-object p2

    new-instance v2, Lcom/ds/daisi/AppContext$5;

    invoke-direct {v2, p0, v1}, Lcom/ds/daisi/AppContext$5;-><init>(Lcom/ds/daisi/AppContext;Ljava/lang/StringBuilder;)V

    invoke-virtual {p2, v2}, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->executeRunnable(Ljava/lang/Runnable;)V

    .line 771
    iget-boolean p2, p0, Lcom/ds/daisi/AppContext;->isStatisStopScript:Z

    if-nez p2, :cond_2

    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object p2

    iget-object p2, p2, Lcom/ds/daisi/entity/ParamsWrap;->mStartRunResponseInfo:Lcom/cyjh/share/bean/response/ScriptStartRunInfo;

    if-eqz p2, :cond_2

    .line 773
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object p2

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    .line 774
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v2

    iget-object v2, v2, Lcom/ds/daisi/entity/ParamsWrap;->mStartRunResponseInfo:Lcom/cyjh/share/bean/response/ScriptStartRunInfo;

    iget-object v2, v2, Lcom/cyjh/share/bean/response/ScriptStartRunInfo;->RunGuid:Ljava/lang/String;

    .line 773
    invoke-virtual {p2, v1, v2}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->loadScriptStopRunStatistics(Landroid/content/Context;Ljava/lang/String;)V

    .line 776
    :cond_2
    iput v0, p0, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    .line 777
    invoke-direct {p0}, Lcom/ds/daisi/AppContext;->startVibrator()V

    .line 778
    iget-object p2, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    if-eqz p2, :cond_3

    .line 779
    iget-object p2, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {p2}, Lcom/ds/daisi/floatview/ElfinFloatView;->checkBtnState()V

    .line 780
    iget-object p2, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {p2}, Lcom/ds/daisi/floatview/ElfinFloatView;->upadateElfinImages()V

    :cond_3
    if-eqz p1, :cond_6

    const/16 p2, 0x3ea

    if-eq p1, p2, :cond_5

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 797
    :pswitch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f09018c

    invoke-virtual {p0, v0}, Lcom/ds/daisi/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ds/daisi/AppContext;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 800
    :pswitch_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f09018b

    invoke-virtual {p0, v0}, Lcom/ds/daisi/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ds/daisi/AppContext;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 794
    :pswitch_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f09018d

    invoke-virtual {p0, v0}, Lcom/ds/daisi/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ds/daisi/AppContext;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 791
    :pswitch_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f09018e

    invoke-virtual {p0, v0}, Lcom/ds/daisi/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ds/daisi/AppContext;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 788
    :pswitch_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f090188

    invoke-virtual {p0, v0}, Lcom/ds/daisi/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ds/daisi/AppContext;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 803
    :pswitch_5
    invoke-virtual {p0}, Lcom/ds/daisi/AppContext;->backApp()V

    .line 804
    iget p1, p0, Lcom/ds/daisi/AppContext;->STATE_APP:I

    if-nez p1, :cond_4

    const p1, 0x7f090185

    .line 805
    invoke-virtual {p0, p1}, Lcom/ds/daisi/AppContext;->showToast(I)V

    goto :goto_0

    :cond_4
    const p1, 0x7f09018f

    .line 807
    invoke-virtual {p0, p1}, Lcom/ds/daisi/AppContext;->showToast(I)V

    goto :goto_0

    .line 785
    :pswitch_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f090189

    invoke-virtual {p0, v0}, Lcom/ds/daisi/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ds/daisi/AppContext;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string p1, "zzz"

    const-string p2, "AppContext--onStopScript--MqmCode.MQM_RUNNER_EXCEPTION"

    .line 814
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-virtual {p0}, Lcom/ds/daisi/AppContext;->initElf()V

    :cond_6
    :goto_0
    :pswitch_7
    return-void

    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTerminate()V
    .locals 1

    .line 1193
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 1194
    invoke-static {}, Lcom/cyjh/share/helper/DdyStatisticsHelper;->get()Lcom/cyjh/share/helper/DdyStatisticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/share/helper/DdyStatisticsHelper;->stopTimer()V

    return-void
.end method

.method public onUpdateControlBarPos(FII)V
    .locals 1

    .line 895
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->upadateElfinImages()V

    .line 897
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ds/daisi/floatview/ElfinFloatView;->posControlBar(FII)V

    :cond_0
    return-void
.end method

.method public runScript()V
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ds/daisi/floatview/ElfinFloatView;->changeToolBarState(Z)V

    .line 517
    invoke-direct {p0}, Lcom/ds/daisi/AppContext;->scriptParamsRunSet()V

    return-void
.end method

.method public setScreenConversion(Lcom/ds/daisi/AppContext$ScreenOrientationConversion;)V
    .locals 0

    .line 1041
    iput-object p1, p0, Lcom/ds/daisi/AppContext;->mScreenConversion:Lcom/ds/daisi/AppContext$ScreenOrientationConversion;

    return-void
.end method

.method public showFloatView()V
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    if-nez v0, :cond_0

    .line 424
    invoke-direct {p0}, Lcom/ds/daisi/AppContext;->createElfinFloatView()V

    goto :goto_0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->rotateScreen()V

    .line 430
    :goto_0
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "com.cyjh.elfin.activity.SettingActivity.swtFloatviewCtrl"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ds/daisi/floatview/ElfinFloatView;->setVisibility(I)V

    goto :goto_1

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ds/daisi/floatview/ElfinFloatView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public showToast(I)V
    .locals 1

    const/16 v0, 0x7d0

    .line 470
    invoke-static {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->makeText(Landroid/content/Context;II)Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->show()V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 474
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public updateEngineScript()V
    .locals 2

    .line 535
    invoke-direct {p0}, Lcom/ds/daisi/AppContext;->initMQScript()V

    .line 536
    invoke-direct {p0}, Lcom/ds/daisi/AppContext;->initScript4Run()V

    .line 537
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mqRunner:Lcom/cyjh/mq/sdk/MqRunner;

    iget-object v1, p0, Lcom/ds/daisi/AppContext;->script4Run:Lcom/cyjh/mq/sdk/entity/Script4Run;

    invoke-virtual {v0, v1}, Lcom/cyjh/mq/sdk/MqRunner;->setScript(Lcom/cyjh/mq/sdk/entity/Script4Run;)Lcom/cyjh/mq/sdk/inf/IRunner;

    .line 538
    iget-object v0, p0, Lcom/ds/daisi/AppContext;->mqRunner:Lcom/cyjh/mq/sdk/MqRunner;

    iget-object v1, p0, Lcom/ds/daisi/AppContext;->onSpecialMqCmdCallback:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    invoke-virtual {v0, v1}, Lcom/cyjh/mq/sdk/MqRunner;->setOnSpecialMqCmdCallback(Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;)V

    .line 539
    invoke-virtual {p0}, Lcom/ds/daisi/AppContext;->initElf()V

    return-void
.end method
