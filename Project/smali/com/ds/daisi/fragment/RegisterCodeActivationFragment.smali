.class public Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;
.super Lcom/ds/daisi/fragment/BaseFragement;
.source "RegisterCodeActivationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ds/daisi/mvp/views/BindRegCodeView;
.implements Lcom/ds/daisi/mvp/views/QueryRegCodeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$MyHandler;
    }
.end annotation


# static fields
.field public static final ACTIVATION_REGISTRATION_CODE:I = 0x111

.field public static final REQUEST_CODE:I = 0x3eb

.field private static final TAG:Ljava/lang/String; = "RegisterCodeActivationFragment"


# instance fields
.field private isPreventRepeatedClick:Z

.field private mBindRegisterCodePresenter:Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;

.field private mEdRegisterCodeInput:Landroid/widget/EditText;

.field private mHandler:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$MyHandler;

.field private mLLRegCodeBuy:Landroid/widget/LinearLayout;

.field private mLineDay:Landroid/view/View;

.field private mLineMonth:Landroid/view/View;

.field private mLineWeek:Landroid/view/View;

.field private mQueryRegCodeInfoPresenter:Lcom/ds/daisi/mvp/presenters/news/QueryRegCodeInfoPresenter;

.field private mTvDay:Landroid/widget/TextView;

.field private mTvMonth:Landroid/widget/TextView;

.field private mTvPermanentCard:Landroid/widget/TextView;

.field private mTvTipsNoRegCode:Landroid/widget/TextView;

.field private mTvWeek:Landroid/widget/TextView;

.field private oldRegCode:Ljava/lang/String;

