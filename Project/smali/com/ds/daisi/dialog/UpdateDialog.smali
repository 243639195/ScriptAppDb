.class public Lcom/ds/daisi/dialog/UpdateDialog;
.super Lcom/ds/daisi/dialog/BaseDialog;
.source "UpdateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/dialog/UpdateDialog$MyAsyncTask;
    }
.end annotation


# static fields
.field private static final ANDROID_SDK19:I = 0x13

.field private static final ANDROID_SDK24:I = 0x18

.field private static final INSTALL_APK_DELAY_TIME:I = 0x1f4

.field private static final MSG_DOWNLOAD_FAILURE:I = 0x3ea

.field private static final MSG_DOWNLOAD_SUCCESS:I = 0x3e8

.field private static final MSG_UPDATE_PROCESS:I = 0x3e9

.field private static TAG:Ljava/lang/String; = "UpdateDialog"


# instance fields
.field private downloadSize:Ljava/lang/String;

.field private fileSize:Ljava/lang/String;

.field private isCancel:Z

.field private isDismiss:Z

.field private mButtonCancel:Landroid/widget/Button;

.field private mButtonForceUpdate:Landroid/widget/Button;

.field private mCanSubmit:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsBeginDownload:Z

.field private mIsDisConnect:Z

.field private mLinearLayoutDownload:Landroid/widget/LinearLayout;

.field private mLinearLayoutUpdate:Landroid/widget/LinearLayout;

.field protected mNetChangeObserver:Lcom/ds/daisi/receiver/NetStateReceiver$NetChangeObserver;

.field mOnDownloadListener:Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;

.field private mProgressBarDownload:Landroid/widget/ProgressBar;

.field private mTextViewProgress:Landroid/widget/TextView;

