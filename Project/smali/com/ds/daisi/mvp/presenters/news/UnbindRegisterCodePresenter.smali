.class public Lcom/ds/daisi/mvp/presenters/news/UnbindRegisterCodePresenter;
.super Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;
.source "UnbindRegisterCodePresenter.java"


# instance fields
.field private mView:Lcom/ds/daisi/mvp/views/UnBindRegCodeView;


# direct methods
.method public constructor <init>(Lcom/ds/daisi/mvp/views/UnBindRegCodeView;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/news/UnbindRegisterCodePresenter;->mView:Lcom/ds/daisi/mvp/views/UnBindRegCodeView;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/news/UnbindRegisterCodePresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->stopRequest(Ljava/lang/Object;)V

    return-void
.end method

.method protected onErrorResponse(Ljava/lang/String;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/news/UnbindRegisterCodePresenter;->mView:Lcom/ds/daisi/mvp/views/UnBindRegCodeView;

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/views/UnBindRegCodeView;->onUnbindFailure(Ljava/lang/String;)V

    return-void
.end method

.method public uiDataSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 51
    :try_start_0
    check-cast p1, Ljava/lang/String;

    .line 52
    const-class v0, Lcom/ds/daisi/entity/RegCodeInfoResponse;

    invoke-static {p1, v0}, Lcom/cyjh/share/util/GsonExUtil;->parsData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ds/daisi/entity/RegCodeInfoResponse;

    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/news/UnbindRegisterCodePresenter;->mView:Lcom/ds/daisi/mvp/views/UnBindRegCodeView;

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/views/UnBindRegCodeView;->onUnbindSuc(Lcom/ds/daisi/entity/RegCodeInfoResponse;)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/mvp/presenters/news/UnbindRegisterCodePresenter;->mView:Lcom/ds/daisi/mvp/views/UnBindRegCodeView;

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ds/daisi/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ds/daisi/mvp/views/UnBindRegCodeView;->onUnbindFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 59
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 60
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/news/UnbindRegisterCodePresenter;->mView:Lcom/ds/daisi/mvp/views/UnBindRegCodeView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89e3\u7ed1\u6ce8\u518c\u7801\u89e3\u6790\u5f02\u5e38:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/views/UnBindRegCodeView;->onUnbindFailure(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unbindRegCode(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .line 34
    :try_start_0
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getBaseRequestParams(Landroid/content/Context;)Lcom/cyjh/share/bean/request/BaseRequestValueInfo;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/cyjh/share/bean/request/UnbindRegCodeRequestInfo;

    invoke-direct {v1, v0}, Lcom/cyjh/share/bean/request/UnbindRegCodeRequestInfo;-><init>(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)V

    .line 36
    iput-object p1, v1, Lcom/cyjh/share/bean/request/UnbindRegCodeRequestInfo;->RegCode:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->toMapPrames(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "Script"

    const-string v1, "UnbindRegCode"

    .line 38
    invoke-static {v0, v1}, Lcom/cyjh/share/config/MyConfig;->getBuilderPay(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/ds/daisi/mvp/presenters/news/UnbindRegisterCodePresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2, v0, p1}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->sendPostRequest(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
