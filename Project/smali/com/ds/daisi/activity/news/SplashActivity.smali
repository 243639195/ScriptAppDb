.class public Lcom/ds/daisi/activity/news/SplashActivity;
.super Lcom/ds/daisi/activity/BaseActivity;
.source "SplashActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/activity/news/SplashActivity$ResetNetworkListener;,
        Lcom/ds/daisi/activity/news/SplashActivity$MyKnownButtonListener;,
        Lcom/ds/daisi/activity/news/SplashActivity$MyAsyncTask;,
        Lcom/ds/daisi/activity/news/SplashActivity$CloseButtonTimer;,
        Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;,
        Lcom/ds/daisi/activity/news/SplashActivity$SmallBallPollingRunnable;
    }
.end annotation


# static fields
.field public static final ACQUIRE_APP_DATA_MESSAGE:I = 0x19

.field public static final AD_SHOW_TIME:I = 0x8

.field private static final APP_CLOSED:I = 0x0

.field private static final APP_PASS:I = 0x1

.field public static final APP_START_SUCCESS_MESSAGE:I = 0x14

.field private static final APP_WILL_DEACTIVATED:I = 0x2

.field public static final AUTO_JUDGE_PAGE_MESSAGE:I = 0x1b

.field private static final BACKGROUND_AD:I = 0x66

.field public static final BG_DISPLAY_SUCCESS_STATIS_MESSAGE:I = 0x12

.field public static final CHECK_REPORT_INFO_STATUS_MESSAGE:I = 0x1a

.field private static final CIRCLE_SIZE_VALUE:F = 8.0f

.field private static final CIRCLE_TOTAL_COUNT:I = 0x6

.field private static final COLOR_BLUE:Ljava/lang/String; = "#3c7ac5"

.field private static final COLOR_GRAY:Ljava/lang/String; = "#bababa"

.field private static final CYCLE_TIME_DOT:I = 0x64

.field public static final DEFAULT_FOUR_VALUE:I = 0x4

.field private static final DEFAULT_VALUE:I = 0x0

.field public static final DISPLAY_FENG_LING_AD_SUCCESS_MESSAGE:I = 0x17

.field private static final FENG_LING_AD:I = 0x65

.field public static final FENG_LING_NET_REQUEST_MESSAGE:I = 0x16

.field private static final ILFYAD_NET_REQUEST_MESSAGE:I = 0x11

.field public static final ILFY_DISPLAY_SUCCESS_REQ_MESSAGE:I = 0xf

.field public static final JUMP_TO_NEXT_PAGE_MESSAGE:I = 0x18

.field public static final LOAD_BACKGROUND_MESSAGE:I = 0x10

.field public static final LOAD_START_APP_MESSAGE:I = 0x15

.field public static final MSG_DEFAULT_DELAY:I = 0xbb8

.field public static final MSG_GET_DOMAIN_NAME_FIRST_JUDGE_OPERATE:I = 0x1c

.field public static final MSG_GET_DOMAIN_NAME_SECOND_JUDGE_OPERATE:I = 0x1d

.field private static final ONE_WAY_AD:I = 0x67

.field private static final PERMISSIONS_REQUEST_CODE:I = 0x1

.field private static final REQUEST_FENG_LING_AD_WEB_VIEW:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "SplashActivity"

.field public static final TEMPLATE_VERIFY_SUCCESS_MESSAGE:I = 0x13

.field public static final TIMED_PAGE:I = 0x14

.field private static final XUN_FEI_AD:I = 0x64


# instance fields
.field private adILFYType:I

.field private adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

.field private appStartTimeReq:J

.field private countAdTimer:I

.field private currentDotCounts:I

.field private fengLingAdManager:Lcom/ds/daisi/mvp/managers/FengLingAdManager;

.field private flSplashAd:Landroid/widget/FrameLayout;

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

.field private mCanJumpPage:Z

.field private mClickDwonX:F

.field private mClickDwonY:F

.field private mClickUpX:F

.field private mClickUpY:F

.field private mCloseAdTimer:Lcom/ds/daisi/activity/news/SplashActivity$CloseButtonTimer;

.field private mCurrentAdType:I

.field private mFengLingAdInfo:Lcom/cyjh/share/bean/response/FengLingAdInfo;

.field private mGrayGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mHandler:Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

.field private mImgAdFullScreen:Landroid/widget/ImageView;

.field private mLinearCircleDot:Landroid/widget/LinearLayout;

.field private mNativeListener:Lcom/ds/daisi/listener/IFLYADListener;

.field private mPollingRunnable:Lcom/ds/daisi/activity/news/SplashActivity$SmallBallPollingRunnable;

.field private mTvAdMark:Landroid/widget/TextView;

.field private mTvCloseAd:Landroid/widget/TextView;

.field private permissions:[Ljava/lang/String;

.field private templateTimeReq:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 123
    invoke-direct {p0}, Lcom/ds/daisi/activity/BaseActivity;-><init>()V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->imageViewLists:Ljava/util/List;

    .line 168
    new-instance v0, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;Lcom/ds/daisi/activity/news/SplashActivity$1;)V

    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    const/4 v0, 0x0

    .line 208
    iput v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->adILFYType:I

    .line 209
    iput v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->countAdTimer:I

    .line 223
    iput-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->isClickerFirst:Z

    .line 237
    iput-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->isLoadCompleteStartup:Z

    .line 238
    iput-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->isLoadCompleteTemplateVerify:Z

    const-wide/16 v1, 0x0

    .line 239
    iput-wide v1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->templateTimeReq:J

    .line 240
    iput-wide v1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->appStartTimeReq:J

    const/16 v1, 0x64

    .line 250
    iput v1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mCurrentAdType:I

    const/4 v1, 0x1

    .line 256
    iput-boolean v1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mCanJumpPage:Z

    const/16 v2, 0xc

    .line 370
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "android.permission.INTERNET"

    aput-object v3, v2, v0

    const-string v0, "android.permission.READ_PHONE_STATE"

    aput-object v0, v2, v1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v1, 0x3

    aput-object v0, v2, v1

    const-string v0, "android.permission.CALL_PHONE"

    const/4 v1, 0x4

    aput-object v0, v2, v1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    const/4 v1, 0x5

    aput-object v0, v2, v1

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    const/4 v1, 0x6

    aput-object v0, v2, v1

    const-string v0, "android.permission.SEND_SMS"

    const/4 v1, 0x7

    aput-object v0, v2, v1

    const-string v0, "android.permission.READ_SMS"

    const/16 v1, 0x8

    aput-object v0, v2, v1

    const-string v0, "android.permission.READ_CONTACTS"

    const/16 v1, 0x9

    aput-object v0, v2, v1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const/16 v1, 0xa

    aput-object v0, v2, v1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const/16 v1, 0xb

    aput-object v0, v2, v1

    iput-object v2, p0, Lcom/ds/daisi/activity/news/SplashActivity;->permissions:[Ljava/lang/String;

    .line 1094
    new-instance v0, Lcom/ds/daisi/activity/news/SplashActivity$13;

    invoke-direct {v0, p0}, Lcom/ds/daisi/activity/news/SplashActivity$13;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;)V

    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mNativeListener:Lcom/ds/daisi/listener/IFLYADListener;

    return-void
