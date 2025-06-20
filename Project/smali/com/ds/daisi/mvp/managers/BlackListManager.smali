.class public Lcom/ds/daisi/mvp/managers/BlackListManager;
.super Lcom/ds/daisi/mvp/managers/TokenBillManager;
.source "BlackListManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/ds/daisi/mvp/managers/TokenBillManager;-><init>()V

    return-void
.end method

.method private getBlackListUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 54
    sget-object v0, Lcom/ds/daisi/net/URL/MyBuildConfig;->AUTHORITY:Ljava/lang/String;

    const-string v1, "GetElfBlackList"

    invoke-static {v0, v1}, Lcom/ds/daisi/net/URL/MyBuildConfig;->getBuilder(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "packagename"

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "type"

    sget-object v1, Lcom/ds/daisi/net/URL/URLConstant;->PAY_OR_Free:Ljava/lang/String;

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public isSetBlackList(Landroid/content/Context;Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/ds/daisi/mvp/managers/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lcom/ds/daisi/mvp/managers/BlackListManager;->getBlackListUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9ed1\u540d\u5355\u8bf7\u6c42\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    new-instance v1, Lcom/ds/daisi/mvp/managers/BlackListManager$1;

    invoke-direct {v1, p0, p1, p3, p1}, Lcom/ds/daisi/mvp/managers/BlackListManager$1;-><init>(Lcom/ds/daisi/mvp/managers/BlackListManager;Landroid/content/Context;Lcom/ds/daisi/mvp/managers/Callback;Landroid/content/Context;)V

    invoke-static {v0, p2, v1}, Lcom/ds/daisi/net/volley/VolleyManager;->requestStringGet(Ljava/lang/String;Ljava/lang/String;Lcom/ds/daisi/net/volley/VolleyStrRequestManager;)V

    return-void
.end method
