.class public Lcom/ds/daisi/activity/news/SplashAppActivity;
.super Lcom/ds/daisi/activity/BaseActivity;
.source "SplashAppActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/cyjh/share/mvp/view/TemplateVerifyView;
.implements Lcom/cyjh/share/mvp/view/AppStartupView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/activity/news/SplashAppActivity$VersionKnownListener;,
        Lcom/ds/daisi/activity/news/SplashAppActivity$CloseButtonTimer;,
        Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;,
        Lcom/ds/daisi/activity/news/SplashAppActivity$SmallBallPollingRunnable;
    }
.end annotation


# static fields
.field public static final AD_SHOW_TIME:I = 0x8

.field private static final APP_CLOSED:I = 0x0

.field private static final APP_PASS:I = 0x1

.field private static final APP_WILL_DEACTIVATED:I = 0x2

.field public static final BG_DISPLAY_SUCCESS_STATIS_MESSAGE:I = 0x12

.field private static final CIRCLE_SIZE_VALUE:F = 8.0f

.field private static final CIRCLE_TOTAL_COUNT:I = 0x6

.field private static final COLOR_BLUE:Ljava/lang/String; = "#3c7ac5"

.field private static final COLOR_GRAY:Ljava/lang/String; = "#bababa"

.field private static final CYCLE_TIME_DOT:I = 0x64

.field public static final DEFAULT_FOUR_VALUE:I = 0x4

.field private static final DEFAULT_VALUE:I = 0x0

.field private static final ILFYAD_NET_REQUEST_MESSAGE:I = 0x11

.field public static final ILFY_DISPLAY_SUCCESS_REQ_MESSAGE:I = 0xf

.field public static final LOAD_BACKGROUND_MESSAGE:I = 0x10

.field private static final PERMISSIONS_REQUEST_CODE:I = 0x1

.field public static final TIMED_PAGE:I = 0x14


# instance fields
.field private adILFYType:I

.field private adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

.field private countAdTimer:I

.field private currentDotCounts:I

.field private imageViewLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private isClickerFirst:Z

.field private isLoadCompleteStartup:Z

.field private isLoadCompleteTemplateVerify:Z

.field private mBlueGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mCloseAdTimer:Lcom/ds/daisi/activity/news/SplashAppActivity$CloseButtonTimer;

.field private mGrayGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mHandler:Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;

.field private mImgAdFullScreen:Landroid/widget/ImageView;

.field private mLinearCircleDot:Landroid/widget/LinearLayout;

.field private mNativeListener:Lcom/ds/daisi/listener/IFLYADListener;

.field private mPollingRunnable:Lcom/ds/daisi/activity/news/SplashAppActivity$SmallBallPollingRunnable;

.field private mStartupPresenter:Lcom/cyjh/share/mvp/presenter/AppStartupPresenter;

.field private mTemplateVerifyPresenter:Lcom/cyjh/share/mvp/presenter/TemplateVerifyPresenter;

.field private mTvAdMark:Landroid/widget/TextView;

.field private mTvCloseAd:Landroid/widget/TextView;

