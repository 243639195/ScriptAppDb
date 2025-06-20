.class public Lcom/iflytek/voiceads/download/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/voiceads/download/d$b;,
        Lcom/iflytek/voiceads/download/d$a;
    }
.end annotation


# static fields
.field private static j:Lcom/iflytek/voiceads/download/d;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/voiceads/download/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/voiceads/download/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/HandlerThread;

.field private f:Lcom/iflytek/voiceads/listener/DialogListener;

.field private g:Z

.field private final h:I

.field private final i:I

.field private k:Lcom/iflytek/voiceads/download/a/b;

.field private l:Landroid/app/NotificationManager;

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/lang/String;

.field private final o:Landroid/content/BroadcastReceiver;

.field private final p:I

.field private final q:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/voiceads/download/d;->h:I

    const v0, 0xc350

    iput v0, p0, Lcom/iflytek/voiceads/download/d;->i:I

    const-string v0, ".apk"

    iput-object v0, p0, Lcom/iflytek/voiceads/download/d;->n:Ljava/lang/String;

    new-instance v0, Lcom/iflytek/voiceads/download/o;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/download/o;-><init>(Lcom/iflytek/voiceads/download/d;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/download/d;->o:Landroid/content/BroadcastReceiver;

    const/16 v0, 0x18

    iput v0, p0, Lcom/iflytek/voiceads/download/d;->p:I

    const/16 v0, 0x1a

    iput v0, p0, Lcom/iflytek/voiceads/download/d;->q:I

    iput-object p1, p0, Lcom/iflytek/voiceads/download/d;->a:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/iflytek/voiceads/download/d;->l:Landroid/app/NotificationManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/voiceads/download/d;->m:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/voiceads/download/d;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/voiceads/download/d;->d:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/iflytek/voiceads/download/d;->a()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/iflytek/voiceads/download/d;
    .locals 2

    const-class v1, Lcom/iflytek/voiceads/download/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iflytek/voiceads/download/d;->j:Lcom/iflytek/voiceads/download/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/voiceads/download/d;

    invoke-direct {v0, p0}, Lcom/iflytek/voiceads/download/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/voiceads/download/d;->j:Lcom/iflytek/voiceads/download/d;

    :cond_0
    sget-object v0, Lcom/iflytek/voiceads/download/d;->j:Lcom/iflytek/voiceads/download/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/iflytek/voiceads/download/d;Lcom/iflytek/voiceads/listener/DialogListener;)Lcom/iflytek/voiceads/listener/DialogListener;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/download/d;->f:Lcom/iflytek/voiceads/listener/DialogListener;

    return-object p1
.end method

