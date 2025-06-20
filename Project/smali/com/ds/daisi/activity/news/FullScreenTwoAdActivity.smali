.class public Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;
.super Lcom/ds/daisi/activity/BaseActivity;
.source "FullScreenTwoAdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;,
        Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;
    }
.end annotation


# static fields
.field private static final BACKGROUND_AD:I = 0x66

.field public static final BG_DISPLAY_SUCCESS_STATIS_MESSAGE:I = 0x3eb

.field public static final DELAY_SKIP_TIME:I = 0xc8

.field private static final FENG_LING_AD:I = 0x65

.field public static final ILFY_DISPLAY_SUCCESS_STATIS_MESSAGE:I = 0x3e9

.field public static final LOAD_BACKGROUND_MESSAGE:I = 0x3ea

.field public static final PAGE_TIMING:I = 0x8

.field public static final PAUSE_SKIP_TIME:I = 0x3e8

.field public static final SKIP_BUTTON_TIME:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FullScreenTwoAdActivity"

.field private static final TOTAL_TIME:I = 0x5

.field private static final WM_AD:I = 0x67

.field private static final XUN_FEI_AD:I = 0x64


# instance fields
.field private adILFYType:I

.field private adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

.field private countAdTimer:I

.field private isClickImg:Z

.field private isDisplayAd:Z

.field private mCurrentAdType:I

.field private mHandler:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;

.field private mImgAdFullScreen:Landroid/widget/ImageView;

.field private mNativeListener:Lcom/ds/daisi/listener/IFLYADListener;

.field private mTvAdMark:Landroid/widget/TextView;

.field private mTvCloseAd:Landroid/widget/TextView;