.field private regCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/ds/daisi/fragment/BaseFragement;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->isPreventRepeatedClick:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->hasPreferredApplication(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$202(Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->isPreventRepeatedClick:Z

    return p1
.end method

.method static synthetic access$300(Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->regCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;)Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$MyHandler;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mHandler:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$MyHandler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->bindRegCodeToApp(I)V

    return-void
.end method

.method private bindRegCodeToApp(I)V
    .locals 4

    .line 257
    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mBindRegisterCodePresenter:Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;

    invoke-direct {v0, p0}, Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;-><init>(Lcom/ds/daisi/mvp/views/BindRegCodeView;)V

    iput-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mBindRegisterCodePresenter:Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mBindRegisterCodePresenter:Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;

    iget-object v1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->regCode:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->oldRegCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;->bindRegCode(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method private hasPreferredApplication(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .line 357
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v0, 0x10000

    .line 358
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    const-string p2, "android"

    .line 359
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private initAfterView()V
    .locals 9

    .line 117
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    iget-object v0, v0, Lcom/ds/daisi/entity/ParamsWrap;->mBuyRegCodeConfigInfos:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    iget-object v0, v0, Lcom/ds/daisi/entity/ParamsWrap;->mBuyRegCodeConfigInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x4

    .line 118
    new-array v0, v0, [Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mTvDay:Landroid/widget/TextView;

    aput-object v2, v0, v1

    iget-object v2, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mTvWeek:Landroid/widget/TextView;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mTvMonth:Landroid/widget/TextView;

    const/4 v4, 0x2

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mTvPermanentCard:Landroid/widget/TextView;

    const/4 v5, 0x3

    aput-object v2, v0, v5

    .line 119
    new-array v2, v5, [Landroid/view/View;

    iget-object v5, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mLineDay:Landroid/view/View;

    aput-object v5, v2, v1

    iget-object v5, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mLineWeek:Landroid/view/View;

    aput-object v5, v2, v3

    iget-object v5, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mLineMonth:Landroid/view/View;

    aput-object v5, v2, v4

    .line 120
    iget-object v4, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mLLRegCodeBuy:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    iget-object v4, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mTvTipsNoRegCode:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v4, 0x0

    .line 122
    :goto_0
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v5

    iget-object v5, v5, Lcom/ds/daisi/entity/ParamsWrap;->mBuyRegCodeConfigInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 123
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v5

    iget-object v5, v5, Lcom/ds/daisi/entity/ParamsWrap;->mBuyRegCodeConfigInfos:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cyjh/share/bean/response/BuyRegCodeConfigInfo;

    .line 124
    aget-object v6, v0, v4

    .line 125
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v7, v5, Lcom/cyjh/share/bean/response/BuyRegCodeConfigInfo;->ButtonName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    array-length v7, v2

    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v8

    iget-object v8, v8, Lcom/ds/daisi/entity/ParamsWrap;->mBuyRegCodeConfigInfos:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    if-ge v7, v8, :cond_0

    .line 128
    aget-object v7, v2, v4

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    :cond_0
    new-instance v7, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$1;

    invoke-direct {v7, p0, v5}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$1;-><init>(Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;Lcom/cyjh/share/bean/response/BuyRegCodeConfigInfo;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mTvTipsNoRegCode:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    :cond_2
    new-instance v0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$MyHandler;-><init>(Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$1;)V

    iput-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mHandler:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$MyHandler;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f1000e6

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mEdRegisterCodeInput:Landroid/widget/EditText;

    const v0, 0x7f10018f

    .line 157
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mTvTipsNoRegCode:Landroid/widget/TextView;

    const v0, 0x7f100190

    .line 158
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mLLRegCodeBuy:Landroid/widget/LinearLayout;

    const v0, 0x7f100191

    .line 159
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mTvDay:Landroid/widget/TextView;

    const v0, 0x7f100193

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mTvWeek:Landroid/widget/TextView;

    const v0, 0x7f100195

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mTvMonth:Landroid/widget/TextView;

    const v0, 0x7f100192

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mLineDay:Landroid/view/View;

    const v0, 0x7f100194

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mLineWeek:Landroid/view/View;

    const v0, 0x7f100196

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mLineMonth:Landroid/view/View;

    const v0, 0x7f100197

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mTvPermanentCard:Landroid/widget/TextView;

    const v0, 0x7f10018d

    .line 166
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 167
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->oldRegCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mEdRegisterCodeInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->oldRegCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f10018e

    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;
    .locals 3

    .line 98
    new-instance v0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;

    invoke-direct {v0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;-><init>()V

    .line 99
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 100
    const-class v2, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, v1}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private queryRegCodeInfo()V
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mQueryRegCodeInfoPresenter:Lcom/ds/daisi/mvp/presenters/news/QueryRegCodeInfoPresenter;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lcom/ds/daisi/mvp/presenters/news/QueryRegCodeInfoPresenter;

    invoke-direct {v0, p0}, Lcom/ds/daisi/mvp/presenters/news/QueryRegCodeInfoPresenter;-><init>(Lcom/ds/daisi/mvp/views/QueryRegCodeView;)V

    iput-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mQueryRegCodeInfoPresenter:Lcom/ds/daisi/mvp/presenters/news/QueryRegCodeInfoPresenter;

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mQueryRegCodeInfoPresenter:Lcom/ds/daisi/mvp/presenters/news/QueryRegCodeInfoPresenter;

    iget-object v1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->regCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->oldRegCode:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ds/daisi/mvp/presenters/news/QueryRegCodeInfoPresenter;->queryRegCodeInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getFragmentLayoutId()I
    .locals 1

    const v0, 0x7f040069

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 176
    invoke-super {p0, p1}, Lcom/ds/daisi/fragment/BaseFragement;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 438
    invoke-super {p0, p1, p2, p3}, Lcom/ds/daisi/fragment/BaseFragement;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "SWEEP_RESULT_BACK"

    .line 440
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->regCode:Ljava/lang/String;

    .line 441
    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->regCode:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 442
    invoke-direct {p0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->queryRegCodeInfo()V

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f090144

    invoke-virtual {p0, p2}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBindFailure(Lcom/cyjh/share/bean/response/BaseResponseInfo;)V
    .locals 3

    .line 323
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/ds/daisi/AppContext;->ExpireTime:J

    .line 324
    iget v0, p1, Lcom/cyjh/share/bean/response/BaseResponseInfo;->Code:I

    const/4 v1, 0x0

    const/16 v2, 0x44c

    if-eq v2, v0, :cond_1

    const/16 v2, 0x4b0

    if-eq v2, v0, :cond_1

    const/16 v2, 0x4b1

    if-eq v2, v0, :cond_1

    const/16 v2, 0x4b2

    if-eq v2, v0, :cond_1

    const/16 v2, 0x514

    if-ne v2, v0, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object p1, p1, Lcom/cyjh/share/bean/response/BaseResponseInfo;->Message:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/cyjh/share/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 331
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/ds/daisi/dialog/TipsDialog;->sIsShow:Z

    if-nez v0, :cond_2

    .line 332
    new-instance v0, Lcom/ds/daisi/dialog/TipsDialog;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p1, p1, Lcom/cyjh/share/bean/response/BaseResponseInfo;->Message:Ljava/lang/String;

    invoke-direct {v0, v2, v1, p1}, Lcom/ds/daisi/dialog/TipsDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 333
    new-instance p1, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$4;

    invoke-direct {p1, p0, v0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$4;-><init>(Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;Lcom/ds/daisi/dialog/TipsDialog;)V

    invoke-virtual {v0, p1}, Lcom/ds/daisi/dialog/TipsDialog;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    invoke-virtual {v0}, Lcom/ds/daisi/dialog/TipsDialog;->show()V

    goto :goto_1

    .line 341
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/ds/daisi/entity/MsgItem$UpdateMessageToDialog;

    iget-object p1, p1, Lcom/cyjh/share/bean/response/BaseResponseInfo;->Message:Ljava/lang/String;

    invoke-direct {v2, p1}, Lcom/ds/daisi/entity/MsgItem$UpdateMessageToDialog;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 346
    :goto_1
    iput-boolean v1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->isPreventRepeatedClick:Z

    return-void
.end method

.method public onBindSuc(Lcom/ds/daisi/entity/BindRegCodeResponse;)V
    .locals 8

    .line 279
    iget v0, p1, Lcom/ds/daisi/entity/BindRegCodeResponse;->Code:I

    const/16 v1, 0xc8

    if-ne v1, v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mEdRegisterCodeInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->regCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "zzz"

    const-string v1, "RegisterCodeActivationFragment:onBindSuccg\u6210\u529f"

    .line 281
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object p1, p1, Lcom/ds/daisi/entity/BindRegCodeResponse;->Data:Lcom/ds/daisi/entity/BindRegCodeResponse$RegCodeTimeInfo;

    .line 283
    iget-wide v0, p1, Lcom/ds/daisi/entity/BindRegCodeResponse$RegCodeTimeInfo;->ExpireTime:J

    .line 284
    iget-wide v2, p1, Lcom/ds/daisi/entity/BindRegCodeResponse$RegCodeTimeInfo;->ServerTimestamp:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x3c

    .line 285
    div-long/2addr v4, v6

    .line 286
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    iput-wide v0, p1, Lcom/ds/daisi/AppContext;->ExpireTime:J

    .line 287
    sget-object p1, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onBindSuc --> expireTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",serverTimestamp="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",dueTime="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cyjh/share/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxyFactory;->getNormalThreadPool()Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;

    move-result-object p1

    new-instance v0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$3;

    invoke-direct {v0, p0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$3;-><init>(Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;)V

    invoke-virtual {p1, v0}, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->executeRunnable(Ljava/lang/Runnable;)V

    .line 302
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->regCode:Ljava/lang/String;

    iput-object v0, p1, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    .line 304
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    iget-object p1, p1, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    iput-object p1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->oldRegCode:Ljava/lang/String;

    .line 305
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/ds/daisi/entity/MsgItem$BindRegCodeBus;

    invoke-direct {v0, v4, v5}, Lcom/ds/daisi/entity/MsgItem$BindRegCodeBus;-><init>(J)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 307
    :cond_0
    new-instance v0, Lcom/cyjh/share/bean/response/BaseResponseInfo;

    iget v1, p1, Lcom/ds/daisi/entity/BindRegCodeResponse;->Code:I

    iget-object v2, p1, Lcom/ds/daisi/entity/BindRegCodeResponse;->Message:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/cyjh/share/bean/response/BaseResponseInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->onBindFailure(Lcom/cyjh/share/bean/response/BaseResponseInfo;)V

    .line 309
    iget p1, p1, Lcom/ds/daisi/entity/BindRegCodeResponse;->Code:I

    const/16 v0, 0x579

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->regCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->oldRegCode:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "zzz"

    const-string v0, "RegisterCodeActivationFragment:onBindSuc\u6ce8\u518c\u7801\u8fc7\u671f\uff0c\u6e05\u7a7a\u6ce8\u518c\u7801"

    .line 310
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    const-string v0, ""

    iput-object v0, p1, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    .line 313
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/cyjh/mq/sdk/MqRunner;->setRegCode(Ljava/lang/String;)V

    .line 314
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "regCodeStatus"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-static {}, Lcom/cyjh/share/config/MyConfig;->getAppid()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    .line 314
    invoke-static {p1, v0}, Lcom/cyjh/share/util/AppUtils;->deleteFileContent(Ljava/lang/String;Landroid/content/Context;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 318
    iput-boolean p1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->isPreventRepeatedClick:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 219
    :pswitch_0
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/ds/daisi/util/IntentUtils;->toSweepCodeActivity(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x3eb

    invoke-virtual {p0, p1, v0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 195
    :pswitch_1
    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mEdRegisterCodeInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->regCode:Ljava/lang/String;

    .line 196
    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->regCode:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0900d5

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    return-void

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/ds/daisi/util/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 201
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    const v1, 0x7f0900f1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 204
    :cond_1
    iget-boolean p1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->isPreventRepeatedClick:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 207
    iput-boolean p1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->isPreventRepeatedClick:Z

    .line 209
    invoke-direct {p0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->queryRegCodeInfo()V

    .line 210
    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mHandler:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$MyHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 211
    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mHandler:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$MyHandler;

    new-instance v0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$2;

    invoke-direct {v0, p0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$2;-><init>(Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f10018d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .line 265
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onDestroy()V

    .line 266
    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mBindRegisterCodePresenter:Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mBindRegisterCodePresenter:Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;

    invoke-virtual {v0}, Lcom/ds/daisi/mvp/presenters/news/BindRegisterCodePresenter;->onCancel()V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mQueryRegCodeInfoPresenter:Lcom/ds/daisi/mvp/presenters/news/QueryRegCodeInfoPresenter;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mQueryRegCodeInfoPresenter:Lcom/ds/daisi/mvp/presenters/news/QueryRegCodeInfoPresenter;

    invoke-virtual {v0}, Lcom/ds/daisi/mvp/presenters/news/QueryRegCodeInfoPresenter;->onCancel()V

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mHandler:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$MyHandler;

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mHandler:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 181
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onPause()V

    .line 182
    const-class v0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onQueryFailure(Ljava/lang/String;)V
    .locals 1

    .line 409
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onQuerySuc(Lcom/ds/daisi/entity/RegCodeInfoResponse;)V
    .locals 4

    .line 366
    iget v0, p1, Lcom/ds/daisi/entity/RegCodeInfoResponse;->Code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 368
    iget-object p1, p1, Lcom/ds/daisi/entity/RegCodeInfoResponse;->Data:Lcom/ds/daisi/entity/QueryRegCodeInfo;

    .line 369
    iget p1, p1, Lcom/ds/daisi/entity/QueryRegCodeInfo;->IsSuperposeConfirm:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 371
    invoke-static {}, Lcom/ds/daisi/manager/DialogManager;->getInstance()Lcom/ds/daisi/manager/DialogManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f040055

    const v3, 0x7f0b0131

    invoke-virtual {p1, v0, v2, v3}, Lcom/ds/daisi/manager/DialogManager;->showMessageDialog(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move-result-object p1

    .line 374
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 375
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const v0, 0x7f100133

    .line 376
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f100134

    .line 377
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 378
    new-instance v2, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$5;-><init>(Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    new-instance v0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$6;

    invoke-direct {v0, p0, p1}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$6;-><init>(Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 396
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->mHandler:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$MyHandler;

    const/16 v0, 0x111

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 399
    :cond_1
    iget-object v0, p1, Lcom/ds/daisi/entity/RegCodeInfoResponse;->Message:Ljava/lang/String;

    .line 400
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 401
    iget p1, p1, Lcom/ds/daisi/entity/RegCodeInfoResponse;->Code:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 403
    :cond_2
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 187
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onResume()V

    .line 188
    const-class v0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 108
    invoke-super {p0, p1, p2}, Lcom/ds/daisi/fragment/BaseFragement;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-class v0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->oldRegCode:Ljava/lang/String;

    .line 112
    :cond_0
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->initView(Landroid/view/View;)V

    .line 113
    invoke-direct {p0}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->initAfterView()V

    return-void
.end method
