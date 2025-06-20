.class public Lkiller/cloud/Cloud;
.super Ljava/lang/Object;
.source "Cloud.java"


# static fields
.field private static client:Lkiller/cloud/client/CloudClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lkiller/cloud/Cloud;->client:Lkiller/cloud/client/CloudClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connect()V
    .locals 6

    .prologue
    .line 16
    sget-object v1, Lkiller/cloud/Cloud;->client:Lkiller/cloud/client/CloudClient;

    if-eqz v1, :cond_0

    .line 17
    sget-object v1, Lkiller/cloud/Cloud;->client:Lkiller/cloud/client/CloudClient;

    invoke-virtual {v1}, Lkiller/cloud/client/CloudClient;->closeClient()V

    .line 18
    const/4 v1, 0x0

    sput-object v1, Lkiller/cloud/Cloud;->client:Lkiller/cloud/client/CloudClient;

    .line 20
    :cond_0
    invoke-static {}, Lkiller/elfin/config/GlobalConfig;->getCloudAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lkiller/elfin/config/GlobalConfig;->getCloudHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 22
    :try_start_0
    new-instance v1, Lkiller/cloud/client/CloudClient;

    const-string v2, "ws://%s:3394/cloud/ws?appId=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lkiller/elfin/config/GlobalConfig;->getCloudHost()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lkiller/elfin/config/GlobalConfig;->getCloudAppId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Lkiller/cloud/client/CloudClient;-><init>(Ljava/net/URI;)V

    sput-object v1, Lkiller/cloud/Cloud;->client:Lkiller/cloud/client/CloudClient;

    .line 23
    sget-object v1, Lkiller/cloud/Cloud;->client:Lkiller/cloud/client/CloudClient;

    invoke-virtual {v1}, Lkiller/cloud/client/CloudClient;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void

    .line 24
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 25
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Cloud"

    const-string v2, "connect"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getClient()Lkiller/cloud/client/CloudClient;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lkiller/cloud/Cloud;->client:Lkiller/cloud/client/CloudClient;

    return-object v0
.end method

.method public static onScriptStart()V
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lkiller/cloud/Cloud;->client:Lkiller/cloud/client/CloudClient;

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lkiller/cloud/client/CloudService;->get()Lkiller/cloud/client/CloudService;

    move-result-object v0

    sget-object v1, Lkiller/cloud/Cloud;->client:Lkiller/cloud/client/CloudClient;

    invoke-virtual {v0, v1}, Lkiller/cloud/client/CloudService;->onScriptStart(Lkiller/cloud/client/CloudClient;)V

    .line 34
    :cond_0
    return-void
.end method

.method public static onScriptStop()V
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lkiller/cloud/Cloud;->client:Lkiller/cloud/client/CloudClient;

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lkiller/cloud/client/CloudService;->get()Lkiller/cloud/client/CloudService;

    move-result-object v0

    sget-object v1, Lkiller/cloud/Cloud;->client:Lkiller/cloud/client/CloudClient;

    invoke-virtual {v0, v1}, Lkiller/cloud/client/CloudService;->onScriptStop(Lkiller/cloud/client/CloudClient;)V

    .line 40
    :cond_0
    return-void
.end method
