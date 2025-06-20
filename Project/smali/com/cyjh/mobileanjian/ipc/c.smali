.class public final Lcom/cyjh/mobileanjian/ipc/c;
.super Ljava/lang/Object;
.source "RootManager.java"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static g:Lcom/cyjh/mobileanjian/ipc/c; = null

.field private static final j:Ljava/lang/String; = "3rd.need.or.not.m"


# instance fields
.field c:Landroid/os/Handler;

.field d:Z

.field e:Z

.field f:Z

.field private h:Z

.field private i:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/c;->d:Z

    .line 39
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/c;->h:Z

    .line 40
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/c;->e:Z

    .line 41
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/c;->f:Z

    .line 48
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/c$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/c$1;-><init>(Lcom/cyjh/mobileanjian/ipc/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()V
    .locals 3

    .line 6239
    new-instance v0, Landroid/content/Intent;

    const-string v1, "try_active_runner_use_other_way"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "active_type"

    const-string v2, "2"

    .line 6241
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "active_result"

    const-string v2, "0"

    .line 6242
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7056
    sget-object v1, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    .line 6243
    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private a(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/c;->i:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 230
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/c;->c:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private static a(Z)V
    .locals 3

    .line 239
    new-instance v0, Landroid/content/Intent;

    const-string v1, "try_active_runner_use_other_way"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "active_type"

    const-string v2, "2"

    .line 241
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "active_result"

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    .line 242
    :goto_0
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6056
    sget-object p0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    .line 243
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 222
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 223
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 225
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic a(Lcom/cyjh/mobileanjian/ipc/c;)Z
    .locals 1

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/c;->d:Z

    return v0
.end method

.method private static declared-synchronized b()Lcom/cyjh/mobileanjian/ipc/c;
    .locals 2

    const-class v0, Lcom/cyjh/mobileanjian/ipc/c;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/c;->g:Lcom/cyjh/mobileanjian/ipc/c;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lcom/cyjh/mobileanjian/ipc/c;

    invoke-direct {v1}, Lcom/cyjh/mobileanjian/ipc/c;-><init>()V

    sput-object v1, Lcom/cyjh/mobileanjian/ipc/c;->g:Lcom/cyjh/mobileanjian/ipc/c;

    .line 67
    :cond_0
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/c;->g:Lcom/cyjh/mobileanjian/ipc/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 62
    monitor-exit v0

    throw v1
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c;->c:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static synthetic b(Lcom/cyjh/mobileanjian/ipc/c;)Z
    .locals 1

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/c;->f:Z

    return v0
.end method

.method private c()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/c;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/c;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic c(Lcom/cyjh/mobileanjian/ipc/c;)Z
    .locals 1

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/c;->e:Z

    return v0
.end method

.method private static synthetic d(Lcom/cyjh/mobileanjian/ipc/c;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/c;->c:Landroid/os/Handler;

    return-object p0
.end method

.method private d()V
    .locals 6

    .line 85
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/c;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/c;->h:Z

    .line 88
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RootUtil;->isRoot()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 90
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/d;->a()Lcom/cyjh/mobileanjian/ipc/d;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/d;->a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;)V

    goto/16 :goto_2

    .line 94
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "check EntryPoint "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/goldcoast/sdk/domain/EntryPoint;->instance()Lcom/goldcoast/sdk/domain/EntryPoint;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    invoke-static {}, Lcom/goldcoast/sdk/domain/EntryPoint;->instance()Lcom/goldcoast/sdk/domain/EntryPoint;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1081
    sget-object v1, Lcom/cyjh/mq/a/a;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;

    if-eqz v1, :cond_8

    .line 1110
    iget-boolean v1, p0, Lcom/cyjh/mobileanjian/ipc/c;->d:Z

    if-eqz v1, :cond_2

    .line 1112
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/c;->c:Landroid/os/Handler;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "3rd root is going on now."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    .line 1117
    :cond_2
    new-instance v1, Ljava/io/File;

    .line 2056
    sget-object v3, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    .line 1117
    invoke-virtual {v3}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "3rd.need.or.not.m"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1118
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x5

    if-nez v3, :cond_7

    .line 3056
    sget-object v3, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    const-string v5, "connectivity"

    .line 3222
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 3223
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3225
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_4

    goto :goto_1

    .line 1124
    :cond_4
    iget-boolean v3, p0, Lcom/cyjh/mobileanjian/ipc/c;->f:Z

    if-eqz v3, :cond_6

    .line 1126
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/c;->e:Z

    if-eqz v0, :cond_5

    .line 1128
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c;->c:Landroid/os/Handler;

    new-instance v1, Lcom/cyjh/mobileanjian/ipc/c$2;

    invoke-direct {v1, p0}, Lcom/cyjh/mobileanjian/ipc/c$2;-><init>(Lcom/cyjh/mobileanjian/ipc/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 1140
    :cond_5
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c;->c:Landroid/os/Handler;

    const-string v1, "result"

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 1145
    :cond_6
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/c;->d:Z

    .line 1146
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/c;->c:Landroid/os/Handler;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Now start 3rd root using "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1149
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/c$3;

    const-string v3, "third_root_request"

    invoke-direct {v0, p0, v3, v1}, Lcom/cyjh/mobileanjian/ipc/c$3;-><init>(Lcom/cyjh/mobileanjian/ipc/c;Ljava/lang/String;Ljava/io/File;)V

    .line 1217
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/c$3;->start()V

    goto :goto_2

    .line 1120
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c;->c:Landroid/os/Handler;

    const-string v1, "failed because mark file"

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 102
    :cond_8
    :goto_2
    iput-boolean v2, p0, Lcom/cyjh/mobileanjian/ipc/c;->h:Z

    return-void
.end method

.method private e()V
    .locals 5

    .line 110
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/c;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c;->c:Landroid/os/Handler;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "3rd root is going on now."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 4056
    sget-object v2, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    .line 117
    invoke-virtual {v2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "3rd.need.or.not.m"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x5

    if-nez v2, :cond_5

    .line 5056
    sget-object v2, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    const-string v4, "connectivity"

    .line 5222
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 5223
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5225
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    goto :goto_1

    .line 124
    :cond_2
    iget-boolean v2, p0, Lcom/cyjh/mobileanjian/ipc/c;->f:Z

    if-eqz v2, :cond_4

    .line 126
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/c;->e:Z

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c;->c:Landroid/os/Handler;

    new-instance v1, Lcom/cyjh/mobileanjian/ipc/c$2;

    invoke-direct {v1, p0}, Lcom/cyjh/mobileanjian/ipc/c$2;-><init>(Lcom/cyjh/mobileanjian/ipc/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c;->c:Landroid/os/Handler;

    const-string v1, "result"

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 145
    :cond_4
    iput-boolean v1, p0, Lcom/cyjh/mobileanjian/ipc/c;->d:Z

    .line 146
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/c;->c:Landroid/os/Handler;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Now start 3rd root using "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 149
    new-instance v1, Lcom/cyjh/mobileanjian/ipc/c$3;

    const-string v2, "third_root_request"

    invoke-direct {v1, p0, v2, v0}, Lcom/cyjh/mobileanjian/ipc/c$3;-><init>(Lcom/cyjh/mobileanjian/ipc/c;Ljava/lang/String;Ljava/io/File;)V

    .line 217
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/c$3;->start()V

    return-void

    .line 120
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/c;->c:Landroid/os/Handler;

    const-string v1, "failed because mark file"

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static synthetic e(Lcom/cyjh/mobileanjian/ipc/c;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/cyjh/mobileanjian/ipc/c;->f:Z

    return p0
.end method