.field private permissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 78
    invoke-direct {p0}, Lcom/ds/daisi/activity/BaseActivity;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->imageViewLists:Ljava/util/List;

    .line 117
    new-instance v0, Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;-><init>(Lcom/ds/daisi/activity/news/SplashAppActivity;Lcom/ds/daisi/activity/news/SplashAppActivity$1;)V

    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;

    const/4 v0, 0x0

    .line 131
    iput v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->adILFYType:I

    .line 132
    iput v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->countAdTimer:I

    .line 146
    iput-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->isClickerFirst:Z

    .line 162
    iput-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->isLoadCompleteStartup:Z

    .line 163
    iput-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->isLoadCompleteTemplateVerify:Z

    const/16 v1, 0xa

    .line 274
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v1, v0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-string v0, "android.permission.CALL_PHONE"

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    const/4 v2, 0x6

    aput-object v0, v1, v2

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    const/4 v2, 0x7

    aput-object v0, v1, v2

    const-string v0, "android.permission.SEND_SMS"

    const/16 v2, 0x8

    aput-object v0, v1, v2

    const-string v0, "android.permission.READ_SMS"

    const/16 v2, 0x9

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->permissions:[Ljava/lang/String;

    .line 573
    new-instance v0, Lcom/ds/daisi/activity/news/SplashAppActivity$4;

    invoke-direct {v0, p0}, Lcom/ds/daisi/activity/news/SplashAppActivity$4;-><init>(Lcom/ds/daisi/activity/news/SplashAppActivity;)V

    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mNativeListener:Lcom/ds/daisi/listener/IFLYADListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/ds/daisi/activity/news/SplashAppActivity;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->loadILFYAd()V

    return-void
.end method

.method static synthetic access$1100(Lcom/ds/daisi/activity/news/SplashAppActivity;)Lcom/iflytek/voiceads/conn/NativeDataRef;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/ds/daisi/activity/news/SplashAppActivity;Lcom/iflytek/voiceads/conn/NativeDataRef;)Lcom/iflytek/voiceads/conn/NativeDataRef;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    return-object p1
.end method

.method static synthetic access$1208(Lcom/ds/daisi/activity/news/SplashAppActivity;)I
    .locals 2

    .line 78
    iget v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->countAdTimer:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->countAdTimer:I

    return v0
.end method

.method static synthetic access$1300(Lcom/ds/daisi/activity/news/SplashAppActivity;)Landroid/widget/TextView;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mTvCloseAd:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ds/daisi/activity/news/SplashAppActivity;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->loadAdOrCallNextPage()V

    return-void
.end method

.method static synthetic access$300(Lcom/ds/daisi/activity/news/SplashAppActivity;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->toCall()V

    return-void
.end method

.method static synthetic access$400(Lcom/ds/daisi/activity/news/SplashAppActivity;)Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ds/daisi/activity/news/SplashAppActivity;)I
    .locals 0

    .line 78
    iget p0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->currentDotCounts:I

    return p0
.end method

.method static synthetic access$508(Lcom/ds/daisi/activity/news/SplashAppActivity;)I
    .locals 2

    .line 78
    iget v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->currentDotCounts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->currentDotCounts:I

    return v0
.end method

.method static synthetic access$600(Lcom/ds/daisi/activity/news/SplashAppActivity;)Ljava/util/List;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->imageViewLists:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ds/daisi/activity/news/SplashAppActivity;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mBlueGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ds/daisi/activity/news/SplashAppActivity;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mGrayGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ds/daisi/activity/news/SplashAppActivity;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/news/SplashAppActivity;->displayFullScreenAD(Ljava/lang/String;)V

    return-void
.end method

.method private cancelCloseTimer()V
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mCloseAdTimer:Lcom/ds/daisi/activity/news/SplashAppActivity$CloseButtonTimer;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mCloseAdTimer:Lcom/ds/daisi/activity/news/SplashAppActivity$CloseButtonTimer;

    invoke-virtual {v0}, Lcom/ds/daisi/activity/news/SplashAppActivity$CloseButtonTimer;->cancel()V

    const/4 v0, 0x0

    .line 609
    iput v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->countAdTimer:I

    const/4 v0, 0x0

    .line 610
    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mCloseAdTimer:Lcom/ds/daisi/activity/news/SplashAppActivity$CloseButtonTimer;

    :cond_0
    return-void
.end method

