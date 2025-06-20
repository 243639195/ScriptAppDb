.class public Lcom/ds/daisi/fragment/RegisterTwoFragment;
.super Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;
.source "RegisterTwoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final PHONE_NUMBER_BITS:I = 0xb


# instance fields
.field private accountPresenter:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

.field private accountUser:Lcom/ds/daisi/entity/AccountUser;

.field private mBtnComplete:Landroid/widget/Button;

.field private mEtBindPhone:Landroid/widget/EditText;

.field private mSharePre:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;-><init>()V

    return-void
.end method

.method private initData()V
    .locals 3

    .line 66
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterTwoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "user_message"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/fragment/RegisterTwoFragment;->mSharePre:Landroid/content/SharedPreferences;

    .line 67
    new-instance v0, Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    invoke-direct {v0, p0}, Lcom/ds/daisi/mvp/presenters/AccountPresenter;-><init>(Lcom/ds/daisi/mvp/views/AccountView;)V

    iput-object v0, p0, Lcom/ds/daisi/fragment/RegisterTwoFragment;->accountPresenter:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    return-void
.end method

.method private initEvent()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterTwoFragment;->mBtnComplete:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f1001a0

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ds/daisi/fragment/RegisterTwoFragment;->mEtBindPhone:Landroid/widget/EditText;

    const v0, 0x7f1001a1

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ds/daisi/fragment/RegisterTwoFragment;->mBtnComplete:Landroid/widget/Button;

    return-void
.end method

.method public static newInstance(Lcom/ds/daisi/entity/AccountUser;)Lcom/ds/daisi/fragment/RegisterTwoFragment;
    .locals 2

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    const-class v1, Lcom/ds/daisi/fragment/RegisterTwoFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 77
    new-instance p0, Lcom/ds/daisi/fragment/RegisterTwoFragment;

    invoke-direct {p0}, Lcom/ds/daisi/fragment/RegisterTwoFragment;-><init>()V

    .line 78
    invoke-virtual {p0, v0}, Lcom/ds/daisi/fragment/RegisterTwoFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public alterAndFindPasswordResult(Lcom/ds/daisi/entity/AccountResult;)V
    .locals 0

    .line 149
    invoke-super {p0, p1}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->alterAndFindPasswordResult(Lcom/ds/daisi/entity/AccountResult;)V

    return-void
.end method

.method public getFragmentLayoutId()I
    .locals 1

    const v0, 0x7f04006c

    return v0
.end method

.method public loginResult(Lcom/ds/daisi/entity/AccountResult;)V
    .locals 3

    .line 109
    iget-object v0, p1, Lcom/ds/daisi/entity/AccountResult;->Code:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6ce8\u518c\u6210\u529f\u540e\u7684\u7acb\u5373\u767b\u5f55:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ds/daisi/entity/AccountResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterTwoFragment;->mSharePre:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "account"

    .line 112
    iget-object v2, p0, Lcom/ds/daisi/fragment/RegisterTwoFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    iget-object v2, v2, Lcom/ds/daisi/entity/AccountUser;->phone:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "is_login"

    .line 113
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 115
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterTwoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/ds/daisi/activity/RegisterActivity;

    iget-object p1, p1, Lcom/ds/daisi/activity/RegisterActivity;->registerJumpType:Ljava/lang/String;

    const-string v0, "login"

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 117
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterTwoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/ds/daisi/fragment/RegisterTwoFragment;->startActivity(Landroid/content/Intent;)V

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterTwoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f1001a1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterTwoFragment;->mEtBindPhone:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 88
    invoke-static {p1}, Lcom/ds/daisi/util/AppDeviceUtils;->isValidMobile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterTwoFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    iput-object p1, v0, Lcom/ds/daisi/entity/AccountUser;->bindphone:Ljava/lang/String;

    .line 94
    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterTwoFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    const-string v0, "1"

    iput-object v0, p1, Lcom/ds/daisi/entity/AccountUser;->type:Ljava/lang/String;

    .line 95
    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterTwoFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    const-string v0, "1"

    iput-object v0, p1, Lcom/ds/daisi/entity/AccountUser;->codetype:Ljava/lang/String;

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6ce8\u518c\u7528\u6237\u7684\u4fe1\u606f\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterTwoFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/AccountUser;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterTwoFragment;->accountPresenter:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterTwoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/fragment/RegisterTwoFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-virtual {p1, v0, v1}, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->register(Landroid/content/Context;Lcom/ds/daisi/entity/AccountUser;)V

    :goto_0
    return-void

    .line 89
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterTwoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f090130

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterTwoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterTwoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Lcom/ds/daisi/fragment/RegisterTwoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ds/daisi/entity/AccountUser;

    iput-object p1, p0, Lcom/ds/daisi/fragment/RegisterTwoFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 160
    invoke-super {p0}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onPause()V

    .line 161
    const-class v0, Lcom/ds/daisi/fragment/RegisterTwoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 154
    invoke-super {p0}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onResume()V

    .line 155
    const-class v0, Lcom/ds/daisi/fragment/RegisterTwoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/RegisterTwoFragment;->initView(Landroid/view/View;)V

    .line 55
    invoke-direct {p0}, Lcom/ds/daisi/fragment/RegisterTwoFragment;->initData()V

    .line 56
    invoke-direct {p0}, Lcom/ds/daisi/fragment/RegisterTwoFragment;->initEvent()V

    return-void
.end method

.method public registerResult(Lcom/ds/daisi/entity/AccountResult;)V
    .locals 2

    .line 130
    iget-object v0, p1, Lcom/ds/daisi/entity/AccountResult;->Code:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterTwoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object p1, p1, Lcom/ds/daisi/entity/AccountResult;->Msg:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ds/daisi/util/ToastUtils;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterTwoFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    const-string v0, "0"

    iput-object v0, p1, Lcom/ds/daisi/entity/AccountUser;->type:Ljava/lang/String;

    .line 133
    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterTwoFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterTwoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ds/daisi/entity/AccountUser;->packagename:Ljava/lang/String;

    .line 134
    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterTwoFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    const-string v0, "1"

    iput-object v0, p1, Lcom/ds/daisi/entity/AccountUser;->usertype:Ljava/lang/String;

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "accountUser"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterTwoFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/AccountUser;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterTwoFragment;->accountPresenter:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterTwoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/fragment/RegisterTwoFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-virtual {p1, v0, v1}, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->login(Landroid/content/Context;Lcom/ds/daisi/entity/AccountUser;)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p1, Lcom/ds/daisi/entity/AccountResult;->Code:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterTwoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object p1, p1, Lcom/ds/daisi/entity/AccountResult;->Msg:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ds/daisi/util/ToastUtils;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterTwoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0900ae

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastShort(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
