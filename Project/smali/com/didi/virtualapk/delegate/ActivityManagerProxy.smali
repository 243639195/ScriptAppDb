.class public Lcom/didi/virtualapk/delegate/ActivityManagerProxy;
.super Ljava/lang/Object;
.source "ActivityManagerProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field public static final INTENT_SENDER_ACTIVITY:I = 0x2

.field public static final INTENT_SENDER_ACTIVITY_RESULT:I = 0x3

.field public static final INTENT_SENDER_BROADCAST:I = 0x1

.field public static final INTENT_SENDER_SERVICE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "VA.IActivityManagerProxy"


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mPluginManager:Lcom/didi/virtualapk/PluginManager;


# direct methods
.method public constructor <init>(Lcom/didi/virtualapk/PluginManager;Landroid/app/IActivityManager;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    .line 59
    iput-object p2, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    return-void
.end method


# virtual methods
.method protected bindService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x2

    .line 172
    aget-object p1, p3, p1

    check-cast p1, Landroid/content/Intent;

    .line 173
    iget-object v0, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/didi/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sc"

    const/4 v2, 0x4

    .line 180
    aget-object v3, p3, v2

    check-cast v3, Landroid/os/IBinder;

    invoke-static {p2, v1, v3}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 181
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->startDelegateServiceForTarget(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/ComponentName;

    .line 182
    iget-object p2, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {p2}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object p2

    aget-object p3, p3, v2

    check-cast p3, Landroid/os/IBinder;

    invoke-virtual {p2, p3, p1}, Lcom/didi/virtualapk/internal/ComponentsHandler;->remberIServiceConnection(Landroid/os/IBinder;Landroid/content/Intent;)V

    const/4 p1, 0x1

    .line 183
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 176
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getIntentSender(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 5

    .line 225
    iget-object p1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {p1}, Lcom/didi/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 226
    aput-object p1, p2, v0

    const/4 p1, 0x5

    .line 228
    aget-object v1, p2, p1

    check-cast v1, [Landroid/content/Intent;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 229
    aget-object v3, p2, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 231
    iget-object p1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {p1}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/didi/virtualapk/internal/ComponentsHandler;->transformIntentToExplicitAsNeeded(Landroid/content/Intent;)Landroid/content/Intent;

    .line 232
    iget-object p1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {p1}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/didi/virtualapk/internal/ComponentsHandler;->markIntentIfNeeded(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 234
    iget-object v3, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v3, v1, v2}, Lcom/didi/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 235
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_1

    .line 237
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4, v0}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->wrapperTargetIntent(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/Intent;

    move-result-object v0

    .line 238
    aget-object p1, p2, p1

    check-cast p1, [Landroid/content/Intent;

    aput-object v0, p1, v2

    :cond_1
    :goto_0
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "startService"

    .line 64
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->startService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "VA.IActivityManagerProxy"

    const-string v1, "Start service error"

    .line 68
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_0
    const-string v0, "stopService"

    .line 70
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->stopService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    const-string v0, "VA.IActivityManagerProxy"

    const-string v1, "Stop Service error"

    .line 74
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_1
    const-string v0, "stopServiceToken"

    .line 76
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->stopServiceToken(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    const-string v0, "VA.IActivityManagerProxy"

    const-string v1, "Stop service token error"

    .line 80
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const-string v0, "bindService"

    .line 82
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->bindService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    return-object p1

    :catch_3
    move-exception p1

    const-string v0, "VA.IActivityManagerProxy"

    .line 86
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    const-string v0, "unbindService"

    .line 88
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    :try_start_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->unbindService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    return-object p1

    :catch_4
    move-exception p1

    const-string v0, "VA.IActivityManagerProxy"

    .line 92
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    const-string p1, "getIntentSender"

    .line 94
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 96
    :try_start_5
    invoke-virtual {p0, p2, p3}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->getIntentSender(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    :catch_5
    move-exception p1

    const-string v0, "VA.IActivityManagerProxy"

    .line 98
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_5
    const-string p1, "overridePendingTransition"

    .line 100
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 102
    :try_start_6
    invoke-virtual {p0, p2, p3}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->overridePendingTransition(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_0

    :catch_6
    move-exception p1

    const-string v0, "VA.IActivityManagerProxy"

    .line 104
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    :cond_6
    :goto_0
    :try_start_7
    iget-object p1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 113
    instance-of p3, p2, Landroid/os/DeadObjectException;

    if-eqz p3, :cond_7

    const-string p3, "activity"

    .line 115
    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 117
    invoke-static {p3}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object p3

    .line 118
    iput-object p3, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    :cond_7
    move-object p3, p1

    .line 124
    :cond_8
    instance-of v0, p3, Landroid/os/RemoteException;

    if-eqz v0, :cond_9

    .line 125
    throw p3

    .line 127
    :cond_9
    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    if-nez p3, :cond_8

    if-eqz p2, :cond_a

    move-object p1, p2

    .line 129
    :cond_a
    throw p1
.end method

.method protected overridePendingTransition(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 1

    .line 246
    iget-object p1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {p1}, Lcom/didi/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 247
    aput-object p1, p2, v0

    return-void
.end method

.method protected startDelegateServiceForTarget(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/ComponentName;
    .locals 0

    .line 200
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->wrapperTargetIntent(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/Intent;

    move-result-object p1

    .line 201
    iget-object p2, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {p2}, Lcom/didi/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method protected startService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    .line 135
    aget-object v0, p3, p1

    check-cast v0, Landroid/app/IApplicationThread;

    const/4 v0, 0x1

    .line 136
    aget-object v1, p3, v0

    check-cast v1, Landroid/content/Intent;

    .line 137
    iget-object v2, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v2, v1, p1}, Lcom/didi/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 138
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 p2, 0x0

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->startDelegateServiceForTarget(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1

    .line 140
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected stopService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x1

    .line 147
    aget-object v0, p3, p1

    check-cast v0, Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/didi/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    iget-object p2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 p3, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->startDelegateServiceForTarget(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/ComponentName;

    .line 155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 151
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected stopServiceToken(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    .line 159
    aget-object v0, p3, p1

    check-cast v0, Landroid/content/ComponentName;

    .line 160
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, v0, p1}, Lcom/didi/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 162
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 p2, 0x0

    const/4 p3, 0x2

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->startDelegateServiceForTarget(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/ComponentName;

    const/4 p1, 0x1

    .line 168
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 164
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected unbindService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    .line 187
    aget-object v0, p3, p1

    check-cast v0, Landroid/os/IBinder;

    .line 188
    iget-object v1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/didi/virtualapk/internal/ComponentsHandler;->forgetIServiceConnection(Landroid/os/IBinder;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 191
    iget-object p1, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 194
    :cond_0
    iget-object p2, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {p2, v0, p1}, Lcom/didi/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 195
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 p2, 0x0

    const/4 p3, 0x4

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->startDelegateServiceForTarget(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/ComponentName;

    const/4 p1, 0x1

    .line 196
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected wrapperTargetIntent(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/Intent;
    .locals 3

    .line 206
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 207
    iget-object v0, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {p2}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->isLocalService(Landroid/content/pm/ServiceInfo;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 211
    const-class p2, Lcom/didi/virtualapk/delegate/LocalService;

    goto :goto_0

    :cond_0
    const-class p2, Lcom/didi/virtualapk/delegate/RemoteService;

    .line 212
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 213
    iget-object v2, p0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v2}, Lcom/didi/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p2, "target"

    .line 214
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "command"

    .line 215
    invoke-virtual {v1, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "plugin_location"

    .line 216
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_1

    .line 218
    invoke-virtual {v1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    return-object v1
.end method
