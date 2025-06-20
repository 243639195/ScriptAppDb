.class public Lcom/ds/daisi/download/ApkDownloadHelper;
.super Ljava/lang/Object;
.source "ApkDownloadHelper.java"


# static fields
.field private static final INSTALL_APK_DELAY_TIME:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ApkDownloadHelper"


# instance fields
.field private downloadManager:Landroid/app/DownloadManager;

.field private fileName:Ljava/lang/String;

.field mAdPid:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mTaskId:J

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/ds/daisi/download/ApkDownloadHelper;->downloadManager:Landroid/app/DownloadManager;

    .line 80
    new-instance v0, Lcom/ds/daisi/download/ApkDownloadHelper$1;

    invoke-direct {v0, p0}, Lcom/ds/daisi/download/ApkDownloadHelper$1;-><init>(Lcom/ds/daisi/download/ApkDownloadHelper;)V

    iput-object v0, p0, Lcom/ds/daisi/download/ApkDownloadHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 42
    iput-object p2, p0, Lcom/ds/daisi/download/ApkDownloadHelper;->mAdPid:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/ds/daisi/download/ApkDownloadHelper;->mContext:Landroid/content/Context;

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".apk"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ds/daisi/download/ApkDownloadHelper;->fileName:Ljava/lang/String;

    const-string p2, "download"

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    iput-object p1, p0, Lcom/ds/daisi/download/ApkDownloadHelper;->downloadManager:Landroid/app/DownloadManager;

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/download/ApkDownloadHelper;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/ds/daisi/download/ApkDownloadHelper;->checkDownloadStatus()V

    return-void
.end method

.method private checkDownloadStatus()V
    .locals 5

    .line 89
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    .line 90
    new-array v1, v1, [J

    iget-wide v2, p0, Lcom/ds/daisi/download/ApkDownloadHelper;->mTaskId:J

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 91
    iget-object v1, p0, Lcom/ds/daisi/download/ApkDownloadHelper;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "status"

    .line 94
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 93
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_0
    const-string v0, "download"

    const-string v1, ">>>\u4e0b\u8f7d\u5931\u8d25"

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "download"

    const-string v1, ">>>\u4e0b\u8f7d\u5b8c\u6210"

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/ds/daisi/download/ApkDownloadHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ds/daisi/download/ApkDownloadHelper;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 108
    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/download/ApkDownloadHelper;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-direct {p0, v0}, Lcom/ds/daisi/download/ApkDownloadHelper;->saveReportInfo(Ljava/lang/String;)V

    .line 113
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/ds/daisi/download/ApkDownloadHelper;->installApkOperate(Ljava/io/File;)V

    .line 114
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/entity/AdEvent;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/ds/daisi/entity/AdEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "download"

    const-string v1, ">>>\u4e0b\u8f7d\u6682\u505c"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_0
    const-string v0, "download"

    const-string v1, ">>>\u4e0b\u8f7d\u5ef6\u8fdf"

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_1
    const-string v0, "download"

    const-string v1, ">>>\u6b63\u5728\u4e0b\u8f7d"

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private installApkOperate(Ljava/io/File;)V
    .locals 4

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ds/daisi/download/ApkDownloadHelper$$Lambda$0;

    invoke-direct {v1, p0, p1}, Lcom/ds/daisi/download/ApkDownloadHelper$$Lambda$0;-><init>(Lcom/ds/daisi/download/ApkDownloadHelper;Ljava/io/File;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private saveReportInfo(Ljava/lang/String;)V
    .locals 3

    .line 134
    sget-object v0, Lcom/ds/daisi/download/ApkDownloadHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveReportInfo --> 1 apkPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/ds/daisi/download/ApkDownloadHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cyjh/share/util/CommonUtils;->getLocalApkFileInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {}, Lcom/ds/daisi/util/FeLingAdDBHelper;->getInstance()Lcom/ds/daisi/util/FeLingAdDBHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/download/ApkDownloadHelper;->mAdPid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ds/daisi/util/FeLingAdDBHelper;->getFeLingAdReportInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/ds/daisi/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    sget-object v1, Lcom/ds/daisi/download/ApkDownloadHelper;->TAG:Ljava/lang/String;

    const-string v2, "saveReportInfo --> 2 "

    invoke-static {v1, v2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ds/daisi/entity/FeLingAdReportInfo;

    const/4 v2, 0x1

    .line 140
    invoke-virtual {v1, v2}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->setState(I)V

    .line 141
    invoke-virtual {v1, p1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->setApkPageName(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->save()Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public downloadAPK(Ljava/lang/String;)V
    .locals 3

    .line 51
    new-instance v0, Landroid/app/DownloadManager$Request;

    .line 52
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    .line 56
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    .line 58
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {v2, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 62
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    const/4 p1, 0x1

    .line 63
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    const-string p1, "/download/"

    .line 66
    iget-object v1, p0, Lcom/ds/daisi/download/ApkDownloadHelper;->fileName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 69
    iget-object p1, p0, Lcom/ds/daisi/download/ApkDownloadHelper;->mContext:Landroid/content/Context;

    const-string v1, "download"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    iput-object p1, p0, Lcom/ds/daisi/download/ApkDownloadHelper;->downloadManager:Landroid/app/DownloadManager;

    .line 72
    iget-object p1, p0, Lcom/ds/daisi/download/ApkDownloadHelper;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ds/daisi/download/ApkDownloadHelper;->mTaskId:J

    .line 75
    iget-object p1, p0, Lcom/ds/daisi/download/ApkDownloadHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/ds/daisi/download/ApkDownloadHelper;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method final synthetic lambda$installApkOperate$0$ApkDownloadHelper(Ljava/io/File;)V
    .locals 1

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/ds/daisi/download/ApkDownloadHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/ds/daisi/util/AppDeviceUtils;->installAPK(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
