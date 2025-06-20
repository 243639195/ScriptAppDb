.class public Lcom/ds/daisi/dialog/SettingDialog;
.super Lcom/ds/daisi/dialog/BaseDialog;
.source "SettingDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingDialog"


# instance fields
.field private isDismiss:Z

.field private mButtonExitApp:Landroid/widget/Button;

.field private mButtonScriptLog:Landroid/widget/Button;

.field private mButtonUpdate:Landroid/widget/Button;

.field public mContext:Landroid/content/Context;

.field private mImageViewBack:Landroid/widget/ImageView;

.field private mSwitcOpenRunScript:Landroid/widget/Switch;

.field private mSwitchWordRecognitionLibrary:Landroid/widget/Switch;

.field private mSwtichCallStop:Landroid/widget/Switch;

.field private mSwtichFloatviewCtrl:Landroid/widget/Switch;

.field private mSwtichVibration:Landroid/widget/Switch;

.field private mSwtichVolumeKeyCtrl:Landroid/widget/Switch;

.field private mSwtichWaggleStop:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b0131

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/ds/daisi/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/ds/daisi/AppContext;

    iput-object p1, p0, Lcom/ds/daisi/dialog/SettingDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    .line 82
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7f6

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 84
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d5

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d2

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/dialog/SettingDialog;)Landroid/widget/Switch;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwitchWordRecognitionLibrary:Landroid/widget/Switch;

    return-object p0
.end method

.method private initSwitchStatus()V
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwtichCallStop:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/ds/daisi/dialog/SettingDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "com.cyjh.elfin.activity.SettingActivity.swtCallStop"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 135
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwtichVolumeKeyCtrl:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/ds/daisi/dialog/SettingDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "com.cyjh.elfin.activity.SettingActivity.swtVolumeKeyCtrl"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 136
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwtichWaggleStop:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/ds/daisi/dialog/SettingDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "com.cyjh.elfin.activity.SettingActivity.swtWaggleStop"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 137
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwtichFloatviewCtrl:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/ds/daisi/dialog/SettingDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "com.cyjh.elfin.activity.SettingActivity.swtFloatviewCtrl"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 138
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwtichVibration:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/ds/daisi/dialog/SettingDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "com.cyjh.elfin.activity.SettingActivity.swtVibration"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 139
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwitcOpenRunScript:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/ds/daisi/dialog/SettingDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "sp_key_switch_setting_open_run_script"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f1001de

    .line 105
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/SettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwtichCallStop:Landroid/widget/Switch;

    const v0, 0x7f1001db

    .line 106
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/SettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwtichVolumeKeyCtrl:Landroid/widget/Switch;

    const v0, 0x7f1001dd

    .line 107
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/SettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwtichWaggleStop:Landroid/widget/Switch;

    const v0, 0x7f1001dc

    .line 108
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/SettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwtichFloatviewCtrl:Landroid/widget/Switch;

    const v0, 0x7f1001df

    .line 109
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/SettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwtichVibration:Landroid/widget/Switch;

    const v0, 0x7f1001e0

    .line 110
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/SettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwitcOpenRunScript:Landroid/widget/Switch;

    const v0, 0x7f100152

    .line 111
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/SettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwitchWordRecognitionLibrary:Landroid/widget/Switch;

    const v0, 0x7f1001e1

    .line 113
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/SettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mButtonScriptLog:Landroid/widget/Button;

    const v0, 0x7f100154

    .line 114
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/SettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mButtonUpdate:Landroid/widget/Button;

    const v0, 0x7f1001e2

    .line 115
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/SettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mButtonExitApp:Landroid/widget/Button;

    const v0, 0x7f1001da

    .line 116
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/SettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mImageViewBack:Landroid/widget/ImageView;

    .line 118
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwtichCallStop:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 119
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwtichVolumeKeyCtrl:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwtichWaggleStop:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 121
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwtichFloatviewCtrl:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwtichVibration:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 123
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwitcOpenRunScript:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 125
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mButtonScriptLog:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mButtonExitApp:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mButtonUpdate:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mImageViewBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-direct {p0}, Lcom/ds/daisi/dialog/SettingDialog;->judgeRecognitionLibraryAvailable()V

    .line 130
    invoke-direct {p0}, Lcom/ds/daisi/dialog/SettingDialog;->initSwitchStatus()V

    return-void
