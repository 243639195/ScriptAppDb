.class public Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;
.super Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;
.source "AppVersionUpdatePresenter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AppVersionUpdatePresenter"


# instance fields
.field private currentTimestamp:J

.field private deviceName:Ljava/lang/String;

.field private isToast:Z

.field private mContext:Landroid/content/Context;

.field private mUpdateRequestInfo:Lcom/cyjh/share/bean/request/UpdateRequestInfo;

.field private mUpdateView:Lcom/cyjh/share/mvp/view/VersionUpdateView;

.field private scriptId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cyjh/share/mvp/view/VersionUpdateView;Z)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->isToast:Z

    .line 42
    iput-object p1, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->mUpdateView:Lcom/cyjh/share/mvp/view/VersionUpdateView;

    .line 44
    iput-boolean p3, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->isToast:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cyjh/share/mvp/view/VersionUpdateView;ZLcom/cyjh/share/bean/request/UpdateRequestInfo;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->isToast:Z

    .line 48
    iput-object p1, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->mUpdateView:Lcom/cyjh/share/mvp/view/VersionUpdateView;

    .line 50
    iput-boolean p3, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->isToast:Z

    .line 51
    iput-object p4, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->mUpdateRequestInfo:Lcom/cyjh/share/bean/request/UpdateRequestInfo;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->stopRequest(Ljava/lang/Object;)V

    return-void
.end method

.method protected onErrorResponse(Ljava/lang/String;)V
    .locals 3

    const-string v0, "zzz"

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.cyjh.share.AppVersionUpdatePresenter--onErrorResponse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->mUpdateView:Lcom/cyjh/share/mvp/view/VersionUpdateView;

    invoke-interface {v0, p1}, Lcom/cyjh/share/mvp/view/VersionUpdateView;->onUpdateFailure(Ljava/lang/String;)V

    return-void
.end method

.method public uiDataSuccess(Ljava/lang/Object;)V
    .locals 5

    .line 83
    :try_start_0
    check-cast p1, Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uiDataSuccess --> data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Data"

    .line 86
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "Code"

    .line 87
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Message"

    .line 88
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 90
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/cyjh/share/bean/response/VersionUpdateInfo;

    invoke-static {p1, v0}, Lcom/cyjh/share/util/GsonExUtil;->parsData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/share/bean/response/VersionUpdateInfo;

    if-eqz p1, :cond_1

    .line 91
    iget-wide v0, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->currentTimestamp:J

    iget-wide v2, p1, Lcom/cyjh/share/bean/response/VersionUpdateInfo;->ClientTimestamp:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 92
    iget v0, p1, Lcom/cyjh/share/bean/response/VersionUpdateInfo;->UpdateType:I

    if-nez v0, :cond_0

    .line 94
    iget-object p1, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->mUpdateView:Lcom/cyjh/share/mvp/view/VersionUpdateView;

    invoke-interface {p1}, Lcom/cyjh/share/mvp/view/VersionUpdateView;->onUpdateEmpty()V

    .line 95
    iget-boolean p1, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->isToast:Z

    if-eqz p1, :cond_3

    .line 96
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/cyjh/share/R$string;->version_newest:I

    invoke-static {p1, v0}, Lcom/cyjh/share/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->mUpdateView:Lcom/cyjh/share/mvp/view/VersionUpdateView;

    invoke-interface {v0, p1}, Lcom/cyjh/share/mvp/view/VersionUpdateView;->onUpdateSuccessful(Lcom/cyjh/share/bean/response/VersionUpdateInfo;)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->mUpdateView:Lcom/cyjh/share/mvp/view/VersionUpdateView;

    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cyjh/share/R$string;->json_parse_exception:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cyjh/share/mvp/view/VersionUpdateView;->onUpdateFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_2
    sget-object p1, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateFailure --> message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->mUpdateView:Lcom/cyjh/share/mvp/view/VersionUpdateView;

    invoke-interface {p1, v0}, Lcom/cyjh/share/mvp/view/VersionUpdateView;->onUpdateFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "zzz"

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.cyjh.share.AppVersionUpdatePresenter--onErrorResponse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->mUpdateView:Lcom/cyjh/share/mvp/view/VersionUpdateView;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/cyjh/share/mvp/view/VersionUpdateView;->onUpdateFailure(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateVersion(Landroid/content/Context;)V
    .locals 4

    .line 56
    :try_start_0
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getBaseRequestParams(Landroid/content/Context;)Lcom/cyjh/share/bean/request/BaseRequestValueInfo;

    move-result-object p1

    .line 57
    new-instance v0, Lcom/cyjh/share/bean/request/UpdateRequestInfo;

    invoke-direct {v0, p1}, Lcom/cyjh/share/bean/request/UpdateRequestInfo;-><init>(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)V

    .line 58
    iget-object p1, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->mUpdateRequestInfo:Lcom/cyjh/share/bean/request/UpdateRequestInfo;

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->mUpdateRequestInfo:Lcom/cyjh/share/bean/request/UpdateRequestInfo;

    invoke-virtual {p1}, Lcom/cyjh/share/bean/request/UpdateRequestInfo;->getScriptId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/cyjh/share/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    .line 60
    iget-object p1, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->mUpdateRequestInfo:Lcom/cyjh/share/bean/request/UpdateRequestInfo;

    invoke-virtual {p1}, Lcom/cyjh/share/bean/request/UpdateRequestInfo;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/cyjh/share/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    .line 61
    iget-object p1, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->mUpdateRequestInfo:Lcom/cyjh/share/bean/request/UpdateRequestInfo;

    invoke-virtual {p1}, Lcom/cyjh/share/bean/request/UpdateRequestInfo;->getScriptVersion()I

    move-result p1

    iput p1, v0, Lcom/cyjh/share/bean/request/UpdateRequestInfo;->ScriptVersion:I

    .line 62
    iget-object p1, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->mUpdateRequestInfo:Lcom/cyjh/share/bean/request/UpdateRequestInfo;

    invoke-virtual {p1}, Lcom/cyjh/share/bean/request/UpdateRequestInfo;->getIsScriptHotUpgrade()I

    move-result p1

    iput p1, v0, Lcom/cyjh/share/bean/request/UpdateRequestInfo;->IsScriptHotUpgrade:I

    .line 63
    iget-object p1, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->mUpdateRequestInfo:Lcom/cyjh/share/bean/request/UpdateRequestInfo;

    iget-object p1, p1, Lcom/cyjh/share/bean/request/UpdateRequestInfo;->AppVersion:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->mUpdateRequestInfo:Lcom/cyjh/share/bean/request/UpdateRequestInfo;

    iget-object p1, p1, Lcom/cyjh/share/bean/request/UpdateRequestInfo;->AppVersion:Ljava/lang/String;

    iput-object p1, v0, Lcom/cyjh/share/bean/request/UpdateRequestInfo;->AppVersion:Ljava/lang/String;

    .line 66
    :cond_0
    sget-object p1, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVersion --> 1 paramsMap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cyjh/share/bean/request/UpdateRequestInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->toMapPrames(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p1

    .line 68
    sget-wide v0, Lcom/cyjh/share/manager/VariableAndConstantsManager;->sCurrentTimestamp:J

    iput-wide v0, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->currentTimestamp:J

    const-string v0, "VersionUpdate"

    .line 69
    invoke-static {v0}, Lcom/cyjh/share/config/MyConfig;->getBuilderPay(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    sget-object v1, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVersion --> 2 url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",paramsMap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    iget-object v2, p0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->sendPostRequest(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 74
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const-string v0, "zzz"

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.cyjh.share.AppVersionUpdatePresenter--updateVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
