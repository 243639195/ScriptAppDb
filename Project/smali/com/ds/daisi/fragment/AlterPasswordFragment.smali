.class public Lcom/ds/daisi/fragment/AlterPasswordFragment;
.super Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;
.source "AlterPasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private accountPresenter:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

.field private accountUser:Lcom/ds/daisi/entity/AccountUser;

.field private mBtnComplete:Landroid/widget/Button;

.field private mEtNewPassword:Landroid/widget/EditText;

.field private mEtOldPassword:Landroid/widget/EditText;

.field private mSharePre:Landroid/content/SharedPreferences;

.field private userAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;-><init>()V

    return-void
.end method

.method private initData()V
    .locals 3

    .line 79
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/AlterPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "user_message"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->mSharePre:Landroid/content/SharedPreferences;

    .line 80
    new-instance v0, Lcom/ds/daisi/entity/AccountUser;

    invoke-direct {v0}, Lcom/ds/daisi/entity/AccountUser;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    .line 81
    new-instance v0, Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    invoke-direct {v0, p0}, Lcom/ds/daisi/mvp/presenters/AccountPresenter;-><init>(Lcom/ds/daisi/mvp/views/AccountView;)V

    iput-object v0, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->accountPresenter:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    return-void
.end method

.method private initEvent()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->mBtnComplete:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f10016c

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->mBtnComplete:Landroid/widget/Button;

    const v0, 0x7f10016b

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    const v0, 0x7f10016a

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->mEtOldPassword:Landroid/widget/EditText;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/ds/daisi/fragment/AlterPasswordFragment;
    .locals 3

    .line 64
    new-instance v0, Lcom/ds/daisi/fragment/AlterPasswordFragment;

    invoke-direct {v0}, Lcom/ds/daisi/fragment/AlterPasswordFragment;-><init>()V

    .line 65
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "account"

    .line 66
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v1}, Lcom/ds/daisi/fragment/AlterPasswordFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public alterAndFindPasswordResult(Lcom/ds/daisi/entity/AccountResult;)V
    .locals 3

    .line 129
    invoke-super {p0, p1}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->alterAndFindPasswordResult(Lcom/ds/daisi/entity/AccountResult;)V

    .line 130
    invoke-virtual {p1}, Lcom/ds/daisi/entity/AccountResult;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object v0, p1, Lcom/ds/daisi/entity/AccountResult;->Code:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/AlterPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object p1, p1, Lcom/ds/daisi/entity/AccountResult;->Msg:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ds/daisi/util/ToastUtils;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    const-string v0, "0"

    iput-object v0, p1, Lcom/ds/daisi/entity/AccountUser;->type:Ljava/lang/String;

    .line 134
    iget-object p1, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/AlterPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ds/daisi/entity/AccountUser;->packagename:Ljava/lang/String;

    .line 135
    iget-object p1, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    const-string v0, "1"

    iput-object v0, p1, Lcom/ds/daisi/entity/AccountUser;->usertype:Ljava/lang/String;

    .line 136
    iget-object p1, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    iget-object v0, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    iget-object v0, v0, Lcom/ds/daisi/entity/AccountUser;->newpassword:Ljava/lang/String;

    iput-object v0, p1, Lcom/ds/daisi/entity/AccountUser;->password:Ljava/lang/String;

    .line 137
    iget-object p1, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/ds/daisi/entity/AccountUser;->newpassword:Ljava/lang/String;

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "accountUser"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/AccountUser;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object p1, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->accountPresenter:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/AlterPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-virtual {p1, v0, v1}, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->login(Landroid/content/Context;Lcom/ds/daisi/entity/AccountUser;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p1, Lcom/ds/daisi/entity/AccountResult;->Msg:Ljava/lang/String;

    const v0, 0x7f0901b4

    invoke-virtual {p0, v0}, Lcom/ds/daisi/fragment/AlterPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/AlterPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f09005f

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastShort(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getFragmentLayoutId()I
    .locals 1

    const v0, 0x7f04005f

    return v0
.end method

.method public loginResult(Lcom/ds/daisi/entity/AccountResult;)V
    .locals 3

    .line 150
    invoke-super {p0, p1}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->loginResult(Lcom/ds/daisi/entity/AccountResult;)V

    .line 151
    iget-object v0, p1, Lcom/ds/daisi/entity/AccountResult;->Code:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
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

    .line 153
    iget-object p1, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->mSharePre:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "account"

    .line 154
    iget-object v2, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    iget-object v2, v2, Lcom/ds/daisi/entity/AccountUser;->phone:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "is_login"

    .line 155
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 157
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/AlterPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f10016c

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->mEtOldPassword:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->mEtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Lcom/ds/daisi/util/AppDeviceUtils;->isValidAccountOrPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x12

    if-le v1, v3, :cond_1

    goto :goto_2

    .line 107
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/ds/daisi/util/AppDeviceUtils;->isValidAccountOrPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_2

    goto :goto_1

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    iget-object v2, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->userAccount:Ljava/lang/String;

    iput-object v2, v1, Lcom/ds/daisi/entity/AccountUser;->phone:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-static {p1}, Lcom/ds/daisi/util/MD5Util;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/ds/daisi/entity/AccountUser;->password:Ljava/lang/String;

    .line 115
    iget-object p1, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-static {v0}, Lcom/ds/daisi/util/MD5Util;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ds/daisi/entity/AccountUser;->newpassword:Ljava/lang/String;

    .line 116
    iget-object p1, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    const-string v0, "5"

    iput-object v0, p1, Lcom/ds/daisi/entity/AccountUser;->type:Ljava/lang/String;

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4fee\u6539\u5bc6\u7801\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/AccountUser;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object p1, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->accountPresenter:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/AlterPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-virtual {p1, v0, v1}, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->alterPassword(Landroid/content/Context;Lcom/ds/daisi/entity/AccountUser;)V

    :goto_0
    return-void

    .line 110
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/AlterPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f09005e

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    return-void

    .line 103
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/AlterPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f09005f

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/AlterPasswordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/AlterPasswordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/fragment/AlterPasswordFragment;->userAccount:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onPause()V

    .line 52
    const-class v0, Lcom/ds/daisi/fragment/AlterPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 45
    invoke-super {p0}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onResume()V

    .line 46
    const-class v0, Lcom/ds/daisi/fragment/AlterPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 72
    invoke-super {p0, p1, p2}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/AlterPasswordFragment;->initView(Landroid/view/View;)V

    .line 74
    invoke-direct {p0}, Lcom/ds/daisi/fragment/AlterPasswordFragment;->initData()V

    .line 75
    invoke-direct {p0}, Lcom/ds/daisi/fragment/AlterPasswordFragment;->initEvent()V

    return-void
.end method
