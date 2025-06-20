.class public Lcom/ds/daisi/fragment/FindPasswordTwoFragment;
.super Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;
.source "FindPasswordTwoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/fragment/FindPasswordTwoFragment$SubmitTimeCounter;
    }
.end annotation


# static fields
.field private static final AREA_CODE_PHONE:Ljava/lang/String; = "+86"

.field private static final INTERVAL_TIME:I = 0x3e8

.field private static final STAR_STAR:Ljava/lang/String; = "****"

.field private static final TOTAL_TIME:I = 0xea60


# instance fields
.field private accountPresenter:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

.field private accountResult:Lcom/ds/daisi/entity/AccountResult;

.field private accountUser:Lcom/ds/daisi/entity/AccountUser;

.field private bindPhone:Ljava/lang/String;

.field private isClickerVerifyCode:Z

.field private mBtnNextStep:Landroid/widget/Button;

.field private mBtnSendCode:Landroid/widget/Button;

.field private mEtVerityCode:Landroid/widget/EditText;

.field private mTvGetPhone:Landroid/widget/TextView;

.field private submitTimeCounter:Lcom/ds/daisi/fragment/FindPasswordTwoFragment$SubmitTimeCounter;

.field private userAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->isClickerVerifyCode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/fragment/FindPasswordTwoFragment;)Landroid/widget/Button;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->mBtnSendCode:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ds/daisi/fragment/FindPasswordTwoFragment;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->isClickerVerifyCode:Z

    return p1
.end method

.method private initData()V
    .locals 7

    .line 95
    new-instance v0, Lcom/ds/daisi/entity/AccountUser;

    invoke-direct {v0}, Lcom/ds/daisi/entity/AccountUser;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    .line 96
    new-instance v0, Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    invoke-direct {v0, p0}, Lcom/ds/daisi/mvp/presenters/AccountPresenter;-><init>(Lcom/ds/daisi/mvp/views/AccountView;)V

    iput-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->accountPresenter:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    .line 97
    new-instance v0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment$SubmitTimeCounter;

    const-wide/32 v3, 0xea60

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment$SubmitTimeCounter;-><init>(Lcom/ds/daisi/fragment/FindPasswordTwoFragment;JJ)V

    iput-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->submitTimeCounter:Lcom/ds/daisi/fragment/FindPasswordTwoFragment$SubmitTimeCounter;

    return-void
.end method

.method private initEvent()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->mBtnSendCode:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->mBtnNextStep:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f10017e

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->mBtnNextStep:Landroid/widget/Button;

    const v0, 0x7f10017d

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->mBtnSendCode:Landroid/widget/Button;

    const v0, 0x7f100178

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->mTvGetPhone:Landroid/widget/TextView;

    const v0, 0x7f10017c

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->mEtVerityCode:Landroid/widget/EditText;

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->bindPhone:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "****"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->bindPhone:Ljava/lang/String;

    const/4 v2, 0x7

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e26\u661f\u53f7\u7684\u624b\u673a\u53f7\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 90
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const v1, 0x7f0901b3

    invoke-virtual {p0, v1, v0}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->mTvGetPhone:Landroid/widget/TextView;

    const-string v2, "+86"

    invoke-virtual {p0, v0, v2, p1}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->getTextPartColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ds/daisi/fragment/FindPasswordTwoFragment;
    .locals 3

    .line 58
    new-instance v0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;

    invoke-direct {v0}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;-><init>()V

    .line 59
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 60
    const-class v2, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-class p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v1}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private replaceFragment(Lcom/ds/daisi/entity/AccountUser;)V
    .locals 2

    .line 203
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 205
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 206
    invoke-static {p1}, Lcom/ds/daisi/fragment/FindPasswordThreeFragment;->newInstance(Lcom/ds/daisi/entity/AccountUser;)Lcom/ds/daisi/fragment/FindPasswordThreeFragment;

    move-result-object p1

    const v1, 0x7f1000af

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 208
    const-class p1, Lcom/ds/daisi/fragment/RegisterOneFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 209
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public codesResult(Lcom/ds/daisi/entity/AccountResult;)V
    .locals 2

    .line 174
    iget-object v0, p1, Lcom/ds/daisi/entity/AccountResult;->Code:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iput-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->accountResult:Lcom/ds/daisi/entity/AccountResult;

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0900c5

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public getFragmentLayoutId()I
    .locals 1

    const v0, 0x7f040063

    return v0
.end method

