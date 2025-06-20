.class public Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;
.super Landroid/content/pm/PackageManager;
.source "LoadedPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/virtualapk/internal/LoadedPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PluginPackageManager"
.end annotation


# instance fields
.field protected mHostPackageManager:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;


# direct methods
.method protected constructor <init>(Lcom/didi/virtualapk/internal/LoadedPlugin;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    invoke-direct {p0}, Landroid/content/pm/PackageManager;-><init>()V

    .line 522
    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object p1, p1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mHostContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public addPackageToPreferred(Ljava/lang/String;)V
    .locals 1

    .line 1239
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->addPackageToPreferred(Ljava/lang/String;)V

    return-void
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->addPermission(Landroid/content/pm/PermissionInfo;)Z

    move-result p1

    return p1
.end method

.method public addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    move-result p1

    return p1
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 1

    .line 1254
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void
.end method

.method public canRequestPackageInstalls()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1308
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    return v0
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public checkSignatures(II)I
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result p1

    return p1
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public clearInstantAppCookie()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 755
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->clearInstantAppCookie()V

    return-void
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;)V
    .locals 1

    .line 1259
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    return-void
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public extendVerificationTimeout(IIJ)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1214
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->extendVerificationTimeout(IIJ)V

    return-void
.end method

.method public getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1005
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1007
    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mActivityInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo;

    iget p1, p1, Landroid/content/pm/ActivityInfo;->banner:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1016
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->resolveActivity(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1018
    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object p1, p1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object p1

    .line 1019
    iget-object p1, p1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->banner:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 983
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 985
    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mActivityInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo;

    iget p1, p1, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 993
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->resolveActivity(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 995
    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object p1, p1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object p1

    .line 996
    iget-object p1, p1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 627
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 629
    iget-object p2, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mActivityInfos:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo;

    return-object p1

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    return-object p1
.end method

.method public getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1074
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1076
    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mActivityInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo;

    iget p1, p1, Landroid/content/pm/ActivityInfo;->logo:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1084
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->resolveActivity(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1086
    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object p1, p1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object p1

    .line 1087
    iget-object p1, p1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->logo:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .line 1053
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->banner:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getApplicationBanner(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1064
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1066
    iget-object p1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->banner:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationBanner(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .locals 1

    .line 1284
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1032
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1042
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1044
    iget-object p1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method

.method public getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 2

    .line 1164
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1167
    :try_start_0
    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1173
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1095
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1097
    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->logo:I

    if-eqz v1, :cond_0

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->logo:I

    goto :goto_0

    :cond_0
    const p1, 0x1080093

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 1100
    :cond_1
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1105
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1107
    iget-object p1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    iget-object v1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->logo:I

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    goto :goto_0

    :cond_0
    const v0, 0x1080093

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 1110
    :cond_1
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getChangedPackages(I)Landroid/content/pm/ChangedPackages;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 780
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getChangedPackages(I)Landroid/content/pm/ChangedPackages;

    move-result-object p1

    return-object p1
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;)I
    .locals 1

    .line 1274
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p1

    return p1
.end method

.method public getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1027
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 973
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 975
    iget-object p1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getInstalledApplications(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getInstalledPackages(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 667
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1229
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1231
    iget-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object p1, p1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mHostContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1234
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInstantAppCookie()[B
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 749
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getInstantAppCookie()[B

    move-result-object v0

    return-object v0
.end method

.method public getInstantAppCookieMaxBytes()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 742
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getInstantAppCookieMaxBytes()I

    move-result v0

    return v0
.end method

.method public getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 958
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 960
    iget-object p2, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mInstrumentationInfos:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/InstrumentationInfo;

    return-object p1

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object p1

    return-object p1
.end method

.method public getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 559
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getLeanbackLaunchIntent()Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;)[I

    move-result-object p1

    return-object p1
.end method

.method public getPackageGids(Ljava/lang/String;I)[I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;I)[I

    move-result-object p1

    return-object p1
.end method

.method public getPackageInfo(Landroid/content/pm/VersionedPackage;I)Landroid/content/pm/PackageInfo;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 541
    iget-object p1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object p1

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Landroid/content/pm/VersionedPackage;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 529
    iget-object p1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object p1

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPackageInstaller()Landroid/content/pm/PackageInstaller;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1302
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    return-object v0
.end method

.method public getPackageUid(Ljava/lang/String;I)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 673
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 607
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1264
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getPreferredPackages(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1249
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPreferredPackages(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 659
    iget-object p2, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mProviderInfos:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ProviderInfo;

    return-object p1

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    return-object p1
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 637
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 639
    iget-object p2, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mReceiverInfos:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo;

    return-object p1

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    return-object p1
.end method

.method public getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1178
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1180
    iget-object p1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    return-object p1

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object p1

    return-object p1
.end method

.method public getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1188
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1190
    iget-object p1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    return-object p1

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p1

    return-object p1
.end method

.method public getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1198
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1200
    iget-object p1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    return-object p1

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    return-object p1
.end method

.method public getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 649
    iget-object p2, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mServiceInfos:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ServiceInfo;

    return-object p1

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    return-object p1
.end method

.method public getSharedLibraries(I)Ljava/util/List;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 773
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getSharedLibraries(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 1

    .line 1144
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1146
    iget-object p1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1122
    :try_start_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    const-string v1, "getUserBadgeForDensity"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/UserHandle;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 1123
    invoke-virtual {v0, v1, v3}, Lcom/didi/virtualapk/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    .line 1124
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1126
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1133
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1116
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1139
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;
    .locals 1

    .line 1154
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1156
    iget-object p1, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    return-object p1

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method

.method public hasSystemFeature(Ljava/lang/String;)Z
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasSystemFeature(Ljava/lang/String;I)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 796
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public isInstantApp()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 730
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result v0

    return v0
.end method

.method public isInstantApp(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 736
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->isInstantApp(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 684
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isSafeMode()Z
    .locals 1

    .line 1289
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    return v0
.end method

.method public loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1315
    :cond_0
    iget-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .locals 3
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

    .line 853
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 855
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 856
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 857
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 862
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, v0}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 864
    invoke-virtual {v1, v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getReceiverInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 866
    new-instance p1, Landroid/content/pm/ResolveInfo;

    invoke-direct {p1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 867
    iput-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 p2, 0x1

    .line 868
    new-array p2, p2, [Landroid/content/pm/ResolveInfo;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 873
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 875
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1, p2}, Lcom/didi/virtualapk/PluginManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 876
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 877
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 880
    :cond_2
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 881
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 882
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

.method public queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 953
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation

    .line 968
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .locals 3
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

    .line 811
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 813
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 814
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 815
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 820
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, v0}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 822
    invoke-virtual {v1, v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 824
    new-instance p1, Landroid/content/pm/ResolveInfo;

    invoke-direct {p1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 825
    iput-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 p2, 0x1

    .line 826
    new-array p2, p2, [Landroid/content/pm/ResolveInfo;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 831
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 833
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1, p2}, Lcom/didi/virtualapk/PluginManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 834
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 835
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 838
    :cond_2
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 839
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 840
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

.method public queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 848
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

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

    .line 938
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .locals 3
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

    .line 900
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 902
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 903
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 904
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 909
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, v0}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 911
    invoke-virtual {v1, v0}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 913
    new-instance p1, Landroid/content/pm/ResolveInfo;

    invoke-direct {p1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 914
    iput-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 p2, 0x1

    .line 915
    new-array p2, p2, [Landroid/content/pm/ResolveInfo;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 920
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 922
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v1, p1, p2}, Lcom/didi/virtualapk/PluginManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 923
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 924
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 927
    :cond_2
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 928
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 929
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 602
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removePackageFromPreferred(Ljava/lang/String;)V
    .locals 1

    .line 1244
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->removePackageFromPreferred(Ljava/lang/String;)V

    return-void
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->removePermission(Ljava/lang/String;)V

    return-void
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1, p2}, Lcom/didi/virtualapk/PluginManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1, p2}, Lcom/didi/virtualapk/PluginManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    return-object p1
.end method

.method public resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1, p2}, Lcom/didi/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public setApplicationCategoryHint(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1295
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->setApplicationCategoryHint(Ljava/lang/String;I)V

    return-void
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .locals 1

    .line 1279
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    return-void
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    .locals 1

    .line 1269
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1219
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v0, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateInstantAppCookie([B)V
    .locals 1
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 761
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->updateInstantAppCookie([B)V

    return-void
.end method

.method public verifyPendingInstall(II)V
    .locals 1

    .line 1208
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->verifyPendingInstall(II)V

    return-void
.end method
