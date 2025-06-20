.class public Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;
.super Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;
.source "BindRegisterCodePresenter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BindRegisterCodePresenter"


# instance fields
.field private mBindRegCodeView:Lcom/ds/daisi/mvp/views/BindRegCodeView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/ds/daisi/mvp/views/BindRegCodeView;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;->mBindRegCodeView:Lcom/ds/daisi/mvp/views/BindRegCodeView;

    return-void
.end method


# virtual methods
.method public bindRegCode(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 38
    :try_start_0
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getBaseRequestParams(Landroid/content/Context;)Lcom/cyjh/share/bean/request/BaseRequestValueInfo;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo;

    invoke-direct {v1, v0}, Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo;-><init>(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)V

    .line 40
    iput-object p1, v1, Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo;->RegCode:Ljava/lang/String;

    .line 41
    iput-object p4, v1, Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo;->OldRegCode:Ljava/lang/String;

    .line 42
    iput p3, v1, Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo;->IsSuperpose:I

    .line 44
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->toMapPrames(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p1

    const-string p3, "Script"

    const-string p4, "BindRegCode"

    .line 45
    invoke-static {p3, p4}, Lcom/cyjh/share/config/MyConfig;->getBuilderPay(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    .line 46
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    .line 47
    iget-object p4, p0, Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p2, v0, p3, p1}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->sendPostRequest(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 50
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onCancel()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->stopRequest(Ljava/lang/Object;)V

    return-void
.end method

.method protected onErrorResponse(Ljava/lang/String;)V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;->mBindRegCodeView:Lcom/ds/daisi/mvp/views/BindRegCodeView;

    new-instance v1, Lcom/cyjh/share/bean/response/BaseResponseInfo;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Lcom/cyjh/share/bean/response/BaseResponseInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/ds/daisi/mvp/views/BindRegCodeView;->onBindFailure(Lcom/cyjh/share/bean/response/BaseResponseInfo;)V

    return-void
.end method

.method public uiDataSuccess(Ljava/lang/Object;)V
    .locals 4

    const/4 v0, -0x1

    .line 58
    :try_start_0
    check-cast p1, Ljava/lang/String;

    .line 59
    sget-object v1, Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uiDataSuccess --> json="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-class v1, Lcom/ds/daisi/entity/BindRegCodeResponse;

    invoke-static {p1, v1}, Lcom/cyjh/share/util/GsonExUtil;->parsData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ds/daisi/entity/BindRegCodeResponse;

    if-nez p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;->mBindRegCodeView:Lcom/ds/daisi/mvp/views/BindRegCodeView;

    new-instance v1, Lcom/cyjh/share/bean/response/BaseResponseInfo;

    .line 63
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ds/daisi/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/cyjh/share/bean/response/BaseResponseInfo;-><init>(ILjava/lang/String;)V

    .line 62
    invoke-interface {p1, v1}, Lcom/ds/daisi/mvp/views/BindRegCodeView;->onBindFailure(Lcom/cyjh/share/bean/response/BaseResponseInfo;)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;->mBindRegCodeView:Lcom/ds/daisi/mvp/views/BindRegCodeView;

    invoke-interface {v1, p1}, Lcom/ds/daisi/mvp/views/BindRegCodeView;->onBindSuc(Lcom/ds/daisi/entity/BindRegCodeResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 68
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 69
    iget-object v1, p0, Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;->mBindRegCodeView:Lcom/ds/daisi/mvp/views/BindRegCodeView;

    new-instance v2, Lcom/cyjh/share/bean/response/BaseResponseInfo;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lcom/cyjh/share/bean/response/BaseResponseInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/ds/daisi/mvp/views/BindRegCodeView;->onBindFailure(Lcom/cyjh/share/bean/response/BaseResponseInfo;)V

    :goto_0
    return-void
.end method
