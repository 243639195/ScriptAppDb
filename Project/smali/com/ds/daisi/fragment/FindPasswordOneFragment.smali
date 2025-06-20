.class public Lcom/ds/daisi/fragment/FindPasswordOneFragment;
.super Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;
.source "FindPasswordOneFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private accountPresenter:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

.field private accountUser:Lcom/ds/daisi/entity/AccountUser;

.field private mBtnNextStep:Landroid/widget/Button;

.field private mEtUserAccount:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;-><init>()V

    return-void
.end method

.method private initData()V
    .locals 1

    .line 56
    new-instance v0, Lcom/ds/daisi/entity/AccountUser;

    invoke-direct {v0}, Lcom/ds/daisi/entity/AccountUser;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordOneFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    .line 57
    new-instance v0, Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    invoke-direct {v0, p0}, Lcom/ds/daisi/mvp/presenters/AccountPresenter;-><init>(Lcom/ds/daisi/mvp/views/AccountView;)V

    iput-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordOneFragment;->accountPresenter:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    return-void
.end method

.method private initEvent()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordOneFragment;->mBtnNextStep:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f100176

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordOneFragment;->mEtUserAccount:Landroid/widget/EditText;

    const v0, 0x7f100177

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordOneFragment;->mBtnNextStep:Landroid/widget/Button;

    return-void
.end method

.method public static newInstance()Lcom/ds/daisi/fragment/FindPasswordOneFragment;
    .locals 1

    .line 39
    new-instance v0, Lcom/ds/daisi/fragment/FindPasswordOneFragment;

    invoke-direct {v0}, Lcom/ds/daisi/fragment/FindPasswordOneFragment;-><init>()V

    return-object v0
.end method

.method private replaceFragment(Lcom/ds/daisi/entity/AccountUser;)V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/FindPasswordOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 115
    iget-object v1, p1, Lcom/ds/daisi/entity/AccountUser;->bindphone:Ljava/lang/String;

    iget-object p1, p1, Lcom/ds/daisi/entity/AccountUser;->phone:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ds/daisi/fragment/FindPasswordTwoFragment;

    move-result-object p1

    const v1, 0x7f1000af

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 117
    const-class p1, Lcom/ds/daisi/fragment/RegisterOneFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 118
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public getBindPhoneResult(Lcom/ds/daisi/entity/AccountResult;)V
    .locals 2

    .line 100
    invoke-super {p0, p1}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->getBindPhoneResult(Lcom/ds/daisi/entity/AccountResult;)V

    .line 101
    iget-object v0, p1, Lcom/ds/daisi/entity/AccountResult;->Code:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordOneFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    iget-object p1, p1, Lcom/ds/daisi/entity/AccountResult;->Msg:Ljava/lang/String;

    iput-object p1, v0, Lcom/ds/daisi/entity/AccountUser;->bindphone:Ljava/lang/String;

    .line 103
    iget-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordOneFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/FindPasswordOneFragment;->replaceFragment(Lcom/ds/daisi/entity/AccountUser;)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/FindPasswordOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f09005c

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public getFragmentLayoutId()I
    .locals 1

    const v0, 0x7f040061

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f100177

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordOneFragment;->mEtUserAccount:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/ds/daisi/util/AppDeviceUtils;->isValidAccountOrPassword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12

    if-le v0, v1, :cond_1

    goto :goto_1

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordOneFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    iput-object p1, v0, Lcom/ds/daisi/entity/AccountUser;->phone:Ljava/lang/String;

    .line 75
    iget-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordOneFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    const-string v0, "4"

    iput-object v0, p1, Lcom/ds/daisi/entity/AccountUser;->type:Ljava/lang/String;

    .line 76
    iget-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordOneFragment;->accountPresenter:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    iget-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordOneFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/FindPasswordOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->getPhoneByAccount(Lcom/ds/daisi/entity/AccountUser;Landroid/content/Context;)V

    :goto_0
    return-void

    .line 71
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/FindPasswordOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f09005d

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 90
    invoke-super {p0}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onPause()V

    .line 91
    const-class v0, Lcom/ds/daisi/fragment/FindPasswordOneFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onResume()V

    .line 85
    const-class v0, Lcom/ds/daisi/fragment/FindPasswordOneFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/FindPasswordOneFragment;->initView(Landroid/view/View;)V

    .line 46
    invoke-direct {p0}, Lcom/ds/daisi/fragment/FindPasswordOneFragment;->initData()V

    .line 47
    invoke-direct {p0}, Lcom/ds/daisi/fragment/FindPasswordOneFragment;->initEvent()V

    return-void
.end method
