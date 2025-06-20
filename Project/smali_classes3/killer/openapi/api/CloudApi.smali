.class public Lkiller/openapi/api/CloudApi;
.super Ljava/lang/Object;
.source "CloudApi.java"

# interfaces
.implements Lkiller/openapi/core/PluginHandler;


# annotations
.annotation runtime Lkiller/openapi/core/PluginMapper;
    value = "cloud"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkiller/openapi/core/PluginMapper;
        value = "connect"
    .end annotation

    .prologue
    .line 19
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "cloudAppId"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 20
    .local v0, "appId":Ljava/lang/String;
    const-string v4, "cloudDeviceName"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 21
    .local v1, "deviceName":Ljava/lang/String;
    invoke-static {}, Lkiller/elfin/Free;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 22
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v3, :cond_2

    .line 23
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 24
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cloud:"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 27
    :cond_1
    const-string v4, "cloudAppId"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 28
    const-string v4, "cloudDeviceName"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 30
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 31
    invoke-static {}, Lkiller/cloud/Cloud;->connect()V

    .line 32
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 34
    .end local v2    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_2
    return-void
.end method

.method public setRunData(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkiller/openapi/core/PluginMapper;
        value = "setRunData"
    .end annotation

    .prologue
    .line 38
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "data"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lkiller/cloud/Cloud;->getClient()Lkiller/cloud/client/CloudClient;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    invoke-static {}, Lkiller/cloud/client/CloudService;->get()Lkiller/cloud/client/CloudService;

    move-result-object v1

    invoke-static {}, Lkiller/cloud/Cloud;->getClient()Lkiller/cloud/client/CloudClient;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lkiller/cloud/client/CloudService;->setRunData(Lkiller/cloud/client/CloudClient;Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method
