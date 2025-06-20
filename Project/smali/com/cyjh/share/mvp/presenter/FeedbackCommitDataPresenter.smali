.class public Lcom/cyjh/share/mvp/presenter/FeedbackCommitDataPresenter;
.super Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;
.source "FeedbackCommitDataPresenter.java"


# instance fields
.field private mView:Lcom/cyjh/share/mvp/view/FeedbackView;


# direct methods
.method public constructor <init>(Lcom/cyjh/share/mvp/view/FeedbackView;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/cyjh/share/mvp/base/AbstractHttpPresenter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/cyjh/share/mvp/presenter/FeedbackCommitDataPresenter;->mView:Lcom/cyjh/share/mvp/view/FeedbackView;

    return-void
.end method


# virtual methods
.method public commitFeedback(Landroid/content/Context;Lcom/cyjh/share/bean/request/FeedbackRequestInfo;)V
    .locals 3

    :try_start_0
    const-string v0, "Feedback"

    const-string v1, "Submit"

    .line 31
    invoke-static {v0, v1}, Lcom/cyjh/share/config/MyConfig;->getBuilderPay(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->toMapPrames(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p2

    .line 34
    iget-object v1, p0, Lcom/cyjh/share/mvp/presenter/FeedbackCommitDataPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0, p2}, Lcom/cyjh/share/net/volley/ActivityHttpHelper;->sendPostRequest(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "zzz"

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeedbackCommitDataPresenter --\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onCancel()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/FeedbackCommitDataPresenter;->mA:Lcom/cyjh/share/net/volley/ActivityHttpHelper;

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

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeedbackCommitDataPresenter--onErrorResponse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/FeedbackCommitDataPresenter;->mView:Lcom/cyjh/share/mvp/view/FeedbackView;

    invoke-interface {v0, p1}, Lcom/cyjh/share/mvp/view/FeedbackView;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public uiDataSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/FeedbackCommitDataPresenter;->mView:Lcom/cyjh/share/mvp/view/FeedbackView;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/cyjh/share/mvp/view/FeedbackView;->onSuc(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "zzz"

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeedbackCommitDataPresenter--uiDataSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/cyjh/share/mvp/presenter/FeedbackCommitDataPresenter;->mView:Lcom/cyjh/share/mvp/view/FeedbackView;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/cyjh/share/mvp/view/FeedbackView;->onFail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
