.class public Lcom/didi/virtualapk/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/virtualapk/PluginManager$Callback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VA.PluginManager"

.field private static volatile sInstance:Lcom/didi/virtualapk/PluginManager;


# instance fields
.field protected mActivityManager:Landroid/app/IActivityManager;

.field protected final mApplication:Landroid/app/Application;

.field protected final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/didi/virtualapk/PluginManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field protected mComponentsHandler:Lcom/didi/virtualapk/internal/ComponentsHandler;

.field protected final mContext:Landroid/content/Context;

.field protected mIContentProvider:Landroid/content/IContentProvider;

.field protected mInstrumentation:Lcom/didi/virtualapk/internal/VAInstrumentation;

.field protected final mPlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/didi/virtualapk/internal/LoadedPlugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    .line 124
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 125
    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/didi/virtualapk/PluginManager;->mApplication:Landroid/app/Application;

    .line 126
    iget-object p1, p0, Lcom/didi/virtualapk/PluginManager;->mApplication:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 130
    iput-object p1, p0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    .line 131
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/PluginManager;->mApplication:Landroid/app/Application;

    goto :goto_0

    .line 133
    :cond_1
    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mApplication:Landroid/app/Application;

    .line 134
    iget-object p1, p0, Lcom/didi/virtualapk/PluginManager;->mApplication:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/didi/virtualapk/PluginManager;->createComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/PluginManager;->mComponentsHandler:Lcom/didi/virtualapk/internal/ComponentsHandler;

    .line 139
    invoke-virtual {p0}, Lcom/didi/virtualapk/PluginManager;->hookCurrentProcess()V

    return-void
.end method

.method private static createInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;
    .locals 6

    .line 95
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/didi/virtualapk/PluginManager;

    invoke-direct {v0, p0}, Lcom/didi/virtualapk/PluginManager;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    const-string v1, "VA_FACTORY"

    .line 103
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 106
    new-instance v0, Lcom/didi/virtualapk/PluginManager;

    invoke-direct {v0, p0}, Lcom/didi/virtualapk/PluginManager;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 109
    :cond_1
    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    const-string v1, "create"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/didi/virtualapk/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/virtualapk/PluginManager;

    if-eqz v0, :cond_2

    const-string v1, "VA.PluginManager"

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created a instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "VA.PluginManager"

    const-string v2, "Created the instance error!"

    .line 117
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    :cond_2
    new-instance v0, Lcom/didi/virtualapk/PluginManager;

    invoke-direct {v0, p0}, Lcom/didi/virtualapk/PluginManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;
    .locals 2

    .line 82
    sget-object v0, Lcom/didi/virtualapk/PluginManager;->sInstance:Lcom/didi/virtualapk/PluginManager;

    if-nez v0, :cond_1

    .line 83
    const-class v0, Lcom/didi/virtualapk/PluginManager;

    monitor-enter v0

    .line 84
    :try_start_0
    sget-object v1, Lcom/didi/virtualapk/PluginManager;->sInstance:Lcom/didi/virtualapk/PluginManager;

    if-nez v1, :cond_0

    .line 85
    invoke-static {p0}, Lcom/didi/virtualapk/PluginManager;->createInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object p0

    sput-object p0, Lcom/didi/virtualapk/PluginManager;->sInstance:Lcom/didi/virtualapk/PluginManager;

    .line 87
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 90
    :cond_1
    :goto_0
    sget-object p0, Lcom/didi/virtualapk/PluginManager;->sInstance:Lcom/didi/virtualapk/PluginManager;

    return-object p0
.end method


