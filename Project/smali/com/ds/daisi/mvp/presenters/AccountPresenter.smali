.class public Lcom/ds/daisi/mvp/presenters/AccountPresenter;
.super Ljava/lang/Object;
.source "AccountPresenter.java"

# interfaces
.implements Lcom/ds/daisi/mvp/presenters/BasePresenter;


# instance fields
.field private accountManager:Lcom/ds/daisi/mvp/managers/AccountManager;

.field private accountView:Lcom/ds/daisi/mvp/views/AccountView;


# direct methods
.method public constructor <init>(Lcom/ds/daisi/mvp/views/AccountView;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->accountView:Lcom/ds/daisi/mvp/views/AccountView;

    .line 22
    new-instance p1, Lcom/ds/daisi/mvp/managers/AccountManager;

    invoke-direct {p1}, Lcom/ds/daisi/mvp/managers/AccountManager;-><init>()V

    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->accountManager:Lcom/ds/daisi/mvp/managers/AccountManager;

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/mvp/presenters/AccountPresenter;)Lcom/ds/daisi/mvp/views/AccountView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->accountView:Lcom/ds/daisi/mvp/views/AccountView;

    return-object p0
.end method


# virtual methods
.method public alterPassword(Landroid/content/Context;Lcom/ds/daisi/entity/AccountUser;)V
    .locals 2

    .line 100
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->accountView:Lcom/ds/daisi/mvp/views/AccountView;

    const v1, 0x7f090074

    invoke-interface {v0, p1, v1}, Lcom/ds/daisi/mvp/views/AccountView;->showProgressDialog(Landroid/content/Context;I)V

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->accountManager:Lcom/ds/daisi/mvp/managers/AccountManager;

    new-instance v0, Lcom/ds/daisi/mvp/presenters/AccountPresenter$4;

    invoke-direct {v0, p0}, Lcom/ds/daisi/mvp/presenters/AccountPresenter$4;-><init>(Lcom/ds/daisi/mvp/presenters/AccountPresenter;)V

    invoke-virtual {p1, p2, v0}, Lcom/ds/daisi/mvp/managers/AccountManager;->alterPassword(Lcom/ds/daisi/entity/AccountUser;Lcom/ds/daisi/mvp/managers/Callback;)V

    return-void
.end method

.method public checkedAccountDuplicated(Lcom/ds/daisi/entity/AccountUser;Landroid/content/Context;)V
    .locals 2

    .line 169
    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->accountView:Lcom/ds/daisi/mvp/views/AccountView;

    const v1, 0x7f090054

    invoke-interface {v0, p2, v1}, Lcom/ds/daisi/mvp/views/AccountView;->showProgressDialog(Landroid/content/Context;I)V

    .line 172
    :cond_0
    iget-object p2, p0, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->accountManager:Lcom/ds/daisi/mvp/managers/AccountManager;

    new-instance v0, Lcom/ds/daisi/mvp/presenters/AccountPresenter$7;

    invoke-direct {v0, p0}, Lcom/ds/daisi/mvp/presenters/AccountPresenter$7;-><init>(Lcom/ds/daisi/mvp/presenters/AccountPresenter;)V

    invoke-virtual {p2, p1, v0}, Lcom/ds/daisi/mvp/managers/AccountManager;->checkedAccountDuplicated(Lcom/ds/daisi/entity/AccountUser;Lcom/ds/daisi/mvp/managers/Callback;)V

    return-void
.end method

.method public findPassword(Landroid/content/Context;Lcom/ds/daisi/entity/AccountUser;)V
    .locals 2

    .line 123
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->accountView:Lcom/ds/daisi/mvp/views/AccountView;

    const v1, 0x7f0900b7

    invoke-interface {v0, p1, v1}, Lcom/ds/daisi/mvp/views/AccountView;->showProgressDialog(Landroid/content/Context;I)V

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->accountManager:Lcom/ds/daisi/mvp/managers/AccountManager;

    new-instance v0, Lcom/ds/daisi/mvp/presenters/AccountPresenter$5;

    invoke-direct {v0, p0}, Lcom/ds/daisi/mvp/presenters/AccountPresenter$5;-><init>(Lcom/ds/daisi/mvp/presenters/AccountPresenter;)V

    invoke-virtual {p1, p2, v0}, Lcom/ds/daisi/mvp/managers/AccountManager;->findPassword(Lcom/ds/daisi/entity/AccountUser;Lcom/ds/daisi/mvp/managers/Callback;)V

    return-void
