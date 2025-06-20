.class public Lcom/ds/daisi/fragment/RegisterOneFragment;
.super Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;
.source "RegisterOneFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DUPLICATED_ACCOUNT:Ljava/lang/String; = "1"

.field private static final licenseText:Ljava/lang/String; = "\u70b9\u51fb\u4e0b\u4e00\u6b65\uff0c\u540c\u65f6\u540c\u610f<font color= \'#3E81C7\'><b>\u300a\u670d\u52a1\u534f\u8bae\u300b</b></font>"


# instance fields
.field private accountPresenter:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

.field private accountUser:Lcom/ds/daisi/entity/AccountUser;

.field private mBtnNextStep:Landroid/widget/Button;

.field private mEdUserAccount:Landroid/widget/EditText;

.field private mEdUserPassword:Landroid/widget/EditText;

.field private mTvLicense:Landroid/widget/TextView;

.field private md5AfterPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;-><init>()V

    return-void
.end method

.method private initData()V
    .locals 1

    .line 81
    new-instance v0, Lcom/ds/daisi/entity/AccountUser;

    invoke-direct {v0}, Lcom/ds/daisi/entity/AccountUser;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/fragment/RegisterOneFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    .line 82
    new-instance v0, Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    invoke-direct {v0, p0}, Lcom/ds/daisi/mvp/presenters/AccountPresenter;-><init>(Lcom/ds/daisi/mvp/views/AccountView;)V

    iput-object v0, p0, Lcom/ds/daisi/fragment/RegisterOneFragment;->accountPresenter:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    return-void
.end method

.method private initEvent()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterOneFragment;->mTvLicense:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterOneFragment;->mBtnNextStep:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f10019c

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ds/daisi/fragment/RegisterOneFragment;->mEdUserAccount:Landroid/widget/EditText;

    const v0, 0x7f10019d

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ds/daisi/fragment/RegisterOneFragment;->mEdUserPassword:Landroid/widget/EditText;

    const v0, 0x7f10019e

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ds/daisi/fragment/RegisterOneFragment;->mBtnNextStep:Landroid/widget/Button;

    const v0, 0x7f10019f

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ds/daisi/fragment/RegisterOneFragment;->mTvLicense:Landroid/widget/TextView;

    .line 74
    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterOneFragment;->mTvLicense:Landroid/widget/TextView;

    const-string v0, "\u70b9\u51fb\u4e0b\u4e00\u6b65\uff0c\u540c\u65f6\u540c\u610f<font color= \'#3E81C7\'><b>\u300a\u670d\u52a1\u534f\u8bae\u300b</b></font>"

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static newInstance()Lcom/ds/daisi/fragment/RegisterOneFragment;
    .locals 1

    .line 62
    new-instance v0, Lcom/ds/daisi/fragment/RegisterOneFragment;

    invoke-direct {v0}, Lcom/ds/daisi/fragment/RegisterOneFragment;-><init>()V

    return-object v0
.end method

.method private replaceFragment(Lcom/ds/daisi/entity/AccountUser;)V
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 143
    invoke-static {p1}, Lcom/ds/daisi/fragment/RegisterTwoFragment;->newInstance(Lcom/ds/daisi/entity/AccountUser;)Lcom/ds/daisi/fragment/RegisterTwoFragment;

    move-result-object p1

    const v1, 0x7f1000bf

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 145
    const-class p1, Lcom/ds/daisi/fragment/RegisterOneFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 146
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public checkedAccountDuplicatedResult(Lcom/ds/daisi/entity/AccountResult;)V
    .locals 2

    .line 126
    invoke-super {p0, p1}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->checkedAccountDuplicatedResult(Lcom/ds/daisi/entity/AccountResult;)V

    .line 127
    iget-object v0, p1, Lcom/ds/daisi/entity/AccountResult;->Code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p1, Lcom/ds/daisi/entity/AccountResult;->Code:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object p1, p1, Lcom/ds/daisi/entity/AccountResult;->Msg:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterOneFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterOneFragment;->md5AfterPassword:Ljava/lang/String;

    iput-object v0, p1, Lcom/ds/daisi/entity/AccountUser;->password:Ljava/lang/String;

    .line 132
    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterOneFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/RegisterOneFragment;->replaceFragment(Lcom/ds/daisi/entity/AccountUser;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getFragmentLayoutId()I
    .locals 1

    const v0, 0x7f04006b

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 97
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/ds/daisi/activity/TermsOfServiceActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/ds/daisi/fragment/RegisterOneFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 100
    :pswitch_1
    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterOneFragment;->mEdUserAccount:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterOneFragment;->mEdUserPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_3

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x12

    if-gt v1, v3, :cond_3

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 104
    invoke-static {p1}, Lcom/ds/daisi/util/AppDeviceUtils;->isValidAccountOrPassword(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 108
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_2

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_2

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    invoke-static {v0}, Lcom/ds/daisi/util/AppDeviceUtils;->isValidAccountOrPassword(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u52a0\u5bc6\u524d\u7684\u5bc6\u7801\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v1, p0, Lcom/ds/daisi/fragment/RegisterOneFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    iput-object p1, v1, Lcom/ds/daisi/entity/AccountUser;->phone:Ljava/lang/String;

    .line 116
    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterOneFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    const-string v1, "7"

    iput-object v1, p1, Lcom/ds/daisi/entity/AccountUser;->type:Ljava/lang/String;

    .line 117
    invoke-static {v0}, Lcom/ds/daisi/util/MD5Util;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/fragment/RegisterOneFragment;->md5AfterPassword:Ljava/lang/String;

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6ce8\u518c\u754c\u9762\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterOneFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/AccountUser;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterOneFragment;->accountPresenter:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterOneFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->checkedAccountDuplicated(Lcom/ds/daisi/entity/AccountUser;Landroid/content/Context;)V

    goto :goto_2

    .line 111
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f090060

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    return-void

    .line 105
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f09005d

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    return-void

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f10019e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 151
    invoke-super {p0}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onPause()V

    .line 152
    const-class v0, Lcom/ds/daisi/fragment/RegisterOneFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 157
    invoke-super {p0}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onResume()V

    .line 158
    const-class v0, Lcom/ds/daisi/fragment/RegisterOneFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 54
    invoke-super {p0, p1, p2}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/RegisterOneFragment;->initView(Landroid/view/View;)V

    .line 56
    invoke-direct {p0}, Lcom/ds/daisi/fragment/RegisterOneFragment;->initData()V

    .line 57
    invoke-direct {p0}, Lcom/ds/daisi/fragment/RegisterOneFragment;->initEvent()V

    return-void
.end method
