.class public Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;
.super Lcom/ds/daisi/fragment/BaseFragement;
.source "UnBindRegisterCodeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ds/daisi/mvp/views/UnBindRegCodeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment$MyHandler;
    }
.end annotation


# static fields
.field public static final REQUEST_CODE:I = 0x3ea

.field private static final STR_LENGTH_SUFFIX:I = 0x2


# instance fields
.field private bindRegCode:Ljava/lang/String;

.field private isPreventRepeatedClick:Z

.field private mBtnUnbindByButton:Landroid/widget/Button;

.field private mBtnUnbindBySweep:Landroid/widget/Button;

.field private mEdRegisterCodeInput:Landroid/widget/EditText;

.field private mHandler:Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment$MyHandler;

.field private mTvBuckleTime:Landroid/widget/TextView;

.field private mUnbindRegisterCodePresenter:Lcom/ds/daisi/mvp/presenters/news/UnbindRegisterCodePresenter;

.field private unbindRegCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/ds/daisi/fragment/BaseFragement;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->isPreventRepeatedClick:Z

    return-void
.end method

.method static synthetic access$102(Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->isPreventRepeatedClick:Z

    return p1
.end method

.method private initAfterView()V
    .locals 5

    .line 92
    iget-object v0, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->bindRegCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->mEdRegisterCodeInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->bindRegCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    iget v0, v0, Lcom/ds/daisi/entity/ParamsWrap;->unbindDeductHours:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0901a9

    .line 96
    invoke-virtual {p0, v1}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 97
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 99
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const-string v4, "#FF4948"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    const/16 v4, 0x11

    .line 99
    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 101
    iget-object v0, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->mTvBuckleTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->mBtnUnbindByButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->mBtnUnbindBySweep:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f1000e6

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->mEdRegisterCodeInput:Landroid/widget/EditText;

    const v0, 0x7f10019a

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->mTvBuckleTime:Landroid/widget/TextView;

    const v0, 0x7f100198

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->mBtnUnbindByButton:Landroid/widget/Button;

    const v0, 0x7f100199

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->mBtnUnbindBySweep:Landroid/widget/Button;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;
    .locals 3

    .line 73
    new-instance v0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;

    invoke-direct {v0}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;-><init>()V

    .line 74
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 75
    const-class v2, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, v1}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private unbindCodeRequest()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->mUnbindRegisterCodePresenter:Lcom/ds/daisi/mvp/presenters/news/UnbindRegisterCodePresenter;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/ds/daisi/mvp/presenters/news/UnbindRegisterCodePresenter;

    invoke-direct {v0, p0}, Lcom/ds/daisi/mvp/presenters/news/UnbindRegisterCodePresenter;-><init>(Lcom/ds/daisi/mvp/views/UnBindRegCodeView;)V

    iput-object v0, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->mUnbindRegisterCodePresenter:Lcom/ds/daisi/mvp/presenters/news/UnbindRegisterCodePresenter;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->mUnbindRegisterCodePresenter:Lcom/ds/daisi/mvp/presenters/news/UnbindRegisterCodePresenter;

    iget-object v1, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->unbindRegCode:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ds/daisi/mvp/presenters/news/UnbindRegisterCodePresenter;->unbindRegCode(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getFragmentLayoutId()I
    .locals 1

    const v0, 0x7f04006a

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Lcom/ds/daisi/fragment/BaseFragement;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 189
    invoke-super {p0, p1, p2, p3}, Lcom/ds/daisi/fragment/BaseFragement;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "SWEEP_RESULT_BACK"

    .line 191
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->unbindRegCode:Ljava/lang/String;

    .line 192
    invoke-direct {p0}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->unbindCodeRequest()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 161
    :pswitch_0
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/ds/daisi/util/IntentUtils;->toSweepCodeActivity(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-virtual {p0, p1, v0}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v0, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->mEdRegisterCodeInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->unbindRegCode:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->unbindRegCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0900d5

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    return-void

    .line 139
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ds/daisi/util/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 140
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ds/daisi/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 143
    :cond_1
    iget-boolean p1, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->isPreventRepeatedClick:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 146
    iput-boolean p1, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->isPreventRepeatedClick:Z

    .line 147
    invoke-direct {p0}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->unbindCodeRequest()V

    .line 149
    iget-object p1, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->mHandler:Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment$MyHandler;

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 150
    new-instance p1, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment$MyHandler;

    invoke-direct {p1, v0}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment$MyHandler;-><init>(Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment$1;)V

    iput-object p1, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->mHandler:Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment$MyHandler;

    .line 152
    :cond_3
    iget-object p1, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->mHandler:Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment$MyHandler;

    invoke-virtual {p1, v0}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 153
    iget-object p1, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->mHandler:Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment$MyHandler;

    new-instance v0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment$1;

    invoke-direct {v0, p0}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment$1;-><init>(Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f100198
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .line 177
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onDestroy()V

    .line 178
    iget-object v0, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->mHandler:Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment$MyHandler;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->mHandler:Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment$MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->mUnbindRegisterCodePresenter:Lcom/ds/daisi/mvp/presenters/news/UnbindRegisterCodePresenter;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->mUnbindRegisterCodePresenter:Lcom/ds/daisi/mvp/presenters/news/UnbindRegisterCodePresenter;

    invoke-virtual {v0}, Lcom/ds/daisi/mvp/presenters/news/UnbindRegisterCodePresenter;->cancel()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onPause()V

    .line 121
    const-class v0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 126
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onResume()V

    .line 127
    const-class v0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onUnbindFailure(Ljava/lang/String;)V
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onUnbindSuc(Lcom/ds/daisi/entity/RegCodeInfoResponse;)V
    .locals 4

    .line 200
    iget-object v0, p1, Lcom/ds/daisi/entity/RegCodeInfoResponse;->Message:Ljava/lang/String;

    .line 201
    iget v1, p1, Lcom/ds/daisi/entity/RegCodeInfoResponse;->Code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    const v0, 0x7f0901aa

    .line 202
    invoke-virtual {p0, v0}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f090177

    invoke-virtual {p0, v1}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/ds/daisi/entity/RegCodeInfoResponse;->Code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    iget p1, p1, Lcom/ds/daisi/entity/RegCodeInfoResponse;->Code:I

    if-ne p1, v2, :cond_2

    .line 210
    iget-object p1, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->bindRegCode:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->bindRegCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->unbindRegCode:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 212
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/ds/daisi/entity/MsgItem$BindRegCodeBus;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Lcom/ds/daisi/entity/MsgItem$BindRegCodeBus;-><init>(J)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 213
    new-instance p1, Lcom/ds/daisi/entity/RegCodeStatusInfo;

    invoke-direct {p1}, Lcom/ds/daisi/entity/RegCodeStatusInfo;-><init>()V

    const/4 v0, 0x2

    .line 214
    iput v0, p1, Lcom/ds/daisi/entity/RegCodeStatusInfo;->status:I

    .line 215
    iget-object v0, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->unbindRegCode:Ljava/lang/String;

    iput-object v0, p1, Lcom/ds/daisi/entity/RegCodeStatusInfo;->regCode:Ljava/lang/String;

    .line 216
    invoke-static {p1}, Lcom/cyjh/share/util/GsonExUtil;->class2Data(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regCodeStatus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-static {}, Lcom/cyjh/share/config/MyConfig;->getAppid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-static {v0, v1, p1}, Lcom/cyjh/share/util/AppUtils;->writeFileContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
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

    .line 83
    invoke-super {p0, p1, p2}, Lcom/ds/daisi/fragment/BaseFragement;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-class v0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->bindRegCode:Ljava/lang/String;

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->initView(Landroid/view/View;)V

    .line 88
    invoke-direct {p0}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->initAfterView()V

    return-void
.end method