.field private updateInfo:Lcom/cyjh/share/bean/response/VersionUpdateInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cyjh/share/bean/response/VersionUpdateInfo;Z)V
    .locals 2

    const v0, 0x7f0b0131

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/ds/daisi/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mCanSubmit:Z

    .line 78
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/ds/daisi/dialog/UpdateDialog$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/ds/daisi/dialog/UpdateDialog$$Lambda$0;-><init>(Lcom/ds/daisi/dialog/UpdateDialog;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mHandler:Landroid/os/Handler;

    .line 273
    new-instance v0, Lcom/ds/daisi/dialog/UpdateDialog$2;

    invoke-direct {v0, p0}, Lcom/ds/daisi/dialog/UpdateDialog$2;-><init>(Lcom/ds/daisi/dialog/UpdateDialog;)V

    iput-object v0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mOnDownloadListener:Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;

    .line 101
    iput-boolean p3, p0, Lcom/ds/daisi/dialog/UpdateDialog;->isDismiss:Z

    .line 102
    iput-object p1, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_2

    .line 105
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p1, p3, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/UpdateDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p3, 0x7f6

    invoke-virtual {p1, p3}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 107
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x13

    if-lt p1, p3, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x18

    if-ge p1, p3, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/UpdateDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/UpdateDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p3, 0x7d5

    invoke-virtual {p1, p3}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/UpdateDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/UpdateDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p3, 0x7d2

    invoke-virtual {p1, p3}, Landroid/view/Window;->setType(I)V

    .line 117
    :cond_2
    :goto_0
    iput-object p2, p0, Lcom/ds/daisi/dialog/UpdateDialog;->updateInfo:Lcom/cyjh/share/bean/response/VersionUpdateInfo;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/ds/daisi/dialog/UpdateDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ds/daisi/dialog/UpdateDialog;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mIsBeginDownload:Z

    return p0
.end method

.method static synthetic access$102(Lcom/ds/daisi/dialog/UpdateDialog;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mIsBeginDownload:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ds/daisi/dialog/UpdateDialog;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mIsDisConnect:Z

    return p0
.end method

.method static synthetic access$202(Lcom/ds/daisi/dialog/UpdateDialog;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mIsDisConnect:Z

    return p1
.end method

.method static synthetic access$300(Lcom/ds/daisi/dialog/UpdateDialog;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/ds/daisi/dialog/UpdateDialog;->download()V

    return-void
.end method

.method static synthetic access$402(Lcom/ds/daisi/dialog/UpdateDialog;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mCanSubmit:Z

    return p1
.end method

.method static synthetic access$600(Lcom/ds/daisi/dialog/UpdateDialog;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$702(Lcom/ds/daisi/dialog/UpdateDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/ds/daisi/dialog/UpdateDialog;->downloadSize:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/ds/daisi/dialog/UpdateDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/ds/daisi/dialog/UpdateDialog;->fileSize:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/ds/daisi/dialog/UpdateDialog;)Lcom/cyjh/share/bean/response/VersionUpdateInfo;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->updateInfo:Lcom/cyjh/share/bean/response/VersionUpdateInfo;

    return-object p0
.end method

.method private afterDownloadSuccess(Ljava/io/File;)V
    .locals 2

    .line 251
    iget-boolean v0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->isCancel:Z

    if-eqz v0, :cond_0

    return-void

    .line 253
    :cond_0
    sget-object v0, Lcom/ds/daisi/dialog/UpdateDialog;->TAG:Ljava/lang/String;

    const-string v1, "afterDownloadSuccess --> 1 "

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-direct {p0, p1}, Lcom/ds/daisi/dialog/UpdateDialog;->installApkOperate(Ljava/io/File;)V

    .line 256
    iget-object v0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mButtonCancel:Landroid/widget/Button;

    const-string v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mButtonCancel:Landroid/widget/Button;

    new-instance v1, Lcom/ds/daisi/dialog/UpdateDialog$$Lambda$1;

    invoke-direct {v1, p0, p1}, Lcom/ds/daisi/dialog/UpdateDialog$$Lambda$1;-><init>(Lcom/ds/daisi/dialog/UpdateDialog;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private changeButtonsState()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mLinearLayoutDownload:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->updateInfo:Lcom/cyjh/share/bean/response/VersionUpdateInfo;

    iget v0, v0, Lcom/cyjh/share/bean/response/VersionUpdateInfo;->UpdateType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 206
    iget-object v0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mLinearLayoutUpdate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mButtonCancel:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mButtonForceUpdate:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 209
    invoke-virtual {p0, v3}, Lcom/ds/daisi/dialog/UpdateDialog;->setCancelable(Z)V

    .line 210
    invoke-virtual {p0, v3}, Lcom/ds/daisi/dialog/UpdateDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mLinearLayoutUpdate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mButtonForceUpdate:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 214
    invoke-virtual {p0, v2}, Lcom/ds/daisi/dialog/UpdateDialog;->setCancelable(Z)V

    .line 215
    invoke-virtual {p0, v2}, Lcom/ds/daisi/dialog/UpdateDialog;->setCanceledOnTouchOutside(Z)V

    :goto_0
    return-void
.end method

.method private download()V
    .locals 4

    .line 223
    iget-boolean v0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mCanSubmit:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 224
    iput-boolean v0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mCanSubmit:Z

    .line 225
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/UpdateDialog;->setCanceledOnTouchOutside(Z)V

    .line 226
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/UpdateDialog;->setCancelable(Z)V

    .line 227
    iget-object v1, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mLinearLayoutDownload:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    iget-object v1, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mLinearLayoutUpdate:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    iget-object v1, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mButtonForceUpdate:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ds/daisi/dialog/UpdateDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    new-instance v2, Lcom/ds/daisi/dialog/UpdateDialog$MyAsyncTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/ds/daisi/dialog/UpdateDialog$MyAsyncTask;-><init>(Lcom/ds/daisi/dialog/UpdateDialog;Lcom/ds/daisi/dialog/UpdateDialog$1;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Lcom/ds/daisi/dialog/UpdateDialog$MyAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private initData()V
    .locals 1

    .line 154
    new-instance v0, Lcom/ds/daisi/dialog/UpdateDialog$1;

    invoke-direct {v0, p0}, Lcom/ds/daisi/dialog/UpdateDialog$1;-><init>(Lcom/ds/daisi/dialog/UpdateDialog;)V

    iput-object v0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mNetChangeObserver:Lcom/ds/daisi/receiver/NetStateReceiver$NetChangeObserver;

    .line 171
    iget-object v0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ds/daisi/receiver/NetStateReceiver;->registerNetworkStateReceiver(Landroid/content/Context;)V

    .line 173
    iget-object v0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mNetChangeObserver:Lcom/ds/daisi/receiver/NetStateReceiver$NetChangeObserver;

    invoke-static {v0}, Lcom/ds/daisi/receiver/NetStateReceiver;->registerObserver(Lcom/ds/daisi/receiver/NetStateReceiver$NetChangeObserver;)V

    return-void
.end method

.method private initView()V
    .locals 5

    const v0, 0x7f1001fc

    .line 130
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1001fd

    .line 131
    invoke-virtual {p0, v1}, Lcom/ds/daisi/dialog/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1001ff

    .line 132
    invoke-virtual {p0, v2}, Lcom/ds/daisi/dialog/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mTextViewProgress:Landroid/widget/TextView;

    const v2, 0x7f100202

    .line 134
    invoke-virtual {p0, v2}, Lcom/ds/daisi/dialog/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mButtonForceUpdate:Landroid/widget/Button;

    const v2, 0x7f100205

    .line 135
    invoke-virtual {p0, v2}, Lcom/ds/daisi/dialog/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f100204

    .line 136
    invoke-virtual {p0, v3}, Lcom/ds/daisi/dialog/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f100201

    .line 137
    invoke-virtual {p0, v4}, Lcom/ds/daisi/dialog/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mButtonCancel:Landroid/widget/Button;

    const v4, 0x7f100200

    .line 139
    invoke-virtual {p0, v4}, Lcom/ds/daisi/dialog/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mProgressBarDownload:Landroid/widget/ProgressBar;

    const v4, 0x7f100203

    .line 141
    invoke-virtual {p0, v4}, Lcom/ds/daisi/dialog/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mLinearLayoutUpdate:Landroid/widget/LinearLayout;

    const v4, 0x7f1001fe

    .line 142
    invoke-virtual {p0, v4}, Lcom/ds/daisi/dialog/UpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mLinearLayoutDownload:Landroid/widget/LinearLayout;

    .line 144
    iget-object v4, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mButtonForceUpdate:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v2, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mButtonCancel:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-direct {p0}, Lcom/ds/daisi/dialog/UpdateDialog;->changeButtonsState()V

    .line 149
    iget-object v2, p0, Lcom/ds/daisi/dialog/UpdateDialog;->updateInfo:Lcom/cyjh/share/bean/response/VersionUpdateInfo;

    iget v2, v2, Lcom/cyjh/share/bean/response/VersionUpdateInfo;->PackageSize:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/ds/daisi/util/FileUtils;->formetFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->updateInfo:Lcom/cyjh/share/bean/response/VersionUpdateInfo;

    iget-object v0, v0, Lcom/cyjh/share/bean/response/VersionUpdateInfo;->UpdateContent:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private installApkOperate(Ljava/io/File;)V
    .locals 4

    .line 263
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ds/daisi/dialog/UpdateDialog$$Lambda$2;

    invoke-direct {v1, p0, p1}, Lcom/ds/daisi/dialog/UpdateDialog$$Lambda$2;-><init>(Lcom/ds/daisi/dialog/UpdateDialog;Ljava/io/File;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 244
    invoke-super {p0}, Lcom/ds/daisi/dialog/BaseDialog;->dismiss()V

    .line 245
    sget-object v0, Lcom/ds/daisi/dialog/UpdateDialog;->TAG:Ljava/lang/String;

    const-string v1, "dismiss -->"

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ds/daisi/AppContext;->isDisableVolumeKey:Z

    .line 247
    iget-object v0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ds/daisi/receiver/NetStateReceiver;->unRegisterNetworkStateReceiver(Landroid/content/Context;)V

    return-void
.end method

.method final synthetic lambda$afterDownloadSuccess$1$UpdateDialog(Ljava/io/File;Landroid/view/View;)V
    .locals 0

    .line 258
    invoke-direct {p0, p1}, Lcom/ds/daisi/dialog/UpdateDialog;->installApkOperate(Ljava/io/File;)V

    return-void
.end method

.method final synthetic lambda$installApkOperate$2$UpdateDialog(Ljava/io/File;)V
    .locals 1

    .line 265
    :try_start_0
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/UpdateDialog;->dismiss()V

    .line 266
    iget-object v0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/ds/daisi/util/AppDeviceUtils;->installAPK(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 268
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method final synthetic lambda$new$0$UpdateDialog(Landroid/os/Message;)Z
    .locals 6

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 92
    :pswitch_0
    iput-boolean v2, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mCanSubmit:Z

    .line 93
    invoke-direct {p0}, Lcom/ds/daisi/dialog/UpdateDialog;->changeButtonsState()V

    goto :goto_0

    .line 86
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 87
    iget-object v0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mTextViewProgress:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ds/daisi/dialog/UpdateDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09009e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ds/daisi/dialog/UpdateDialog;->downloadSize:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/ds/daisi/dialog/UpdateDialog;->fileSize:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mProgressBarDownload:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 81
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    .line 82
    invoke-direct {p0, p1}, Lcom/ds/daisi/dialog/UpdateDialog;->afterDownloadSuccess(Ljava/io/File;)V

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 185
    :pswitch_1
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/UpdateDialog;->dismiss()V

    goto :goto_0

    .line 182
    :pswitch_2
    invoke-direct {p0}, Lcom/ds/daisi/dialog/UpdateDialog;->download()V

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x1

    .line 188
    iput-boolean p1, p0, Lcom/ds/daisi/dialog/UpdateDialog;->isCancel:Z

    .line 189
    iget-object p1, p0, Lcom/ds/daisi/dialog/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/ds/daisi/receiver/NetStateReceiver;->unRegisterNetworkStateReceiver(Landroid/content/Context;)V

    .line 190
    invoke-static {}, Lcom/cyjh/share/util/DownloadUtil;->get()Lcom/cyjh/share/util/DownloadUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/share/util/DownloadUtil;->cancelDownload()V

    .line 191
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/UpdateDialog;->dismiss()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f100201
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Lcom/ds/daisi/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0400a2

    .line 123
    invoke-virtual {p0, p1}, Lcom/ds/daisi/dialog/UpdateDialog;->setContentView(I)V

    const p1, 0x3f666666    # 0.9f

    const v0, 0x3f19999a    # 0.6f

    .line 124
    invoke-virtual {p0, p1, v0}, Lcom/ds/daisi/dialog/UpdateDialog;->setDialogSize(FF)V

    .line 125
    invoke-direct {p0}, Lcom/ds/daisi/dialog/UpdateDialog;->initView()V

    .line 126
    invoke-direct {p0}, Lcom/ds/daisi/dialog/UpdateDialog;->initData()V

    return-void
.end method

.method public show()V
    .locals 2

    .line 238
    invoke-super {p0}, Lcom/ds/daisi/dialog/BaseDialog;->show()V

    .line 239
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ds/daisi/AppContext;->isDisableVolumeKey:Z

    return-void
.end method
