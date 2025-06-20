.class public final Lcom/cyjh/mq/a/a;
.super Ljava/lang/Object;
.source "MyApplication.java"


# static fields
.field public static final a:Ljava/lang/String; = "start_eventsrv"

.field public static final b:Ljava/lang/String; = "start_eventsrvR"

.field public static final c:Ljava/lang/String; = ".event.localserver"

.field public static final d:Ljava/lang/String; = "com.cyjh.mobileanjian.ipc.ClientService"

.field public static final e:Ljava/lang/String; = "DaemonClient.zip"

.field public static final f:Ljava/lang/String; = "libmqm.so"

.field public static g:Landroid/app/Application;

.field public static h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;

.field public static i:Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;

.field public static j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/io/File;
    .locals 3

    .line 71
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "start_eventsrvR"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Landroid/app/Application;Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;)V
    .locals 1

    .line 36
    sget-object v0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    sput-object p0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    .line 39
    sput-object p1, Lcom/cyjh/mq/a/a;->h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;

    .line 40
    sput-object p2, Lcom/cyjh/mq/a/a;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;

    .line 41
    sput-object p3, Lcom/cyjh/mq/a/a;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;

    .line 43
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/cyjh/mq/service/IpcService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    invoke-virtual {p0, p1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private static b()V
    .locals 3

    .line 48
    sget-object v0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    const-class v2, Lcom/cyjh/mq/service/IpcService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    sget-object v1, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method private static c()Landroid/app/Application;
    .locals 1

    .line 56
    sget-object v0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    return-object v0
.end method

.method private static d()Landroid/content/Context;
    .locals 1

    .line 61
    sget-object v0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static e()Ljava/io/File;
    .locals 3

    .line 66
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "start_eventsrv"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static f()Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;
    .locals 1

    .line 76
    sget-object v0, Lcom/cyjh/mq/a/a;->h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;

    return-object v0
.end method

.method private static g()Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;
    .locals 1

    .line 81
    sget-object v0, Lcom/cyjh/mq/a/a;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;

    return-object v0
.end method

.method private static h()Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;
    .locals 1

    .line 86
    sget-object v0, Lcom/cyjh/mq/a/a;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;

    return-object v0
.end method
