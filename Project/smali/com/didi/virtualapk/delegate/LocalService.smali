.class public Lcom/didi/virtualapk/delegate/LocalService;
.super Landroid/app/Service;
.source "LocalService.java"


# static fields
.field public static final EXTRA_COMMAND:Ljava/lang/String; = "command"

.field public static final EXTRA_COMMAND_BIND_SERVICE:I = 0x3

.field public static final EXTRA_COMMAND_START_SERVICE:I = 0x1

.field public static final EXTRA_COMMAND_STOP_SERVICE:I = 0x2

.field public static final EXTRA_COMMAND_UNBIND_SERVICE:I = 0x4

.field public static final EXTRA_PLUGIN_LOCATION:Ljava/lang/String; = "plugin_location"

.field public static final EXTRA_TARGET:Ljava/lang/String; = "target"

.field private static final TAG:Ljava/lang/String; = "VA.LocalService"


# instance fields
.field private mPluginManager:Lcom/didi/virtualapk/PluginManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 64
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 69
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 70
    invoke-static {p0}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    const-string v4, "target"

    .line 75
    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "command"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v4, "target"

    .line 79
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    const-string v5, "command"

    const/4 v6, 0x0

    .line 80
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eqz v4, :cond_8

    if-gtz v5, :cond_1

    goto/16 :goto_4

    .line 85
    :cond_1
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 86
    iget-object v8, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v8, v7}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v8

    if-nez v8, :cond_2

    const-string v2, "VA.LocalService"

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error target: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 93
    :cond_2
    invoke-virtual {v8}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const/4 v12, 0x6

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_3

    .line 173
    :pswitch_0
    iget-object v2, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v2}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/didi/virtualapk/internal/ComponentsHandler;->forgetService(Landroid/content/ComponentName;)Landroid/app/Service;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 176
    :try_start_0
    invoke-virtual {v2, v4}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 177
    invoke-virtual {v2}, Landroid/app/Service;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object v4, v0

    const-string v5, "VA.LocalService"

    .line 179
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to unbind service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_3
    const-string v2, "VA.LocalService"

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 123
    :pswitch_1
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v5

    .line 124
    invoke-virtual {v5}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v14

    .line 127
    iget-object v15, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v15}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v15

    invoke-virtual {v15, v7}, Lcom/didi/virtualapk/internal/ComponentsHandler;->isServiceAvailable(Landroid/content/ComponentName;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 128
    iget-object v5, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v5}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/didi/virtualapk/internal/ComponentsHandler;->getService(Landroid/content/ComponentName;)Landroid/app/Service;

    move-result-object v5

    move-object v15, v5

    goto/16 :goto_1

    .line 131
    :cond_4
    :try_start_1
    invoke-virtual {v8}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Landroid/app/Service;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 133
    :try_start_2
    invoke-virtual {v8}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getApplication()Landroid/app/Application;

    move-result-object v9

    .line 134
    invoke-interface {v14}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 135
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "attach"

    new-array v13, v12, [Ljava/lang/Class;

    const-class v16, Landroid/content/Context;

    aput-object v16, v13, v6

    const-class v16, Landroid/app/ActivityThread;

    aput-object v16, v13, v3

    const-class v16, Ljava/lang/String;

    const/16 v20, 0x2

    aput-object v16, v13, v20

    const-class v16, Landroid/os/IBinder;

    const/16 v19, 0x3

    aput-object v16, v13, v19

    const-class v16, Landroid/app/Application;

    const/16 v18, 0x4

    aput-object v16, v13, v18

    const-class v16, Ljava/lang/Object;

    const/16 v17, 0x5

    aput-object v16, v13, v17

    invoke-virtual {v10, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 136
    iget-object v11, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v11}, Lcom/didi/virtualapk/PluginManager;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v11

    .line 138
    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v12, v6

    aput-object v5, v12, v3

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v12, v8

    const/4 v5, 0x3

    aput-object v14, v12, v5

    const/4 v5, 0x4

    aput-object v9, v12, v5

    const/4 v5, 0x5

    aput-object v11, v12, v5

    invoke-virtual {v10, v15, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {v15}, Landroid/app/Service;->onCreate()V

    .line 140
    iget-object v5, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v5}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v5

    invoke-virtual {v5, v7, v15}, Lcom/didi/virtualapk/internal/ComponentsHandler;->rememberService(Landroid/content/ComponentName;Landroid/app/Service;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v5, v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v5, v0

    const/4 v15, 0x0

    :goto_0
    const-string v8, "VA.LocalService"

    .line 142
    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :goto_1
    :try_start_3
    invoke-virtual {v15, v4}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v4

    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "sc"

    invoke-static {v2, v5}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 148
    invoke-static {v2}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v2

    .line 149
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v5, v8, :cond_5

    .line 150
    invoke-interface {v2, v7, v4, v6}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V

    goto/16 :goto_3

    .line 152
    :cond_5
    invoke-static {v2}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v2

    const-string v5, "connected"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Class;

    const-class v8, Landroid/content/ComponentName;

    aput-object v8, v9, v6

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v9, v3

    invoke-virtual {v2, v5, v9}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v7, v5, v6

    aput-object v4, v5, v3

    invoke-virtual {v2, v5}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v0

    move-object v2, v0

    const-string v4, "VA.LocalService"

    .line 155
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 160
    :pswitch_2
    iget-object v2, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v2}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/didi/virtualapk/internal/ComponentsHandler;->forgetService(Landroid/content/ComponentName;)Landroid/app/Service;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 163
    :try_start_4
    invoke-virtual {v2}, Landroid/app/Service;->onDestroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v0

    const-string v4, "VA.LocalService"

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to stop service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_6
    const-string v2, "VA.LocalService"

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 96
    :pswitch_3
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    .line 97
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v5

    .line 100
    iget-object v9, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v9}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/didi/virtualapk/internal/ComponentsHandler;->isServiceAvailable(Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 101
    iget-object v2, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v2}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/didi/virtualapk/internal/ComponentsHandler;->getService(Landroid/content/ComponentName;)Landroid/app/Service;

    move-result-object v2

    goto :goto_2

    .line 104
    :cond_7
    :try_start_5
    invoke-virtual {v8}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Service;

    .line 106
    invoke-virtual {v8}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getApplication()Landroid/app/Application;

    move-result-object v10

    .line 107
    invoke-interface {v5}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 108
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v13, "attach"

    new-array v14, v12, [Ljava/lang/Class;

    const-class v15, Landroid/content/Context;

    aput-object v15, v14, v6

    const-class v15, Landroid/app/ActivityThread;

    aput-object v15, v14, v3

    const-class v15, Ljava/lang/String;

    const/16 v16, 0x2

    aput-object v15, v14, v16

    const-class v15, Landroid/os/IBinder;

    const/16 v16, 0x3

    aput-object v15, v14, v16

    const-class v15, Landroid/app/Application;

    const/16 v16, 0x4

    aput-object v15, v14, v16

    const-class v15, Ljava/lang/Object;

    const/16 v16, 0x5

    aput-object v15, v14, v16

    invoke-virtual {v11, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 109
    iget-object v13, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v13}, Lcom/didi/virtualapk/PluginManager;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v13

    .line 111
    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v12, v6

    aput-object v2, v12, v3

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x2

    aput-object v2, v12, v8

    const/4 v2, 0x3

    aput-object v5, v12, v2

    const/4 v2, 0x4

    aput-object v10, v12, v2

    const/4 v2, 0x5

    aput-object v13, v12, v2

    invoke-virtual {v11, v9, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {v9}, Landroid/app/Service;->onCreate()V

    .line 113
    iget-object v2, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v2}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v2

    invoke-virtual {v2, v7, v9}, Lcom/didi/virtualapk/internal/ComponentsHandler;->rememberService(Landroid/content/ComponentName;Landroid/app/Service;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    move-object v2, v9

    .line 119
    :goto_2
    iget-object v5, v1, Lcom/didi/virtualapk/delegate/LocalService;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v5}, Lcom/didi/virtualapk/PluginManager;->getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/didi/virtualapk/internal/ComponentsHandler;->getServiceCounter(Landroid/app/Service;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    invoke-virtual {v2, v4, v6, v5}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    goto :goto_3

    :catch_5
    return v3

    :goto_3
    return v3

    :cond_8
    :goto_4
    return v3

    :cond_9
    :goto_5
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
