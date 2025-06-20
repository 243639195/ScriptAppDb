.class public Lcom/cyjh/share/util/SpUtil;
.super Ljava/lang/Object;
.source "SpUtil.java"


# static fields
.field public static final APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final LAST_APP_VERSION:Ljava/lang/String; = "last_app_version"

.field private static final TAG:Ljava/lang/String; = "SpUtil"

.field private static instance:Lcom/cyjh/share/util/SpUtil;


# instance fields
.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private SpUtil()V
    .locals 0

    return-void
.end method

.method public static getInstance()Lcom/cyjh/share/util/SpUtil;
    .locals 2

    .line 22
    sget-object v0, Lcom/cyjh/share/util/SpUtil;->instance:Lcom/cyjh/share/util/SpUtil;

    if-nez v0, :cond_1

    .line 23
    const-class v0, Lcom/cyjh/share/util/SpUtil;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/cyjh/share/util/SpUtil;->instance:Lcom/cyjh/share/util/SpUtil;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/cyjh/share/util/SpUtil;

    invoke-direct {v1}, Lcom/cyjh/share/util/SpUtil;-><init>()V

    sput-object v1, Lcom/cyjh/share/util/SpUtil;->instance:Lcom/cyjh/share/util/SpUtil;

    .line 26
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 28
    :cond_1
    :goto_0
    sget-object v0, Lcom/cyjh/share/util/SpUtil;->instance:Lcom/cyjh/share/util/SpUtil;

    return-object v0
.end method


# virtual methods
.method public getAppVersion()Ljava/lang/String;
    .locals 3

    .line 37
    invoke-static {}, Lcom/cyjh/share/config/MyConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/cyjh/share/util/SpUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/cyjh/share/util/SpUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "app_version"

    invoke-static {}, Lcom/cyjh/share/config/MyConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLastAppVersion()Ljava/lang/String;
    .locals 3

    .line 55
    invoke-static {}, Lcom/cyjh/share/config/MyConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/cyjh/share/util/SpUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/cyjh/share/util/SpUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_app_version"

    invoke-static {}, Lcom/cyjh/share/config/MyConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public init(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/cyjh/share/util/SpUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/cyjh/share/util/SpUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/cyjh/share/util/SpUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setLastAppVersion(Ljava/lang/String;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/cyjh/share/util/SpUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/cyjh/share/util/SpUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_app_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
