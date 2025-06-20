.class public Lcom/ds/daisi/mvp/managers/TokenBillManager;
.super Ljava/lang/Object;
.source "TokenBillManager.java"

# interfaces
.implements Lcom/ds/daisi/mvp/presenters/BasePresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodes(Landroid/content/Context;Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;)V
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

    .line 25
    sget-object v0, Lcom/ds/daisi/net/URL/MyBuildConfig;->AUTHORITY:Ljava/lang/String;

    const-string v1, "GetCodes"

    invoke-static {v0, v1}, Lcom/ds/daisi/net/URL/MyBuildConfig;->getBuilder(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    new-instance v1, Lcom/ds/daisi/mvp/managers/TokenBillManager$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/ds/daisi/mvp/managers/TokenBillManager$1;-><init>(Lcom/ds/daisi/mvp/managers/TokenBillManager;Landroid/content/Context;Lcom/ds/daisi/mvp/managers/Callback;)V

    invoke-static {v0, p2, v1}, Lcom/ds/daisi/net/volley/VolleyManager;->requestStringGet(Ljava/lang/String;Ljava/lang/String;Lcom/ds/daisi/net/volley/VolleyStrRequestManager;)V

    return-void
.end method
