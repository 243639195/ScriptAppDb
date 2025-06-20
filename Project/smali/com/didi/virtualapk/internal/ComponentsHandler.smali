.class public Lcom/didi/virtualapk/internal/ComponentsHandler;
.super Ljava/lang/Object;
.source "ComponentsHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VA.PluginManager"


# instance fields
.field private mBoundServices:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPluginManager:Lcom/didi/virtualapk/PluginManager;

.field private mServiceCounters:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/app/Service;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private mServices:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field private mStubActivityInfo:Lcom/didi/virtualapk/internal/StubActivityInfo;


# direct methods
.method public constructor <init>(Lcom/didi/virtualapk/PluginManager;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/didi/virtualapk/internal/StubActivityInfo;

    invoke-direct {v0}, Lcom/didi/virtualapk/internal/StubActivityInfo;-><init>()V

    iput-object v0, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mStubActivityInfo:Lcom/didi/virtualapk/internal/StubActivityInfo;

    .line 49
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mServices:Landroid/support/v4/util/ArrayMap;

    .line 50
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mBoundServices:Landroid/support/v4/util/ArrayMap;

    .line 51
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mServiceCounters:Landroid/support/v4/util/ArrayMap;

    .line 54
    iput-object p1, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    .line 55
    invoke-virtual {p1}, Lcom/didi/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method private dispatchStubActivity(Landroid/content/Intent;)V
    .locals 7

    .line 97
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 98
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v2, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/Intent;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v2

    .line 100
    invoke-virtual {v2, v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-nez v3, :cond_0

    .line 102
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_0
    iget v0, v3, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 105
    invoke-virtual {v2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 106
    iget v3, v3, Landroid/content/pm/ActivityInfo;->theme:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 107
    iget-object v3, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mStubActivityInfo:Lcom/didi/virtualapk/internal/StubActivityInfo;

    invoke-virtual {v3, v1, v0, v2}, Lcom/didi/virtualapk/internal/StubActivityInfo;->getStubActivity(Ljava/lang/String;ILandroid/content/res/Resources$Theme;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VA.PluginManager"

    const-string v3, "dispatchStubActivity,[%s -> %s]"

    const/4 v5, 0x2

    .line 108
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v0, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public forgetIServiceConnection(Landroid/os/IBinder;)Landroid/content/Intent;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mBoundServices:Landroid/support/v4/util/ArrayMap;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mBoundServices:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 164
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 165
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public forgetService(Landroid/content/ComponentName;)Landroid/app/Service;
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mServices:Landroid/support/v4/util/ArrayMap;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mServices:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Service;

    .line 150
    iget-object v1, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mServiceCounters:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 152
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getService(Landroid/content/ComponentName;)Landroid/app/Service;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mServices:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Service;

    return-object p1
.end method

.method public getServiceCounter(Landroid/app/Service;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mServiceCounters:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p1
.end method

.method public isServiceAvailable(Landroid/content/ComponentName;)Z
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mServices:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public markIntentIfNeeded(Landroid/content/Intent;)V
    .locals 5

    .line 76
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v2, v0}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 85
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "va.intent.extra.category"

    .line 87
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 88
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 90
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "va.intent.category.package."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "va.intent.category.activity."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-direct {p0, p1}, Lcom/didi/virtualapk/internal/ComponentsHandler;->dispatchStubActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public remberIServiceConnection(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mBoundServices:Landroid/support/v4/util/ArrayMap;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mBoundServices:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public rememberService(Landroid/content/ComponentName;Landroid/app/Service;)V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mServices:Landroid/support/v4/util/ArrayMap;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mServices:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object p1, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mServiceCounters:Landroid/support/v4/util/ArrayMap;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {p1, p2, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public transformIntentToExplicitAsNeeded(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    .line 62
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/ComponentsHandler;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->resolveActivity(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_1

    .line 67
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_1
    return-object p1
.end method