.method private a()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "download"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/download/d;->e:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/iflytek/voiceads/download/e;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/d;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/voiceads/download/e;-><init>(Lcom/iflytek/voiceads/download/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/download/d;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(I)V
    .locals 5

    const/16 v2, 0x1a

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->m:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lcom/iflytek/voiceads/download/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v2, :cond_1

    if-lt v1, v2, :cond_1

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "iflyad"

    const-string v3, "iflyad"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object v2, p0, Lcom/iflytek/voiceads/download/d;->l:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    const-string v1, "\u51c6\u5907\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "iflyad"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x1080081

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/d;->l:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v1, p0, Lcom/iflytek/voiceads/download/d;->m:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u51c6\u5907\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x1080081

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/d;->l:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v1, p0, Lcom/iflytek/voiceads/download/d;->m:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showNotification error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(II)V
    .locals 6

    const/16 v5, 0x64

    const/16 v2, 0x1a

    const/4 v4, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lcom/iflytek/voiceads/download/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v2, :cond_1

    if-lt v1, v2, :cond_1

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->m:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$Builder;

    if-eqz v0, :cond_0

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, p2, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/d;->l:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->m:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, p2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/d;->l:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Lcom/iflytek/voiceads/download/d$a;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u786e\u8ba4\u4e0b\u8f7d\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u4e0b\u8f7d"

    new-instance v2, Lcom/iflytek/voiceads/download/j;

    invoke-direct {v2, p0, p2}, Lcom/iflytek/voiceads/download/j;-><init>(Lcom/iflytek/voiceads/download/d;Lcom/iflytek/voiceads/download/d$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/iflytek/voiceads/download/k;

    invoke-direct {v2, p0}, Lcom/iflytek/voiceads/download/k;-><init>(Lcom/iflytek/voiceads/download/d;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/iflytek/voiceads/download/l;

    invoke-direct {v1, p0}, Lcom/iflytek/voiceads/download/l;-><init>(Lcom/iflytek/voiceads/download/d;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/io/File;)V
    .locals 6

    const/16 v5, 0x1a

    const/16 v4, 0x18

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v1, v4, :cond_3

    if-lt v3, v4, :cond_3

    if-lt v1, v5, :cond_2

    if-lt v3, v5, :cond_2

    invoke-direct {p0, p1}, Lcom/iflytek/voiceads/download/d;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".fileprovider"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "IFLY_AD_SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installApp error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/high16 v1, 0x10000000

    :try_start_1
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private declared-synchronized a(Lcom/iflytek/voiceads/download/d$b;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "IFLY_AD_SDK"

    const-string v1, "start download ad"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/iflytek/voiceads/download/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/voiceads/download/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/iflytek/voiceads/download/d$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/voiceads/download/d;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/iflytek/voiceads/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p1, Lcom/iflytek/voiceads/download/d$b;->d:Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lcom/iflytek/voiceads/download/d;->a(Lorg/json/JSONArray;)V

    iget-object v0, p1, Lcom/iflytek/voiceads/download/d$b;->e:Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lcom/iflytek/voiceads/download/d;->a(Lorg/json/JSONArray;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->d:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/iflytek/voiceads/download/d$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/iflytek/voiceads/download/d;->b()V

    iget-object v0, p1, Lcom/iflytek/voiceads/download/d$b;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/iflytek/voiceads/download/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->a:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/iflytek/voiceads/download/d;->a(Landroid/content/Context;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    new-instance v1, Lcom/iflytek/voiceads/download/d/a$a;

    invoke-direct {v1}, Lcom/iflytek/voiceads/download/d/a$a;-><init>()V

    iget-object v2, p1, Lcom/iflytek/voiceads/download/d$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iflytek/voiceads/download/d/a$a;->a(Ljava/lang/String;)Lcom/iflytek/voiceads/download/d/a$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/voiceads/download/d/a$a;->b(Ljava/lang/String;)Lcom/iflytek/voiceads/download/d/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/voiceads/download/d/a$a;->a()Lcom/iflytek/voiceads/download/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/voiceads/download/d;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/voiceads/download/a;->a(Landroid/content/Context;)Lcom/iflytek/voiceads/download/a/b;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/voiceads/download/d;->k:Lcom/iflytek/voiceads/download/a/b;

    new-instance v2, Lcom/iflytek/voiceads/download/m;

    invoke-direct {v2, p0, p1, v0}, Lcom/iflytek/voiceads/download/m;-><init>(Lcom/iflytek/voiceads/download/d;Lcom/iflytek/voiceads/download/d$b;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/iflytek/voiceads/download/d/a;->a(Lcom/iflytek/voiceads/download/a/a;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->c:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/iflytek/voiceads/download/d$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->k:Lcom/iflytek/voiceads/download/a/b;

    invoke-interface {v0, v1}, Lcom/iflytek/voiceads/download/a/b;->a(Lcom/iflytek/voiceads/download/d/a;)V

    iget-object v0, p1, Lcom/iflytek/voiceads/download/d$b;->d:Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lcom/iflytek/voiceads/download/d;->a(Lorg/json/JSONArray;)V

    const-string v0, "IFLY_AD_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u4e0b\u8f7d\u76d1\u63a7 \u4e0b\u8f7d\u5730\u5740\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/iflytek/voiceads/download/d$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDownloadAd error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/iflytek/voiceads/download/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/voiceads/download/d;->c()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/voiceads/download/d;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/voiceads/download/d;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/voiceads/download/d;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iflytek/voiceads/download/d;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/voiceads/download/d;Landroid/app/Activity;Lcom/iflytek/voiceads/download/d$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iflytek/voiceads/download/d;->a(Landroid/app/Activity;Lcom/iflytek/voiceads/download/d$a;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/voiceads/download/d;Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iflytek/voiceads/download/d;->a(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/voiceads/download/d;Lcom/iflytek/voiceads/download/d$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/voiceads/download/d;->a(Lcom/iflytek/voiceads/download/d$b;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/voiceads/download/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/voiceads/download/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/voiceads/download/d;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/voiceads/download/d;->a(Lorg/json/JSONArray;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "IFLY_AD_SDK"

    const-string v1, "start download ad no trace"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/iflytek/voiceads/utils/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/iflytek/voiceads/download/d;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/voiceads/download/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/voiceads/download/d;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/iflytek/voiceads/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->a:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/iflytek/voiceads/download/d;->a(Landroid/content/Context;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDownloadAdNoTrace error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/iflytek/voiceads/download/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/voiceads/download/a;->a(Landroid/content/Context;)Lcom/iflytek/voiceads/download/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/voiceads/download/d;->k:Lcom/iflytek/voiceads/download/a/b;

    new-instance v1, Lcom/iflytek/voiceads/download/d/a$a;

    invoke-direct {v1}, Lcom/iflytek/voiceads/download/d/a$a;-><init>()V

    invoke-virtual {v1, p1}, Lcom/iflytek/voiceads/download/d/a$a;->a(Ljava/lang/String;)Lcom/iflytek/voiceads/download/d/a$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/voiceads/download/d/a$a;->b(Ljava/lang/String;)Lcom/iflytek/voiceads/download/d/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/voiceads/download/d/a$a;->a()Lcom/iflytek/voiceads/download/d/a;

    move-result-object v1

    new-instance v2, Lcom/iflytek/voiceads/download/n;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/voiceads/download/n;-><init>(Lcom/iflytek/voiceads/download/d;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/iflytek/voiceads/download/d/a;->a(Lcom/iflytek/voiceads/download/a/a;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->k:Lcom/iflytek/voiceads/download/a/b;

    invoke-interface {v0, v1}, Lcom/iflytek/voiceads/download/a/b;->a(Lcom/iflytek/voiceads/download/d/a;)V

    const-string v0, "IFLY_AD_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u8f7d\u5730\u5740\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized a(Lorg/json/JSONArray;)V
    .locals 6

    const/4 v0, 0x0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/iflytek/voiceads/utils/j;->b([Ljava/lang/Object;)V

    const-string v3, "IFLY_AD_SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "report url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "IFLY_AD_SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "report url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_3
    const-string v0, "IFLY_AD_SDK"

    const-string v1, "monitor: no valid url"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method static synthetic b(Lcom/iflytek/voiceads/download/d;)Lcom/iflytek/voiceads/listener/DialogListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->f:Lcom/iflytek/voiceads/listener/DialogListener;

    return-object v0
.end method

.method private b()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/voiceads/download/d;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/voiceads/download/d;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "\u6ce8\u518c\u5e7f\u64ad"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "\u6ce8\u518c\u5e7f\u64ad"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(I)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->m:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->l:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->m:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/iflytek/voiceads/download/d;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/voiceads/download/d;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/voiceads/download/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/voiceads/download/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "download finished"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/voiceads/download/d$b;

    iget-object v1, v1, Lcom/iflytek/voiceads/download/d$b;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/voiceads/download/d$b;

    const/4 v3, 0x1

    iput v3, v1, Lcom/iflytek/voiceads/download/d$b;->h:I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/voiceads/download/d$b;

    iget-object v0, v0, Lcom/iflytek/voiceads/download/d$b;->e:Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lcom/iflytek/voiceads/download/d;->a(Lorg/json/JSONArray;)V

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "\u4e0b\u8f7d\u5b8c\u6210\u76d1\u63a7"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "IFLY_AD_SDK"

    const-string v1, "\u79fb\u9664\u5e7f\u64ad start"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->b:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->b:Landroid/os/Handler;

    const-wide/32 v2, 0xc350

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private b(Landroid/content/Context;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    goto :goto_0
.end method

.method private c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/d;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    const-string v0, "IFLY_AD_SDK"

    const-string v1, "\u6ce8\u9500\u5b89\u88c5\u5e7f\u64ad"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "\u6ce8\u9500\u5b89\u88c5\u5e7f\u64ad error"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/iflytek/voiceads/download/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/voiceads/download/d;->b()V

    return-void
.end method

.method static synthetic c(Lcom/iflytek/voiceads/download/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/voiceads/download/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "start installation"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/voiceads/download/d$b;

    iget-object v1, v1, Lcom/iflytek/voiceads/download/d$b;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/voiceads/download/d$b;

    const/4 v3, 0x1

    iput v3, v1, Lcom/iflytek/voiceads/download/d$b;->h:I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/voiceads/download/d$b;

    iget-object v0, v0, Lcom/iflytek/voiceads/download/d$b;->f:Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lcom/iflytek/voiceads/download/d;->a(Lorg/json/JSONArray;)V

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "\u5f00\u59cb\u5b89\u88c5\u76d1\u63a7"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/iflytek/voiceads/download/d;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/voiceads/download/d;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/voiceads/download/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public varargs declared-synchronized a(Landroid/content/Context;Lcom/iflytek/voiceads/d/a;[Ljava/lang/Object;)V
    .locals 4

    monitor-enter p0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    const-string v0, "com.iflytek.voiceads.download.DownloadService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Lcom/iflytek/voiceads/download/d$b;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/iflytek/voiceads/download/d$b;-><init>(Lcom/iflytek/voiceads/download/d;Lcom/iflytek/voiceads/download/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_2

    :try_start_2
    array-length v0, p3

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/iflytek/voiceads/download/d$b;->a:Ljava/lang/String;

    :goto_1
    iget-object v0, v1, Lcom/iflytek/voiceads/download/d$b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/voiceads/utils/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/iflytek/voiceads/download/d$b;->b:Ljava/lang/String;

    iget-object v0, p2, Lcom/iflytek/voiceads/d/a;->E:Ljava/lang/String;

    iput-object v0, v1, Lcom/iflytek/voiceads/download/d$b;->c:Ljava/lang/String;

    iget-object v0, p2, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    const-string v2, "download_start_urls"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, v1, Lcom/iflytek/voiceads/download/d$b;->d:Lorg/json/JSONArray;

    iget-object v0, p2, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    const-string v2, "download_complete_urls"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, v1, Lcom/iflytek/voiceads/download/d$b;->e:Lorg/json/JSONArray;

    iget-object v0, p2, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    const-string v2, "install_start_urls"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, v1, Lcom/iflytek/voiceads/download/d$b;->f:Lorg/json/JSONArray;

    iget-object v0, p2, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    const-string v2, "install_complete_urls"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, v1, Lcom/iflytek/voiceads/download/d$b;->g:Lorg/json/JSONArray;

    const/4 v0, 0x0

    iput v0, v1, Lcom/iflytek/voiceads/download/d$b;->h:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->c:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/iflytek/voiceads/download/d$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/iflytek/voiceads/download/d;->g:Z

    if-eqz v0, :cond_3

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/iflytek/voiceads/download/f;

    invoke-direct {v0, p0, p1, v1}, Lcom/iflytek/voiceads/download/f;-><init>(Lcom/iflytek/voiceads/download/d;Landroid/app/Activity;Lcom/iflytek/voiceads/download/d$b;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v0, "IFLY_AD_SDK"

    const-string v1, "service not found"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_5
    iget-object v0, p2, Lcom/iflytek/voiceads/d/a;->L:Ljava/lang/String;

    iput-object v0, v1, Lcom/iflytek/voiceads/download/d$b;->a:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse downExpInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/iflytek/voiceads/download/d;->a(Lcom/iflytek/voiceads/download/d$b;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->f:Lcom/iflytek/voiceads/listener/DialogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->f:Lcom/iflytek/voiceads/listener/DialogListener;

    invoke-interface {v0}, Lcom/iflytek/voiceads/listener/DialogListener;->onConfirm()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/voiceads/download/d;->f:Lcom/iflytek/voiceads/listener/DialogListener;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "com.iflytek.voiceads.download.DownloadService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v0, p0, Lcom/iflytek/voiceads/download/d;->g:Z

    if-eqz v0, :cond_2

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/iflytek/voiceads/download/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/iflytek/voiceads/download/h;-><init>(Lcom/iflytek/voiceads/download/d;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v0, "IFLY_AD_SDK"

    const-string v1, "service not found"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/iflytek/voiceads/download/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->f:Lcom/iflytek/voiceads/listener/DialogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d;->f:Lcom/iflytek/voiceads/listener/DialogListener;

    invoke-interface {v0}, Lcom/iflytek/voiceads/listener/DialogListener;->onConfirm()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/voiceads/download/d;->f:Lcom/iflytek/voiceads/listener/DialogListener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public a(Lcom/iflytek/voiceads/listener/DialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/download/d;->f:Lcom/iflytek/voiceads/listener/DialogListener;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/voiceads/download/d;->g:Z

    return-void
.end method
