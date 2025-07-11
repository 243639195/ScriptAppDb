.class public Lcom/didi/virtualapk/internal/LoadedPlugin;
.super Ljava/lang/Object;
.source "LoadedPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VA.LoadedPlugin"


# instance fields
.field protected mActivityInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mApplication:Landroid/app/Application;

.field protected mClassLoader:Ljava/lang/ClassLoader;

.field protected mHostContext:Landroid/content/Context;

.field protected mInstrumentationInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLocation:Ljava/lang/String;

.field protected final mNativeLibDir:Ljava/io/File;

.field protected final mPackage:Landroid/content/pm/PackageParser$Package;

.field protected final mPackageInfo:Landroid/content/pm/PackageInfo;

.field protected mPackageManager:Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;

.field protected mPluginContext:Landroid/content/Context;

.field protected mPluginManager:Lcom/didi/virtualapk/PluginManager;

.field protected mProviderInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mReceiverInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mResources:Landroid/content/res/Resources;

.field protected mServiceInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/didi/virtualapk/PluginManager;Landroid/content/Context;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    .line 150
    iput-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mHostContext:Landroid/content/Context;

    .line 151
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mLocation:Ljava/lang/String;

    const/4 v0, 0x4

    .line 152
    invoke-static {p2, p3, v0}, Lcom/didi/virtualapk/internal/utils/PackageParserCompat;->parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    .line 153
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 154
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 155
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 156
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    goto :goto_1

    .line 161
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 163
    :catch_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 170
    :goto_1
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 172
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "plugin has already been loaded : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p3, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 174
    :cond_2
    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 175
    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 176
    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/pm/PermissionInfo;

    iput-object v0, p1, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 177
    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->createPluginPackageManager()Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageManager:Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;

    const/4 p1, 0x0

    .line 178
    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/internal/LoadedPlugin;->createPluginContext(Landroid/content/Context;)Lcom/didi/virtualapk/internal/PluginContext;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    const-string p1, "valibs"

    .line 179
    invoke-virtual {p0, p2, p1}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mNativeLibDir:Ljava/io/File;

    .line 180
    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mNativeLibDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p3}, Lcom/didi/virtualapk/internal/LoadedPlugin;->createResources(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    .line 182
    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mNativeLibDir:Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->createClassLoader(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mClassLoader:Ljava/lang/ClassLoader;

    .line 184
    invoke-virtual {p0, p3}, Lcom/didi/virtualapk/internal/LoadedPlugin;->tryToCopyNativeLib(Ljava/io/File;)V

    .line 187
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 188
    iget-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object p2, p2, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageParser$Instrumentation;

    .line 189
    invoke-virtual {p3}, Landroid/content/pm/PackageParser$Instrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iget-object p3, p3, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 191
    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mInstrumentationInfos:Ljava/util/Map;

    .line 192
    iget-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    new-array p1, p1, [Landroid/content/pm/InstrumentationInfo;

    invoke-interface {p3, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/InstrumentationInfo;

    iput-object p1, p2, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 195
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 196
    iget-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object p2, p2, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageParser$Activity;

    .line 197
    iget-object v0, p3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, p3, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 198
    invoke-virtual {p3}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iget-object p3, p3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 200
    :cond_4
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mActivityInfos:Ljava/util/Map;

    .line 201
    iget-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    new-array p1, p1, [Landroid/content/pm/ActivityInfo;

    invoke-interface {p3, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/ActivityInfo;

    iput-object p1, p2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 204
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 205
    iget-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object p2, p2, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageParser$Service;

    .line 206
    invoke-virtual {p3}, Landroid/content/pm/PackageParser$Service;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iget-object p3, p3, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 208
    :cond_5
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mServiceInfos:Ljava/util/Map;

    .line 209
    iget-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    new-array p1, p1, [Landroid/content/pm/ServiceInfo;

    invoke-interface {p3, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/ServiceInfo;

    iput-object p1, p2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 212
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 213
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 214
    iget-object p3, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object p3, p3, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Provider;

    .line 215
    iget-object v1, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 218
    :cond_6
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mProviders:Ljava/util/Map;

    .line 219
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mProviderInfos:Ljava/util/Map;

    .line 220
    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    new-array p2, p2, [Landroid/content/pm/ProviderInfo;

    invoke-interface {p3, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/ProviderInfo;

    iput-object p2, p1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 223
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 224
    iget-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object p2, p2, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageParser$Activity;

    .line 225
    invoke-virtual {p3}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-class v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 228
    iget-object p3, p3, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 229
    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mHostContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_6

    .line 232
    :cond_8
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mReceiverInfos:Ljava/util/Map;

    .line 233
    iget-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    new-array p1, p1, [Landroid/content/pm/ActivityInfo;

    invoke-interface {p3, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/ActivityInfo;

    iput-object p1, p2, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 236
    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->invokeApplication()V

    return-void
.end method


# virtual methods
.method protected chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 125
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1
.end method

.method protected createAssetManager(Landroid/content/Context;Ljava/io/File;)Landroid/content/res/AssetManager;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    const-class p1, Landroid/content/res/AssetManager;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/AssetManager;

    .line 98
    invoke-static {p1}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    const-string v1, "addAssetPath"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/didi/virtualapk/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v5

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method protected createClassLoader(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "dex"

    .line 85
    invoke-virtual {p0, p1, v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 87
    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, p1, v1, p4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 90
    invoke-static {v0, p4, p3}, Lcom/didi/virtualapk/internal/utils/DexUtil;->insertDex(Ldalvik/system/DexClassLoader;Ljava/lang/ClassLoader;Ljava/io/File;)V

    return-object p4
.end method

.method public createPluginContext(Landroid/content/Context;)Lcom/didi/virtualapk/internal/PluginContext;
    .locals 1

    if-nez p1, :cond_0

    .line 118
    new-instance p1, Lcom/didi/virtualapk/internal/PluginContext;

    invoke-direct {p1, p0}, Lcom/didi/virtualapk/internal/PluginContext;-><init>(Lcom/didi/virtualapk/internal/LoadedPlugin;)V

    return-object p1

    .line 121
    :cond_0
    new-instance v0, Lcom/didi/virtualapk/internal/PluginContext;

    invoke-direct {v0, p0, p1}, Lcom/didi/virtualapk/internal/PluginContext;-><init>(Lcom/didi/virtualapk/internal/LoadedPlugin;Landroid/content/Context;)V

    return-object v0
.end method

.method protected createPluginPackageManager()Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;
    .locals 1

    .line 113
    new-instance v0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;

    invoke-direct {v0, p0}, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;-><init>(Lcom/didi/virtualapk/internal/LoadedPlugin;)V

    return-object v0
.end method

.method protected createResources(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/content/res/Resources;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    invoke-static {p1, p2, p3}, Lcom/didi/virtualapk/internal/ResourcesManager;->createResources(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/content/res/Resources;

    move-result-object p1

    return-object p1
.end method

.method public getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mActivityInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo;

    return-object p1
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .line 256
    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getCodePath()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-object v0
.end method

.method protected getDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getHostContext()Landroid/content/Context;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mHostContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 8

    .line 320
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 321
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 323
    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    .line 324
    iget-object v4, v3, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    const/4 v6, 0x0

    const-string v7, "VA.LoadedPlugin"

    .line 325
    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    .line 326
    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLeanbackLaunchIntent()Landroid/content/Intent;
    .locals 8

    .line 335
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 336
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 338
    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    .line 339
    iget-object v4, v3, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    const/4 v6, 0x0

    const-string v7, "VA.LoadedPlugin"

    .line 340
    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LEANBACK_LAUNCHER"

    .line 343
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageManager:Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .locals 3

    .line 310
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 311
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 312
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v0, :cond_0

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getPluginContext()Landroid/content/Context;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPluginManager()Lcom/didi/virtualapk/PluginManager;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    return-object v0
.end method

.method public getProviderInfo(Landroid/content/ComponentName;)Landroid/content/pm/ProviderInfo;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mProviderInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ProviderInfo;

    return-object p1
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mReceiverInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo;

    return-object p1
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mServiceInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ServiceInfo;

    return-object p1
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 378
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->theme:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1, v2}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->selectDefaultTheme(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-object v0
.end method

.method public invokeApplication()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 288
    new-array v1, v0, [Ljava/lang/Exception;

    .line 290
    new-instance v2, Lcom/didi/virtualapk/internal/LoadedPlugin$1;

    invoke-direct {v2, p0, v1}, Lcom/didi/virtualapk/internal/LoadedPlugin$1;-><init>(Lcom/didi/virtualapk/internal/LoadedPlugin;[Ljava/lang/Exception;)V

    invoke-static {v2, v0}, Lcom/didi/virtualapk/utils/RunUtil;->runOnUiThread(Ljava/lang/Runnable;Z)V

    const/4 v0, 0x0

    .line 304
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 305
    aget-object v0, v1, v0

    throw v0

    :cond_0
    return-void
.end method

.method protected makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 388
    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    return-object p1

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-nez p1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "android.app.Application"

    .line 396
    :cond_2
    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    .line 398
    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    new-instance v0, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;

    invoke-direct {v0}, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;-><init>()V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 399
    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    invoke-virtual {p2, p1}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V

    .line 400
    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    return-object p1
.end method

.method protected match(Landroid/content/pm/PackageParser$Component;Landroid/content/ComponentName;)Z
    .locals 3

    .line 506
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Component;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 509
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 510
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mHostContext:Landroid/content/Context;

    .line 511
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .locals 8
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

    .line 476
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 478
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 480
    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    .line 481
    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 482
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 483
    iget-object v3, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v3, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 484
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez p2, :cond_0

    .line 487
    iget-object v4, v3, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    const/4 v6, 0x1

    const-string v7, "VA.LoadedPlugin"

    .line 488
    invoke-virtual {v5, v1, p1, v6, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2

    .line 489
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 490
    iget-object v3, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v3, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 491
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .locals 8
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

    .line 414
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 416
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 418
    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    .line 419
    invoke-virtual {p0, v3, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->match(Landroid/content/pm/PackageParser$Component;Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 420
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 421
    iget-object v3, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v3, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 422
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez p2, :cond_0

    .line 425
    iget-object v4, v3, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    const/4 v6, 0x1

    const-string v7, "VA.LoadedPlugin"

    .line 426
    invoke-virtual {v5, v1, p1, v6, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2

    .line 427
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 428
    iget-object v3, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v3, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 429
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .locals 8
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

    .line 450
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 452
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 454
    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Service;

    .line 455
    invoke-virtual {p0, v3, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->match(Landroid/content/pm/PackageParser$Component;Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 456
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 457
    iget-object v3, v3, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iput-object v3, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 458
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez p2, :cond_0

    .line 461
    iget-object v4, v3, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    const/4 v6, 0x1

    const-string v7, "VA.LoadedPlugin"

    .line 462
    invoke-virtual {v5, v1, p1, v6, v7}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2

    .line 463
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 464
    iget-object v3, v3, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iput-object v3, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 465
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 2

    .line 404
    invoke-virtual {p0, p1, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 405
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 410
    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .locals 0

    .line 502
    iget-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mProviders:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ProviderInfo;

    return-object p1
.end method

.method public resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 2

    .line 440
    invoke-virtual {p0, p1, p2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 441
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 446
    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setTheme(I)V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    const-string v1, "mThemeResId"

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    return-void
.end method

.method protected tryToCopyNativeLib(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mHostContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mNativeLibDir:Ljava/io/File;

    invoke-static {p1, v0, v1, v2}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->copyNativeLib(Ljava/io/File;Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    return-void
.end method

.method public updateResources(Landroid/content/res/Resources;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    return-void
.end method
