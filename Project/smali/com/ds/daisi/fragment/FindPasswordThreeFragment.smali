.class public Lcom/ds/daisi/fragment/FindPasswordThreeFragment;
.super Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;
.source "FindPasswordThreeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAccountPresenter:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

.field private mAccountUser:Lcom/ds/daisi/entity/AccountUser;

.field private mBtnComplete:Landroid/widget/Button;

.field private mEditPassword:Landroid/widget/EditText;

.field private mSharePre:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;-><init>()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3

    .line 65
    new-instance v0, Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    invoke-direct {v0, p0}, Lcom/ds/daisi/mvp/presenters/AccountPresenter;-><init>(Lcom/ds/daisi/mvp/views/AccountView;)V

    iput-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->mAccountPresenter:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    .line 66
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "user_message"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->mSharePre:Landroid/content/SharedPreferences;

    const v0, 0x7f100179

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->mEditPassword:Landroid/widget/EditText;

    const v0, 0x7f10017a

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->mBtnComplete:Landroid/widget/Button;

    .line 69
    iget-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->mBtnComplete:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance(Lcom/ds/daisi/entity/AccountUser;)Lcom/ds/daisi/fragment/FindPasswordThreeFragment;
    .locals 3

    .line 42
    new-instance v0, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;

    invoke-direct {v0}, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;-><init>()V

    .line 43
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 44
    const-class v2, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    invoke-virtual {v0, v1}, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public alterAndFindPasswordResult(Lcom/ds/daisi/entity/AccountResult;)V
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u627e\u56de\u5bc6\u7801\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ds/daisi/entity/AccountResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   ==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->mAccountUser:Lcom/ds/daisi/entity/AccountUser;

    iget-object v1, v1, Lcom/ds/daisi/entity/AccountUser;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    iget-object p1, p1, Lcom/ds/daisi/entity/AccountResult;->Code:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->mSharePre:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "account"

    iget-object v1, p0, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->mAccountUser:Lcom/ds/daisi/entity/AccountUser;

    iget-object v1, v1, Lcom/ds/daisi/entity/AccountUser;->phone:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0900b9

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastShort(Landroid/content/Context;I)V

    .line 103
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0900b8

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastShort(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public getFragmentLayoutId()I
    .locals 1

    const v0, 0x7f040062

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f10017a

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->mEditPassword:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 77
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

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12

    if-le v0, v1, :cond_1

    goto :goto_1

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->mAccountUser:Lcom/ds/daisi/entity/AccountUser;

    const-string v1, "2"

    iput-object v1, v0, Lcom/ds/daisi/entity/AccountUser;->type:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->mAccountUser:Lcom/ds/daisi/entity/AccountUser;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ds/daisi/entity/AccountUser;->bindphone:Ljava/lang/String;

    .line 86
    invoke-static {p1}, Lcom/ds/daisi/util/MD5Util;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    iget-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->mAccountUser:Lcom/ds/daisi/entity/AccountUser;

    iput-object p1, v0, Lcom/ds/daisi/entity/AccountUser;->password:Ljava/lang/String;

    .line 88
    iget-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->mAccountUser:Lcom/ds/daisi/entity/AccountUser;

    const-string v0, "2"

    iput-object v0, p1, Lcom/ds/daisi/entity/AccountUser;->codetype:Ljava/lang/String;

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u627e\u56de\u5bc6\u7801:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->mAccountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/AccountUser;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->mAccountPresenter:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->mAccountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-virtual {p1, v0, v1}, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->findPassword(Landroid/content/Context;Lcom/ds/daisi/entity/AccountUser;)V

    :goto_0
    return-void

    .line 80
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f090060

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ds/daisi/entity/AccountUser;

    iput-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->mAccountUser:Lcom/ds/daisi/entity/AccountUser;

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u627e\u56de\u5bc6\u7801\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->mAccountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/AccountUser;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 118
    invoke-super {p0}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onPause()V

    .line 119
    const-class v0, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 112
    invoke-super {p0}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onResume()V

    .line 113
    const-class v0, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p2}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->initView(Landroid/view/View;)V

    return-void
.end method
