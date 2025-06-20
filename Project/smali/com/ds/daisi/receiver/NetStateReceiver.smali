.class public Lcom/ds/daisi/receiver/NetStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/receiver/NetStateReceiver$NetChangeObserver;
    }
.end annotation


# static fields
.field private static final ANDROID_NET_CHANGE_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field private static final TAG:Ljava/lang/String; = "NetStateReceiver"

.field private static isNetAvailable:Z

.field private static mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private static mNetChangeObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ds/daisi/receiver/NetStateReceiver$NetChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static mNetType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ds/daisi/receiver/NetStateReceiver;->mNetChangeObservers:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static checkNetworkState(Landroid/content/Context;)V
    .locals 2

    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static getAPNType()I
    .locals 1

    .line 98
    sget v0, Lcom/ds/daisi/receiver/NetStateReceiver;->mNetType:I

    return v0
.end method

.method private static getReceiver()Landroid/content/BroadcastReceiver;
    .locals 2

    .line 28
    sget-object v0, Lcom/ds/daisi/receiver/NetStateReceiver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 29
    const-class v0, Lcom/ds/daisi/receiver/NetStateReceiver;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/ds/daisi/receiver/NetStateReceiver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/ds/daisi/receiver/NetStateReceiver;

    invoke-direct {v1}, Lcom/ds/daisi/receiver/NetStateReceiver;-><init>()V

    sput-object v1, Lcom/ds/daisi/receiver/NetStateReceiver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 33
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 35
    :cond_1
    :goto_0
    sget-object v0, Lcom/ds/daisi/receiver/NetStateReceiver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public static isNetworkAvailable()Z
    .locals 1

    .line 94
    sget-boolean v0, Lcom/ds/daisi/receiver/NetStateReceiver;->isNetAvailable:Z

    return v0
.end method

.method private notifyObserver()V
    .locals 4

    .line 102
    sget-object v0, Lcom/ds/daisi/receiver/NetStateReceiver;->mNetChangeObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    sget-object v0, Lcom/ds/daisi/receiver/NetStateReceiver;->mNetChangeObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 105
    sget-object v2, Lcom/ds/daisi/receiver/NetStateReceiver;->mNetChangeObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ds/daisi/receiver/NetStateReceiver$NetChangeObserver;

    if-eqz v2, :cond_1

    .line 107
    invoke-static {}, Lcom/ds/daisi/receiver/NetStateReceiver;->isNetworkAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    sget v3, Lcom/ds/daisi/receiver/NetStateReceiver;->mNetType:I

    invoke-interface {v2, v3}, Lcom/ds/daisi/receiver/NetStateReceiver$NetChangeObserver;->onNetConnected(I)V

    goto :goto_1

    .line 110
    :cond_0
    invoke-interface {v2}, Lcom/ds/daisi/receiver/NetStateReceiver$NetChangeObserver;->onNetDisConnect()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static registerNetworkStateReceiver(Landroid/content/Context;)V
    .locals 2

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/ds/daisi/receiver/NetStateReceiver;->getReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static registerObserver(Lcom/ds/daisi/receiver/NetStateReceiver$NetChangeObserver;)V
    .locals 1

    .line 123
    sget-object v0, Lcom/ds/daisi/receiver/NetStateReceiver;->mNetChangeObservers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ds/daisi/receiver/NetStateReceiver;->mNetChangeObservers:Ljava/util/ArrayList;

    .line 126
    :cond_0
    sget-object v0, Lcom/ds/daisi/receiver/NetStateReceiver;->mNetChangeObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static removeRegisterObserver(Lcom/ds/daisi/receiver/NetStateReceiver$NetChangeObserver;)V
    .locals 1

    .line 135
    sget-object v0, Lcom/ds/daisi/receiver/NetStateReceiver;->mNetChangeObservers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lcom/ds/daisi/receiver/NetStateReceiver;->mNetChangeObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcom/ds/daisi/receiver/NetStateReceiver;->mNetChangeObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static unRegisterNetworkStateReceiver(Landroid/content/Context;)V
    .locals 1

    .line 83
    sget-object v0, Lcom/ds/daisi/receiver/NetStateReceiver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 85
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/ds/daisi/receiver/NetStateReceiver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 40
    sput-object p0, Lcom/ds/daisi/receiver/NetStateReceiver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 42
    invoke-static {p1}, Lcom/ds/daisi/util/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "<--- network disconnected --->"

    invoke-static {p1, p2}, Lcom/cyjh/share/util/SlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 44
    sput-boolean p1, Lcom/ds/daisi/receiver/NetStateReceiver;->isNetAvailable:Z

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "<--- network connected --->"

    invoke-static {p2, v0}, Lcom/cyjh/share/util/SlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 47
    sput-boolean p2, Lcom/ds/daisi/receiver/NetStateReceiver;->isNetAvailable:Z

    .line 48
    invoke-static {p1}, Lcom/ds/daisi/util/NetworkUtils;->getNetWorkType(Landroid/content/Context;)I

    move-result p1

    sput p1, Lcom/ds/daisi/receiver/NetStateReceiver;->mNetType:I

    .line 50
    :goto_0
    invoke-direct {p0}, Lcom/ds/daisi/receiver/NetStateReceiver;->notifyObserver()V

    :cond_1
    return-void
.end method