.field private submitCountTimer:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 52
    invoke-direct {p0}, Lcom/ds/daisi/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->adILFYType:I

    .line 64
    iput v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->countAdTimer:I

    .line 80
    iput-boolean v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->isDisplayAd:Z

    .line 81
    new-instance v1, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;-><init>(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$1;)V

    iput-object v1, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mHandler:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;

    .line 82
    iput-boolean v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->isClickImg:Z

    const/16 v0, 0x64

    .line 95
    iput v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mCurrentAdType:I

    .line 378
    new-instance v0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$4;

    invoke-direct {v0, p0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$4;-><init>(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;)V

    iput-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mNativeListener:Lcom/ds/daisi/listener/IFLYADListener;

    return-void
.end method

.method static synthetic access$100(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->toCall()V

    return-void
.end method

.method static synthetic access$1000(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;)Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mHandler:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->loadBackgroundAd()V

    return-void
.end method

.method static synthetic access$408(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;)I
    .locals 2

    .line 52
    iget v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->countAdTimer:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->countAdTimer:I

    return v0
.end method

.method static synthetic access$500(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->isDisplayAd:Z

    return p0
.end method

.method static synthetic access$600(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mTvCloseAd:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;)Lcom/iflytek/voiceads/conn/NativeDataRef;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    return-object p0
.end method

.method static synthetic access$702(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;Lcom/iflytek/voiceads/conn/NativeDataRef;)Lcom/iflytek/voiceads/conn/NativeDataRef;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    return-object p1
.end method

.method static synthetic access$800(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->displayFullScreenAD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private cancelCountTimer()V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->submitCountTimer:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->submitCountTimer:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;

    invoke-virtual {v0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;->cancel()V

    const/4 v0, 0x0

    .line 335
    iput v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->countAdTimer:I

    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->submitCountTimer:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;

    :cond_0
    return-void
.end method

.method private displayAd()V
    .locals 6

    .line 236
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    iget-object v2, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mImgAdFullScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/iflytek/voiceads/conn/NativeDataRef;->onExposure(Landroid/view/View;)Z

    .line 238
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/conn/NativeDataRef;->getAdSourceMark()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mTvAdMark:Landroid/widget/TextView;

    const v2, 0x7f09005b

    invoke-virtual {p0, v2}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    invoke-virtual {v4}, Lcom/iflytek/voiceads/conn/NativeDataRef;->getAdSourceMark()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mTvAdMark:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/conn/NativeDataRef;->getActionType()I

    move-result v0

    iput v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->adILFYType:I

    .line 244
    :cond_1
    iput-boolean v1, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->isDisplayAd:Z

    .line 246
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->cancelCountTimer()V

    .line 247
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->startCountTimer()V

    .line 248
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mImgAdFullScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mCurrentAdType:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mHandler:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 251
    :cond_2
    iget v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mCurrentAdType:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_3

    .line 252
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mHandler:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    :goto_0
    return-void
.end method

.method private displayFullScreenAD(Ljava/lang/String;)V
    .locals 2

    const-string v0, ".gif"

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-static {}, Lcom/ds/daisi/util/GlideUtils;->getDefaultOption()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 225
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    .line 226
    iget-object v1, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mImgAdFullScreen:Landroid/widget/ImageView;

    invoke-static {p0, p1, v1, v0}, Lcom/ds/daisi/util/GlideUtils;->loadGif(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;)V

    goto :goto_0

    .line 228
    :cond_0
    invoke-static {}, Lcom/ds/daisi/util/GlideUtils;->getDefaultOption()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 229
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    .line 230
    iget-object v1, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mImgAdFullScreen:Landroid/widget/ImageView;

    invoke-static {p0, p1, v1, v0}, Lcom/ds/daisi/util/GlideUtils;->load(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;)V

    .line 232
    :goto_0
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->displayAd()V

    return-void
.end method

.method private initData()V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->judgeLoadAdOperate()V

    return-void
.end method

.method private initListener()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mTvCloseAd:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f1001b6

    .line 113
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mImgAdFullScreen:Landroid/widget/ImageView;

    const v0, 0x7f1001b7

    .line 114
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mTvAdMark:Landroid/widget/TextView;

    const v0, 0x7f1001b8

    .line 115
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mTvCloseAd:Landroid/widget/TextView;

    return-void
.end method

.method private judgeLoadAdOperate()V
    .locals 2

    .line 125
    invoke-static {p0}, Lcom/cyjh/share/util/CommonUtils;->isSimulator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mHandler:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->loadIFLYAd()V

    :goto_0
    return-void
.end method

.method private loadBackgroundAd()V
    .locals 3

    .line 205
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ds/daisi/entity/ParamsWrap;->isDisplayBackgroundSetAd(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    new-instance v0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;-><init>(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;ILcom/ds/daisi/activity/news/FullScreenTwoAdActivity$1;)V

    iput-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->submitCountTimer:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;

    .line 208
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->submitCountTimer:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;

    invoke-virtual {v0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;->start()Landroid/os/CountDownTimer;

    .line 209
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    iget-object v0, v0, Lcom/ds/daisi/entity/ParamsWrap;->mBackgroundSetAdInfo:Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;

    iget-object v0, v0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->ImageUrl:Ljava/lang/String;

    .line 210
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u540e\u53f0\u5e7f\u544a\u52a0\u8f7d\u6210\u529f"

    .line 211
    invoke-static {p0, v1}, Lcom/cyjh/share/util/SlToast;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v1, 0x66

    .line 212
    invoke-direct {p0, v1}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->setCurrentAdType(I)V

    .line 213
    invoke-direct {p0, v0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->displayFullScreenAD(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->toCall()V

    goto :goto_0

    .line 218
    :cond_1
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->toCall()V

    :goto_0
    return-void
.end method

.method private loadIFLYAd()V
    .locals 4

    .line 133
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    const-string v1, "761D5F3C12409F07DCE571A8AA3C0480"

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/ds/daisi/entity/ParamsWrap;->displayILFYAd(ILjava/lang/String;)Lcom/cyjh/share/bean/ILFYBean;

    move-result-object v0

    .line 135
    sget-object v1, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadIFLYAd --> ilfyAd.isDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/cyjh/share/bean/ILFYBean;->isDisplay:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-boolean v1, v0, Lcom/cyjh/share/bean/ILFYBean;->isDisplay:Z

    if-eqz v1, :cond_0

    .line 137
    new-instance v1, Lcom/iflytek/voiceads/IFLYNativeAd;

    iget-object v0, v0, Lcom/cyjh/share/bean/ILFYBean;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mNativeListener:Lcom/ds/daisi/listener/IFLYADListener;

    invoke-direct {v1, p0, v0, v2}, Lcom/iflytek/voiceads/IFLYNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/voiceads/listener/IFLYNativeListener;)V

    const-string v0, "app_ver"

    .line 138
    invoke-static {p0}, Lcom/ds/daisi/util/AppDeviceUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/voiceads/IFLYNativeAd;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    invoke-virtual {v1}, Lcom/iflytek/voiceads/IFLYNativeAd;->loadAd()V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mHandler:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method private onClickImageXunFeiAd()V
    .locals 4

    .line 346
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    iget-object v1, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mImgAdFullScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/conn/NativeDataRef;->onClick(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->isClickImg:Z

    .line 348
    iget v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->adILFYType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mHandler:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;

    new-instance v1, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$2;

    invoke-direct {v1, p0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$2;-><init>(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private onClickImg()V
    .locals 1

    .line 195
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->cancelCountTimer()V

    .line 196
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    if-eqz v0, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->onClickImageXunFeiAd()V

    goto :goto_0

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->onClickImgMyselfAd()V

    :goto_0
    return-void
.end method

.method private onClickImgMyselfAd()V
    .locals 8

    const/4 v0, 0x1

    .line 359
    iput-boolean v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->isClickImg:Z

    .line 360
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$3;

    invoke-direct {v1, p0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$3;-><init>(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->setCallback(Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnCallback;)Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object v2

    .line 367
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    iget-object v0, v0, Lcom/ds/daisi/entity/ParamsWrap;->mBackgroundSetAdInfo:Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;

    iget-wide v6, v0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->Id:J

    const/4 v4, 0x1

    const/4 v5, 0x3

    move-object v3, p0

    .line 366
    invoke-virtual/range {v2 .. v7}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->loadAd(Landroid/content/Context;IIJ)V

    return-void
.end method

.method private setCurrentAdType(I)V
    .locals 0

    .line 171
    iput p1, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mCurrentAdType:I

    return-void
.end method

.method private startCountTimer()V
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->submitCountTimer:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;-><init>(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;ILcom/ds/daisi/activity/news/FullScreenTwoAdActivity$1;)V

    iput-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->submitCountTimer:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->submitCountTimer:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;

    invoke-virtual {v0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$SubmitCountTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private toCall()V
    .locals 0

    .line 341
    invoke-static {p0}, Lcom/ds/daisi/util/IntentUtils;->toCallElfinPayActivity(Landroid/content/Context;)V

    .line 342
    invoke-virtual {p0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f1001b6

    if-eq p1, v0, :cond_2

    const v0, 0x7f1001b8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    iget p1, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->countAdTimer:I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    .line 180
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->onClickImg()V

    goto :goto_0

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->toCall()V

    goto :goto_0

    .line 187
    :cond_2
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->onClickImg()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 99
    invoke-super {p0, p1}, Lcom/ds/daisi/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 100
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->requestWindowFeature(I)Z

    .line 101
    invoke-virtual {p0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f040021

    .line 102
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->setContentView(I)V

    .line 103
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->initView()V

    .line 104
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->initData()V

    .line 105
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->initListener()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 323
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onDestroy()V

    .line 324
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->cancelCountTimer()V

    .line 325
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mHandler:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 326
    iput-boolean v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->isDisplayAd:Z

    .line 327
    iput-boolean v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->isClickImg:Z

    .line 328
    iput-object v1, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    .line 329
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->onCancel()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onPause()V
    .locals 0

    .line 161
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onPause()V

    .line 162
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 147
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onResume()V

    .line 148
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 149
    iget-boolean v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->isClickImg:Z

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;->mHandler:Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;

    new-instance v1, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$1;

    invoke-direct {v1, p0}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$1;-><init>(Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/ds/daisi/activity/news/FullScreenTwoAdActivity$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