# virtual methods
.method public addCallback(Lcom/didi/virtualapk/PluginManager$Callback;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected createActivityManagerProxy(Landroid/app/IActivityManager;)Lcom/didi/virtualapk/delegate/ActivityManagerProxy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    new-instance v0, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;

    invoke-direct {v0, p0, p1}, Lcom/didi/virtualapk/delegate/ActivityManagerProxy;-><init>(Lcom/didi/virtualapk/PluginManager;Landroid/app/IActivityManager;)V

    return-object v0
.end method

.method protected createComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;
    .locals 1

    .line 165
    new-instance v0, Lcom/didi/virtualapk/internal/ComponentsHandler;

    invoke-direct {v0, p0}, Lcom/didi/virtualapk/internal/ComponentsHandler;-><init>(Lcom/didi/virtualapk/PluginManager;)V

    return-object v0
.end method

.method protected createInstrumentation(Landroid/app/Instrumentation;)Lcom/didi/virtualapk/internal/VAInstrumentation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    new-instance v0, Lcom/didi/virtualapk/internal/VAInstrumentation;

    invoke-direct {v0, p0, p1}, Lcom/didi/virtualapk/internal/VAInstrumentation;-><init>(Lcom/didi/virtualapk/PluginManager;Landroid/app/Instrumentation;)V

    return-object v0
.end method

.method protected createLoadedPlugin(Ljava/io/File;)Lcom/didi/virtualapk/internal/LoadedPlugin;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    new-instance v0, Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/didi/virtualapk/internal/LoadedPlugin;-><init>(Lcom/didi/virtualapk/PluginManager;Landroid/content/Context;Ljava/io/File;)V

    return-object v0
.end method

.method protected doInWorkThread()V
    .locals 0

    return-void
.end method

.method public getActivityManager()Landroid/app/IActivityManager;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method public getAllLoadedPlugins()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/didi/virtualapk/internal/LoadedPlugin;",
            ">;"
        }
    .end annotation

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 349
    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getComponentsHandler()Lcom/didi/virtualapk/internal/ComponentsHandler;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mComponentsHandler:Lcom/didi/virtualapk/internal/ComponentsHandler;

    return-object v0
.end method

.method public getHostApplication()Landroid/app/Application;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getHostContext()Landroid/content/Context;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public declared-synchronized getIContentProvider()Landroid/content/IContentProvider;
    .locals 1

    monitor-enter p0

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mIContentProvider:Landroid/content/IContentProvider;

    if-nez v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/didi/virtualapk/PluginManager;->hookIContentProviderAsNeeded()V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mIContentProvider:Landroid/content/IContentProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 365
    monitor-exit p0

    throw v0
.end method

.method public getInstrumentation()Lcom/didi/virtualapk/internal/VAInstrumentation;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mInstrumentation:Lcom/didi/virtualapk/internal/VAInstrumentation;

    return-object v0
.end method

.method public getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 340
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object p1

    return-object p1
.end method

