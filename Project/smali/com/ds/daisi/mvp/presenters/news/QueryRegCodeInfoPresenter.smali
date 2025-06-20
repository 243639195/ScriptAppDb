.class public Lcom/ds/daisi/mvp/presenters/news/QueryRegCodeInfoPresenter;
.super Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;
.source "QueryRegCodeInfoPresenter.java"


# instance fields
.field private mQueryRegCodeView:Lcom/ds/daisi/mvp/views/QueryRegCodeView;


# direct methods
.method public constructor <init>(Lcom/ds/daisi/mvp/views/QueryRegCodeView;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/news/QueryRegCodeInfoPresenter;->mQueryRegCodeView:Lcom/ds/daisi/mvp/views/QueryRegCodeView;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/news/QueryRegCodeInfoPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->stopRequest(Ljava/lang/Object;)V

    return-void
.end method

.method protected onErrorResponse(Ljava/lang/String;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/news/QueryRegCodeInfoPresenter;->mQueryRegCodeView:Lcom/ds/daisi/mvp/views/QueryRegCodeView;

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/views/QueryRegCodeView;->onQueryFailure(Ljava/lang/String;)V

    return-void
.end method

.method public queryRegCodeInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 37
    :try_start_0
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getBaseRequestParams(Landroid/content/Context;)Lcom/cyjh/share/bean/request/BaseRequestValueInfo;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/cyjh/share/bean/request/QueryRegCodeRequestInfo;

    invoke-direct {v1, v0}, Lcom/cyjh/share/bean/request/QueryRegCodeRequestInfo;-><init>(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)V

    .line 39
    iput-object p1, v1, Lcom/cyjh/share/bean/request/QueryRegCodeRequestInfo;->RegCode:Ljava/lang/String;

    .line 40
    iput-object p2, v1, Lcom/cyjh/share/bean/request/QueryRegCodeRequestInfo;->OldRegCode:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->toMapPrames(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "Script"

    const-string v0, "RegCodeIsSuperpose"

    .line 42
    invoke-static {p2, v0}, Lcom/cyjh/share/config/MyConfig;->getBuilderPay(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 43
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 44
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/news/QueryRegCodeInfoPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1, p2, p1}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->sendPostRequest(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 47
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const-string p2, "zzz"

    .line 48
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "QueryRegCodeInfoPresenter--queryRegCodeInfo--"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public uiDataSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 55
    :try_start_0
    check-cast p1, Ljava/lang/String;

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const-class v0, Lcom/ds/daisi/entity/RegCodeInfoResponse;

    invoke-static {p1, v0}, Lcom/cyjh/share/util/GsonExUtil;->parsData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ds/daisi/entity/RegCodeInfoResponse;

    .line 59
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/news/QueryRegCodeInfoPresenter;->mQueryRegCodeView:Lcom/ds/daisi/mvp/views/QueryRegCodeView;

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/views/QueryRegCodeView;->onQuerySuc(Lcom/ds/daisi/entity/RegCodeInfoResponse;)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/mvp/presenters/news/QueryRegCodeInfoPresenter;->mQueryRegCodeView:Lcom/ds/daisi/mvp/views/QueryRegCodeView;

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ds/daisi/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ds/daisi/mvp/views/QueryRegCodeView;->onQueryFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 65
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/news/QueryRegCodeInfoPresenter;->mQueryRegCodeView:Lcom/ds/daisi/mvp/views/QueryRegCodeView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json\u89e3\u6790\u629b\u5f02\u5e38\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/views/QueryRegCodeView;->onQueryFailure(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
