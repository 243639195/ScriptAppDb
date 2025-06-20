.class public Lcom/cyjh/mq/sdk/MqBridge;
.super Ljava/lang/Object;
.source "MqBridge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exit()V
    .locals 3

    .line 1048
    sget-object v0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 1049
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    const-class v2, Lcom/cyjh/mq/service/IpcService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1050
    sget-object v1, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;)V
    .locals 1

    .line 1036
    sget-object v0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 1038
    sput-object p0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    .line 1039
    sput-object p3, Lcom/cyjh/mq/a/a;->h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;

    .line 1040
    sput-object p4, Lcom/cyjh/mq/a/a;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;

    .line 1041
    sput-object p5, Lcom/cyjh/mq/a/a;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;

    .line 1043
    new-instance p3, Landroid/content/Intent;

    const-class p4, Lcom/cyjh/mq/service/IpcService;

    invoke-direct {p3, p0, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1044
    invoke-virtual {p0, p3}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 30
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/log/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
