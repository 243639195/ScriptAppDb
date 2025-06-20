.class public Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;
.super Ljava/lang/Object;
.source "VerifyPermissionPresenter.java"


# instance fields
.field private verifyPermissionManager:Lcom/ds/daisi/mvp/managers/VerifyPermissionManager;

.field private verifyPermissionView:Lcom/ds/daisi/mvp/views/VerifyPermissionView;


# direct methods
.method public constructor <init>(Lcom/ds/daisi/mvp/views/VerifyPermissionView;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;->verifyPermissionView:Lcom/ds/daisi/mvp/views/VerifyPermissionView;

    .line 21
    new-instance p1, Lcom/ds/daisi/mvp/managers/VerifyPermissionManager;

    invoke-direct {p1}, Lcom/ds/daisi/mvp/managers/VerifyPermissionManager;-><init>()V

    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;->verifyPermissionManager:Lcom/ds/daisi/mvp/managers/VerifyPermissionManager;

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;)Lcom/ds/daisi/mvp/views/VerifyPermissionView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;->verifyPermissionView:Lcom/ds/daisi/mvp/views/VerifyPermissionView;

    return-object p0
.end method


# virtual methods
.method public checkedUserFreeze(Landroid/content/Context;)V
    .locals 2

    .line 29
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;->verifyPermissionView:Lcom/ds/daisi/mvp/views/VerifyPermissionView;

    const v1, 0x7f090054

    invoke-interface {v0, p1, v1}, Lcom/ds/daisi/mvp/views/VerifyPermissionView;->showProgressDialog(Landroid/content/Context;I)V

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;->verifyPermissionManager:Lcom/ds/daisi/mvp/managers/VerifyPermissionManager;

    new-instance v1, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter$1;

    invoke-direct {v1, p0, p1}, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter$1;-><init>(Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;Landroid/content/Context;)V

    invoke-virtual {v0, v1, p1}, Lcom/ds/daisi/mvp/managers/VerifyPermissionManager;->checkedUserFreeze(Lcom/ds/daisi/mvp/managers/Callback;Landroid/content/Context;)V

    return-void
.end method

.method public getScriptTryCount(Landroid/content/Context;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;->verifyPermissionManager:Lcom/ds/daisi/mvp/managers/VerifyPermissionManager;

    new-instance v1, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter$2;

    invoke-direct {v1, p0}, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter$2;-><init>(Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;)V

    invoke-virtual {v0, v1, p1}, Lcom/ds/daisi/mvp/managers/VerifyPermissionManager;->getScriptTryCount(Lcom/ds/daisi/mvp/managers/Callback;Landroid/content/Context;)V

    return-void
.end method
