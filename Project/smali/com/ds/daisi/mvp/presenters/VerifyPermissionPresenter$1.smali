.class Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter$1;
.super Ljava/lang/Object;
.source "VerifyPermissionPresenter.java"

# interfaces
.implements Lcom/ds/daisi/mvp/managers/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;->checkedUserFreeze(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ds/daisi/mvp/managers/Callback<",
        "Lcom/ds/daisi/entity/AccountResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;Landroid/content/Context;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter$1;->this$0:Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;

    iput-object p2, p0, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter$1;->val$context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter$1;->this$0:Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;

    invoke-static {p1}, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;->access$000(Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;)Lcom/ds/daisi/mvp/views/VerifyPermissionView;

    move-result-object p1

    invoke-interface {p1}, Lcom/ds/daisi/mvp/views/VerifyPermissionView;->hideProgressDialog()V

    :cond_0
    return-void
.end method

.method public finish(Lcom/ds/daisi/entity/AccountResult;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter$1;->this$0:Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;

    invoke-static {v0}, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;->access$000(Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;)Lcom/ds/daisi/mvp/views/VerifyPermissionView;

    move-result-object v0

    invoke-interface {v0}, Lcom/ds/daisi/mvp/views/VerifyPermissionView;->hideProgressDialog()V

    .line 36
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter$1;->this$0:Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;

    invoke-static {v0}, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;->access$000(Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;)Lcom/ds/daisi/mvp/views/VerifyPermissionView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ds/daisi/mvp/views/VerifyPermissionView;->accountCheckedResult(Lcom/ds/daisi/entity/AccountResult;)V

    return-void
.end method

.method public bridge synthetic finish(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/ds/daisi/entity/AccountResult;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter$1;->finish(Lcom/ds/daisi/entity/AccountResult;)V

    return-void
.end method