.end method

.method static synthetic access$1200(Lcom/ds/daisi/activity/news/SplashActivity;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->toCall()V

    return-void
.end method

.method static synthetic access$1300(Lcom/ds/daisi/activity/news/SplashActivity;)I
    .locals 0

    .line 123
    iget p0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->currentDotCounts:I

    return p0
.end method

.method static synthetic access$1308(Lcom/ds/daisi/activity/news/SplashActivity;)I
    .locals 2

    .line 123
    iget v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->currentDotCounts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->currentDotCounts:I

    return v0
.end method

.method static synthetic access$1400(Lcom/ds/daisi/activity/news/SplashActivity;)Ljava/util/List;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->imageViewLists:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ds/daisi/activity/news/SplashActivity;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mBlueGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ds/daisi/activity/news/SplashActivity;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mGrayGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ds/daisi/activity/news/SplashActivity;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->loadBackgroundAd()V

    return-void
.end method

.method static synthetic access$1800(Lcom/ds/daisi/activity/news/SplashActivity;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->loadILFYAd()V

    return-void
.end method

.method static synthetic access$1900(Lcom/ds/daisi/activity/news/SplashActivity;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->loadFeLingAd()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 123
    sget-object v0, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/ds/daisi/activity/news/SplashActivity;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->onShowImgFeLingAd()V

    return-void
.end method

.method static synthetic access$2100(Lcom/ds/daisi/activity/news/SplashActivity;ILjava/lang/String;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/ds/daisi/activity/news/SplashActivity;->appCloseDialog(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/ds/daisi/activity/news/SplashActivity;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->loadStartAppRequest()V

    return-void
.end method

.method static synthetic access$2300(Lcom/ds/daisi/activity/news/SplashActivity;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->acquireAppData()V

    return-void
.end method

.method static synthetic access$2400(Lcom/ds/daisi/activity/news/SplashActivity;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->checkReportInfoStatus()V

    return-void
.end method

.method static synthetic access$2500(Lcom/ds/daisi/activity/news/SplashActivity;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->getDomainNameFirstJudgeOperate()V

    return-void
.end method

.method static synthetic access$2600(Lcom/ds/daisi/activity/news/SplashActivity;)Lcom/iflytek/voiceads/conn/NativeDataRef;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/ds/daisi/activity/news/SplashActivity;Lcom/iflytek/voiceads/conn/NativeDataRef;)Lcom/iflytek/voiceads/conn/NativeDataRef;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/ds/daisi/activity/news/SplashActivity;Ljava/lang/String;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/news/SplashActivity;->displayFullScreenAD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/ds/daisi/activity/news/SplashActivity;I)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/news/SplashActivity;->setCurrentAdType(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/ds/daisi/activity/news/SplashActivity;Lcom/cyjh/share/bean/response/PhoneConfig;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/news/SplashActivity;->ddyGuideImagePreLoad(Lcom/cyjh/share/bean/response/PhoneConfig;)V

    return-void
.end method

.method static synthetic access$3008(Lcom/ds/daisi/activity/news/SplashActivity;)I
    .locals 2

    .line 123
    iget v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->countAdTimer:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->countAdTimer:I

    return v0
.end method

.method static synthetic access$3100(Lcom/ds/daisi/activity/news/SplashActivity;Ljava/lang/String;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/news/SplashActivity;->getFeLingAdInfoOperate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3202(Lcom/ds/daisi/activity/news/SplashActivity;Lcom/cyjh/share/bean/response/FengLingAdInfo;)Lcom/cyjh/share/bean/response/FengLingAdInfo;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mFengLingAdInfo:Lcom/cyjh/share/bean/response/FengLingAdInfo;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/ds/daisi/activity/news/SplashActivity;)Landroid/widget/TextView;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mTvCloseAd:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ds/daisi/activity/news/SplashActivity;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->loadAdOrCallNextPage()V

    return-void
.end method

.method static synthetic access$400(Lcom/ds/daisi/activity/news/SplashActivity;)Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ds/daisi/activity/news/SplashActivity;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->getDomainNameSecondJudgeOperate()V

    return-void
.end method

.method static synthetic access$600(Lcom/ds/daisi/activity/news/SplashActivity;)J
    .locals 2

    .line 123
    iget-wide v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->templateTimeReq:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/ds/daisi/activity/news/SplashActivity;J)J
    .locals 0

    .line 123
    iput-wide p1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->templateTimeReq:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/ds/daisi/activity/news/SplashActivity;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/ds/daisi/activity/news/SplashActivity;->parseJson(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/ds/daisi/activity/news/SplashActivity;)J
    .locals 2

    .line 123
    iget-wide v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->appStartTimeReq:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/ds/daisi/activity/news/SplashActivity;J)J
    .locals 0

    .line 123
    iput-wide p1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->appStartTimeReq:J

    return-wide p1
.end method

.method private acquireAppData()V
    .locals 5

    .line 529
    invoke-static {p0}, Lcom/ds/daisi/util/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    invoke-static {}, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxyFactory;->getNormalThreadPool()Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/activity/news/SplashActivity$5;

    invoke-direct {v1, p0}, Lcom/ds/daisi/activity/news/SplashActivity$5;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->executeRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 547
    :cond_0
    invoke-static {}, Lcom/ds/daisi/manager/DialogManager;->getInstance()Lcom/ds/daisi/manager/DialogManager;

    move-result-object v0

    const v1, 0x7f040053

    const v2, 0x7f0b0131

    invoke-virtual {v0, p0, v1, v2}, Lcom/ds/daisi/manager/DialogManager;->showMessageDialog(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 550
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 551
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const v1, 0x7f10012f

    .line 552
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f100130

    .line 553
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 554
    new-instance v3, Lcom/ds/daisi/activity/news/SplashActivity$ResetNetworkListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4}, Lcom/ds/daisi/activity/news/SplashActivity$ResetNetworkListener;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;Landroid/app/AlertDialog;Lcom/ds/daisi/activity/news/SplashActivity$1;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    new-instance v0, Lcom/ds/daisi/activity/news/SplashActivity$6;

    invoke-direct {v0, p0}, Lcom/ds/daisi/activity/news/SplashActivity$6;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private appCloseDialog(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 918
    iput-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->isLoadCompleteStartup:Z

    .line 919
    invoke-static {}, Lcom/ds/daisi/manager/DialogManager;->getInstance()Lcom/ds/daisi/manager/DialogManager;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/activity/news/SplashActivity$MyKnownButtonListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ds/daisi/activity/news/SplashActivity$MyKnownButtonListener;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;Lcom/ds/daisi/activity/news/SplashActivity$1;)V

    invoke-virtual {v0, p1, p2, p0, v1}, Lcom/ds/daisi/manager/DialogManager;->displayDialogMessage(ILjava/lang/String;Landroid/content/Context;Lcom/ds/daisi/listener/BaseTextViewKnownListener;)V

    return-void
.end method

.method private cancelCloseTimer()V
    .locals 1

    .line 1131
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mCloseAdTimer:Lcom/ds/daisi/activity/news/SplashActivity$CloseButtonTimer;

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mCloseAdTimer:Lcom/ds/daisi/activity/news/SplashActivity$CloseButtonTimer;

    invoke-virtual {v0}, Lcom/ds/daisi/activity/news/SplashActivity$CloseButtonTimer;->cancel()V

    const/4 v0, 0x0

    .line 1133
    iput v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->countAdTimer:I

    const/4 v0, 0x0

    .line 1134
    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mCloseAdTimer:Lcom/ds/daisi/activity/news/SplashActivity$CloseButtonTimer;

    :cond_0
    return-void
.end method

.method private checkReportInfoStatus()V
    .locals 5

    .line 723
    sget-object v0, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "checkReportInfoStatus --> 1"

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    invoke-static {}, Lcom/ds/daisi/util/FeLingAdDBHelper;->getInstance()Lcom/ds/daisi/util/FeLingAdDBHelper;

    move-result-object v0

    const-string v1, "101478"

    invoke-virtual {v0, v1}, Lcom/ds/daisi/util/FeLingAdDBHelper;->getFeLingAdReportInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 725
    invoke-static {v0}, Lcom/ds/daisi/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 726
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

    .line 727
    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 728
    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 729
    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->getPostState()I

    move-result v4

    if-nez v4, :cond_0

    .line 730
    invoke-direct {p0, v2}, Lcom/ds/daisi/activity/news/SplashActivity;->reportLogInfo(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v1, v3}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->setPostState(I)V

    .line 732
    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->save()Z

    .line 733
    sget-object v1, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkReportInfoStatus --> 2 url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/share/util/SlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 737
    :cond_1
    invoke-static {}, Lcom/ds/daisi/util/FeLingAdDBHelper;->getInstance()Lcom/ds/daisi/util/FeLingAdDBHelper;

    move-result-object v0

    const-string v1, "101478"

    invoke-virtual {v0, v1}, Lcom/ds/daisi/util/FeLingAdDBHelper;->deleteAllFeLingAdReportInfo(Ljava/lang/String;)I

    .line 739
    :cond_2
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    const/16 v1, 0x19

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private clickXunFeiAd(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 860
    iput-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->isClickerFirst:Z

    .line 861
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/conn/NativeDataRef;->onClick(Landroid/view/View;)Z

    .line 863
    iget p1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->adILFYType:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 864
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    new-instance v0, Lcom/ds/daisi/activity/news/SplashActivity$12;

    invoke-direct {v0, p0}, Lcom/ds/daisi/activity/news/SplashActivity$12;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private ddyGuideImagePreLoad(Lcom/cyjh/share/bean/response/PhoneConfig;)V
    .locals 6

    .line 504
    invoke-virtual {p1}, Lcom/cyjh/share/bean/response/PhoneConfig;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cyjh/share/bean/response/PhoneConfig;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cyjh/share/util/FileUtil;->getFileNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 506
    sget-object v2, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ddyGuideImagePreLoad --> imageUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cyjh/share/bean/response/PhoneConfig;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lcom/cyjh/share/util/DownloadUtil;->get()Lcom/cyjh/share/util/DownloadUtil;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cyjh/share/bean/response/PhoneConfig;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cyjh/share/util/FileUtil;->getFileNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/ds/daisi/activity/news/SplashActivity$4;

    invoke-direct {v5, p0, p1, v1}, Lcom/ds/daisi/activity/news/SplashActivity$4;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;Lcom/cyjh/share/bean/response/PhoneConfig;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/cyjh/share/util/DownloadUtil;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;)V

    return-void
.end method

.method private dealWithUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "__EVENT_TIME__"

    .line 804
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "__EVENT_TIME__"

    .line 805
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

    .line 807
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "__CLICK_DOWN_X__"

    .line 808
    iget v2, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mClickDwonX:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "_CLICK_DOWN_Y__"

    .line 811
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "_CLICK_DOWN_Y__"

    .line 812
    iget v2, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mClickDwonY:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "__CLICK_UP_X__"

    .line 815
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "__CLICK_UP_X__"

    .line 816
    iget v2, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mClickUpX:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v1, "__CLICK_UP_Y__"

    .line 819
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "__CLICK_UP_Y__"

    .line 820
    iget v1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mClickUpY:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method private displayAd()V
    .locals 5

    .line 1255
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1256
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    iget-object v2, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mImgAdFullScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/iflytek/voiceads/conn/NativeDataRef;->onExposure(Landroid/view/View;)Z

    .line 1257
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/conn/NativeDataRef;->getAdSourceMark()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mTvAdMark:Landroid/widget/TextView;

    const v2, 0x7f09005b

    invoke-virtual {p0, v2}, Lcom/ds/daisi/activity/news/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ds/daisi/activity/news/SplashActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    invoke-virtual {v4}, Lcom/iflytek/voiceads/conn/NativeDataRef;->getAdSourceMark()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1259
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mTvAdMark:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1261
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/conn/NativeDataRef;->getActionType()I

    move-result v0

    iput v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->adILFYType:I

    .line 1264
    :cond_1
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->displayEightSecond()V

    .line 1265
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->removePollingRunnable()V

    .line 1266
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mImgAdFullScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1267
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mImgAdFullScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1268
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    if-eqz v0, :cond_2

    .line 1269
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1270
    :cond_2
    iget v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mCurrentAdType:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_3

    .line 1271
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1272
    :cond_3
    iget v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mCurrentAdType:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_4

    .line 1273
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1275
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    new-instance v1, Lcom/ds/daisi/activity/news/SplashActivity$15;

    invoke-direct {v1, p0}, Lcom/ds/daisi/activity/news/SplashActivity$15;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private displayEightSecond()V
    .locals 3

    .line 1124
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->cancelCloseTimer()V

    .line 1125
    new-instance v0, Lcom/ds/daisi/activity/news/SplashActivity$CloseButtonTimer;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/ds/daisi/activity/news/SplashActivity$CloseButtonTimer;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;ILcom/ds/daisi/activity/news/SplashActivity$1;)V

    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mCloseAdTimer:Lcom/ds/daisi/activity/news/SplashActivity$CloseButtonTimer;

    .line 1126
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mCloseAdTimer:Lcom/ds/daisi/activity/news/SplashActivity$CloseButtonTimer;

    invoke-virtual {v0}, Lcom/ds/daisi/activity/news/SplashActivity$CloseButtonTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private displayFullScreenAD(Ljava/lang/String;)V
    .locals 2

    const-string v0, ".gif"

    .line 1242
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    invoke-static {}, Lcom/ds/daisi/util/GlideUtils;->getDefaultOption()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 1244
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    .line 1245
    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mImgAdFullScreen:Landroid/widget/ImageView;

    invoke-static {p0, p1, v1, v0}, Lcom/ds/daisi/util/GlideUtils;->loadGif(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;)V

    goto :goto_0

    .line 1247
    :cond_0
    invoke-static {}, Lcom/ds/daisi/util/GlideUtils;->getDefaultOption()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 1248
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    .line 1249
    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mImgAdFullScreen:Landroid/widget/ImageView;

    invoke-static {p0, p1, v1, v0}, Lcom/ds/daisi/util/GlideUtils;->load(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;)V

    .line 1251
    :goto_0
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->displayAd()V

    return-void
.end method

.method private getDomainNameFirst()V
    .locals 2

    .line 417
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->getInstance()Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/activity/news/SplashActivity$2;

    invoke-direct {v1, p0}, Lcom/ds/daisi/activity/news/SplashActivity$2;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->getDomainNameFirst(Landroid/content/Context;Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter$OnResultCallback;)V

    return-void
.end method

.method private getDomainNameFirstJudgeOperate()V
    .locals 4

    return-void
.end method

.method private getDomainNameSecond()V
    .locals 2

    .line 460
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->getInstance()Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/activity/news/SplashActivity$3;

    invoke-direct {v1, p0}, Lcom/ds/daisi/activity/news/SplashActivity$3;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->getDomainNameSecond(Landroid/content/Context;Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter$OnResultCallback;)V

    return-void
.end method

.method private getDomainNameSecondJudgeOperate()V
    .locals 4

    .line 450
    sget-object v0, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "getDomainNameSecondJudgeOperate --> "

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-static {p0}, Lcom/ds/daisi/util/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->getDomainNameSecond()V

    goto :goto_0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u5f53\u524d\u7f51\u7edc\u65e0\u6cd5\u8bbf\u95ee\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e\u2026\u2026"

    .line 454
    invoke-static {p0, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private getFeLingAdInfoOperate(Ljava/lang/String;)V
    .locals 6

    .line 1216
    sput-object p1, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->PUBLIC_INTERNET_IP:Ljava/lang/String;

    .line 1217
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->fengLingAdManager:Lcom/ds/daisi/mvp/managers/FengLingAdManager;

    sget-object v1, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/ds/daisi/activity/news/SplashActivity$14;

    invoke-direct {v3, p0}, Lcom/ds/daisi/activity/news/SplashActivity$14;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;)V

    const-string v5, "http://api-cn.felink.com/v1/rta"

    const/4 v2, 0x2

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->getFengLingAdInfo(Ljava/lang/String;ILcom/ds/daisi/mvp/managers/Callback;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private init()V
    .locals 0

    .line 386
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->initView()V

    .line 387
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->initAfter()V

    .line 388
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->initListener()V

    invoke-static {p0}, Lkiller/util/JumpElfinFreeActivity;->jump(Lcom/ds/daisi/activity/news/SplashActivity;)V

    return-void
.end method

.method private initAfter()V
    .locals 2

    .line 397
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ds/daisi/AppContext;->initEngine()V

    .line 398
    new-instance v0, Lcom/ds/daisi/mvp/managers/FengLingAdManager;

    invoke-direct {v0}, Lcom/ds/daisi/mvp/managers/FengLingAdManager;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->fengLingAdManager:Lcom/ds/daisi/mvp/managers/FengLingAdManager;

    .line 399
    new-instance v0, Lcom/ds/daisi/activity/news/SplashActivity$SmallBallPollingRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ds/daisi/activity/news/SplashActivity$SmallBallPollingRunnable;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;Lcom/ds/daisi/activity/news/SplashActivity$1;)V

    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mPollingRunnable:Lcom/ds/daisi/activity/news/SplashActivity$SmallBallPollingRunnable;

    .line 400
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mPollingRunnable:Lcom/ds/daisi/activity/news/SplashActivity$SmallBallPollingRunnable;

    invoke-virtual {v0}, Lcom/ds/daisi/activity/news/SplashActivity$SmallBallPollingRunnable;->start()V

    .line 401
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    invoke-static {p0}, Lcom/cyjh/share/util/EmulatorUtils;->isEmulator(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/ds/daisi/AppContext;->isEmulator:Z

    .line 402
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->getDomainNameFirstJudgeOperate()V

    .line 403
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private initDot()V
    .locals 7

    .line 662
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mLinearCircleDot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 663
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->imageViewLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 665
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 666
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v4, 0x1

    .line 667
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v4, 0x41000000    # 8.0f

    .line 668
    invoke-static {p0, v4}, Lcom/ds/daisi/util/AppDeviceUtils;->getDipToPx(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 669
    invoke-static {p0, v4}, Lcom/ds/daisi/util/AppDeviceUtils;->getDipToPx(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v4}, Lcom/ds/daisi/util/AppDeviceUtils;->getDipToPx(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    if-nez v1, :cond_0

    const-string v5, "#3c7ac5"

    .line 671
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 672
    iput-object v3, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mBlueGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_1

    :cond_0
    const-string v5, "#bababa"

    .line 674
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v5, 0x5

    if-ne v1, v5, :cond_1

    .line 676
    iput-object v3, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mGrayGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 679
    :cond_1
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 680
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 682
    invoke-static {p0, v4}, Lcom/ds/daisi/util/AppDeviceUtils;->getDipToPx(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v0, v0, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 683
    iget-object v4, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mLinearCircleDot:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 684
    iget-object v3, p0, Lcom/ds/daisi/activity/news/SplashActivity;->imageViewLists:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private initListener()V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mTvCloseAd:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f1001b6

    .line 649
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/news/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mImgAdFullScreen:Landroid/widget/ImageView;

    const v0, 0x7f1001b7

    .line 650
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/news/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mTvAdMark:Landroid/widget/TextView;

    const v0, 0x7f1000cd

    .line 651
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/news/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mLinearCircleDot:Landroid/widget/LinearLayout;

    const v0, 0x7f1001b8

    .line 652
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/news/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mTvCloseAd:Landroid/widget/TextView;

    const v0, 0x7f1001b9

    .line 653
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/news/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->flSplashAd:Landroid/widget/FrameLayout;

    return-void
.end method

.method private judgeLoadAdOperate()V
    .locals 2

    const/16 v0, 0x64

    .line 1319
    invoke-direct {p0, v0}, Lcom/ds/daisi/activity/news/SplashActivity;->setCurrentAdType(I)V

    .line 1320
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private loadAdMessage()V
    .locals 1

    .line 1311
    iget-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->isLoadCompleteStartup:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->isLoadCompleteTemplateVerify:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1312
    iput-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->isLoadCompleteTemplateVerify:Z

    .line 1313
    iput-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->isLoadCompleteStartup:Z

    .line 1314
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->judgeLoadAdOperate()V

    :cond_0
    return-void
.end method

.method private loadAdOrCallNextPage()V
    .locals 2

    .line 924
    iget-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->isLoadCompleteTemplateVerify:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->isLoadCompleteStartup:Z

    if-nez v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 928
    :cond_0
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ds/daisi/entity/ParamsWrap;->isFreeAd()Z

    move-result v0

    if-nez v0, :cond_1

    .line 929
    sget-object v0, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "loadAdOrCallNextPage --> \u4e0d\u514d\u5e7f\u544a"

    invoke-static {v0, v1}, Lcom/ds/daisi/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->loadAdMessage()V

    goto :goto_0

    .line 933
    :cond_1
    sget-object v0, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "loadAdOrCallNextPage --> \u514d\u5e7f\u544a"

    invoke-static {v0, v1}, Lcom/ds/daisi/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    invoke-static {p0}, Lcom/ds/daisi/util/IntentUtils;->toCallElfinPayActivity(Landroid/content/Context;)V

    .line 936
    invoke-virtual {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->finish()V

    :goto_0
    return-void
.end method

.method private loadBackgroundAd()V
    .locals 4

    .line 1075
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/entity/ParamsWrap;->isDisplayBackgroundSetAd(I)Z

    move-result v0

    .line 1076
    sget-object v1, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u52a0\u8f7d\u540e\u53f0\u5e7f\u544a handleMessage --> isDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 1078
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    iget-object v0, v0, Lcom/ds/daisi/entity/ParamsWrap;->mBackgroundSetAdInfo:Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    iget-object v0, v0, Lcom/ds/daisi/entity/ParamsWrap;->mBackgroundSetAdInfo:Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;

    iget-object v0, v0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->ImageUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 1079
    :goto_0
    sget-object v1, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u52a0\u8f7d\u540e\u53f0\u5e7f\u544a handleMessage --> imageUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u540e\u53f0\u5e7f\u544a\u52a0\u8f7d\u6210\u529f"

    .line 1081
    invoke-static {p0, v1}, Lcom/cyjh/share/util/SlToast;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 1082
    invoke-direct {p0, v0}, Lcom/ds/daisi/activity/news/SplashActivity;->displayFullScreenAD(Ljava/lang/String;)V

    goto :goto_1

    .line 1084
    :cond_1
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->toCall()V

    goto :goto_1

    .line 1087
    :cond_2
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->toCall()V

    :goto_1
    return-void
.end method

.method private loadFeLingAd()V
    .locals 2

    .line 643
    sget-object v0, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "loadFeLingAd -->"

    invoke-static {v0, v1}, Lcom/ds/daisi/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    new-instance v0, Lcom/ds/daisi/activity/news/SplashActivity$MyAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ds/daisi/activity/news/SplashActivity$MyAsyncTask;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;Lcom/ds/daisi/activity/news/SplashActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/news/SplashActivity$MyAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private loadILFYAd()V
    .locals 4

    .line 623
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    const-string v1, "21462E427898ADCCC2171718D603B0DE"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/ds/daisi/entity/ParamsWrap;->displayILFYAd(ILjava/lang/String;)Lcom/cyjh/share/bean/ILFYBean;

    move-result-object v0

    .line 625
    sget-object v1, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadILFYAd --> ilfyAd.isDisplay ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/cyjh/share/bean/ILFYBean;->isDisplay:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-boolean v1, v0, Lcom/cyjh/share/bean/ILFYBean;->isDisplay:Z

    if-eqz v1, :cond_0

    .line 628
    :try_start_0
    new-instance v1, Lcom/iflytek/voiceads/IFLYNativeAd;

    iget-object v0, v0, Lcom/cyjh/share/bean/ILFYBean;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mNativeListener:Lcom/ds/daisi/listener/IFLYADListener;

    invoke-direct {v1, p0, v0, v2}, Lcom/iflytek/voiceads/IFLYNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/voiceads/listener/IFLYNativeListener;)V

    const-string v0, "app_ver"

    .line 629
    invoke-static {p0}, Lcom/ds/daisi/util/AppDeviceUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/voiceads/IFLYNativeAd;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 630
    invoke-virtual {v1}, Lcom/iflytek/voiceads/IFLYNativeAd;->loadAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 632
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 633
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->toCall()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x65

    .line 637
    invoke-direct {p0, v0}, Lcom/ds/daisi/activity/news/SplashActivity;->setCurrentAdType(I)V

    .line 638
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method private loadStartAppRequest()V
    .locals 2

    .line 566
    invoke-static {}, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxyFactory;->getNormalThreadPool()Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/activity/news/SplashActivity$7;

    invoke-direct {v1, p0}, Lcom/ds/daisi/activity/news/SplashActivity$7;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->executeRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onClickImgBackGroundAd()V
    .locals 8

    .line 848
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/activity/news/SplashActivity$11;

    invoke-direct {v1, p0}, Lcom/ds/daisi/activity/news/SplashActivity$11;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->setCallback(Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnCallback;)Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object v2

    .line 855
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    iget-object v0, v0, Lcom/ds/daisi/entity/ParamsWrap;->mBackgroundSetAdInfo:Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;

    iget-wide v6, v0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->Id:J

    const/4 v4, 0x1

    const/4 v5, 0x3

    move-object v3, p0

    .line 854
    invoke-virtual/range {v2 .. v7}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->loadAd(Landroid/content/Context;IIJ)V

    return-void
.end method

.method private onClickImgFeLingAd()V
    .locals 5

    .line 776
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mFengLingAdInfo:Lcom/cyjh/share/bean/response/FengLingAdInfo;

    invoke-virtual {v0}, Lcom/cyjh/share/bean/response/FengLingAdInfo;->getActionName()I

    move-result v0

    .line 777
    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mFengLingAdInfo:Lcom/cyjh/share/bean/response/FengLingAdInfo;

    invoke-virtual {v1}, Lcom/cyjh/share/bean/response/FengLingAdInfo;->getWebTracks()Lcom/cyjh/share/bean/response/FengLingAdInfo$WebTracks;

    move-result-object v1

    .line 778
    invoke-virtual {v1}, Lcom/cyjh/share/bean/response/FengLingAdInfo$WebTracks;->getCtrackUrls()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ds/daisi/activity/news/SplashActivity;->reportLogInfo(Ljava/util/List;)V

    .line 779
    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mFengLingAdInfo:Lcom/cyjh/share/bean/response/FengLingAdInfo;

    invoke-virtual {v1}, Lcom/cyjh/share/bean/response/FengLingAdInfo;->getClickUrl()Ljava/lang/String;

    move-result-object v1

    .line 780
    sget-object v2, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

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

    const/4 v0, 0x4

    .line 783
    iput v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->countAdTimer:I

    .line 784
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->saveInfoToDB()V

    .line 785
    new-instance v0, Lcom/ds/daisi/download/ApkDownloadHelper;

    const-string v2, "101478"

    invoke-direct {v0, p0, v2}, Lcom/ds/daisi/download/ApkDownloadHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 786
    invoke-virtual {v0, v1}, Lcom/ds/daisi/download/ApkDownloadHelper;->downloadAPK(Ljava/lang/String;)V

    goto :goto_0

    .line 788
    :cond_0
    invoke-direct {p0, v1}, Lcom/ds/daisi/activity/news/SplashActivity;->toCallFeLingWebView(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private onClickImgFullScreenAd(Landroid/view/View;)V
    .locals 3

    .line 743
    sget-object v0, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickImgFullScreenAd --> isClickerFirst="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/ds/daisi/activity/news/SplashActivity;->isClickerFirst:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mCurrentAdType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mCurrentAdType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ds/daisi/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->isClickerFirst:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 748
    iput-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->isClickerFirst:Z

    .line 749
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->cancelCloseTimer()V

    .line 750
    iget v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mCurrentAdType:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 751
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    if-eqz v0, :cond_3

    .line 753
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/news/SplashActivity;->clickXunFeiAd(Landroid/view/View;)V

    goto :goto_0

    .line 755
    :cond_1
    iget p1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mCurrentAdType:I

    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    .line 756
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->onClickImgFeLingAd()V

    goto :goto_0

    .line 757
    :cond_2
    iget p1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mCurrentAdType:I

    const/16 v0, 0x66

    if-ne p1, v0, :cond_3

    .line 759
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->onClickImgBackGroundAd()V

    :cond_3
    :goto_0
    return-void
.end method

.method private onDownloadSuccessOperate()V
    .locals 5

    .line 1363
    sget-object v0, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDownloadSuccessOperate --> 1 "

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    invoke-static {}, Lcom/ds/daisi/util/FeLingAdDBHelper;->getInstance()Lcom/ds/daisi/util/FeLingAdDBHelper;

    move-result-object v0

    const-string v1, "101478"

    invoke-virtual {v0, v1}, Lcom/ds/daisi/util/FeLingAdDBHelper;->getFeLingAdReportInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1365
    invoke-static {v0}, Lcom/ds/daisi/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1366
    sget-object v1, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    const-string v2, "onDownloadSuccessOperate --> 2"

    invoke-static {v1, v2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
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

    .line 1368
    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 1369
    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 1370
    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->getType()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->getPostState()I

    move-result v4

    if-nez v4, :cond_0

    .line 1371
    invoke-direct {p0, v2}, Lcom/ds/daisi/activity/news/SplashActivity;->reportLogInfo(Ljava/lang/String;)V

    .line 1372
    invoke-virtual {v1, v3}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->setPostState(I)V

    .line 1373
    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->save()Z

    .line 1374
    sget-object v1, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

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

    .line 1382
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1385
    :cond_0
    sget-object v0, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "onInstallSuccessOperate --> 1 "

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    invoke-static {}, Lcom/ds/daisi/util/FeLingAdDBHelper;->getInstance()Lcom/ds/daisi/util/FeLingAdDBHelper;

    move-result-object v0

    const-string v1, "101478"

    invoke-virtual {v0, v1}, Lcom/ds/daisi/util/FeLingAdDBHelper;->getFeLingAdReportInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1387
    invoke-static {v0}, Lcom/ds/daisi/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1388
    sget-object v1, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    const-string v2, "onInstallSuccessOperate --> 2 "

    invoke-static {v1, v2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
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

    .line 1390
    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 1391
    sget-object v3, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

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

    .line 1392
    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->getApkPageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1393
    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v4, v3, :cond_2

    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->getPostState()I

    move-result v3

    if-nez v3, :cond_2

    .line 1394
    sget-object v3, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInstallSuccessOperate --> packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/ds/daisi/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    invoke-direct {p0, v2}, Lcom/ds/daisi/activity/news/SplashActivity;->reportLogInfo(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1396
    invoke-virtual {v1, v2}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->setPostState(I)V

    .line 1398
    :cond_2
    invoke-virtual {v1, v4}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->setState(I)V

    .line 1399
    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->save()Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private onShowImgFeLingAd()V
    .locals 2

    .line 767
    sget-object v0, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "onShowImgFeLingAd -->"

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mFengLingAdInfo:Lcom/cyjh/share/bean/response/FengLingAdInfo;

    invoke-virtual {v0}, Lcom/cyjh/share/bean/response/FengLingAdInfo;->getWebTracks()Lcom/cyjh/share/bean/response/FengLingAdInfo$WebTracks;

    move-result-object v0

    .line 769
    invoke-virtual {v0}, Lcom/cyjh/share/bean/response/FengLingAdInfo$WebTracks;->getImptrackUrls()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ds/daisi/activity/news/SplashActivity;->reportLogInfo(Ljava/util/List;)V

    return-void
.end method

.method private openAppDetails()V
    .locals 3

    .line 351
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6ca1\u6709\u6388\u6743\u7684\u6743\u9650\uff0c\u8bf7\u5230 \u201c\u5e94\u7528\u4fe1\u606f -> \u6743\u9650\u201d \u4e2d\u6388\u4e88\uff01"

    .line 352
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53bb\u624b\u52a8\u6388\u6743"

    .line 353
    new-instance v2, Lcom/ds/daisi/activity/news/SplashActivity$1;

    invoke-direct {v2, p0}, Lcom/ds/daisi/activity/news/SplashActivity$1;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    .line 366
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 367
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private parseJson(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 586
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 587
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Data"

    .line 589
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "Code"

    .line 590
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Message"

    .line 591
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 592
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 593
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_0
    const/16 v2, 0x44c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x4b0

    if-eq v1, v2, :cond_2

    const/16 v2, 0x514

    if-eq v1, v2, :cond_2

    const/16 v2, 0x25c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x25a

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 601
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    new-instance p2, Lcom/ds/daisi/activity/news/SplashActivity$8;

    invoke-direct {p2, p0, v0}, Lcom/ds/daisi/activity/news/SplashActivity$8;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 613
    :cond_3
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    new-instance p2, Lcom/ds/daisi/activity/news/SplashActivity$9;

    invoke-direct {p2, p0}, Lcom/ds/daisi/activity/news/SplashActivity$9;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;)V

    invoke-virtual {p1, p2}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method private removePollingRunnable()V
    .locals 2

    .line 1114
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mPollingRunnable:Lcom/ds/daisi/activity/news/SplashActivity$SmallBallPollingRunnable;

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mPollingRunnable:Lcom/ds/daisi/activity/news/SplashActivity$SmallBallPollingRunnable;

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1116
    iput-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mPollingRunnable:Lcom/ds/daisi/activity/news/SplashActivity$SmallBallPollingRunnable;

    :cond_0
    return-void
.end method

.method private reportLogInfo(Ljava/lang/String;)V
    .locals 3

    .line 826
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 829
    :cond_0
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/news/SplashActivity;->dealWithUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 830
    sget-object v0, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportLogInfo --> srcUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->fengLingAdManager:Lcom/ds/daisi/mvp/managers/FengLingAdManager;

    new-instance v1, Lcom/ds/daisi/activity/news/SplashActivity$10;

    invoke-direct {v1, p0}, Lcom/ds/daisi/activity/news/SplashActivity$10;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->reportLogInfo(Landroid/content/Context;Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;)V

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

    .line 793
    sget-object v0, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    const-string v1, "reportLogInfo --> targetUrlList 1"

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 794
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 795
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 796
    sget-object v1, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportLogInfo --> targetUrlList 2 url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-direct {p0, v0}, Lcom/ds/daisi/activity/news/SplashActivity;->reportLogInfo(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private requestSystemPermissions()V
    .locals 7

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->permissions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 308
    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 310
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 313
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->init()V

    goto :goto_1

    .line 317
    :cond_2
    new-array v1, v3, [Ljava/lang/String;

    .line 318
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    .line 317
    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method private saveInfoToDB()V
    .locals 9

    .line 1165
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mFengLingAdInfo:Lcom/cyjh/share/bean/response/FengLingAdInfo;

    invoke-virtual {v0}, Lcom/cyjh/share/bean/response/FengLingAdInfo;->getWebTracks()Lcom/cyjh/share/bean/response/FengLingAdInfo$WebTracks;

    move-result-object v0

    .line 1166
    invoke-virtual {v0}, Lcom/cyjh/share/bean/response/FengLingAdInfo$WebTracks;->getDstrackUrls()Ljava/util/List;

    move-result-object v1

    .line 1167
    invoke-virtual {v0}, Lcom/cyjh/share/bean/response/FengLingAdInfo$WebTracks;->getIstrackUrls()Ljava/util/List;

    move-result-object v0

    .line 1168
    invoke-static {v1}, Lcom/ds/daisi/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1169
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1170
    invoke-direct {p0, v2}, Lcom/ds/daisi/activity/news/SplashActivity;->dealWithUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1171
    sget-object v2, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveInfoToDB --> dealWithDstrackUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    new-instance v2, Lcom/ds/daisi/entity/FeLingAdReportInfo;

    const-string v4, "101478"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/ds/daisi/entity/FeLingAdReportInfo;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 1173
    invoke-virtual {v2}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->save()Z

    goto :goto_0

    .line 1176
    :cond_0
    invoke-static {v0}, Lcom/ds/daisi/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1177
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1178
    invoke-direct {p0, v1}, Lcom/ds/daisi/activity/news/SplashActivity;->dealWithUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1179
    new-instance v1, Lcom/ds/daisi/entity/FeLingAdReportInfo;

    const-string v3, "101478"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/ds/daisi/entity/FeLingAdReportInfo;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 1180
    invoke-virtual {v1}, Lcom/ds/daisi/entity/FeLingAdReportInfo;->save()Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method private setCurrentAdType(I)V
    .locals 0

    .line 1346
    iput p1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mCurrentAdType:I

    return-void
.end method

.method private toCall()V
    .locals 0

    .line 1160
    invoke-static {p0}, Lcom/ds/daisi/util/IntentUtils;->toCallFullscreenTwoAdActivity(Landroid/content/Context;)V

    .line 1161
    invoke-virtual {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->finish()V

    return-void
.end method

.method private toCallFeLingWebView(Ljava/lang/String;)V
    .locals 3

    .line 1186
    sget-object v0, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toCallFeLingWebView --->  url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ds/daisi/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1187
    invoke-static {p0, p1, v0}, Lcom/ds/daisi/util/IntentUtils;->toCallFengLingAdWebViewActivity(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1188
    invoke-virtual {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->finish()V

    return-void
.end method


# virtual methods
.method public dealWithAdEvent(Lcom/ds/daisi/entity/AdEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1351
    invoke-virtual {p1}, Lcom/ds/daisi/entity/AdEvent;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1357
    :pswitch_0
    invoke-virtual {p1}, Lcom/ds/daisi/entity/AdEvent;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/news/SplashActivity;->onInstallSuccessOperate(Ljava/lang/String;)V

    goto :goto_0

    .line 1353
    :pswitch_1
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->onDownloadSuccessOperate()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public finish()V
    .locals 2

    .line 281
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->finish()V

    const v0, 0x7f050014

    const v1, 0x7f050015

    .line 282
    invoke-virtual {p0, v0, v1}, Lcom/ds/daisi/activity/news/SplashActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1407
    invoke-super {p0, p1, p2, p3}, Lcom/ds/daisi/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    const/16 p2, 0x12c

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1411
    :cond_0
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->toCall()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 706
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f1001b6

    if-eq p1, v0, :cond_2

    const v0, 0x7f1001b8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 708
    :cond_0
    iget p1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->countAdTimer:I

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    .line 709
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mImgAdFullScreen:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/news/SplashActivity;->onClickImgFullScreenAd(Landroid/view/View;)V

    goto :goto_0

    .line 712
    :cond_1
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->toCall()V

    goto :goto_0

    .line 715
    :cond_2
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mImgAdFullScreen:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/news/SplashActivity;->onClickImgFullScreenAd(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 260
    invoke-super {p0, p1}, Lcom/ds/daisi/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 261
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/news/SplashActivity;->requestWindowFeature(I)Z

    .line 262
    invoke-virtual {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f040030

    .line 263
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/news/SplashActivity;->setContentView(I)V

    .line 265
    invoke-virtual {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->isTaskRoot()Z

    move-result p1

    if-nez p1, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->finish()V

    return-void

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 270
    sget-object v0, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate --> type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    iput-object p1, v0, Lcom/ds/daisi/AppContext;->mLunchType:Ljava/lang/String;

    .line 272
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    .line 273
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->requestSystemPermissions()V

    goto :goto_0

    .line 275
    :cond_1
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->init()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1064
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onDestroy()V

    .line 1065
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 1066
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1067
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->cancelCloseTimer()V

    const/4 v0, 0x0

    .line 1068
    iput-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->isClickerFirst:Z

    .line 1069
    iput-object v1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->adItem:Lcom/iflytek/voiceads/conn/NativeDataRef;

    .line 1070
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->onCancel()V

    .line 1071
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

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

.method protected onPause()V
    .locals 0

    .line 287
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onPause()V

    .line 288
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

    .line 327
    invoke-super {p0, p1, p2, p3}, Lcom/ds/daisi/activity/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 331
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

    .line 339
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->init()V

    goto :goto_2

    .line 342
    :cond_2
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->openAppDetails()V

    :cond_3
    :goto_2
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 293
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onResume()V

    .line 294
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 295
    iget-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->isClickerFirst:Z

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->toCall()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 690
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 697
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mClickUpX:F

    .line 698
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mClickUpY:F

    goto :goto_0

    .line 692
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mClickDwonX:F

    .line 693
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mClickDwonY:F

    .line 701
    :goto_0
    invoke-super {p0, p1}, Lcom/ds/daisi/activity/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startupSuc(Lcom/cyjh/share/bean/response/AppStartupResponse;)V
    .locals 4

    .line 875
    iget-object v0, p1, Lcom/cyjh/share/bean/response/AppStartupResponse;->AuthorInfo:Lcom/cyjh/share/bean/response/AuthorRelatedInfo;

    .line 876
    iget v1, v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->ServicePackStatus:I

    if-nez v1, :cond_0

    .line 877
    iget p1, v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->ServicePackStatus:I

    iget-object v0, v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->ServicePackPrompt:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/ds/daisi/activity/news/SplashActivity;->appCloseDialog(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 879
    :cond_0
    sget-object v1, Lcom/ds/daisi/activity/news/SplashActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startupSuc --> authorRelatedInfo.IsFreeAd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->IsFreeAd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ds/daisi/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v1

    iget v2, v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->IsFreeAd:I

    iput v2, v1, Lcom/ds/daisi/entity/ParamsWrap;->isFreeAd:I

    .line 881
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v1

    iget-object v2, v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->EngineToken:Ljava/lang/String;

    iput-object v2, v1, Lcom/ds/daisi/entity/ParamsWrap;->engineToken:Ljava/lang/String;

    .line 882
    iget-object p1, p1, Lcom/cyjh/share/bean/response/AppStartupResponse;->AppInfo:Lcom/cyjh/share/bean/response/AppRelatedInfo;

    .line 883
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v1

    iget v2, p1, Lcom/cyjh/share/bean/response/AppRelatedInfo;->DailyTryTimes:I

    iput v2, v1, Lcom/ds/daisi/entity/ParamsWrap;->dailyTryTimes:I

    .line 884
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v1

    iget-object v2, p1, Lcom/cyjh/share/bean/response/AppRelatedInfo;->FeedbackTips:Ljava/lang/String;

    iput-object v2, v1, Lcom/ds/daisi/entity/ParamsWrap;->feedbackTips:Ljava/lang/String;

    .line 885
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v1

    iget v2, p1, Lcom/cyjh/share/bean/response/AppRelatedInfo;->OnceTryMinute:I

    iput v2, v1, Lcom/ds/daisi/entity/ParamsWrap;->onceTryMinute:I

    .line 886
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v1

    iget v2, p1, Lcom/cyjh/share/bean/response/AppRelatedInfo;->UnbindDeductHours:I

    iput v2, v1, Lcom/ds/daisi/entity/ParamsWrap;->unbindDeductHours:I

    .line 888
    iget-object v1, p1, Lcom/cyjh/share/bean/response/AppRelatedInfo;->ScriptKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 889
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    iget-object v2, p1, Lcom/cyjh/share/bean/response/AppRelatedInfo;->ScriptKey:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ds/daisi/AppContext;->tokenKey:J

    .line 891
    :cond_1
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ds/daisi/entity/ParamsWrap;->crateCollect()V

    .line 892
    iget-object v1, p1, Lcom/cyjh/share/bean/response/AppRelatedInfo;->BuyRegCodeConfig:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 893
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v1

    iget-object v1, v1, Lcom/ds/daisi/entity/ParamsWrap;->mBuyRegCodeConfigInfos:Ljava/util/List;

    iget-object v2, p1, Lcom/cyjh/share/bean/response/AppRelatedInfo;->BuyRegCodeConfig:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 895
    :cond_2
    iget-object v1, p1, Lcom/cyjh/share/bean/response/AppRelatedInfo;->FlySetting:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 896
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v1

    iget-object v1, v1, Lcom/ds/daisi/entity/ParamsWrap;->mFlySettingInfos:Ljava/util/List;

    iget-object v2, p1, Lcom/cyjh/share/bean/response/AppRelatedInfo;->FlySetting:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 898
    :cond_3
    iget-object v1, p1, Lcom/cyjh/share/bean/response/AppRelatedInfo;->RecommendSetting:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 899
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v1

    iget-object v1, v1, Lcom/ds/daisi/entity/ParamsWrap;->mRecommendSettingInfos:Ljava/util/List;

    iget-object p1, p1, Lcom/cyjh/share/bean/response/AppRelatedInfo;->RecommendSetting:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 901
    :cond_4
    iget-object p1, v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->AdList:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 902
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object p1

    iget-object p1, p1, Lcom/ds/daisi/entity/ParamsWrap;->mAdInfos:Ljava/util/List;

    iget-object v1, v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->AdList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    const/4 p1, 0x1

    .line 905
    iput-boolean p1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->isLoadCompleteStartup:Z

    .line 907
    iget v1, v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->ServicePackStatus:I

    if-ne v1, p1, :cond_6

    .line 908
    invoke-direct {p0}, Lcom/ds/daisi/activity/news/SplashActivity;->loadAdOrCallNextPage()V

    goto :goto_0

    .line 909
    :cond_6
    iget p1, v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->ServicePackStatus:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    .line 910
    invoke-static {}, Lcom/ds/daisi/util/ErrorUtilHelper;->getInstance()Lcom/ds/daisi/util/ErrorUtilHelper;

    move-result-object p1

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    const-string v2, "SplashActivity  startupSuc --> \u5373\u5c06\u505c\u7528"

    invoke-virtual {p1, v1, v2}, Lcom/ds/daisi/util/ErrorUtilHelper;->writeProcessedStringToFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 911
    invoke-static {}, Lcom/ds/daisi/manager/DialogManager;->getInstance()Lcom/ds/daisi/manager/DialogManager;

    move-result-object p1

    iget v1, v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->ServicePackStatus:I

    iget-object v0, v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->ServicePackPrompt:Ljava/lang/String;

    new-instance v2, Lcom/ds/daisi/activity/news/SplashActivity$MyKnownButtonListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/ds/daisi/activity/news/SplashActivity$MyKnownButtonListener;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;Lcom/ds/daisi/activity/news/SplashActivity$1;)V

    invoke-virtual {p1, v1, v0, p0, v2}, Lcom/ds/daisi/manager/DialogManager;->displayDialogMessage(ILjava/lang/String;Landroid/content/Context;Lcom/ds/daisi/listener/BaseTextViewKnownListener;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public templateVerifySuccess(Lcom/cyjh/share/bean/response/TemplateResponse;)V
    .locals 4

    const/4 v0, 0x1

    .line 1284
    iput-boolean v0, p0, Lcom/ds/daisi/activity/news/SplashActivity;->isLoadCompleteTemplateVerify:Z

    .line 1285
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v1

    iget v2, p1, Lcom/cyjh/share/bean/response/TemplateResponse;->TemplateType:I

    iput v2, v1, Lcom/cyjh/share/manager/VariableAndConstantsManager;->templateType:I

    .line 1286
    iget v1, p1, Lcom/cyjh/share/bean/response/TemplateResponse;->Status:I

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/cyjh/share/bean/response/TemplateResponse;->Status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1290
    :cond_0
    iget p1, p1, Lcom/cyjh/share/bean/response/TemplateResponse;->Status:I

    if-ne p1, v0, :cond_2

    .line 1292
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity;->mHandler:Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 1288
    :cond_1
    :goto_0
    invoke-static {}, Lcom/ds/daisi/util/ErrorUtilHelper;->getInstance()Lcom/ds/daisi/util/ErrorUtilHelper;

    move-result-object v0

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    const-string v2, "SplashActivity  templateVerifySuccess --> \u505c\u7528\uff0c\u6216\u5373\u5c06\u505c\u7528\u7684\u63d0\u793a"

    invoke-virtual {v0, v1, v2}, Lcom/ds/daisi/util/ErrorUtilHelper;->writeProcessedStringToFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 1289
    invoke-static {}, Lcom/ds/daisi/manager/DialogManager;->getInstance()Lcom/ds/daisi/manager/DialogManager;

    move-result-object v0

    iget v1, p1, Lcom/cyjh/share/bean/response/TemplateResponse;->Status:I

    iget-object p1, p1, Lcom/cyjh/share/bean/response/TemplateResponse;->Remark:Ljava/lang/String;

    new-instance v2, Lcom/ds/daisi/activity/news/SplashActivity$MyKnownButtonListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/ds/daisi/activity/news/SplashActivity$MyKnownButtonListener;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;Lcom/ds/daisi/activity/news/SplashActivity$1;)V

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/ds/daisi/manager/DialogManager;->displayDialogMessage(ILjava/lang/String;Landroid/content/Context;Lcom/ds/daisi/listener/BaseTextViewKnownListener;)V

    :cond_2
    :goto_1
    return-void
.end method
