.class public abstract Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;
.super Ljava/lang/Object;
.source "AbstractHttpPresenter.java"

# interfaces
.implements Lcom/cyjh/share/net/inf/IAnalysisJson;
.implements Lcom/cyjh/share/net/inf/IUIDataListener;


# instance fields
.field protected mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-direct {v0, p0, p0}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;-><init>(Lcom/cyjh/share/net/inf/IUIDataListener;Lcom/cyjh/share/net/inf/IAnalysisJson;)V

    iput-object v0, p0, Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    return-void
.end method


# virtual methods
.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    .line 40
    :try_start_0
    const-class v1, Lcom/cyjh/share/bean/response/BaseInfo;

    invoke-static {p1, v1}, Lcom/cyjh/share/util/GsonExUtil;->parsData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/share/bean/response/BaseInfo;

    .line 41
    iget-object v1, p1, Lcom/cyjh/share/bean/response/BaseInfo;->Data:Ljava/lang/String;

    iget p1, p1, Lcom/cyjh/share/bean/response/BaseInfo;->R:I

    invoke-static {v1, p1}, Lcom/cyjh/share/util/SignUtil;->decode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 42
    const-class v1, Lcom/cyjh/share/bean/SignaClass;

    invoke-static {p1, v1}, Lcom/cyjh/share/util/GsonExUtil;->parsData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/share/bean/SignaClass;

    if-eqz p1, :cond_0

    .line 44
    iget-object v1, p1, Lcom/cyjh/share/bean/SignaClass;->SignContent:Ljava/lang/String;

    iget-object v2, p1, Lcom/cyjh/share/bean/SignaClass;->Signature:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cyjh/share/util/SignUtil;->rsaVerify(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-object p1, p1, Lcom/cyjh/share/bean/SignaClass;->SignContent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 51
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected abstract onErrorResponse(Ljava/lang/String;)V
.end method

.method public uiDataError(Lcom/android/volley/VolleyError;)V
    .locals 4

    .line 60
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 62
    instance-of v1, p1, Lcom/android/volley/ServerError;

    if-eqz v1, :cond_0

    .line 63
    sget v1, Lcom/cyjh/share/R$string;->network_server_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 64
    :cond_0
    instance-of v1, p1, Lcom/android/volley/NoConnectionError;

    if-eqz v1, :cond_1

    .line 65
    sget v1, Lcom/cyjh/share/R$string;->network_no_connection_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 66
    :cond_1
    instance-of v1, p1, Lcom/android/volley/NetworkError;

    if-eqz v1, :cond_2

    .line 67
    sget v1, Lcom/cyjh/share/R$string;->network_network_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 68
    :cond_2
    instance-of v1, p1, Lcom/android/volley/ParseError;

    if-eqz v1, :cond_3

    .line 69
    sget v1, Lcom/cyjh/share/R$string;->network_parse_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 70
    :cond_3
    instance-of v1, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v1, :cond_4

    .line 71
    sget v1, Lcom/cyjh/share/R$string;->network_auth_failure_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 72
    :cond_4
    instance-of v1, p1, Lcom/android/volley/TimeoutError;

    if-eqz v1, :cond_5

    .line 73
    sget v1, Lcom/cyjh/share/R$string;->network_timeout_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    .line 75
    :goto_0
    iget-object v2, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v2, :cond_6

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v3, v3, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget p1, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\t\t"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    if-nez v1, :cond_7

    .line 81
    sget p1, Lcom/cyjh/share/R$string;->network_again_error:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    :cond_7
    invoke-virtual {p0, v1}, Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;->onErrorResponse(Ljava/lang/String;)V

    :cond_8
    return-void
.end method
