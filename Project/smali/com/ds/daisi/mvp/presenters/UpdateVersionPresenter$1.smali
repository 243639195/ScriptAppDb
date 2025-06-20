.class Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter$1;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;
.source "UpdateVersionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;->updateVersion(ZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lidroid/xutils/http/callback/RequestCallBack<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$flag:Z


# direct methods
.method constructor <init>(Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;ZLandroid/content/Context;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter$1;->this$0:Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;

    iput-boolean p2, p0, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter$1;->val$flag:Z

    iput-object p3, p0, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/lidroid/xutils/http/ResponseInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/http/ResponseInfo<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter$1;->this$0:Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;

    invoke-static {v0}, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;->access$000(Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;)Lcom/ds/daisi/log/CommonLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseInfo.result>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/lidroid/xutils/http/ResponseInfo;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 59
    iget-object v0, p1, Lcom/lidroid/xutils/http/ResponseInfo;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "null"

    iget-object v1, p1, Lcom/lidroid/xutils/http/ResponseInfo;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 66
    iget-object p1, p1, Lcom/lidroid/xutils/http/ResponseInfo;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-class v1, [Lcom/ds/daisi/entity/UpdateInfo;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/ds/daisi/entity/UpdateInfo;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 67
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter$1;->val$context:Landroid/content/Context;

    iput-object v0, p1, Lcom/ds/daisi/entity/UpdateInfo;->mContext:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter$1;->this$0:Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;

    invoke-static {v0}, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;->access$200(Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;)Lcom/ds/daisi/mvp/views/UpdateVersionView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/views/UpdateVersionView;->onUpdateSuccessful(Lcom/ds/daisi/entity/UpdateInfo;)V

    return-void

    .line 60
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter$1;->val$flag:Z

    if-eqz p1, :cond_2

    .line 61
    iget-object p1, p0, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter$1;->this$0:Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;

    invoke-static {p1}, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;->access$100(Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0901b0

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    :cond_2
    return-void
.end method
