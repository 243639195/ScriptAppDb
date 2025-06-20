.class public Lcom/ds/daisi/mvp/managers/TemplateManager;
.super Ljava/lang/Object;
.source "TemplateManager.java"

# interfaces
.implements Lcom/ds/daisi/mvp/managers/BaseManager;


# instance fields
.field private callback:Lcom/ds/daisi/mvp/managers/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ds/daisi/mvp/managers/Callback<",
            "Lcom/ds/daisi/entity/TemplateStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private templateChecked(Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ds/daisi/mvp/managers/Callback<",
            "Lcom/ds/daisi/entity/TemplateStatus;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    iput-object p2, p0, Lcom/ds/daisi/mvp/managers/TemplateManager;->callback:Lcom/ds/daisi/mvp/managers/Callback;

    .line 30
    new-instance v0, Lcom/ds/daisi/mvp/managers/TemplateManager$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/ds/daisi/mvp/managers/TemplateManager$1;-><init>(Lcom/ds/daisi/mvp/managers/TemplateManager;Landroid/content/Context;Lcom/ds/daisi/mvp/managers/Callback;)V

    invoke-static {p4, p1, v0}, Lcom/ds/daisi/net/volley/VolleyManager;->requestStringGet(Ljava/lang/String;Ljava/lang/String;Lcom/ds/daisi/net/volley/VolleyStrRequestManager;)V

    return-void
.end method


# virtual methods
.method public singleApkOrTemplateChecked(Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ds/daisi/mvp/managers/Callback<",
            "Lcom/ds/daisi/entity/TemplateStatus;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 61
    sget-object v0, Lcom/ds/daisi/net/URL/URLConstant;->MONOMER_INSTALLATION_PACKAGE:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/ds/daisi/net/URL/MyBuildConfig;->AUTHORITY_VERIFY:Ljava/lang/String;

    invoke-static {v0, p4}, Lcom/ds/daisi/net/URL/MyBuildConfig;->getBuilder(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p4

    sget-object v0, Lcom/ds/daisi/net/URL/URLConstant;->MONOMER_PACKAGE_NAME:Ljava/lang/String;

    .line 65
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p4

    goto :goto_0

    .line 68
    :cond_0
    sget-object v0, Lcom/ds/daisi/net/URL/MyBuildConfig;->AUTHORITY_VERIFY:Ljava/lang/String;

    invoke-static {v0, p4}, Lcom/ds/daisi/net/URL/MyBuildConfig;->getBuilder(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p4

    .line 70
    :goto_0
    sget-object v0, Lcom/ds/daisi/net/URL/URLConstant;->TEMPLATE_TYPE:Ljava/lang/String;

    sget-object v1, Lcom/ds/daisi/net/URL/URLConstant;->PAY_OR_Free:Ljava/lang/String;

    invoke-virtual {p4, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p4

    sget-object v0, Lcom/ds/daisi/net/URL/URLConstant;->TEMPLATE_VERSION:Ljava/lang/String;

    .line 71
    invoke-static {p3}, Lcom/ds/daisi/util/AppDeviceUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p4

    .line 72
    invoke-virtual {p4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p4

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6a21\u677furl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ds/daisi/mvp/managers/TemplateManager;->templateChecked(Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
