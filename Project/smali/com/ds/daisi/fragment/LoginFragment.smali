.class public Lcom/ds/daisi/fragment/LoginFragment;
.super Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;
.source "LoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final LOGIN_BY_FLOAT:I = 0x2

.field public static final LOGIN_BY_MAIN:I = 0x4

.field public static final LOGIN_BY_PAY:I = 0x1

.field public static final LOGIN_BY_REGISTER:I = 0x3

.field public static final USER_NORMAL:Ljava/lang/String; = "1"

.field public static final USER_STUDIO:Ljava/lang/String; = "2"


# instance fields
.field private account:Ljava/lang/String;

.field private accountPresenter:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

.field private accountUser:Lcom/ds/daisi/entity/AccountUser;

.field private mBtnLogin:Landroid/widget/Button;

.field private mCbStudio:Landroid/widget/CheckBox;

.field private mEtUserAccount:Landroid/widget/EditText;

.field private mEtUserPassword:Landroid/widget/EditText;

.field private mImgClearEdit:Landroid/widget/ImageView;

.field private mSharePre:Landroid/content/SharedPreferences;

.field private mTvForgetPassword:Landroid/widget/TextView;

.field private typeLogin:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;-><init>()V

    return-void
.end method

.method private initData()V
    .locals 4

    .line 114
    new-instance v0, Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    invoke-direct {v0, p0}, Lcom/ds/daisi/mvp/presenters/AccountPresenter;-><init>(Lcom/ds/daisi/mvp/views/AccountView;)V

    iput-object v0, p0, Lcom/ds/daisi/fragment/LoginFragment;->accountPresenter:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    .line 115
    new-instance v0, Lcom/ds/daisi/entity/AccountUser;

    invoke-direct {v0}, Lcom/ds/daisi/entity/AccountUser;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/fragment/LoginFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    .line 116
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "user_message"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/fragment/LoginFragment;->mSharePre:Landroid/content/SharedPreferences;

    .line 117
    iget-object v0, p0, Lcom/ds/daisi/fragment/LoginFragment;->mSharePre:Landroid/content/SharedPreferences;

    const-string v1, "account"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/fragment/LoginFragment;->account:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/ds/daisi/fragment/LoginFragment;->mSharePre:Landroid/content/SharedPreferences;

    const-string v1, "is_studio"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/ds/daisi/fragment/LoginFragment;->mCbStudio:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/fragment/LoginFragment;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/ds/daisi/fragment/LoginFragment;->mEtUserAccount:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ds/daisi/fragment/LoginFragment;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/ds/daisi/fragment/LoginFragment;->account:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/ds/daisi/fragment/LoginFragment;->mEtUserAccount:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    :cond_1
    return-void
.end method

.method private initEvent()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/ds/daisi/fragment/LoginFragment;->mTvForgetPassword:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/ds/daisi/fragment/LoginFragment;->mBtnLogin:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/ds/daisi/fragment/LoginFragment;->mEtUserAccount:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/ds/daisi/fragment/LoginFragment;->mImgClearEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f100183

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/fragment/LoginFragment;->mTvForgetPassword:Landroid/widget/TextView;

    const v0, 0x7f100182

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ds/daisi/fragment/LoginFragment;->mBtnLogin:Landroid/widget/Button;

    const v0, 0x7f10017f

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ds/daisi/fragment/LoginFragment;->mEtUserAccount:Landroid/widget/EditText;

    const v0, 0x7f100179

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ds/daisi/fragment/LoginFragment;->mEtUserPassword:Landroid/widget/EditText;

    const v0, 0x7f100180

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ds/daisi/fragment/LoginFragment;->mImgClearEdit:Landroid/widget/ImageView;

    const v0, 0x7f100181

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/ds/daisi/fragment/LoginFragment;->mCbStudio:Landroid/widget/CheckBox;

    return-void
.end method

.method public static newInstance(I)Lcom/ds/daisi/fragment/LoginFragment;
    .locals 3

    .line 62
    new-instance v0, Lcom/ds/daisi/fragment/LoginFragment;

    invoke-direct {v0}, Lcom/ds/daisi/fragment/LoginFragment;-><init>()V

    .line 63
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 64
    const-class v2, Lcom/ds/daisi/fragment/LoginFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/ds/daisi/fragment/LoginFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getFragmentLayoutId()I
    .locals 1

    const v0, 0x7f040065

    return v0
.end method

