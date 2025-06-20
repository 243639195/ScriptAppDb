.class public Lcom/ds/daisi/mvp/managers/VerifyPermissionManager;
.super Ljava/lang/Object;
.source "VerifyPermissionManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getRequestUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 75
    sget-object v0, Lcom/ds/daisi/net/URL/MyBuildConfig;->AUTHORITY:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/ds/daisi/net/URL/MyBuildConfig;->getBuilder(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "phone"

    .line 76
    invoke-static {}, Lcom/ds/daisi/entity/AccountPhone;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "packagename"

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method private requestNetworkByGet(Lcom/ds/daisi/mvp/managers/Callback;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ds/daisi/mvp/managers/Callback<",
            "Lcom/ds/daisi/entity/AccountResult;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p2, p3}, Lcom/ds/daisi/mvp/managers/VerifyPermissionManager;->getRequestUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    const-class v1, Lcom/ds/daisi/mvp/managers/VerifyPermissionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ds/daisi/mvp/managers/VerifyPermissionManager$1;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/ds/daisi/mvp/managers/VerifyPermissionManager$1;-><init>(Lcom/ds/daisi/mvp/managers/VerifyPermissionManager;Landroid/content/Context;Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;)V

    invoke-static {v0, v1, v2}, Lcom/ds/daisi/net/volley/VolleyManager;->requestStringGet(Ljava/lang/String;Ljava/lang/String;Lcom/ds/daisi/net/volley/VolleyStrRequestManager;)V

    return-void
.end method


# virtual methods
.method public checkedUserFreeze(Lcom/ds/daisi/mvp/managers/Callback;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ds/daisi/mvp/managers/Callback<",
            "Lcom/ds/daisi/entity/AccountResult;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "CheckAccount"

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/ds/daisi/mvp/managers/VerifyPermissionManager;->requestNetworkByGet(Lcom/ds/daisi/mvp/managers/Callback;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public getScriptTryCount(Lcom/ds/daisi/mvp/managers/Callback;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ds/daisi/mvp/managers/Callback<",
            "Lcom/ds/daisi/entity/AccountResult;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "GetTryCount"

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/ds/daisi/mvp/managers/VerifyPermissionManager;->requestNetworkByGet(Lcom/ds/daisi/mvp/managers/Callback;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