.method private clickXunFeiAd(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 414
    iput-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->isClickerFirst:Z

    .line 415
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/conn/NativeDataRef;->onClick(Landroid/view/View;)Z

    .line 417
    iget p1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->adILFYType:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 418
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;

    new-instance v0, Lcom/ds/daisi/activity/news/SplashAppActivity$3;

    invoke-direct {v0, p0}, Lcom/ds/daisi/activity/news/SplashAppActivity$3;-><init>(Lcom/ds/daisi/activity/news/SplashAppActivity;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private displayAd()V
    .locals 5

    .line 663
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    iget-object v2, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mImgAdFullScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/iflytek/voiceads/conn/NativeDataRef;->onExposure(Landroid/view/View;)Z

    .line 665
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/conn/NativeDataRef;->getAdSourceMark()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mTvAdMark:Landroid/widget/TextView;

    const v2, 0x7f09005b

    invoke-virtual {p0, v2}, Lcom/ds/daisi/activity/news/SplashAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    invoke-virtual {v4}, Lcom/iflytek/voiceads/conn/NativeDataRef;->getAdSourceMark()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mTvAdMark:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/conn/NativeDataRef;->getActionType()I

    move-result v0

    iput v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->adILFYType:I

    .line 672
    :cond_1
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->displayEightSecond()V

    .line 673
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->removePollingRunnable()V

    .line 674
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mImgAdFullScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 675
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mImgAdFullScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    if-eqz v0, :cond_2

    .line 677
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 679
    :cond_2
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 681
    :goto_0
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;

    new-instance v1, Lcom/ds/daisi/activity/news/SplashAppActivity$5;

    invoke-direct {v1, p0}, Lcom/ds/daisi/activity/news/SplashAppActivity$5;-><init>(Lcom/ds/daisi/activity/news/SplashAppActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private displayDialogMessage(ILjava/lang/String;)V
    .locals 3

    .line 709
    invoke-static {}, Lcom/ds/daisi/manager/DialogManager;->getInstance()Lcom/ds/daisi/manager/DialogManager;

    move-result-object v0

    const v1, 0x7f040059

    const v2, 0x7f0b0131

    invoke-virtual {v0, p0, v1, v2}, Lcom/ds/daisi/manager/DialogManager;->showMessageDialog(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 711
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 712
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const v1, 0x7f10012e

    .line 713
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    const p2, 0x7f0901b5

    .line 715
    invoke-virtual {p0, p2}, Lcom/ds/daisi/activity/news/SplashAppActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 717
    :cond_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const p2, 0x7f10013f

    .line 719
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 720
    new-instance v1, Lcom/ds/daisi/activity/news/SplashAppActivity$VersionKnownListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/ds/daisi/activity/news/SplashAppActivity$VersionKnownListener;-><init>(Lcom/ds/daisi/activity/news/SplashAppActivity;Landroid/app/AlertDialog;ILcom/ds/daisi/activity/news/SplashAppActivity$1;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private displayEightSecond()V
    .locals 3

    .line 600
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->cancelCloseTimer()V

    .line 601
    new-instance v0, Lcom/ds/daisi/activity/news/SplashAppActivity$CloseButtonTimer;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/ds/daisi/activity/news/SplashAppActivity$CloseButtonTimer;-><init>(Lcom/ds/daisi/activity/news/SplashAppActivity;ILcom/ds/daisi/activity/news/SplashAppActivity$1;)V

    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mCloseAdTimer:Lcom/ds/daisi/activity/news/SplashAppActivity$CloseButtonTimer;

    .line 602
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mCloseAdTimer:Lcom/ds/daisi/activity/news/SplashAppActivity$CloseButtonTimer;

    invoke-virtual {v0}, Lcom/ds/daisi/activity/news/SplashAppActivity$CloseButtonTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private displayFullScreenAD(Ljava/lang/String;)V
    .locals 2

    const-string v0, ".gif"

    .line 650
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    invoke-static {}, Lcom/ds/daisi/util/GlideUtils;->getDefaultOption()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 652
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    .line 653
    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mImgAdFullScreen:Landroid/widget/ImageView;

    invoke-static {p0, p1, v1, v0}, Lcom/ds/daisi/util/GlideUtils;->loadGif(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;)V

    goto :goto_0

    .line 655
    :cond_0
    invoke-static {}, Lcom/ds/daisi/util/GlideUtils;->getDefaultOption()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 656
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    .line 657
    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mImgAdFullScreen:Landroid/widget/ImageView;

    invoke-static {p0, p1, v1, v0}, Lcom/ds/daisi/util/GlideUtils;->load(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;)V

    .line 659
    :goto_0
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->displayAd()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 288
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ds/daisi/AppContext;->initEngine()V

    .line 289
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->initView()V

    .line 290
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->initAfter()V

    .line 291
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->initListener()V

    return-void
.end method

.method private initAfter()V
    .locals 2

    .line 299
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->initDot()V

    .line 300
    new-instance v0, Lcom/ds/daisi/activity/news/SplashAppActivity$SmallBallPollingRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ds/daisi/activity/news/SplashAppActivity$SmallBallPollingRunnable;-><init>(Lcom/ds/daisi/activity/news/SplashAppActivity;Lcom/ds/daisi/activity/news/SplashAppActivity$1;)V

    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mPollingRunnable:Lcom/ds/daisi/activity/news/SplashAppActivity$SmallBallPollingRunnable;

    .line 301
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mPollingRunnable:Lcom/ds/daisi/activity/news/SplashAppActivity$SmallBallPollingRunnable;

    invoke-virtual {v0}, Lcom/ds/daisi/activity/news/SplashAppActivity$SmallBallPollingRunnable;->start()V

    .line 302
    new-instance v0, Lcom/cyjh/share/mvp/presenter/AppStartupPresenter;

    invoke-direct {v0, p0}, Lcom/cyjh/share/mvp/presenter/AppStartupPresenter;-><init>(Lcom/cyjh/share/mvp/view/AppStartupView;)V

    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mStartupPresenter:Lcom/cyjh/share/mvp/presenter/AppStartupPresenter;

    .line 303
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mStartupPresenter:Lcom/cyjh/share/mvp/presenter/AppStartupPresenter;

    invoke-virtual {v0, p0}, Lcom/cyjh/share/mvp/presenter/AppStartupPresenter;->loadAd(Landroid/content/Context;)V

    .line 304
    new-instance v0, Lcom/cyjh/share/mvp/presenter/TemplateVerifyPresenter;

    invoke-direct {v0, p0}, Lcom/cyjh/share/mvp/presenter/TemplateVerifyPresenter;-><init>(Lcom/cyjh/share/mvp/view/TemplateVerifyView;)V

    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mTemplateVerifyPresenter:Lcom/cyjh/share/mvp/presenter/TemplateVerifyPresenter;

    .line 305
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mTemplateVerifyPresenter:Lcom/cyjh/share/mvp/presenter/TemplateVerifyPresenter;

    invoke-virtual {v0, p0}, Lcom/cyjh/share/mvp/presenter/TemplateVerifyPresenter;->loadAd(Landroid/content/Context;)V

    return-void
.end method

.method private initDot()V
    .locals 7

    .line 334
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mLinearCircleDot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 335
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->imageViewLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 337
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 338
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v4, 0x1

    .line 339
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v4, 0x41000000    # 8.0f

    .line 340
    invoke-static {p0, v4}, Lcom/ds/daisi/util/AppDeviceUtils;->getDipToPx(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 341
    invoke-static {p0, v4}, Lcom/ds/daisi/util/AppDeviceUtils;->getDipToPx(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v4}, Lcom/ds/daisi/util/AppDeviceUtils;->getDipToPx(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    if-nez v1, :cond_0

    const-string v5, "#3c7ac5"

    .line 343
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 344
    iput-object v3, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mBlueGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_1

    :cond_0
    const-string v5, "#bababa"

    .line 346
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v5, 0x5

    if-ne v1, v5, :cond_1

    .line 348
    iput-object v3, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mGrayGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 351
    :cond_1
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 354
    invoke-static {p0, v4}, Lcom/ds/daisi/util/AppDeviceUtils;->getDipToPx(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v0, v0, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 355
    iget-object v4, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mLinearCircleDot:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    iget-object v3, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->imageViewLists:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private initListener()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mTvCloseAd:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f1001b6

    .line 324
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mImgAdFullScreen:Landroid/widget/ImageView;

    const v0, 0x7f1001b7

    .line 325
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mTvAdMark:Landroid/widget/TextView;

    const v0, 0x7f1000cd

    .line 326
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mLinearCircleDot:Landroid/widget/LinearLayout;

    const v0, 0x7f1001b8

    .line 327
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mTvCloseAd:Landroid/widget/TextView;

    return-void
.end method

.method private loadAdMessage()V
    .locals 2

    .line 750
    iget-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->isLoadCompleteStartup:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->isLoadCompleteTemplateVerify:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 751
    iput-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->isLoadCompleteTemplateVerify:Z

    .line 752
    iput-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->isLoadCompleteStartup:Z

    .line 753
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private loadAdOrCallNextPage()V
    .locals 1

    .line 467
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ds/daisi/entity/ParamsWrap;->isFreeAd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->loadAdMessage()V

    goto :goto_0

    .line 472
    :cond_0
    invoke-static {p0}, Lcom/ds/daisi/util/IntentUtils;->toCallElfinPayActivity(Landroid/content/Context;)V

    .line 473
    invoke-virtual {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->finish()V

    :goto_0
    return-void
.end method

.method private loadILFYAd()V
    .locals 3

    .line 309
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    const-string v1, "21462E427898ADCCC2171718D603B0DE"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/ds/daisi/entity/ParamsWrap;->displayILFYAd(ILjava/lang/String;)Lcom/cyjh/share/bean/ILFYBean;

    move-result-object v0

    .line 311
    iget-boolean v1, v0, Lcom/cyjh/share/bean/ILFYBean;->isDisplay:Z

    if-eqz v1, :cond_0

    .line 312
    new-instance v1, Lcom/iflytek/voiceads/IFLYNativeAd;

    iget-object v0, v0, Lcom/cyjh/share/bean/ILFYBean;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mNativeListener:Lcom/ds/daisi/listener/IFLYADListener;

    invoke-direct {v1, p0, v0, v2}, Lcom/iflytek/voiceads/IFLYNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/voiceads/listener/IFLYNativeListener;)V

    const-string v0, "app_ver"

    .line 313
    invoke-static {p0}, Lcom/ds/daisi/util/AppDeviceUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/voiceads/IFLYNativeAd;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    invoke-virtual {v1}, Lcom/iflytek/voiceads/IFLYNativeAd;->loadAd()V

    goto :goto_0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 319
    :goto_0
    new-instance v0, Lcom/ds/daisi/activity/news/SplashAppActivity$CloseButtonTimer;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/ds/daisi/activity/news/SplashAppActivity$CloseButtonTimer;-><init>(Lcom/ds/daisi/activity/news/SplashAppActivity;ILcom/ds/daisi/activity/news/SplashAppActivity$1;)V

    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mCloseAdTimer:Lcom/ds/daisi/activity/news/SplashAppActivity$CloseButtonTimer;

    .line 320
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mCloseAdTimer:Lcom/ds/daisi/activity/news/SplashAppActivity$CloseButtonTimer;

    invoke-virtual {v0}, Lcom/ds/daisi/activity/news/SplashAppActivity$CloseButtonTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private onClickImgBackGroundAd()V
    .locals 8

    .line 401
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/activity/news/SplashAppActivity$2;

    invoke-direct {v1, p0}, Lcom/ds/daisi/activity/news/SplashAppActivity$2;-><init>(Lcom/ds/daisi/activity/news/SplashAppActivity;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->setCallback(Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnCallback;)Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object v2

    .line 408
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    iget-object v0, v0, Lcom/ds/daisi/entity/ParamsWrap;->mBackgroundSetAdInfo:Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;

    iget-wide v6, v0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->Id:J

    const/4 v4, 0x1

    const/4 v5, 0x3

    move-object v3, p0

    .line 407
    invoke-virtual/range {v2 .. v7}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->loadAd(Landroid/content/Context;IIJ)V

    return-void
.end method

.method private onClickImgFullScreenAd(Landroid/view/View;)V
    .locals 1

    .line 381
    iget-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->isClickerFirst:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 385
    iput-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->isClickerFirst:Z

    .line 386
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->cancelCloseTimer()V

    .line 387
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    if-eqz v0, :cond_1

    .line 389
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/news/SplashAppActivity;->clickXunFeiAd(Landroid/view/View;)V

    goto :goto_0

    .line 392
    :cond_1
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->onClickImgBackGroundAd()V

    :goto_0
    return-void
.end method

.method private openAppDetails()V
    .locals 3

    .line 255
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6ca1\u6709\u6388\u6743\u7684\u6743\u9650\uff0c\u8bf7\u5230 \u201c\u5e94\u7528\u4fe1\u606f -> \u6743\u9650\u201d \u4e2d\u6388\u4e88\uff01"

    .line 256
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53bb\u624b\u52a8\u6388\u6743"

    .line 257
    new-instance v2, Lcom/ds/daisi/activity/news/SplashAppActivity$1;

    invoke-direct {v2, p0}, Lcom/ds/daisi/activity/news/SplashAppActivity$1;-><init>(Lcom/ds/daisi/activity/news/SplashAppActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    .line 270
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 271
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private removePollingRunnable()V
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mPollingRunnable:Lcom/ds/daisi/activity/news/SplashAppActivity$SmallBallPollingRunnable;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;

    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mPollingRunnable:Lcom/ds/daisi/activity/news/SplashAppActivity$SmallBallPollingRunnable;

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 592
    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mPollingRunnable:Lcom/ds/daisi/activity/news/SplashAppActivity$SmallBallPollingRunnable;

    :cond_0
    return-void
.end method

.method private requestSystemPermissions()V
    .locals 7

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->permissions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 212
    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 214
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 217
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->init()V

    goto :goto_1

    .line 221
    :cond_2
    new-array v1, v3, [Ljava/lang/String;

    .line 222
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    .line 221
    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method private resetFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 639
    iput-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->isClickerFirst:Z

    const/4 v0, 0x0

    .line 640
    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    return-void
.end method

.method private toCall()V
    .locals 0

    .line 634
    invoke-static {p0}, Lcom/ds/daisi/util/IntentUtils;->toCallFullscreenTwoAdActivity(Landroid/content/Context;)V

    .line 635
    invoke-virtual {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->finish()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 185
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->finish()V

    const v0, 0x7f050014

    const v1, 0x7f050015

    .line 186
    invoke-virtual {p0, v0, v1}, Lcom/ds/daisi/activity/news/SplashAppActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f1001b6

    if-eq p1, v0, :cond_2

    const v0, 0x7f1001b8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    iget p1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->countAdTimer:I

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    .line 366
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mImgAdFullScreen:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/news/SplashAppActivity;->onClickImgFullScreenAd(Landroid/view/View;)V

    goto :goto_0

    .line 369
    :cond_1
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->toCall()V

    goto :goto_0

    .line 373
    :cond_2
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mImgAdFullScreen:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/news/SplashAppActivity;->onClickImgFullScreenAd(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 167
    invoke-super {p0, p1}, Lcom/ds/daisi/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 168
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/news/SplashAppActivity;->requestWindowFeature(I)Z

    .line 169
    invoke-virtual {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f040030

    .line 170
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/news/SplashAppActivity;->setContentView(I)V

    .line 171
    invoke-virtual {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->isTaskRoot()Z

    move-result p1

    if-nez p1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->finish()V

    return-void

    .line 175
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    .line 176
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->requestSystemPermissions()V

    goto :goto_0

    .line 178
    :cond_1
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->init()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 557
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onDestroy()V

    .line 558
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 559
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mStartupPresenter:Lcom/cyjh/share/mvp/presenter/AppStartupPresenter;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mStartupPresenter:Lcom/cyjh/share/mvp/presenter/AppStartupPresenter;

    invoke-virtual {v0}, Lcom/cyjh/share/mvp/presenter/AppStartupPresenter;->onCancel()V

    .line 562
    :cond_0
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->cancelCloseTimer()V

    .line 563
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->resetFlag()V

    .line 564
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mTemplateVerifyPresenter:Lcom/cyjh/share/mvp/presenter/TemplateVerifyPresenter;

    if-eqz v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->mTemplateVerifyPresenter:Lcom/cyjh/share/mvp/presenter/TemplateVerifyPresenter;

    invoke-virtual {v0}, Lcom/cyjh/share/mvp/presenter/TemplateVerifyPresenter;->onCancel()V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 646
    invoke-super {p0, p1, p2}, Lcom/ds/daisi/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 191
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onPause()V

    .line 192
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 231
    invoke-super {p0, p1, p2, p3}, Lcom/ds/daisi/activity/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 235
    array-length p1, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget v2, p3, v1

    if-eqz v2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 243
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->init()V

    goto :goto_2

    .line 246
    :cond_2
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->openAppDetails()V

    :cond_3
    :goto_2
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 197
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onResume()V

    .line 198
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 199
    iget-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->isClickerFirst:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->toCall()V

    :cond_0
    return-void
.end method

.method public startupFail(Ljava/lang/String;)V
    .locals 0

    .line 479
    invoke-static {p0, p1}, Lcom/cyjh/share/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public startupSuc(Lcom/cyjh/share/bean/response/AppStartupResponse;)V
    .locals 5

    .line 430
    iget-object v0, p1, Lcom/cyjh/share/bean/response/AppStartupResponse;->AuthorInfo:Lcom/cyjh/share/bean/response/AuthorRelatedInfo;

    .line 431
    iget v1, v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->ServicePackStatus:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 432
    iput-boolean v2, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->isLoadCompleteStartup:Z

    .line 433
    iget p1, v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->ServicePackStatus:I

    iget-object v0, v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->ServicePackPrompt:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->displayDialogMessage(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 435
    :cond_0
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v1

    iget v3, v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->IsFreeAd:I

    iput v3, v1, Lcom/ds/daisi/entity/ParamsWrap;->isFreeAd:I

    .line 436
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v1

    iget-object v3, v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->EngineToken:Ljava/lang/String;

    iput-object v3, v1, Lcom/ds/daisi/entity/ParamsWrap;->engineToken:Ljava/lang/String;

    .line 437
    iget-object p1, p1, Lcom/cyjh/share/bean/response/AppStartupResponse;->AppInfo:Lcom/cyjh/share/bean/response/AppRelatedInfo;

    .line 438
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v1

    iget v3, p1, Lcom/cyjh/share/bean/response/AppRelatedInfo;->DailyTryTimes:I

    iput v3, v1, Lcom/ds/daisi/entity/ParamsWrap;->dailyTryTimes:I

    .line 439
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v1

    iget-object v3, p1, Lcom/cyjh/share/bean/response/AppRelatedInfo;->FeedbackTips:Ljava/lang/String;

    iput-object v3, v1, Lcom/ds/daisi/entity/ParamsWrap;->feedbackTips:Ljava/lang/String;

    .line 440
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v1

    iget v3, p1, Lcom/cyjh/share/bean/response/AppRelatedInfo;->OnceTryMinute:I

    iput v3, v1, Lcom/ds/daisi/entity/ParamsWrap;->onceTryMinute:I

    .line 441
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ds/daisi/entity/ParamsWrap;->crateCollect()V

    .line 442
    iget-object v1, p1, Lcom/cyjh/share/bean/response/AppRelatedInfo;->ScriptKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 443
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    iget-object v3, p1, Lcom/cyjh/share/bean/response/AppRelatedInfo;->ScriptKey:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/ds/daisi/AppContext;->tokenKey:J

    .line 445
    :cond_1
    iget-object v1, p1, Lcom/cyjh/share/bean/response/AppRelatedInfo;->BuyRegCodeConfig:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 446
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v1

    iget-object v1, v1, Lcom/ds/daisi/entity/ParamsWrap;->mBuyRegCodeConfigInfos:Ljava/util/List;

    iget-object v3, p1, Lcom/cyjh/share/bean/response/AppRelatedInfo;->BuyRegCodeConfig:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 448
    :cond_2
    iget-object v1, p1, Lcom/cyjh/share/bean/response/AppRelatedInfo;->FlySetting:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 449
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v1

    iget-object v1, v1, Lcom/ds/daisi/entity/ParamsWrap;->mFlySettingInfos:Ljava/util/List;

    iget-object v3, p1, Lcom/cyjh/share/bean/response/AppRelatedInfo;->FlySetting:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 451
    :cond_3
    iget-object v1, p1, Lcom/cyjh/share/bean/response/AppRelatedInfo;->RecommendSetting:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 452
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v1

    iget-object v1, v1, Lcom/ds/daisi/entity/ParamsWrap;->mRecommendSettingInfos:Ljava/util/List;

    iget-object p1, p1, Lcom/cyjh/share/bean/response/AppRelatedInfo;->RecommendSetting:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 454
    :cond_4
    iget-object p1, v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->AdList:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 455
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object p1

    iget-object p1, p1, Lcom/ds/daisi/entity/ParamsWrap;->mAdInfos:Ljava/util/List;

    iget-object v1, v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->AdList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 457
    :cond_5
    iput-boolean v2, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->isLoadCompleteStartup:Z

    .line 458
    iget p1, v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->ServicePackStatus:I

    if-ne p1, v2, :cond_6

    .line 459
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->loadAdOrCallNextPage()V

    goto :goto_0

    .line 460
    :cond_6
    iget p1, v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->ServicePackStatus:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    .line 461
    iget p1, v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->ServicePackStatus:I

    iget-object v0, v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->ServicePackPrompt:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->displayDialogMessage(ILjava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public templateVerifyFailure(Ljava/lang/String;)V
    .locals 0

    .line 705
    invoke-static {p0, p1}, Lcom/cyjh/share/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public templateVerifySuccess(Lcom/cyjh/share/bean/response/TemplateResponse;)V
    .locals 3

    const/4 v0, 0x1

    .line 692
    iput-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity;->isLoadCompleteTemplateVerify:Z

    .line 693
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v1

    iget v2, p1, Lcom/cyjh/share/bean/response/TemplateResponse;->TemplateType:I

    iput v2, v1, Lcom/cyjh/share/manager/VariableAndConstantsManager;->templateType:I

    .line 694
    iget v1, p1, Lcom/cyjh/share/bean/response/TemplateResponse;->Status:I

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/cyjh/share/bean/response/TemplateResponse;->Status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 697
    :cond_0
    iget p1, p1, Lcom/cyjh/share/bean/response/TemplateResponse;->Status:I

    if-ne p1, v0, :cond_2

    .line 699
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->loadAdMessage()V

    goto :goto_1

    .line 696
    :cond_1
    :goto_0
    iget v0, p1, Lcom/cyjh/share/bean/response/TemplateResponse;->Status:I

    iget-object p1, p1, Lcom/cyjh/share/bean/response/TemplateResponse;->Remark:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/ds/daisi/activity/news/SplashAppActivity;->displayDialogMessage(ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