.method public loginResult(Lcom/ds/daisi/entity/AccountResult;)V
    .locals 3

    .line 194
    invoke-super {p0, p1}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->loginResult(Lcom/ds/daisi/entity/AccountResult;)V

    .line 195
    iget-object v0, p1, Lcom/ds/daisi/entity/AccountResult;->Code:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object p1, p1, Lcom/ds/daisi/entity/AccountResult;->Msg:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ds/daisi/util/ToastUtils;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    iget-object p1, p0, Lcom/ds/daisi/fragment/LoginFragment;->mSharePre:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "account"

    .line 198
    iget-object v2, p0, Lcom/ds/daisi/fragment/LoginFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    iget-object v2, v2, Lcom/ds/daisi/entity/AccountUser;->phone:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "is_login"

    .line 199
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 200
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 201
    iget p1, p0, Lcom/ds/daisi/fragment/LoginFragment;->typeLogin:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 216
    :pswitch_0
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 213
    :pswitch_1
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 210
    :pswitch_2
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p1, Lcom/ds/daisi/entity/AccountResult;->Code:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object p1, p1, Lcom/ds/daisi/entity/AccountResult;->Msg:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ds/daisi/util/ToastUtils;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 141
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/ds/daisi/activity/FindPasswordActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/ds/daisi/fragment/LoginFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 144
    :pswitch_2
    iget-object p1, p0, Lcom/ds/daisi/fragment/LoginFragment;->mEtUserAccount:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 145
    iget-object v0, p0, Lcom/ds/daisi/fragment/LoginFragment;->mEtUserPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p1}, Lcom/ds/daisi/util/AppDeviceUtils;->isValidAccountOrPassword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x12

    if-le v2, v4, :cond_0

    goto/16 :goto_2

    .line 154
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/ds/daisi/util/AppDeviceUtils;->isValidAccountOrPassword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 155
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    goto :goto_1

    .line 160
    :cond_1
    iget-object v2, p0, Lcom/ds/daisi/fragment/LoginFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    iput-object p1, v2, Lcom/ds/daisi/entity/AccountUser;->phone:Ljava/lang/String;

    .line 161
    iget-object p1, p0, Lcom/ds/daisi/fragment/LoginFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-static {v0}, Lcom/ds/daisi/util/MD5Util;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ds/daisi/entity/AccountUser;->password:Ljava/lang/String;

    .line 162
    iget-object p1, p0, Lcom/ds/daisi/fragment/LoginFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ds/daisi/entity/AccountUser;->packagename:Ljava/lang/String;

    .line 163
    iget-object p1, p0, Lcom/ds/daisi/fragment/LoginFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    const-string v0, "0"

    iput-object v0, p1, Lcom/ds/daisi/entity/AccountUser;->type:Ljava/lang/String;

    .line 164
    iget-object p1, p0, Lcom/ds/daisi/fragment/LoginFragment;->mCbStudio:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 165
    iget-object p1, p0, Lcom/ds/daisi/fragment/LoginFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    const-string v0, "2"

    iput-object v0, p1, Lcom/ds/daisi/entity/AccountUser;->usertype:Ljava/lang/String;

    .line 166
    iget-object p1, p0, Lcom/ds/daisi/fragment/LoginFragment;->mSharePre:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "is_studio"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 168
    :cond_2
    iget-object p1, p0, Lcom/ds/daisi/fragment/LoginFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    const-string v0, "1"

    iput-object v0, p1, Lcom/ds/daisi/entity/AccountUser;->usertype:Ljava/lang/String;

    .line 170
    :goto_0
    iget-object p1, p0, Lcom/ds/daisi/fragment/LoginFragment;->accountPresenter:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/fragment/LoginFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-virtual {p1, v0, v1}, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->login(Landroid/content/Context;Lcom/ds/daisi/entity/AccountUser;)V

    goto :goto_3

    .line 157
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f090060

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    return-void

    .line 150
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f09005d

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    return-void

    .line 180
    :pswitch_3
    iget-object p1, p0, Lcom/ds/daisi/fragment/LoginFragment;->mEtUserAccount:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 181
    iget-object p1, p0, Lcom/ds/daisi/fragment/LoginFragment;->mEtUserAccount:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 182
    iget-object p1, p0, Lcom/ds/daisi/fragment/LoginFragment;->mEtUserAccount:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object p1, p0, Lcom/ds/daisi/fragment/LoginFragment;->mEtUserAccount:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 184
    iget-object p1, p0, Lcom/ds/daisi/fragment/LoginFragment;->mEtUserAccount:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 174
    :pswitch_4
    iget-object p1, p0, Lcom/ds/daisi/fragment/LoginFragment;->mEtUserAccount:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 175
    iget-object p1, p0, Lcom/ds/daisi/fragment/LoginFragment;->mEtUserAccount:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 176
    iget-object p1, p0, Lcom/ds/daisi/fragment/LoginFragment;->mEtUserAccount:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object p1, p0, Lcom/ds/daisi/fragment/LoginFragment;->mEtUserAccount:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x7f10017f
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 71
    invoke-super {p0, p1}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/LoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/LoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Lcom/ds/daisi/fragment/LoginFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ds/daisi/fragment/LoginFragment;->typeLogin:I

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ds/daisi/fragment/LoginFragment;->typeLogin:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 91
    invoke-super {p0}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onPause()V

    .line 92
    const-class v0, Lcom/ds/daisi/fragment/LoginFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 80
    invoke-super {p0}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onResume()V

    .line 81
    const-class v0, Lcom/ds/daisi/fragment/LoginFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/ds/daisi/fragment/LoginFragment;->mSharePre:Landroid/content/SharedPreferences;

    const-string v1, "account"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/fragment/LoginFragment;->account:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/ds/daisi/fragment/LoginFragment;->mEtUserAccount:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/ds/daisi/fragment/LoginFragment;->mEtUserAccount:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ds/daisi/fragment/LoginFragment;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/fragment/LoginFragment;->mEtUserAccount:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 97
    invoke-super {p0, p1, p2}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/LoginFragment;->initView(Landroid/view/View;)V

    .line 99
    invoke-direct {p0}, Lcom/ds/daisi/fragment/LoginFragment;->initData()V

    .line 100
    invoke-direct {p0}, Lcom/ds/daisi/fragment/LoginFragment;->initEvent()V

    return-void
.end method
