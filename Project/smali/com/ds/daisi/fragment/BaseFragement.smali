.class public abstract Lcom/ds/daisi/fragment/BaseFragement;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragement.java"

# interfaces
.implements Lcom/ds/daisi/constant/APPConstant;
.implements Lcom/ds/daisi/mvp/views/BaseView;


# instance fields
.field protected appContext:Lcom/ds/daisi/AppContext;

.field protected commonLog:Lcom/ds/daisi/log/CommonLog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 34
    new-instance v0, Lcom/ds/daisi/log/CommonLog;

    invoke-direct {v0}, Lcom/ds/daisi/log/CommonLog;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/fragment/BaseFragement;->commonLog:Lcom/ds/daisi/log/CommonLog;

    return-void
.end method


# virtual methods
.method public abstract getFragmentLayoutId()I
.end method

.method public hideProgress()V
    .locals 0

    return-void
.end method

.method public hideProgressDialog()V
    .locals 1

    .line 74
    invoke-static {}, Lcom/ds/daisi/manager/DialogManager;->getInstance()Lcom/ds/daisi/manager/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ds/daisi/manager/DialogManager;->dismissProgressDialog()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/BaseFragement;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/ds/daisi/AppContext;

    iput-object p1, p0, Lcom/ds/daisi/fragment/BaseFragement;->appContext:Lcom/ds/daisi/AppContext;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/BaseFragement;->getFragmentLayoutId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 46
    invoke-virtual {p0, p1}, Lcom/ds/daisi/fragment/BaseFragement;->setUserVisibleHint(Z)V

    return-void
.end method

.method public showProgress()V
    .locals 0

    return-void
.end method

.method public showProgressDialog(Landroid/content/Context;I)V
    .locals 1

    .line 69
    invoke-static {}, Lcom/ds/daisi/manager/DialogManager;->getInstance()Lcom/ds/daisi/manager/DialogManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ds/daisi/manager/DialogManager;->showProgressDialog(Landroid/content/Context;I)V

    return-void
.end method
