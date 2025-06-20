.class public Lcom/ds/daisi/fragment/ScriptUipSetFragment;
.super Lcom/ds/daisi/fragment/BaseFragement;
.source "ScriptUipSetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/fragment/ScriptUipSetFragment$SVCGestureListener;,
        Lcom/ds/daisi/fragment/ScriptUipSetFragment$ScriptConfigSaveRunnable;,
        Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;,
        Lcom/ds/daisi/fragment/ScriptUipSetFragment$SubmitCountTimer;,
        Lcom/ds/daisi/fragment/ScriptUipSetFragment$SdCardScriptFilesTask;,
        Lcom/ds/daisi/fragment/ScriptUipSetFragment$CopyScriptFilesTask;
    }
.end annotation


# static fields
.field private static final BACKGROUND_AD:I = 0x66

.field private static final BACKGROUND_AD_LOAD_MESSAGE:I = 0x2743

.field private static final BG_DISPLAY_SUCCESS_STATIS_MESSAGE:I = 0x2744

.field private static final CLICK_AD_COUNT_TIME:I = 0x5

.field private static final DISPLAY_FENG_LING_AD_SUCCESS_MESSAGE:I = 0x2746

.field public static final DISPLAY_TRY_TIME_FLAG:Ljava/lang/String; = "-1"

.field private static final FENG_LING_AD:I = 0x65

.field private static final FENG_LING_NET_REQUEST_MESSAGE:I = 0x2745

.field private static final ILFY_DISPLAY_SUCCESS_STATIS:I = 0x2742

.field private static final REQUEST_FENG_LING_AD_WEB_VIEW:I = 0x12c

.field public static final SECONDS_IN_FUTURE:I = 0xa

.field public static final TAG:Ljava/lang/String; = "ScriptUipSetFragment"

.field private static final XUN_FEI_AD:I = 0x64


# instance fields
.field private adDataRef:Lcom/iflytek/voiceads/conn/NativeDataRef;

.field private btnRunScript:Landroid/widget/Button;

.field private counter:I

.field private elfinPayActivity:Lcom/ds/daisi/activity/ElfinPayActivity;

.field private fengLingAdManager:Lcom/ds/daisi/mvp/managers/FengLingAdManager;

.field private mBtnGetMoreTime:Landroid/widget/Button;

.field private mClickDwonX:F

.field private mClickDwonY:F

.field private mClickUpX:F

.field private mClickUpY:F

.field private mConfigSaveRunnable:Lcom/ds/daisi/fragment/ScriptUipSetFragment$ScriptConfigSaveRunnable;

.field private mCountTimer:Lcom/ds/daisi/fragment/ScriptUipSetFragment$SubmitCountTimer;

.field private mCurrentAdType:I

.field private mFengLingAdInfo:Lcom/cyjh/share/bean/response/FengLingAdInfo;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/ds/daisi/fragment/ScriptUipSetFragment$SVCGestureListener;

.field private mHandler:Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;

.field private mImgBottomAd:Landroid/widget/ImageView;

.field private mIsViewCreated:Z

.field private mNativeListener:Lcom/ds/daisi/listener/IFLYADListener;

.field private mRelativeBottomAd:Landroid/widget/RelativeLayout;

.field private mScriptFilesTask:Lcom/ds/daisi/fragment/ScriptUipSetFragment$CopyScriptFilesTask;

.field private mSdCardScriptFilesTask:Lcom/ds/daisi/fragment/ScriptUipSetFragment$SdCardScriptFilesTask;

.field private mTvDeleteAd:Landroid/widget/TextView;

.field private mTvDisplayExpireTime:Landroid/widget/TextView;

.field private mTvILFYAdMark:Landroid/widget/TextView;

.field myTouchListener:Lcom/ds/daisi/activity/ElfinPayActivity$MyTouchListener;

.field private preventMultipleClicks:Z

.field private uipLinearLayoutUI:Landroid/widget/LinearLayout;

