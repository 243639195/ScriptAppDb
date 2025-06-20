.class public Lcom/ds/daisi/services/PhoneStateService;
.super Lcom/ds/daisi/services/BaseService;
.source "PhoneStateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/services/PhoneStateService$PhoneStateReceiver;
    }
.end annotation


# instance fields
.field private final PHONE_STATE:Ljava/lang/String;

.field private phoneStatReceiver:Lcom/ds/daisi/services/PhoneStateService$PhoneStateReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/ds/daisi/services/BaseService;-><init>()V

    const-string v0, "android.intent.action.PHONE_STATE"

    .line 41
    iput-object v0, p0, Lcom/ds/daisi/services/PhoneStateService;->PHONE_STATE:Ljava/lang/String;

    return-void
.end method

.method private initNotification()V
    .locals 5

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.MAIN"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    .line 60
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 62
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    const v0, 0x7f0200cb

    .line 64
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 65
    invoke-virtual {p0}, Lcom/ds/daisi/services/PhoneStateService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 68
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    const v0, 0x7f090069

    .line 69
    invoke-virtual {p0, v0}, Lcom/ds/daisi/services/PhoneStateService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ds/daisi/services/PhoneStateService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f090103

    invoke-virtual {p0, v0}, Lcom/ds/daisi/services/PhoneStateService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 71
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/ds/daisi/services/PhoneStateService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/ds/daisi/services/PhoneStateService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 45
    invoke-super {p0}, Lcom/ds/daisi/services/BaseService;->onCreate()V

    .line 47
    new-instance v0, Lcom/ds/daisi/services/PhoneStateService$PhoneStateReceiver;

    invoke-direct {v0, p0}, Lcom/ds/daisi/services/PhoneStateService$PhoneStateReceiver;-><init>(Lcom/ds/daisi/services/PhoneStateService;)V

    iput-object v0, p0, Lcom/ds/daisi/services/PhoneStateService;->phoneStatReceiver:Lcom/ds/daisi/services/PhoneStateService$PhoneStateReceiver;

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PHONE_STATE"

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/ds/daisi/services/PhoneStateService;->phoneStatReceiver:Lcom/ds/daisi/services/PhoneStateService$PhoneStateReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/ds/daisi/services/PhoneStateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 52
    invoke-direct {p0}, Lcom/ds/daisi/services/PhoneStateService;->initNotification()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/ds/daisi/services/PhoneStateService;->phoneStatReceiver:Lcom/ds/daisi/services/PhoneStateService$PhoneStateReceiver;

    invoke-virtual {p0, v0}, Lcom/ds/daisi/services/PhoneStateService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    invoke-super {p0}, Lcom/ds/daisi/services/BaseService;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/ds/daisi/services/BaseService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