.method public getLoadedPlugin(Landroid/content/Intent;)Lcom/didi/virtualapk/internal/LoadedPlugin;
    .locals 0

    .line 333
    invoke-static {p1}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->getComponent(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object p1

    return-object p1
.end method

.method public getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/didi/virtualapk/internal/LoadedPlugin;

    return-object p1
.end method

.method protected hookCurrentProcess()V
    .locals 0

    .line 143
    invoke-virtual {p0}, Lcom/didi/virtualapk/PluginManager;->hookInstrumentationAndHandler()V

    .line 144
    invoke-virtual {p0}, Lcom/didi/virtualapk/PluginManager;->hookSystemServices()V

    .line 145
    invoke-virtual {p0}, Lcom/didi/virtualapk/PluginManager;->hookDataBindingUtil()V

    return-void
.end method

.method protected hookDataBindingUtil()V
    .locals 4

    const-string v0, "android.databinding.DataBindingUtil"

    .line 181
    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->on(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    const-string v1, "sMapper"

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "android.databinding.DataBinderMapperProxy"

    .line 185
    invoke-static {v1}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Lcom/didi/virtualapk/utils/Reflector;->constructor([Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/didi/virtualapk/utils/Reflector;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/virtualapk/PluginManager$Callback;

    .line 186
    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    .line 187
    invoke-virtual {p0, v1}, Lcom/didi/virtualapk/PluginManager;->addCallback(Lcom/didi/virtualapk/PluginManager$Callback;)V

    const-string v0, "VA.PluginManager"

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hookDataBindingUtil succeed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/didi/virtualapk/utils/Reflector$ReflectedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected hookIContentProviderAsNeeded()V
    .locals 6

    .line 263
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wakeup"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 268
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 269
    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    const-string v1, "mProviderMap"

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 270
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 271
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 272
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 273
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 274
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 276
    instance-of v4, v2, Ljava/lang/String;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 277
    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    .line 280
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "authority"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 281
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 283
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 285
    :goto_0
    iget-object v4, p0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/didi/virtualapk/delegate/RemoteContentProvider;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mProvider"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 288
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IContentProvider;

    .line 291
    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/didi/virtualapk/delegate/IContentProviderProxy;->newInstance(Landroid/content/Context;Landroid/content/IContentProvider;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 292
    iput-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mIContentProvider:Landroid/content/IContentProvider;

    const-string v0, "VA.PluginManager"

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hookIContentProvider succeed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/didi/virtualapk/PluginManager;->mIContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "VA.PluginManager"

    .line 298
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method

.method protected hookInstrumentationAndHandler()V
    .locals 5

    .line 243
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    .line 250
    invoke-virtual {p0, v1}, Lcom/didi/virtualapk/PluginManager;->createInstrumentation(Landroid/app/Instrumentation;)Lcom/didi/virtualapk/internal/VAInstrumentation;

    move-result-object v1

    .line 252
    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v2

    const-string v3, "mInstrumentation"

    invoke-virtual {v2, v3}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    .line 253
    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    const-string v2, "getHandler"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Lcom/didi/virtualapk/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/didi/virtualapk/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 254
    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    const-string v2, "mCallback"

    invoke-virtual {v0, v2}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    .line 255
    iput-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mInstrumentation:Lcom/didi/virtualapk/internal/VAInstrumentation;

    const-string v0, "VA.PluginManager"

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hookInstrumentationAndHandler succeed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/didi/virtualapk/PluginManager;->mInstrumentation:Lcom/didi/virtualapk/internal/VAInstrumentation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VA.PluginManager"

    .line 258
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected hookSystemServices()V
    .locals 6

    .line 220
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 221
    const-class v0, Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    const-string v1, "IActivityManagerSingleton"

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Singleton;

    goto :goto_0

    .line 223
    :cond_0
    const-class v0, Landroid/app/ActivityManagerNative;

    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    const-string v1, "gDefault"

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Singleton;

    .line 225
    :goto_0
    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager;

    .line 226
    iget-object v2, p0, Lcom/didi/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/IActivityManager;

    aput-object v5, v3, v4

    .line 227
    invoke-virtual {p0, v1}, Lcom/didi/virtualapk/PluginManager;->createActivityManagerProxy(Landroid/app/IActivityManager;)Lcom/didi/virtualapk/delegate/ActivityManagerProxy;

    move-result-object v1

    .line 226
    invoke-static {v2, v3, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager;

    .line 230
    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v2

    const-string v3, "mInstance"

    invoke-virtual {v2, v3}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    .line 232
    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_1

    .line 233
    iput-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mActivityManager:Landroid/app/IActivityManager;

    const-string v0, "VA.PluginManager"

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hookSystemServices succeed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/didi/virtualapk/PluginManager;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "VA.PluginManager"

    .line 237
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public init()V
    .locals 2

    .line 149
    invoke-static {}, Lcom/didi/virtualapk/utils/RunUtil;->getThreadPool()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/didi/virtualapk/PluginManager$1;

    invoke-direct {v1, p0}, Lcom/didi/virtualapk/PluginManager$1;-><init>(Lcom/didi/virtualapk/PluginManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadPlugin(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 309
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error : apk is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 312
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 315
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 318
    :cond_1
    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/PluginManager;->createLoadedPlugin(Ljava/io/File;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-nez v0, :cond_2

    .line 321
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t load plugin which is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_2
    iget-object p1, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object p1, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    monitor-enter p1

    const/4 v1, 0x0

    .line 326
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 327
    iget-object v2, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/virtualapk/PluginManager$Callback;

    invoke-interface {v2, v0}, Lcom/didi/virtualapk/PluginManager$Callback;->onAddedLoadedPlugin(Lcom/didi/virtualapk/internal/LoadedPlugin;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    :cond_3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 455
    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/virtualapk/internal/LoadedPlugin;

    .line 456
    invoke-virtual {v2, p1, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 457
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 458
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 421
    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/virtualapk/internal/LoadedPlugin;

    .line 422
    invoke-virtual {v2, p1, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 423
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 424
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 438
    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/virtualapk/internal/LoadedPlugin;

    .line 439
    invoke-virtual {v2, p1, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 440
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 441
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public removeCallback(Lcom/didi/virtualapk/PluginManager$Callback;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/didi/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 210
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resolveActivity(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 1

    const/4 v0, 0x0

    .line 378
    invoke-virtual {p0, p1, v0}, Lcom/didi/virtualapk/PluginManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/virtualapk/internal/LoadedPlugin;

    .line 383
    invoke-virtual {v1, p1, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/virtualapk/internal/LoadedPlugin;

    .line 405
    invoke-virtual {v1, p1, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/didi/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/virtualapk/internal/LoadedPlugin;

    .line 394
    invoke-virtual {v1, p1, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