.end method

.method private judgeRecognitionLibraryAvailable()V
    .locals 3

    .line 143
    invoke-static {}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->get()Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->isRecognitionLibraryAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwitchWordRecognitionLibrary:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 145
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwitchWordRecognitionLibrary:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwitchWordRecognitionLibrary:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 148
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwitchWordRecognitionLibrary:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void
.end method

.method private recognitionLibraryDownloadOperate()V
    .locals 4

    .line 295
    new-instance v0, Lcom/cyjh/share/dialog/LibraryUILoadingDialog;

    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cyjh/share/dialog/LibraryUILoadingDialog;-><init>(Landroid/content/Context;)V

    .line 296
    invoke-virtual {v0}, Lcom/cyjh/share/dialog/LibraryUILoadingDialog;->show()V

    .line 297
    invoke-static {}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->get()Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;

    move-result-object v1

    const-string v2, "http://res2.mobileanjian.com/Resource/ocr3/Android.zip"

    new-instance v3, Lcom/ds/daisi/dialog/SettingDialog$1;

    invoke-direct {v3, p0, v0}, Lcom/ds/daisi/dialog/SettingDialog$1;-><init>(Lcom/ds/daisi/dialog/SettingDialog;Lcom/cyjh/share/dialog/LibraryUILoadingDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->download(Ljava/lang/String;Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$OnDownloadListener;)V

    return-void
.end method

.method private updateVersionRequest()V
    .locals 4

    .line 266
    invoke-static {}, Lcom/cyjh/share/util/FastClickUtil;->getInstance()Lcom/cyjh/share/util/FastClickUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/share/util/FastClickUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ds/daisi/util/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0900f1

    invoke-static {v0, v1}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 275
    iput-boolean v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->isDismiss:Z

    .line 277
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "script.info"

    invoke-static {v0, v1}, Lcom/ds/daisi/util/JsonUtils;->parseScriptInfoJson(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/share/util/CommonUtil;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 279
    new-instance v2, Lcom/cyjh/share/bean/request/UpdateRequestInfo;

    invoke-direct {v2}, Lcom/cyjh/share/bean/request/UpdateRequestInfo;-><init>()V

    .line 280
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v3

    iget-object v3, v3, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v3}, Lcom/ds/daisi/entity/Script;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cyjh/share/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    .line 281
    iput-object v1, v2, Lcom/cyjh/share/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    .line 282
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/cyjh/share/bean/request/UpdateRequestInfo;->ScriptVersion:I

    .line 283
    sget-object v0, Lcom/ds/daisi/dialog/SettingDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVersionRequest --> 1 ScriptId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/cyjh/share/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",DeviceName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/cyjh/share/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",ScriptVersion="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/cyjh/share/bean/request/UpdateRequestInfo;->ScriptVersion:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/cyjh/share/mvp/manager/VersionUpdateManager;->builder()Lcom/cyjh/share/mvp/manager/VersionUpdateManager;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/dialog/SettingDialog$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/ds/daisi/dialog/SettingDialog$$Lambda$0;-><init>(Lcom/ds/daisi/dialog/SettingDialog;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/share/mvp/manager/VersionUpdateManager;->setDismissBack(Lcom/cyjh/share/mvp/manager/VersionUpdateManager$OnUpdateVersionBack;)Lcom/cyjh/share/mvp/manager/VersionUpdateManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 287
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/cyjh/share/mvp/manager/VersionUpdateManager;->updateVersion(ZLandroid/content/Context;Lcom/cyjh/share/bean/request/UpdateRequestInfo;)V

    return-void
.end method


# virtual methods
.method public isDismiss()Z
    .locals 1

    .line 291
    iget-boolean v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->isDismiss:Z

    return v0
.end method

.method final synthetic lambda$updateVersionRequest$0$SettingDialog(Lcom/cyjh/share/bean/response/VersionUpdateInfo;)V
    .locals 3

    .line 285
    new-instance v0, Lcom/ds/daisi/dialog/UpdateDialog;

    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/ds/daisi/dialog/UpdateDialog;-><init>(Landroid/content/Context;Lcom/cyjh/share/bean/response/VersionUpdateInfo;Z)V

    .line 286
    invoke-virtual {v0}, Lcom/ds/daisi/dialog/UpdateDialog;->show()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 155
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 157
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    const v1, 0x7f100152

    if-eq p1, v1, :cond_3

    const/4 v1, 0x1

    const v2, 0x7f090167

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string p1, "sp_key_switch_setting_open_run_script"

    .line 185
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting\u8bbe\u7f6e\u4e86\u5f00\u673a\u542f\u52a8\u811a\u672c"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/cyjh/share/util/CommonUtil;->operateElfinPackageNames(Landroid/content/Context;Z)V

    if-eqz p2, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 189
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/ds/daisi/entity/MsgItem;

    const/16 v3, 0x3ef

    invoke-direct {v2, v3, p1}, Lcom/ds/daisi/entity/MsgItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 190
    sget-object p1, Lcom/ds/daisi/dialog/SettingDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged --> isChecked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cyjh/share/util/SlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string p1, "com.cyjh.elfin.activity.SettingActivity.swtVibration"

    .line 182
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :pswitch_2
    const-string p1, "com.cyjh.elfin.activity.SettingActivity.swtCallStop"

    .line 159
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :pswitch_3
    const-string p1, "com.cyjh.elfin.activity.SettingActivity.swtWaggleStop"

    .line 170
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :pswitch_4
    if-nez p2, :cond_1

    .line 173
    iget-object p1, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwtichVolumeKeyCtrl:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    .line 174
    iget-object p1, p0, Lcom/ds/daisi/dialog/SettingDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    invoke-virtual {p1, v2}, Lcom/ds/daisi/AppContext;->showToast(I)V

    .line 175
    iget-object p1, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwtichFloatviewCtrl:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    :cond_1
    const-string p1, "com.cyjh.elfin.activity.SettingActivity.swtFloatviewCtrl"

    .line 177
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 178
    iget-object p1, p0, Lcom/ds/daisi/dialog/SettingDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object p1, p1, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->toggleElfinVisbility()V

    goto :goto_1

    :pswitch_5
    if-nez p2, :cond_2

    .line 162
    iget-object p1, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwtichFloatviewCtrl:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-nez p1, :cond_2

    .line 163
    iget-object p1, p0, Lcom/ds/daisi/dialog/SettingDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    invoke-virtual {p1, v2}, Lcom/ds/daisi/AppContext;->showToast(I)V

    .line 164
    iget-object p1, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwtichVolumeKeyCtrl:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    :cond_2
    const-string p1, "com.cyjh.elfin.activity.SettingActivity.swtVolumeKeyCtrl"

    .line 166
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 195
    invoke-direct {p0}, Lcom/ds/daisi/dialog/SettingDialog;->recognitionLibraryDownloadOperate()V

    .line 201
    :cond_4
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f1001db
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 236
    :sswitch_0
    iput-boolean v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->isDismiss:Z

    .line 238
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "AppContext"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "sp_key_switch_setting_open_run_script"

    iget-object v1, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwitcOpenRunScript:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 239
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwitcOpenRunScript:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/cyjh/share/util/CommonUtil;->operateElfinPackageNames(Landroid/content/Context;Z)V

    .line 240
    sget-object p1, Lcom/ds/daisi/dialog/SettingDialog;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick --> exit isChecked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/dialog/SettingDialog;->mSwitcOpenRunScript:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cyjh/share/util/SlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object p1, p0, Lcom/ds/daisi/dialog/SettingDialog;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 242
    iget-object p1, p0, Lcom/ds/daisi/dialog/SettingDialog;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ds/daisi/services/VerifyService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 245
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ds/daisi/services/TimerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 246
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ds/daisi/services/BootService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 247
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ds/daisi/services/PhoneStateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 249
    invoke-static {}, Lcom/cyjh/mq/sdk/MqBridge;->exit()V

    .line 250
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_1

    .line 208
    :sswitch_1
    new-instance p1, Lcom/ds/daisi/util/FileUtils$FileSuffixrFilter;

    const-string v1, ".log"

    invoke-direct {p1, v1}, Lcom/ds/daisi/util/FileUtils$FileSuffixrFilter;-><init>(Ljava/lang/String;)V

    .line 209
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ds/daisi/dialog/SettingDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object v2, v2, Lcom/ds/daisi/AppContext;->mPathPackagenameLog:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 211
    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_0

    .line 215
    :cond_1
    new-instance v1, Lcom/ds/daisi/util/FileComparator;

    invoke-direct {v1}, Lcom/ds/daisi/util/FileComparator;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 217
    aget-object p1, p1, v0

    .line 218
    new-instance v0, Lcom/ds/daisi/entity/ScriptLog;

    invoke-direct {v0}, Lcom/ds/daisi/entity/ScriptLog;-><init>()V

    .line 219
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/entity/ScriptLog;->setName(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ds/daisi/util/FileUtils;->formetFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/entity/ScriptLog;->setSize(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, p1}, Lcom/ds/daisi/entity/ScriptLog;->setFile(Ljava/io/File;)V

    .line 223
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ds/daisi/activity/ScriptLogDetailActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.cyjh.elfin.activity.SettingActivity.FlagLastLog"

    const/4 v2, 0x1

    .line 224
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "ScriptLogActivity.ScriptLog"

    .line 225
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 226
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 228
    iput-boolean v2, p0, Lcom/ds/daisi/dialog/SettingDialog;->isDismiss:Z

    .line 229
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->dismiss()V

    goto :goto_1

    .line 212
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ds/daisi/dialog/SettingDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    const v0, 0x7f0900fd

    invoke-virtual {p1, v0}, Lcom/ds/daisi/AppContext;->showToast(I)V

    return-void

    .line 254
    :sswitch_2
    iput-boolean v0, p0, Lcom/ds/daisi/dialog/SettingDialog;->isDismiss:Z

    .line 255
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->dismiss()V

    .line 256
    new-instance p1, Lcom/ds/daisi/dialog/ScriptUIDialog;

    invoke-virtual {p0}, Lcom/ds/daisi/dialog/SettingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ds/daisi/dialog/ScriptUIDialog;-><init>(Landroid/content/Context;)V

    .line 257
    invoke-virtual {p1}, Lcom/ds/daisi/dialog/ScriptUIDialog;->show()V

    goto :goto_1

    .line 232
    :sswitch_3
    invoke-direct {p0}, Lcom/ds/daisi/dialog/SettingDialog;->updateVersionRequest()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f100154 -> :sswitch_3
        0x7f1001da -> :sswitch_2
        0x7f1001e1 -> :sswitch_1
        0x7f1001e2 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Lcom/ds/daisi/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f04008e

    .line 98
    invoke-virtual {p0, p1}, Lcom/ds/daisi/dialog/SettingDialog;->setContentView(I)V

    const p1, 0x3dcccccd    # 0.1f

    .line 99
    invoke-virtual {p0, p1}, Lcom/ds/daisi/dialog/SettingDialog;->setBlurEffect(F)V

    const p1, 0x3f666666    # 0.9f

    const v0, 0x3f19999a    # 0.6f

    .line 100
    invoke-virtual {p0, p1, v0}, Lcom/ds/daisi/dialog/SettingDialog;->setDialogSize(FF)V

    .line 101
    invoke-direct {p0}, Lcom/ds/daisi/dialog/SettingDialog;->initView()V

    return-void
.end method