.field private viewParent:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 108
    invoke-direct {p0}, Lcom/ds/daisi/fragment/BaseFragement;-><init>()V

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->counter:I

    .line 135
    new-instance v1, Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;-><init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;Lcom/ds/daisi/fragment/ScriptUipSetFragment$1;)V

    iput-object v1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mHandler:Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;

    .line 144
    iput-boolean v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->preventMultipleClicks:Z

    const/16 v0, 0x64

    .line 156
    iput v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mCurrentAdType:I

    .line 164
    new-instance v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SVCGestureListener;

    invoke-direct {v0, p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SVCGestureListener;-><init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V

    iput-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mGestureListener:Lcom/ds/daisi/fragment/ScriptUipSetFragment$SVCGestureListener;

    .line 195
    new-instance v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$1;

    invoke-direct {v0, p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$1;-><init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V

    iput-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->myTouchListener:Lcom/ds/daisi/activity/ElfinPayActivity$MyTouchListener;

    .line 612
    new-instance v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$3;

    invoke-direct {v0, p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$3;-><init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V

    iput-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mNativeListener:Lcom/ds/daisi/listener/IFLYADListener;

    return-void
.end method

.method static synthetic access$100(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)Landroid/view/GestureDetector;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ds/daisi/fragment/ScriptUipSetFragment;I)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->setCurrentAdType(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mHandler:Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/ds/daisi/fragment/ScriptUipSetFragment;Lcom/cyjh/share/bean/response/FengLingAdInfo;)Lcom/cyjh/share/bean/response/FengLingAdInfo;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mFengLingAdInfo:Lcom/cyjh/share/bean/response/FengLingAdInfo;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/ds/daisi/fragment/ScriptUipSetFragment;I)I
    .locals 0

    .line 108
    iput p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->counter:I

    return p1
.end method

.method static synthetic access$1408(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)I
    .locals 2

    .line 108
    iget v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->counter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->counter:I

    return v0
.end method

.method static synthetic access$1500(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)Landroid/widget/TextView;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mTvDeleteAd:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mRelativeBottomAd:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->loadFengLingAd()V

    return-void
.end method

.method static synthetic access$1800(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->onShowImgFeLingAd()V

    return-void
.end method

.method static synthetic access$1900(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->loadBackgroundAd()V

    return-void
.end method

.method static synthetic access$2002(Lcom/ds/daisi/fragment/ScriptUipSetFragment;F)F
    .locals 0

    .line 108
    iput p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mClickUpX:F

    return p1
.end method

.method static synthetic access$2102(Lcom/ds/daisi/fragment/ScriptUipSetFragment;F)F
    .locals 0

    .line 108
    iput p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mClickUpY:F

    return p1
.end method

.method static synthetic access$2202(Lcom/ds/daisi/fragment/ScriptUipSetFragment;F)F
    .locals 0

    .line 108
    iput p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mClickDwonX:F

    return p1
.end method

.method static synthetic access$2302(Lcom/ds/daisi/fragment/ScriptUipSetFragment;F)F
    .locals 0

    .line 108
    iput p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mClickDwonY:F

    return p1
.end method

.method static synthetic access$300(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)Lcom/ds/daisi/activity/ElfinPayActivity;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->elfinPayActivity:Lcom/ds/daisi/activity/ElfinPayActivity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->pushApkToSystemApp()V

    return-void
.end method

.method static synthetic access$600(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->initQUI()V

    return-void
.end method

.method static synthetic access$800(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)Lcom/iflytek/voiceads/conn/NativeDataRef;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->adDataRef:Lcom/iflytek/voiceads/conn/NativeDataRef;

    return-object p0
.end method

.method static synthetic access$802(Lcom/ds/daisi/fragment/ScriptUipSetFragment;Lcom/iflytek/voiceads/conn/NativeDataRef;)Lcom/iflytek/voiceads/conn/NativeDataRef;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->adDataRef:Lcom/iflytek/voiceads/conn/NativeDataRef;

    return-object p1
.end method

.method static synthetic access$900(Lcom/ds/daisi/fragment/ScriptUipSetFragment;Ljava/lang/String;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->displayBottomAD(Ljava/lang/String;)V

    return-void
.end method

.method private cancelTimer()V
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mCountTimer:Lcom/ds/daisi/fragment/ScriptUipSetFragment$SubmitCountTimer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 879
    iput v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->counter:I

    .line 880
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mCountTimer:Lcom/ds/daisi/fragment/ScriptUipSetFragment$SubmitCountTimer;

    invoke-virtual {v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SubmitCountTimer;->cancel()V

    const/4 v0, 0x0

    .line 881
    iput-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mCountTimer:Lcom/ds/daisi/fragment/ScriptUipSetFragment$SubmitCountTimer;

    :cond_0
    return-void
.end method

.method private dealWithUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "__EVENT_TIME__"

    .line 783
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "__EVENT_TIME__"

    .line 784
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const-string v1, "__CLICK_DOWN_X__"

    .line 786
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "__CLICK_DOWN_X__"

    .line 787
    iget v2, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mClickDwonX:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "_CLICK_DOWN_Y__"

    .line 790
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "_CLICK_DOWN_Y__"

    .line 791
    iget v2, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mClickDwonY:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "__CLICK_UP_X__"

    .line 794
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "__CLICK_UP_X__"

    .line 795
    iget v2, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mClickUpX:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v1, "__CLICK_UP_Y__"

    .line 798
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "__CLICK_UP_Y__"

    .line 799
    iget v1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mClickUpY:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method private displayAd()V
    .locals 5

    .line 710
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->adDataRef:Lcom/iflytek/voiceads/conn/NativeDataRef;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->adDataRef:Lcom/iflytek/voiceads/conn/NativeDataRef;

    iget-object v2, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mRelativeBottomAd:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Lcom/iflytek/voiceads/conn/NativeDataRef;->onExposure(Landroid/view/View;)Z

    .line 712
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->adDataRef:Lcom/iflytek/voiceads/conn/NativeDataRef;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/conn/NativeDataRef;->getAdSourceMark()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mTvILFYAdMark:Landroid/widget/TextView;

    const v2, 0x7f09005b

    invoke-virtual {p0, v2}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->adDataRef:Lcom/iflytek/voiceads/conn/NativeDataRef;

    invoke-virtual {v4}, Lcom/iflytek/voiceads/conn/NativeDataRef;->getAdSourceMark()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mTvILFYAdMark:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 717
    :cond_0
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->startCountTimer()V

    .line 718
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mTvDeleteAd:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 719
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mRelativeBottomAd:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 720
    iget v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mCurrentAdType:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 721
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->adDataRef:Lcom/iflytek/voiceads/conn/NativeDataRef;

    if-eqz v0, :cond_3

    .line 722
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mHandler:Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;

    const/16 v1, 0x2742

    invoke-virtual {v0, v1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 723
    :cond_1
    iget v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mCurrentAdType:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2

    .line 724
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mHandler:Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;

    const/16 v1, 0x2746

    invoke-virtual {v0, v1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 725
    :cond_2
    iget v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mCurrentAdType:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_3

    .line 726
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mHandler:Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;

    const/16 v1, 0x2744

    invoke-virtual {v0, v1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    :goto_0
    return-void
.end method

.method private displayBottomAD(Ljava/lang/String;)V
    .locals 3

    const-string v0, ".gif"

    .line 697
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    invoke-static {}, Lcom/ds/daisi/util/GlideUtils;->getDefaultOption()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 699
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    .line 700
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mImgBottomAd:Landroid/widget/ImageView;

    invoke-static {v1, p1, v2, v0}, Lcom/ds/daisi/util/GlideUtils;->loadGif(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;)V

    goto :goto_0

    .line 702
    :cond_0
    invoke-static {}, Lcom/ds/daisi/util/GlideUtils;->getDefaultOption()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 703
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    .line 704
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mImgBottomAd:Landroid/widget/ImageView;

    invoke-static {v1, p1, v2, v0}, Lcom/ds/daisi/util/GlideUtils;->load(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;)V

    .line 706
    :goto_0
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->displayAd()V

    return-void
.end method

.method private displayExpireTimeOperate()V
    .locals 6

    .line 385
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    iget-wide v0, v0, Lcom/ds/daisi/AppContext;->ExpireTime:J

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long v4, v0, v2

    const-wide/16 v0, 0x3c

    .line 387
    div-long/2addr v4, v0

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    .line 389
    invoke-direct {p0, v4, v5}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->displayRemainTime(J)V

    :cond_0
    return-void
.end method

.method private displayRemainTime(J)V
    .locals 1

    .line 394
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/ds/daisi/util/ExpireTimeUtil;->convertTimeFormat(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 395
    iget-object p2, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mTvDisplayExpireTime:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayTryTime()V
    .locals 4

    const v0, 0x7f090110

    .line 330
    invoke-virtual {p0, v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v1

    iget v1, v1, Lcom/ds/daisi/entity/ParamsWrap;->onceTryMinute:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const v0, 0x7f090116

    .line 332
    invoke-virtual {p0, v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v3

    iget v3, v3, Lcom/ds/daisi/entity/ParamsWrap;->onceTryMinute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mTvDisplayExpireTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mTvDisplayExpireTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 496
    new-instance v0, Lcom/ds/daisi/mvp/managers/FengLingAdManager;

    invoke-direct {v0}, Lcom/ds/daisi/mvp/managers/FengLingAdManager;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->fengLingAdManager:Lcom/ds/daisi/mvp/managers/FengLingAdManager;

    .line 497
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ds/daisi/AppContext;->isUseSdcardScript:Z

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->sdCardScriptFiles()V

    goto :goto_0

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->copyScriptFiles()V

    .line 504
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 505
    invoke-static {}, Lcom/ds/daisi/util/FeLingAdDBHelper;->getInstance()Lcom/ds/daisi/util/FeLingAdDBHelper;

    move-result-object v0

    const-string v1, "101477"

    invoke-virtual {v0, v1}, Lcom/ds/daisi/util/FeLingAdDBHelper;->deleteAllFeLingAdReportInfo(Ljava/lang/String;)I

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mTvDeleteAd:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mImgBottomAd:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->btnRunScript:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mBtnGetMoreTime:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->elfinPayActivity:Lcom/ds/daisi/activity/ElfinPayActivity;

    new-instance v1, Lcom/ds/daisi/fragment/ScriptUipSetFragment$$Lambda$1;

    invoke-direct {v1, p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$$Lambda$1;-><init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/ElfinPayActivity;->setOnDisplayExpireTimeBack(Lcom/ds/daisi/activity/ElfinPayActivity$OnDisplayExpireTimeBackListener;)V

    return-void
.end method

.method private initNativeAd()V
    .locals 4

    .line 529
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    const-string v1, "410D8AC18806EDFE511A00EFD3329F20"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/ds/daisi/entity/ParamsWrap;->displayILFYAd(ILjava/lang/String;)Lcom/cyjh/share/bean/ILFYBean;

    move-result-object v0

    .line 531
    iget-boolean v1, v0, Lcom/cyjh/share/bean/ILFYBean;->isDisplay:Z

    if-eqz v1, :cond_0

    .line 533
    :try_start_0
    new-instance v1, Lcom/iflytek/voiceads/IFLYNativeAd;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v0, v0, Lcom/cyjh/share/bean/ILFYBean;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mNativeListener:Lcom/ds/daisi/listener/IFLYADListener;

    invoke-direct {v1, v2, v0, v3}, Lcom/iflytek/voiceads/IFLYNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/voiceads/listener/IFLYNativeListener;)V

    const-string v0, "app_ver"

    .line 534
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/ds/daisi/util/AppDeviceUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/voiceads/IFLYNativeAd;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 535
    invoke-virtual {v1}, Lcom/iflytek/voiceads/IFLYNativeAd;->loadAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 537
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x65

    .line 540
    invoke-direct {p0, v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->setCurrentAdType(I)V

    .line 541
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->loadFengLingAd()V

    :goto_0
    return-void
.end method

.method private initQUI()V
    .locals 6

    .line 578
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 579
    iget-object v2, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v2, v2, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v2}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 580
    new-instance v0, Lcom/cyjh/mqm/MiscUtilities;

    invoke-direct {v0}, Lcom/cyjh/mqm/MiscUtilities;-><init>()V

    .line 581
    iget-object v1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v1}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/cyjh/mqm/MiscUtilities;->LoadUIFile(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 582
    iget-object v1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->mUipHelper:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->parseLayoutFromJson(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 583
    iget-object v1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->uipLinearLayoutUI:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 584
    iget-object v1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->uipLinearLayoutUI:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 587
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->parseOptionJson()V

    .line 588
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->elfinPayActivity:Lcom/ds/daisi/activity/ElfinPayActivity;

    iput-boolean v3, v0, Lcom/ds/daisi/activity/ElfinPayActivity;->isDisplayUI:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 590
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 4

    .line 557
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->viewParent:Landroid/view/View;

    const v1, 0x7f1001a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->uipLinearLayoutUI:Landroid/widget/LinearLayout;

    .line 558
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->viewParent:Landroid/view/View;

    const v1, 0x7f10018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->btnRunScript:Landroid/widget/Button;

    .line 559
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->viewParent:Landroid/view/View;

    const v1, 0x7f1001a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mRelativeBottomAd:Landroid/widget/RelativeLayout;

    .line 561
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->viewParent:Landroid/view/View;

    const v1, 0x7f1001a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mImgBottomAd:Landroid/widget/ImageView;

    .line 562
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->viewParent:Landroid/view/View;

    const v1, 0x7f1001a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mTvDeleteAd:Landroid/widget/TextView;

    .line 563
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->viewParent:Landroid/view/View;

    const v1, 0x7f1001aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mTvILFYAdMark:Landroid/widget/TextView;

    .line 564
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mTvDeleteAd:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 565
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->viewParent:Landroid/view/View;

    const v1, 0x7f10018b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mBtnGetMoreTime:Landroid/widget/Button;

    .line 566
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->viewParent:Landroid/view/View;

    const v1, 0x7f10018c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mTvDisplayExpireTime:Landroid/widget/TextView;

    .line 568
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 569
    iget-object v1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->uipLinearLayoutUI:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 570
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const v3, 0x3f666666    # 0.9f

    mul-float v0, v0, v3

    sub-float/2addr v2, v0

    float-to-int v0, v2

    .line 571
    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 572
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 573
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->uipLinearLayoutUI:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private judgeLoadAdOperate()V
    .locals 1

    .line 521
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/share/util/CommonUtils;->isSimulator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->loadBackgroundAd()V

    goto :goto_0

    .line 525
    :cond_0
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->initNativeAd()V

    :goto_0
    return-void
.end method

.method private loadBackgroundAd()V
    .locals 3

    .line 546
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ds/daisi/entity/ParamsWrap;->isDisplayBackgroundSetAd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    iget-object v0, v0, Lcom/ds/daisi/entity/ParamsWrap;->mBackgroundSetAdInfo:Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;

    iget-object v0, v0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->ImageUrl:Ljava/lang/String;

    .line 549
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "\u540e\u53f0\u5e7f\u544a\u52a0\u8f7d\u6210\u529f"

    invoke-static {v1, v2}, Lcom/cyjh/share/util/SlToast;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 551
    invoke-direct {p0, v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->displayBottomAD(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private loadFengLingAd()V
    .locals 7

    .line 731
    sget-object v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFengLingAd -->  isSimulator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v2

    invoke-static {v2}, Lcom/cyjh/share/util/CommonUtils;->isSimulator(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ds/daisi/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/share/util/CommonUtils;->isSimulator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x66

    .line 735
    invoke-direct {p0, v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->setCurrentAdType(I)V

    .line 736
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mHandler:Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;

    const/16 v1, 0x2743

    invoke-virtual {v0, v1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 739
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->fengLingAdManager:Lcom/ds/daisi/mvp/managers/FengLingAdManager;

    sget-object v2, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-instance v4, Lcom/ds/daisi/fragment/ScriptUipSetFragment$4;

    invoke-direct {v4, p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$4;-><init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V

    .line 755
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "http://api-cn.felink.com/v1/rta"

    .line 739
    invoke-virtual/range {v1 .. v6}, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->getFengLingAdInfo(Ljava/lang/String;ILcom/ds/daisi/mvp/managers/Callback;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 757
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private onClickBottomImg()V
    .locals 8

    .line 286
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mRelativeBottomAd:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 287
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->cancelTimer()V

    .line 288
    iget v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mCurrentAdType:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->adDataRef:Lcom/iflytek/voiceads/conn/NativeDataRef;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->adDataRef:Lcom/iflytek/voiceads/conn/NativeDataRef;

    iget-object v1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mRelativeBottomAd:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/conn/NativeDataRef;->onClick(Landroid/view/View;)Z

    goto :goto_0

    .line 291
    :cond_0
    iget v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mCurrentAdType:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 292
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->onClickImgFeLingAd()V

    goto :goto_0

    .line 293
    :cond_1
    iget v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mCurrentAdType:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_2

    .line 294
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/fragment/ScriptUipSetFragment$2;

    invoke-direct {v1, p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$2;-><init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->setCallback(Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnCallback;)Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object v2

    iget-object v3, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->elfinPayActivity:Lcom/ds/daisi/activity/ElfinPayActivity;

    const/4 v4, 0x1

    const/4 v5, 0x3

    .line 301
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    iget-object v0, v0, Lcom/ds/daisi/entity/ParamsWrap;->mBackgroundSetAdInfo:Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;

    iget-wide v6, v0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->Id:J

    .line 300
    invoke-virtual/range {v2 .. v7}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->loadAd(Landroid/content/Context;IIJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onClickImgFeLingAd()V
    .locals 5

    .line 827
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mFengLingAdInfo:Lcom/cyjh/share/bean/response/FengLingAdInfo;

    invoke-virtual {v0}, Lcom/cyjh/share/bean/response/FengLingAdInfo;->getActionName()I

    move-result v0

    .line 828
    iget-object v1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mFengLingAdInfo:Lcom/cyjh/share/bean/response/FengLingAdInfo;

    invoke-virtual {v1}, Lcom/cyjh/share/bean/response/FengLingAdInfo;->getWebTracks()Lcom/cyjh/share/bean/response/FengLingAdInfo$WebTracks;

    move-result-object v1

    .line 829
    invoke-virtual {v1}, Lcom/cyjh/share/bean/response/FengLingAdInfo$WebTracks;->getCtrackUrls()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->reportLogInfo(Ljava/util/List;)V

    .line 830
    iget-object v1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mFengLingAdInfo:Lcom/cyjh/share/bean/response/FengLingAdInfo;

    invoke-virtual {v1}, Lcom/cyjh/share/bean/response/FengLingAdInfo;->getClickUrl()Ljava/lang/String;

    move-result-object v1

    .line 831
    sget-object v2, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClickImgFeLingAd -->  actionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",clickUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    .line 834
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->saveInfoToDB()V

    .line 835
    new-instance v0, Lcom/ds/daisi/download/ApkDownloadHelper;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "101477"

    invoke-direct {v0, v2, v3}, Lcom/ds/daisi/download/ApkDownloadHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 836
    invoke-virtual {v0, v1}, Lcom/ds/daisi/download/ApkDownloadHelper;->downloadAPK(Ljava/lang/String;)V

    goto :goto_0

    .line 838
    :cond_0
    invoke-direct {p0, v1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->toCallFeLingWebView(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private onDownloadSuccessOperate()V
    .locals 5

    .line 654
    sget-object v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDownloadSuccessOperate --> 1 "

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-static {}, Lcom/ds/daisi/util/FeLingAdDBHelper;->getInstance()Lcom/ds/daisi/util/FeLingAdDBHelper;

    move-result-object v0

    const-string v1, "101477"

    invoke-virtual {v0, v1}, Lcom/ds/daisi/util/FeLingAdDBHelper;->getFeLingAdReportInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 656
    invoke-static {v0}, Lcom/ds/daisi/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 657
    sget-object v1, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    const-string v2, "onDownloadSuccessOperate --> 2"

    invoke-static {v1, v2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ds/daisi/entity/FeLingAdReportInfo;

    if-eqz v1, :cond_0

    .line 659
    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 660
    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 661
    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->getType()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->getPostState()I

    move-result v4

    if-nez v4, :cond_0

    .line 662
    invoke-direct {p0, v2}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->reportLogInfo(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v1, v3}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->setPostState(I)V

    .line 664
    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->save()Z

    .line 665
    sget-object v1, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDownloadSuccessOperate --> 3 url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/share/util/SlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onInstallSuccessOperate(Ljava/lang/String;)V
    .locals 7

    .line 673
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 676
    :cond_0
    sget-object v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    const-string v1, "onInstallSuccessOperate --> 1 "

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    invoke-static {}, Lcom/ds/daisi/util/FeLingAdDBHelper;->getInstance()Lcom/ds/daisi/util/FeLingAdDBHelper;

    move-result-object v0

    const-string v1, "101477"

    invoke-virtual {v0, v1}, Lcom/ds/daisi/util/FeLingAdDBHelper;->getFeLingAdReportInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 678
    invoke-static {v0}, Lcom/ds/daisi/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 679
    sget-object v1, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    const-string v2, "onInstallSuccessOperate --> 2 "

    invoke-static {v1, v2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ds/daisi/entity/FeLingAdReportInfo;

    .line 681
    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 682
    sget-object v3, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onInstallSuccessOperate --> 3 from packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",local packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->getApkPageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->getApkPageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 684
    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v4, v3, :cond_2

    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->getPostState()I

    move-result v3

    if-nez v3, :cond_2

    .line 685
    sget-object v3, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInstallSuccessOperate --> packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/ds/daisi/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-direct {p0, v2}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->reportLogInfo(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 687
    invoke-virtual {v1, v2}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->setPostState(I)V

    .line 689
    :cond_2
    invoke-virtual {v1, v4}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->setState(I)V

    .line 690
    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->save()Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private onShowImgFeLingAd()V
    .locals 2

    .line 766
    sget-object v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    const-string v1, "onShowImgFeLingAd -->"

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mFengLingAdInfo:Lcom/cyjh/share/bean/response/FengLingAdInfo;

    invoke-virtual {v0}, Lcom/cyjh/share/bean/response/FengLingAdInfo;->getWebTracks()Lcom/cyjh/share/bean/response/FengLingAdInfo$WebTracks;

    move-result-object v0

    .line 768
    invoke-virtual {v0}, Lcom/cyjh/share/bean/response/FengLingAdInfo$WebTracks;->getImptrackUrls()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->reportLogInfo(Ljava/util/List;)V

    return-void
.end method

.method private parseOptionJson()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 599
    :cond_0
    iget-object v1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v1}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 600
    iget-object v3, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v3, v3, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v3}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 601
    invoke-static {v0}, Lcom/ds/daisi/util/FileUtils;->readTextFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 602
    iget-object v1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->mUipHelper:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    if-nez v1, :cond_1

    .line 603
    iget-object v1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    new-instance v2, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/ds/daisi/AppContext;->mUipHelper:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    .line 605
    :cond_1
    iget-object v1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->mUipHelper:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->configViewFromJson(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private pushApkToSystemApp()V
    .locals 7

    .line 1001
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "has_already_push_system_app"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1002
    sget-object v1, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pushApkToSystemApp --> hasAlreadyPushSystemApp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "has_already_push_system_app"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1006
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    .line 1007
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app-release.apk"

    invoke-static {v0, v1}, Lcom/cyjh/share/util/FileUtil;->getFileByAbsolutePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    const-string v0, "/sdcard/app-release.apk"

    .line 1009
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v4, "app-release.apk"

    invoke-static {v1, v4, v0}, Lcom/cyjh/share/util/CommonUtil;->copyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1010
    sget-object v4, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pushApkToSystemApp --> filePath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",copyAppResult="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x7

    .line 1011
    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "setenforce 0"

    aput-object v4, v1, v2

    const-string v4, "mount -o remount,rw /system"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "chmod 777 /system"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "chmod 777 /system/app"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cat "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " > /system/app"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "app-release.apk"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    const/4 v0, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chmod 777 /system/app"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "app-release.apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    const/4 v0, 0x6

    const-string v4, "mount -o remount,ro /system"

    aput-object v4, v1, v0

    .line 1020
    invoke-static {v1, v3, v2}, Lcom/cyjh/share/util/ShellUtils;->execCommand([Ljava/lang/String;ZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;

    move-result-object v0

    .line 1021
    iget-object v1, v0, Lcom/cyjh/share/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1022
    iget-object v2, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v2, v2, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "has_already_push_system_app"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1023
    sget-object v2, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pushApkToSystemApp --> errorMsg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/cyjh/share/util/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",successMsg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/cyjh/share/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",cmdResult="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reportLogInfo(Ljava/lang/String;)V
    .locals 3

    .line 805
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 808
    :cond_0
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->dealWithUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 809
    sget-object v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportLogInfo --> srcUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->fengLingAdManager:Lcom/ds/daisi/mvp/managers/FengLingAdManager;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/ds/daisi/fragment/ScriptUipSetFragment$5;

    invoke-direct {v2, p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$5;-><init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->reportLogInfo(Landroid/content/Context;Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;)V

    return-void
.end method

.method private reportLogInfo(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 772
    sget-object v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    const-string v1, "reportLogInfo --> targetUrlList 1"

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 773
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 774
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 775
    sget-object v1, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportLogInfo --> targetUrlList 2 url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-direct {p0, v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->reportLogInfo(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private saveInfoToDB()V
    .locals 9

    .line 843
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mFengLingAdInfo:Lcom/cyjh/share/bean/response/FengLingAdInfo;

    invoke-virtual {v0}, Lcom/cyjh/share/bean/response/FengLingAdInfo;->getWebTracks()Lcom/cyjh/share/bean/response/FengLingAdInfo$WebTracks;

    move-result-object v0

    .line 844
    invoke-virtual {v0}, Lcom/cyjh/share/bean/response/FengLingAdInfo$WebTracks;->getDstrackUrls()Ljava/util/List;

    move-result-object v1

    .line 845
    invoke-virtual {v0}, Lcom/cyjh/share/bean/response/FengLingAdInfo$WebTracks;->getIstrackUrls()Ljava/util/List;

    move-result-object v0

    .line 846
    invoke-static {v1}, Lcom/ds/daisi/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 847
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 848
    invoke-direct {p0, v2}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->dealWithUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 849
    sget-object v2, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveInfoToDB --> dealWithDstrackUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    new-instance v2, Lcom/ds/daisi/entity/FeLingAdReportInfo;

    const-string v4, "101477"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/ds/daisi/entity/FeLingAdReportInfo;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 851
    invoke-virtual {v2}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->save()Z

    goto :goto_0

    .line 854
    :cond_0
    invoke-static {v0}, Lcom/ds/daisi/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 855
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 856
    invoke-direct {p0, v1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->dealWithUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 857
    new-instance v1, Lcom/ds/daisi/entity/FeLingAdReportInfo;

    const-string v3, "101477"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/ds/daisi/entity/FeLingAdReportInfo;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 858
    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->save()Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method private setCurrentAdType(I)V
    .locals 0

    .line 637
    iput p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mCurrentAdType:I

    return-void
.end method

.method private showRunFloat()V
    .locals 3

    .line 269
    sget-object v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    const-string v1, "showRunFloat -->"

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$ScriptConfigSaveRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$ScriptConfigSaveRunnable;-><init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;Lcom/ds/daisi/fragment/ScriptUipSetFragment$1;)V

    iput-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mConfigSaveRunnable:Lcom/ds/daisi/fragment/ScriptUipSetFragment$ScriptConfigSaveRunnable;

    .line 271
    invoke-static {}, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxyFactory;->getNormalThreadPool()Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mConfigSaveRunnable:Lcom/ds/daisi/fragment/ScriptUipSetFragment$ScriptConfigSaveRunnable;

    invoke-virtual {v0, v1}, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->executeRunnable(Ljava/lang/Runnable;)V

    .line 272
    invoke-static {}, Lcom/ds/daisi/rom/FloatWindowManager;->getInstance()Lcom/ds/daisi/rom/FloatWindowManager;

    move-result-object v0

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/rom/FloatWindowManager;->checkPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    invoke-static {}, Lcom/ds/daisi/rom/FloatWindowManager;->getInstance()Lcom/ds/daisi/rom/FloatWindowManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/rom/FloatWindowManager;->applyPermission(Landroid/content/Context;)V

    goto :goto_0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget v0, v0, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    iput v1, v0, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    invoke-virtual {v0}, Lcom/ds/daisi/AppContext;->showFloatView()V

    .line 279
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iput-object v2, v0, Lcom/ds/daisi/floatview/ElfinFloatView;->mContext:Landroid/content/Context;

    .line 280
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->elfinPayActivity:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/ElfinPayActivity;->moveTaskToBack(Z)Z

    :goto_0
    return-void
.end method

.method private showRunFloatJudgeOperate()V
    .locals 4

    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 247
    :try_start_0
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    .line 248
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 249
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "first_open_float_permission"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v2

    .line 251
    :cond_0
    sget-object v1, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showRunFloatJudgeOperate --> canDrawOverlays="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->showRunFloat()V

    goto :goto_0

    .line 255
    :cond_1
    new-instance v0, Lcom/ds/daisi/dialog/PermissionGuideDialog;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/ds/daisi/fragment/ScriptUipSetFragment$$Lambda$0;

    invoke-direct {v2, p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$$Lambda$0;-><init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/ds/daisi/dialog/PermissionGuideDialog;-><init>(Landroid/content/Context;Lcom/ds/daisi/dialog/PermissionGuideDialog$OnDialogClickListener;)V

    .line 259
    invoke-virtual {v0}, Lcom/ds/daisi/dialog/PermissionGuideDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 262
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 265
    :cond_2
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->showRunFloat()V

    :goto_0
    return-void
.end method

.method private startCountTimer()V
    .locals 3

    .line 871
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mCountTimer:Lcom/ds/daisi/fragment/ScriptUipSetFragment$SubmitCountTimer;

    if-nez v0, :cond_0

    .line 872
    new-instance v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SubmitCountTimer;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SubmitCountTimer;-><init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;ILcom/ds/daisi/fragment/ScriptUipSetFragment$1;)V

    iput-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mCountTimer:Lcom/ds/daisi/fragment/ScriptUipSetFragment$SubmitCountTimer;

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mCountTimer:Lcom/ds/daisi/fragment/ScriptUipSetFragment$SubmitCountTimer;

    invoke-virtual {v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SubmitCountTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private toCallFeLingWebView(Ljava/lang/String;)V
    .locals 3

    .line 864
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "web_view_url"

    .line 865
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "type"

    const/4 v1, 0x0

    .line 866
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 867
    invoke-virtual {p0, v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public btnRunScriptPerformClick()V
    .locals 1

    .line 1116
    :try_start_0
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->btnRunScript:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1118
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public copyScriptFiles()V
    .locals 14

    .line 400
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    invoke-virtual {v0}, Lcom/ds/daisi/AppContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v1}, Lcom/ds/daisi/entity/Script;->getLcFile()Ljava/io/File;

    move-result-object v1

    .line 402
    iget-object v2, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v2, v2, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v2}, Lcom/ds/daisi/entity/Script;->getPropFile()Ljava/io/File;

    move-result-object v2

    .line 403
    iget-object v3, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v3, v3, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v3}, Lcom/ds/daisi/entity/Script;->getAtcFile()Ljava/io/File;

    move-result-object v3

    .line 404
    iget-object v4, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v4, v4, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v4}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v4

    .line 405
    iget-object v5, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v5, v5, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v5}, Lcom/ds/daisi/entity/Script;->getRtdFile()Ljava/io/File;

    move-result-object v5

    :try_start_0
    const-string v6, "script.lc"

    .line 407
    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "script.prop"

    .line 408
    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "script.atc"

    .line 409
    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    const-string v9, "script.uip"

    .line 410
    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    const-string v10, "script.rtd"

    .line 411
    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 413
    new-instance v10, Lcom/ds/daisi/fragment/ScriptUipSetFragment$CopyScriptFilesTask;

    const/4 v11, 0x5

    new-array v12, v11, [Ljava/io/File;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    const/4 v1, 0x1

    aput-object v2, v12, v1

    const/4 v2, 0x2

    aput-object v3, v12, v2

    const/4 v3, 0x3

    aput-object v5, v12, v3

    const/4 v5, 0x4

    aput-object v4, v12, v5

    const/4 v4, 0x0

    invoke-direct {v10, p0, v12, v4}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$CopyScriptFilesTask;-><init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;[Ljava/io/File;Lcom/ds/daisi/fragment/ScriptUipSetFragment$1;)V

    iput-object v10, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mScriptFilesTask:Lcom/ds/daisi/fragment/ScriptUipSetFragment$CopyScriptFilesTask;

    .line 414
    iget-object v4, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mScriptFilesTask:Lcom/ds/daisi/fragment/ScriptUipSetFragment$CopyScriptFilesTask;

    new-array v10, v11, [Ljava/io/InputStream;

    aput-object v6, v10, v13

    aput-object v7, v10, v1

    aput-object v8, v10, v2

    aput-object v0, v10, v3

    aput-object v9, v10, v5

    invoke-virtual {v4, v10}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$CopyScriptFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 416
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public dealWithAdEvent(Lcom/ds/daisi/entity/AdEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 642
    invoke-virtual {p1}, Lcom/ds/daisi/entity/AdEvent;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 648
    :pswitch_0
    invoke-virtual {p1}, Lcom/ds/daisi/entity/AdEvent;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->onInstallSuccessOperate(Ljava/lang/String;)V

    goto :goto_0

    .line 644
    :pswitch_1
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->onDownloadSuccessOperate()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public generateOptionJson()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 964
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 965
    iget-object v2, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v2, v2, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v2}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 966
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->mUipHelper:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    iget-object v1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v1}, Lcom/ds/daisi/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->saveToConfigFile(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getFragmentLayoutId()I
    .locals 1

    const v0, 0x7f04006e

    return v0
.end method

.method public judgeTimeOperate()V
    .locals 5

    return-void
.end method

.method final synthetic lambda$initListener$1$ScriptUipSetFragment()V
    .locals 2

    .line 379
    sget-object v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    const-string v1, "initListener setOnDisplayExpireTimeBack -->"

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->judgeTimeOperate()V

    return-void
.end method

.method final synthetic lambda$showRunFloatJudgeOperate$0$ScriptUipSetFragment(I)V
    .locals 1

    const/16 v0, 0x65

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 257
    iput-boolean p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->preventMultipleClicks:Z

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 491
    invoke-super {p0, p1}, Lcom/ds/daisi/fragment/BaseFragement;->onActivityCreated(Landroid/os/Bundle;)V

    .line 492
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->initData()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 207
    :sswitch_0
    iget p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->counter:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->onClickBottomImg()V

    goto :goto_0

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->cancelTimer()V

    .line 212
    iget-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mRelativeBottomAd:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 218
    :sswitch_1
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->onClickBottomImg()V

    goto :goto_0

    .line 233
    :sswitch_2
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ds/daisi/util/IntentUtils;->toCallBindRegCodeActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :sswitch_3
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RootUtil;->isRoot()Z

    move-result p1

    if-nez p1, :cond_1

    .line 222
    new-instance p1, Lcom/ds/daisi/dialog/NoRootDialog;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ds/daisi/dialog/NoRootDialog;-><init>(Landroid/content/Context;)V

    .line 223
    invoke-virtual {p1}, Lcom/ds/daisi/dialog/NoRootDialog;->show()V

    return-void

    .line 226
    :cond_1
    iget-boolean p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->preventMultipleClicks:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 229
    iput-boolean p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->preventMultipleClicks:Z

    .line 230
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->showRunFloatJudgeOperate()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10018a -> :sswitch_3
        0x7f10018b -> :sswitch_2
        0x7f1001a8 -> :sswitch_1
        0x7f1001a9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 189
    invoke-super {p0, p1, p2, p3}, Lcom/ds/daisi/fragment/BaseFragement;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 191
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/ds/daisi/activity/ElfinPayActivity;

    iget-object p3, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->myTouchListener:Lcom/ds/daisi/activity/ElfinPayActivity$MyTouchListener;

    invoke-virtual {p2, p3}, Lcom/ds/daisi/activity/ElfinPayActivity;->registerMyTouchListener(Lcom/ds/daisi/activity/ElfinPayActivity$MyTouchListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 340
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onDestroy()V

    .line 341
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mConfigSaveRunnable:Lcom/ds/daisi/fragment/ScriptUipSetFragment$ScriptConfigSaveRunnable;

    if-eqz v0, :cond_0

    .line 342
    invoke-static {}, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxyFactory;->getNormalThreadPool()Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mConfigSaveRunnable:Lcom/ds/daisi/fragment/ScriptUipSetFragment$ScriptConfigSaveRunnable;

    invoke-virtual {v0, v1}, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->removeRunnable(Ljava/lang/Runnable;)V

    .line 344
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 345
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mHandler:Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 346
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mScriptFilesTask:Lcom/ds/daisi/fragment/ScriptUipSetFragment$CopyScriptFilesTask;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mScriptFilesTask:Lcom/ds/daisi/fragment/ScriptUipSetFragment$CopyScriptFilesTask;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$CopyScriptFilesTask;->cancel(Z)Z

    .line 348
    iput-object v1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mScriptFilesTask:Lcom/ds/daisi/fragment/ScriptUipSetFragment$CopyScriptFilesTask;

    .line 350
    :cond_1
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->cancelTimer()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 355
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onDestroyView()V

    .line 356
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ds/daisi/activity/ElfinPayActivity;

    iget-object v1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->myTouchListener:Lcom/ds/daisi/activity/ElfinPayActivity$MyTouchListener;

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/ElfinPayActivity;->unRegisterMyTouchListener(Lcom/ds/daisi/activity/ElfinPayActivity$MyTouchListener;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3

    .line 1107
    invoke-super {p0, p1}, Lcom/ds/daisi/fragment/BaseFragement;->onHiddenChanged(Z)V

    .line 1108
    sget-object v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHiddenChanged --> hidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1110
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->judgeTimeOperate()V

    :cond_0
    return-void
.end method

.method public onMessageThreadMain(Lcom/ds/daisi/entity/MsgItem;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 976
    invoke-virtual {p1}, Lcom/ds/daisi/entity/MsgItem;->getMsgType()I

    move-result p1

    const/16 v0, 0x3ec

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 979
    :cond_0
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->initQUI()V

    :goto_0
    return-void
.end method

.method public onReceiveScriptUIEvent(Lcom/ds/daisi/entity/ScriptUIEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 988
    sget-object v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    const-string v1, "onReceiveScriptUIEvent --> \u66f4\u65b0Script UI"

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->initQUI()V

    .line 990
    invoke-virtual {p1}, Lcom/ds/daisi/entity/ScriptUIEvent;->getType()I

    move-result p1

    sget v0, Lcom/ds/daisi/util/ScriptDownloadHelper;->HOT_SCRIPT_DOWNLOAD_IMMEDIATELY_AND_ENGINE_RUNNING:I

    if-ne p1, v0, :cond_0

    .line 991
    iget-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mHandler:Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;

    new-instance v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$6;

    invoke-direct {v0, p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$6;-><init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 312
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onResume()V

    .line 314
    const-class v0, Lcom/ds/daisi/fragment/OptionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 315
    iput-boolean v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->preventMultipleClicks:Z

    .line 316
    sget-object v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume --> regCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v2

    iget-object v2, v2, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",bindRegCodeBackTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->elfinPayActivity:Lcom/ds/daisi/activity/ElfinPayActivity;

    iget-wide v2, v2, Lcom/ds/daisi/activity/ElfinPayActivity;->bindRegCodeBackTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/entity/RefreshTimeEvent;

    invoke-direct {v1}, Lcom/ds/daisi/entity/RefreshTimeEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 318
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->judgeTimeOperate()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 168
    sget-object v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState --> "

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onceTryMinute"

    .line 169
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v1

    iget v1, v1, Lcom/ds/daisi/entity/ParamsWrap;->onceTryMinute:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ExpireTime"

    .line 170
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    iget-wide v1, v1, Lcom/ds/daisi/AppContext;->ExpireTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 171
    invoke-super {p0, p1}, Lcom/ds/daisi/fragment/BaseFragement;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 361
    invoke-super {p0, p1, p2}, Lcom/ds/daisi/fragment/BaseFragement;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 362
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/ds/daisi/activity/ElfinPayActivity;

    iput-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->elfinPayActivity:Lcom/ds/daisi/activity/ElfinPayActivity;

    .line 363
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->appContext:Lcom/ds/daisi/AppContext;

    const/4 p1, 0x1

    .line 364
    iput-boolean p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mIsViewCreated:Z

    .line 365
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->viewParent:Landroid/view/View;

    .line 367
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->initView()V

    .line 368
    invoke-direct {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->initListener()V

    .line 370
    :cond_0
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mGestureListener:Lcom/ds/daisi/fragment/ScriptUipSetFragment$SVCGestureListener;

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 176
    invoke-super {p0, p1}, Lcom/ds/daisi/fragment/BaseFragement;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 177
    sget-object v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    const-string v1, "onViewStateRestored --> "

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 179
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    const-string v1, "onceTryMinute"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/ds/daisi/entity/ParamsWrap;->onceTryMinute:I

    .line 180
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    const-string v1, "ExpireTime"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ds/daisi/AppContext;->ExpireTime:J

    .line 181
    sget-object p1, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewStateRestored --> onceTryMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v1

    iget v1, v1, Lcom/ds/daisi/entity/ParamsWrap;->onceTryMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object p1, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewStateRestored --> ExpireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    iget-wide v1, v1, Lcom/ds/daisi/AppContext;->ExpireTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->judgeTimeOperate()V

    return-void
.end method

.method public sdCardScriptFiles()V
    .locals 5

    .line 509
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ds/daisi/util/ScriptUtil;->getAppAssetsDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 510
    new-instance v1, Ljava/io/File;

    const-string v2, "script.lc"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    new-instance v2, Ljava/io/File;

    const-string v3, "script.uip"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :try_start_0
    new-instance v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SdCardScriptFilesTask;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/io/File;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x0

    invoke-direct {v0, p0, v3, v1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SdCardScriptFilesTask;-><init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;[Ljava/io/File;Lcom/ds/daisi/fragment/ScriptUipSetFragment$1;)V

    iput-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mSdCardScriptFilesTask:Lcom/ds/daisi/fragment/ScriptUipSetFragment$SdCardScriptFilesTask;

    .line 514
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mSdCardScriptFilesTask:Lcom/ds/daisi/fragment/ScriptUipSetFragment$SdCardScriptFilesTask;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SdCardScriptFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 516
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 3

    .line 1098
    invoke-super {p0, p1}, Lcom/ds/daisi/fragment/BaseFragement;->setUserVisibleHint(Z)V

    .line 1099
    sget-object v0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserVisibleHint --> isVisibleToUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    iget-boolean v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->mIsViewCreated:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1101
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->judgeTimeOperate()V

    :cond_0
    return-void
.end method