.method public getTextPartColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 4

    .line 158
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 159
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v0

    .line 160
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 161
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v3, "#3F7FC6"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x22

    invoke-virtual {v1, v2, v0, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 162
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object v1

    .line 165
    :cond_0
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 166
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    .line 167
    new-instance p3, Landroid/text/style/ForegroundColorSpan;

    const-string v0, "#3F7FC6"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, p3, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 120
    :pswitch_0
    iget-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->mEtVerityCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f090100

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    return-void

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->accountResult:Lcom/ds/daisi/entity/AccountResult;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->accountResult:Lcom/ds/daisi/entity/AccountResult;

    iget-object v1, v1, Lcom/ds/daisi/entity/AccountResult;->VerificationCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 126
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    .line 128
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5f53\u524d\u65f6\u95f4\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 132
    :try_start_0
    iget-object v8, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->accountResult:Lcom/ds/daisi/entity/AccountResult;

    iget-object v8, v8, Lcom/ds/daisi/entity/AccountResult;->ExpireDate:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    div-long v6, v8, v6
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v6

    goto :goto_0

    :catch_0
    move-exception v1

    .line 134
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->accountResult:Lcom/ds/daisi/entity/AccountResult;

    iget-object v1, v1, Lcom/ds/daisi/entity/AccountResult;->VerificationCode:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accounter:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-virtual {v1}, Lcom/ds/daisi/entity/AccountUser;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->submitTimeCounter:Lcom/ds/daisi/fragment/FindPasswordTwoFragment$SubmitTimeCounter;

    invoke-virtual {p1}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment$SubmitTimeCounter;->cancel()V

    .line 140
    iget-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->mBtnSendCode:Landroid/widget/Button;

    const v0, 0x7f090162

    invoke-virtual {p0, v0}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->mBtnSendCode:Landroid/widget/Button;

    const v0, 0x7f020057

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 142
    iget-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->replaceFragment(Lcom/ds/daisi/entity/AccountUser;)V

    goto :goto_1

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f090131

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    goto :goto_1

    .line 147
    :cond_2
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0900a6

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    goto :goto_1

    .line 150
    :cond_3
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f09007b

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    return-void

    .line 109
    :pswitch_1
    iget-boolean p1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->isClickerVerifyCode:Z

    if-nez p1, :cond_4

    .line 110
    iget-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    iget-object v1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->userAccount:Ljava/lang/String;

    iput-object v1, p1, Lcom/ds/daisi/entity/AccountUser;->phone:Ljava/lang/String;

    .line 111
    iget-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    iget-object v1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->bindPhone:Ljava/lang/String;

    iput-object v1, p1, Lcom/ds/daisi/entity/AccountUser;->bindphone:Ljava/lang/String;

    .line 112
    iget-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    const-string v1, "6"

    iput-object v1, p1, Lcom/ds/daisi/entity/AccountUser;->type:Ljava/lang/String;

    const/4 p1, 0x1

    .line 113
    iput-boolean p1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->isClickerVerifyCode:Z

    .line 114
    iget-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->submitTimeCounter:Lcom/ds/daisi/fragment/FindPasswordTwoFragment$SubmitTimeCounter;

    invoke-virtual {p1}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment$SubmitTimeCounter;->start()Lcom/ds/daisi/timer/CountTimer;

    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accounter:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-virtual {v1}, Lcom/ds/daisi/entity/AccountUser;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->accountPresenter:Lcom/ds/daisi/mvp/presenters/AccountPresenter;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->accountUser:Lcom/ds/daisi/entity/AccountUser;

    invoke-virtual {p1, v0, v1}, Lcom/ds/daisi/mvp/presenters/AccountPresenter;->phoneCodes(Landroid/content/Context;Lcom/ds/daisi/entity/AccountUser;)V

    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7f10017d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 68
    invoke-super {p0, p1}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->bindPhone:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->userAccount:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->submitTimeCounter:Lcom/ds/daisi/fragment/FindPasswordTwoFragment$SubmitTimeCounter;

    invoke-virtual {v0}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment$SubmitTimeCounter;->cancel()V

    .line 184
    invoke-super {p0}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 195
    invoke-super {p0}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onPause()V

    .line 196
    const-class v0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 189
    invoke-super {p0}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onResume()V

    .line 190
    const-class v0, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2}, Lcom/ds/daisi/mvp/viewimpls/AccountViewImpl;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->initView(Landroid/view/View;)V

    .line 79
    invoke-direct {p0}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->initData()V

    .line 80
    invoke-direct {p0}, Lcom/ds/daisi/fragment/FindPasswordTwoFragment;->initEvent()V

    return-void
.end method