.end method

.method public getPhoneByAccount(Lcom/ds/daisi/entity/AccountUser;Landroid/content/Context;)V
    .locals 2

    .line 146
    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->accountView:Lcom/ds/daisi/mvp/views/AccountView;

    const v1, 0x7f090105

    invoke-interface {v0, p2, v1}, Lcom/ds/daisi/mvp/views/AccountView;->showProgressDialog(Landroid/content/Context;I)V

    .line 149
    :cond_0
    iget-object p2, p0, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->accountManager:Lcom/ds/daisi/mvp/managers/AccountManager;

    new-instance v0, Lcom/ds/daisi/mvp/presenters/AccountPresenter$6;

    invoke-direct {v0, p0}, Lcom/ds/daisi/mvp/presenters/AccountPresenter$6;-><init>(Lcom/ds/daisi/mvp/presenters/AccountPresenter;)V

    invoke-virtual {p2, p1, v0}, Lcom/ds/daisi/mvp/managers/AccountManager;->getPhoneByAccount(Lcom/ds/daisi/entity/AccountUser;Lcom/ds/daisi/mvp/managers/Callback;)V

    return-void
.end method

.method public login(Landroid/content/Context;Lcom/ds/daisi/entity/AccountUser;)V
    .locals 2

    .line 77
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->accountView:Lcom/ds/daisi/mvp/views/AccountView;

    const v1, 0x7f0900e2

    invoke-interface {v0, p1, v1}, Lcom/ds/daisi/mvp/views/AccountView;->showProgressDialog(Landroid/content/Context;I)V

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->accountManager:Lcom/ds/daisi/mvp/managers/AccountManager;

    new-instance v0, Lcom/ds/daisi/mvp/presenters/AccountPresenter$3;

    invoke-direct {v0, p0}, Lcom/ds/daisi/mvp/presenters/AccountPresenter$3;-><init>(Lcom/ds/daisi/mvp/presenters/AccountPresenter;)V

    invoke-virtual {p1, p2, v0}, Lcom/ds/daisi/mvp/managers/AccountManager;->login(Lcom/ds/daisi/entity/AccountUser;Lcom/ds/daisi/mvp/managers/Callback;)V

    return-void
.end method

.method public phoneCodes(Landroid/content/Context;Lcom/ds/daisi/entity/AccountUser;)V
    .locals 2

    .line 30
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->accountView:Lcom/ds/daisi/mvp/views/AccountView;

    const v1, 0x7f090105

    invoke-interface {v0, p1, v1}, Lcom/ds/daisi/mvp/views/AccountView;->showProgressDialog(Landroid/content/Context;I)V

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->accountManager:Lcom/ds/daisi/mvp/managers/AccountManager;

    new-instance v0, Lcom/ds/daisi/mvp/presenters/AccountPresenter$1;

    invoke-direct {v0, p0}, Lcom/ds/daisi/mvp/presenters/AccountPresenter$1;-><init>(Lcom/ds/daisi/mvp/presenters/AccountPresenter;)V

    invoke-virtual {p1, p2, v0}, Lcom/ds/daisi/mvp/managers/AccountManager;->phoneCodes(Lcom/ds/daisi/entity/AccountUser;Lcom/ds/daisi/mvp/managers/Callback;)V

    return-void
.end method

.method public register(Landroid/content/Context;Lcom/ds/daisi/entity/AccountUser;)V
    .locals 2

    .line 54
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->accountView:Lcom/ds/daisi/mvp/views/AccountView;

    const v1, 0x7f090145

    invoke-interface {v0, p1, v1}, Lcom/ds/daisi/mvp/views/AccountView;->showProgressDialog(Landroid/content/Context;I)V

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->accountManager:Lcom/ds/daisi/mvp/managers/AccountManager;

    new-instance v0, Lcom/ds/daisi/mvp/presenters/AccountPresenter$2;

    invoke-direct {v0, p0}, Lcom/ds/daisi/mvp/presenters/AccountPresenter$2;-><init>(Lcom/ds/daisi/mvp/presenters/AccountPresenter;)V

    invoke-virtual {p1, p2, v0}, Lcom/ds/daisi/mvp/managers/AccountManager;->register(Lcom/ds/daisi/entity/AccountUser;Lcom/ds/daisi/mvp/managers/Callback;)V

    return-void
.end method
