.class public Lcom/ds/daisi/floatview/ElfinFloatView;
.super Landroid/widget/LinearLayout;
.source "ElfinFloatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/floatview/ElfinFloatView$ElfinGestureListener;,
        Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;
    }
.end annotation


# static fields
.field private static final ELFIN_ORIENTATION_DOWN:I = 0x3

.field private static final ELFIN_ORIENTATION_LEFT:I = 0x4

.field private static final ELFIN_ORIENTATION_RIGHT:I = 0x2

.field private static final ELFIN_ORIENTATION_UP:I = 0x1

.field private static final LIMIT_ANGLE:I = 0x3c

.field private static final LIMIT_COUNT:I = 0x2

.field private static final MAX_TRY_COUNT:I = 0x5

.field public static final MSG_DEFAULT_DELAY:I = 0xbb8

.field private static final MSG_JUDGE_ENGINE_STATUS:I = 0x3e8

.field private static final MSG_OUT_TIME:I = 0x3e9

.field public static final TAG:Ljava/lang/String; = "ElfinFloatView"

.field private static final TIME_ADSORPTION:I = 0x7d0

.field private static final TIME_INTERVAL:I = 0x3e8

.field private static final TIME_TRANSLUCENT:I = 0x1388


# instance fields
.field private isPreventRepeatedClick:Z

.field private mAppContext:Lcom/ds/daisi/AppContext;

.field public mContext:Landroid/content/Context;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mDeleteFloatView:Lcom/ds/daisi/floatview/DeleteFloatView;

.field private mDownX:F

.field private mDownY:F

.field private mGetEngineStatusTyrCount:I

.field private mHandler:Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;

.field private mImageViewElfin:Landroid/widget/ImageView;

.field public mImgRunAndPause:Landroid/widget/ImageView;

.field public mImgSettingAndStop:Landroid/widget/ImageView;

.field private mLastX:F

.field private mLastY:F

.field private mLinearLayoutElfin:Landroid/widget/LinearLayout;

.field private mLinearLayoutInfo:Landroid/widget/LinearLayout;

.field private mLinearLayoutRun:Landroid/widget/LinearLayout;

.field private mLinearLayoutSetting:Landroid/widget/LinearLayout;

.field private mLinearLayoutTools:Landroid/widget/LinearLayout;

.field private mLockState:I

.field private mRawCurrentX:F

.field private mRawCurrentY:F

.field private mRegisterCode:Ljava/lang/String;

.field private mScriptRTDDialog:Lcom/ds/daisi/dialog/ScriptRTDDialog;

.field private mScriptUIDialog:Lcom/ds/daisi/dialog/ScriptUIDialog;

.field public mTvRunScript:Landroid/widget/TextView;

.field public mTvSettingScript:Landroid/widget/TextView;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

.field onCallback:Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnCallback;

.field private onHideCancelClickListener:Lcom/ds/daisi/dialog/HideFWDialog$OnHideCancelClickListener;

.field private onHideOKClickListener:Lcom/ds/daisi/dialog/HideFWDialog$OnHideOKClickListener;

.field private final onTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ds/daisi/floatview/DeleteFloatView;)V
    .locals 8

    .line 189
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->isPreventRepeatedClick:Z

    .line 162
    new-instance v0, Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;-><init>(Lcom/ds/daisi/floatview/ElfinFloatView;Lcom/ds/daisi/floatview/ElfinFloatView$1;)V

    iput-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mHandler:Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;

    .line 298
    new-instance v0, Lcom/ds/daisi/floatview/ElfinFloatView$1;

    const-wide/16 v4, 0x1b58

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/ds/daisi/floatview/ElfinFloatView$1;-><init>(Lcom/ds/daisi/floatview/ElfinFloatView;JJ)V

    iput-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 656
    new-instance v0, Lcom/ds/daisi/floatview/ElfinFloatView$4;

    invoke-direct {v0, p0}, Lcom/ds/daisi/floatview/ElfinFloatView$4;-><init>(Lcom/ds/daisi/floatview/ElfinFloatView;)V

    iput-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 822
    new-instance v0, Lcom/ds/daisi/floatview/ElfinFloatView$5;

    invoke-direct {v0, p0}, Lcom/ds/daisi/floatview/ElfinFloatView$5;-><init>(Lcom/ds/daisi/floatview/ElfinFloatView;)V

    iput-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->onHideOKClickListener:Lcom/ds/daisi/dialog/HideFWDialog$OnHideOKClickListener;

    .line 830
    new-instance v0, Lcom/ds/daisi/floatview/ElfinFloatView$6;

    invoke-direct {v0, p0}, Lcom/ds/daisi/floatview/ElfinFloatView$6;-><init>(Lcom/ds/daisi/floatview/ElfinFloatView;)V

    iput-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->onHideCancelClickListener:Lcom/ds/daisi/dialog/HideFWDialog$OnHideCancelClickListener;

    .line 916
    new-instance v0, Lcom/ds/daisi/floatview/ElfinFloatView$7;

    invoke-direct {v0, p0}, Lcom/ds/daisi/floatview/ElfinFloatView$7;-><init>(Lcom/ds/daisi/floatview/ElfinFloatView;)V

    iput-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->onCallback:Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnCallback;

    .line 190
    check-cast p1, Lcom/ds/daisi/AppContext;

    iput-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    .line 191
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object p1, p1, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    iput-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mRegisterCode:Ljava/lang/String;

    .line 192
    invoke-direct {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->initView()V

    .line 193
    invoke-direct {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->initWindow()V

    .line 194
    iput-object p2, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mDeleteFloatView:Lcom/ds/daisi/floatview/DeleteFloatView;

    .line 195
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 196
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ds/daisi/floatview/ElfinFloatView;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->judgeEngineStatus()V

    return-void
.end method

.method static synthetic access$1000(Lcom/ds/daisi/floatview/ElfinFloatView;)F
    .locals 0

    .line 80
    iget p0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mRawCurrentX:F

    return p0
.end method

.method static synthetic access$1002(Lcom/ds/daisi/floatview/ElfinFloatView;F)F
    .locals 0

    .line 80
    iput p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mRawCurrentX:F

    return p1
.end method

.method static synthetic access$1100(Lcom/ds/daisi/floatview/ElfinFloatView;)F
    .locals 0

    .line 80
    iget p0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mRawCurrentY:F

    return p0
.end method

.method static synthetic access$1102(Lcom/ds/daisi/floatview/ElfinFloatView;F)F
    .locals 0

    .line 80
    iput p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mRawCurrentY:F

    return p1
.end method

.method static synthetic access$1200(Lcom/ds/daisi/floatview/ElfinFloatView;)F
    .locals 0

    .line 80
    iget p0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mDownY:F

    return p0
.end method

.method static synthetic access$1202(Lcom/ds/daisi/floatview/ElfinFloatView;F)F
    .locals 0

    .line 80
    iput p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mDownY:F

    return p1
.end method

.method static synthetic access$1300(Lcom/ds/daisi/floatview/ElfinFloatView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutTools:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ds/daisi/floatview/ElfinFloatView;)F
    .locals 0

    .line 80
    iget p0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLastX:F

    return p0
.end method

.method static synthetic access$1402(Lcom/ds/daisi/floatview/ElfinFloatView;F)F
    .locals 0

    .line 80
    iput p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLastX:F

    return p1
.end method

.method static synthetic access$1500(Lcom/ds/daisi/floatview/ElfinFloatView;)F
    .locals 0

    .line 80
    iget p0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLastY:F

    return p0
.end method

.method static synthetic access$1502(Lcom/ds/daisi/floatview/ElfinFloatView;F)F
    .locals 0

    .line 80
    iput p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLastY:F

    return p1
.end method

.method static synthetic access$1600(Lcom/ds/daisi/floatview/ElfinFloatView;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->updateFloatViewDirection(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/ds/daisi/floatview/ElfinFloatView;)Lcom/ds/daisi/floatview/DeleteFloatView;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mDeleteFloatView:Lcom/ds/daisi/floatview/DeleteFloatView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ds/daisi/floatview/ElfinFloatView;)Z
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->isHide()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/ds/daisi/floatview/ElfinFloatView;)Lcom/ds/daisi/dialog/HideFWDialog$OnHideOKClickListener;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->onHideOKClickListener:Lcom/ds/daisi/dialog/HideFWDialog$OnHideOKClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ds/daisi/floatview/ElfinFloatView;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->exitEngine()V

    return-void
.end method

.method static synthetic access$2000(Lcom/ds/daisi/floatview/ElfinFloatView;)Lcom/ds/daisi/dialog/HideFWDialog$OnHideCancelClickListener;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->onHideCancelClickListener:Lcom/ds/daisi/dialog/HideFWDialog$OnHideCancelClickListener;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ds/daisi/floatview/ElfinFloatView;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->moveToEdge()V

    return-void
.end method

.method static synthetic access$2200(Lcom/ds/daisi/floatview/ElfinFloatView;)Landroid/os/CountDownTimer;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ds/daisi/floatview/ElfinFloatView;)Landroid/widget/ImageView;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ds/daisi/floatview/ElfinFloatView;)F
    .locals 0

    .line 80
    iget p0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mDownX:F

    return p0
.end method

.method static synthetic access$402(Lcom/ds/daisi/floatview/ElfinFloatView;F)F
    .locals 0

    .line 80
    iput p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mDownX:F

    return p1
.end method

.method static synthetic access$500(Lcom/ds/daisi/floatview/ElfinFloatView;)Lcom/ds/daisi/AppContext;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ds/daisi/floatview/ElfinFloatView;Z)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->updateVersionRequest(Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/ds/daisi/floatview/ElfinFloatView;Z)Z
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->isPreventRepeatedClick:Z

    return p1
.end method

.method static synthetic access$900(Lcom/ds/daisi/floatview/ElfinFloatView;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->resetElfinState()V

    return-void
.end method

.method private exitEngine()V
    .locals 4

    .line 924
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mHandler:Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;->removeMessages(I)V

    .line 925
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 928
    :cond_0
    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/ds/daisi/services/VerifyService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 929
    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/ds/daisi/services/TimerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 930
    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/ds/daisi/services/BootService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 931
    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/ds/daisi/services/PhoneStateService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 932
    invoke-static {}, Lcom/cyjh/mq/sdk/MqBridge;->exit()V

    .line 933
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 934
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method private initElfinImageView()V
    .locals 2

    const v0, 0x7f100169

    .line 225
    invoke-virtual {p0, v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    .line 227
    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->checkBtnState()V

    .line 228
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 200
    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f10015d

    .line 202
    invoke-virtual {p0, v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutElfin:Landroid/widget/LinearLayout;

    const v0, 0x7f10015e

    .line 203
    invoke-virtual {p0, v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutTools:Landroid/widget/LinearLayout;

    const v0, 0x7f10015f

    .line 205
    invoke-virtual {p0, v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutRun:Landroid/widget/LinearLayout;

    const v0, 0x7f100165

    .line 207
    invoke-virtual {p0, v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutInfo:Landroid/widget/LinearLayout;

    const v0, 0x7f100162

    .line 208
    invoke-virtual {p0, v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutSetting:Landroid/widget/LinearLayout;

    const v0, 0x7f100161

    .line 210
    invoke-virtual {p0, v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mTvRunScript:Landroid/widget/TextView;

    const v0, 0x7f100160

    .line 211
    invoke-virtual {p0, v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImgRunAndPause:Landroid/widget/ImageView;

    const v0, 0x7f100164

    .line 213
    invoke-virtual {p0, v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mTvSettingScript:Landroid/widget/TextView;

    const v0, 0x7f100163

    .line 214
    invoke-virtual {p0, v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImgSettingAndStop:Landroid/widget/ImageView;

    .line 216
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutRun:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutSetting:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100167

    .line 220
    invoke-virtual {p0, v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    invoke-direct {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->initElfinImageView()V

    return-void
.end method

.method private initWindow()V
    .locals 3

    .line 264
    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mWindowManager:Landroid/view/WindowManager;

    .line 265
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    .line 268
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 270
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 271
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 275
    :goto_0
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 276
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 278
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 280
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutElfin:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 281
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 282
    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iput v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mRawCurrentY:F

    .line 285
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutElfin:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 286
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutElfin:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method private isHide()Z
    .locals 6

    const/4 v0, 0x2

    .line 474
    new-array v1, v0, [I

    .line 475
    iget-object v2, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 476
    new-array v0, v0, [I

    .line 477
    iget-object v2, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mDeleteFloatView:Lcom/ds/daisi/floatview/DeleteFloatView;

    invoke-virtual {v2, v0}, Lcom/ds/daisi/floatview/DeleteFloatView;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 478
    aget v3, v1, v2

    aget v4, v0, v2

    if-le v3, v4, :cond_0

    aget v3, v1, v2

    aget v4, v0, v2

    iget-object v5, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mDeleteFloatView:Lcom/ds/daisi/floatview/DeleteFloatView;

    .line 479
    invoke-virtual {v5}, Lcom/ds/daisi/floatview/DeleteFloatView;->geTextViewtWidth()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v3, 0x1

    aget v1, v1, v3

    aget v0, v0, v3

    if-le v1, v0, :cond_0

    return v3

    :cond_0
    return v2
.end method

.method private judgeEngineStatus()V
    .locals 5

    .line 881
    invoke-static {}, Lcom/ds/daisi/util/ErrorUtilHelper;->getInstance()Lcom/ds/daisi/util/ErrorUtilHelper;

    move-result-object v0

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ElfinFloatView judgeEngineStatus --> isScriptStopRunning="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v3

    iget-boolean v3, v3, Lcom/ds/daisi/AppContext;->isScriptStopRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ds/daisi/util/ErrorUtilHelper;->writeProcessedStringToFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 882
    iget v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mGetEngineStatusTyrCount:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    .line 883
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mq/sdk/MqRunner;->stop()V

    .line 884
    iput v1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mGetEngineStatusTyrCount:I

    .line 885
    invoke-static {}, Lcom/ds/daisi/util/ErrorUtilHelper;->getInstance()Lcom/ds/daisi/util/ErrorUtilHelper;

    move-result-object v0

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v2

    const-string v3, "ElfinFloatView judgeEngineStatus --> MqRunner.getInstance().stop()"

    invoke-virtual {v0, v2, v3}, Lcom/ds/daisi/util/ErrorUtilHelper;->writeProcessedStringToFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mHandler:Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;

    if-nez v0, :cond_1

    .line 889
    invoke-static {}, Lcom/ds/daisi/util/ErrorUtilHelper;->getInstance()Lcom/ds/daisi/util/ErrorUtilHelper;

    move-result-object v0

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ElfinFloatView judgeEngineStatus --> isScriptStopRunning="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v4

    iget-boolean v4, v4, Lcom/ds/daisi/AppContext;->isScriptStopRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mHandler == null "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ds/daisi/util/ErrorUtilHelper;->writeProcessedStringToFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 890
    new-instance v0, Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;-><init>(Lcom/ds/daisi/floatview/ElfinFloatView;Lcom/ds/daisi/floatview/ElfinFloatView$1;)V

    iput-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mHandler:Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;

    .line 893
    :cond_1
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ds/daisi/AppContext;->isScriptStopRunning:Z

    const/16 v2, 0x3e8

    if-eqz v0, :cond_2

    .line 894
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mHandler:Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;

    invoke-virtual {v0, v2}, Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;->removeMessages(I)V

    .line 895
    invoke-direct {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->runScriptOperate()V

    goto :goto_0

    .line 897
    :cond_2
    iget v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mGetEngineStatusTyrCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mGetEngineStatusTyrCount:I

    .line 898
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mHandler:Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;

    invoke-virtual {v0, v2}, Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 899
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mHandler:Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;

    invoke-virtual {v0, v2}, Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;->removeMessages(I)V

    .line 901
    :cond_3
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mHandler:Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method private moveToEdge()V
    .locals 5

    .line 348
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mDeleteFloatView:Lcom/ds/daisi/floatview/DeleteFloatView;

    invoke-virtual {v0}, Lcom/ds/daisi/floatview/DeleteFloatView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mDeleteFloatView:Lcom/ds/daisi/floatview/DeleteFloatView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ds/daisi/floatview/DeleteFloatView;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mDeleteFloatView:Lcom/ds/daisi/floatview/DeleteFloatView;

    invoke-virtual {v0}, Lcom/ds/daisi/floatview/DeleteFloatView;->setNormal()V

    :cond_0
    const/4 v0, 0x2

    .line 352
    new-array v1, v0, [I

    .line 353
    iget-object v2, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 354
    aget v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mDownX:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_1

    .line 355
    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mRawCurrentY:F

    iget v4, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mDownY:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0, v1, v3}, Lcom/ds/daisi/floatview/ElfinFloatView;->updateFloatViewPosition(II)V

    .line 356
    iget-object v1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutElfin:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutTools:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 357
    iget-object v1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutElfin:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutTools:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 359
    :cond_1
    iget v1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mRawCurrentY:F

    iget v3, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mDownY:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v2, v1}, Lcom/ds/daisi/floatview/ElfinFloatView;->updateFloatViewPosition(II)V

    .line 360
    iget-object v1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutElfin:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutTools:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 361
    iget-object v1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutElfin:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutTools:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 364
    :goto_0
    iget-object v1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget v1, v1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    if-eq v1, v0, :cond_4

    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget v0, v0, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget v0, v0, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 368
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    const v1, 0x7f0200a4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 370
    :cond_3
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    const v1, 0x7f020097

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 366
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-void
.end method

.method private resetElfinState()V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 465
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private runScriptOperate()V
    .locals 4

    .line 502
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ds/daisi/AppContext;->isForceUpdate:Z

    if-eqz v0, :cond_0

    .line 503
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    const v1, 0x7f0901b8

    invoke-static {v0, v1}, Lcom/cyjh/share/util/ToastUtils;->showToastShort(Landroid/content/Context;I)V

    return-void

    .line 507
    :cond_0
    invoke-static {}, Lcom/cyjh/share/helper/RedFingerHelper;->get()Lcom/cyjh/share/helper/RedFingerHelper;

    move-result-object v0

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/share/helper/RedFingerHelper;->isRunningDisable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    const v1, 0x7f0900a5

    invoke-static {v0, v1}, Lcom/cyjh/share/util/ToastUtils;->showToastShort(Landroid/content/Context;I)V

    return-void

    .line 517
    iget-boolean v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->isPreventRepeatedClick:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 520
    iput-boolean v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->isPreventRepeatedClick:Z

    .line 521
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mq/sdk/MqRunner;->isScriptStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 522
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mq/sdk/MqRunner;->stop()V

    .line 523
    iput-boolean v1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->isPreventRepeatedClick:Z

    .line 524
    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "runScriptOperate -->\u3000\u505c\u6b62\u5f15\u64ce"

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlToast;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 526
    :cond_2
    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ds/daisi/util/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 527
    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0900f1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 528
    iput-boolean v1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->isPreventRepeatedClick:Z

    return-void

    .line 531
    :cond_3
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 532
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mRegisterCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/ds/daisi/AppContext;->regCode:Ljava/lang/String;

    .line 534
    :cond_4
    iget-object v1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    invoke-virtual {v1}, Lcom/ds/daisi/AppContext;->checkJarApp()V

    .line 567
    :goto_0
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mHandler:Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 568
    new-instance v0, Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;-><init>(Lcom/ds/daisi/floatview/ElfinFloatView;Lcom/ds/daisi/floatview/ElfinFloatView$1;)V

    iput-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mHandler:Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;

    .line 570
    :cond_5
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mHandler:Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;

    invoke-virtual {v0, v1}, Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 571
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mHandler:Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;

    new-instance v1, Lcom/ds/daisi/floatview/ElfinFloatView$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/ds/daisi/floatview/ElfinFloatView$$Lambda$0;-><init>(Lcom/ds/daisi/floatview/ElfinFloatView;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scriptStopStatistics()V
    .locals 4

    .line 906
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v0

    iget-object v0, v0, Lcom/ds/daisi/entity/ParamsWrap;->mStartRunResponseInfo:Lcom/cyjh/share/bean/response/ScriptStartRunInfo;

    if-nez v0, :cond_0

    .line 907
    invoke-direct {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->exitEngine()V

    goto :goto_0

    .line 910
    :cond_0
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->onCallback:Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnCallback;

    invoke-virtual {v0, v1}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->setCallback(Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnCallback;)Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object v0

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    .line 911
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object v2

    iget-object v2, v2, Lcom/ds/daisi/entity/ParamsWrap;->mStartRunResponseInfo:Lcom/cyjh/share/bean/response/ScriptStartRunInfo;

    iget-object v2, v2, Lcom/cyjh/share/bean/response/ScriptStartRunInfo;->RunGuid:Ljava/lang/String;

    .line 910
    invoke-virtual {v0, v1, v2}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->loadScriptStopRunStatistics(Landroid/content/Context;Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mHandler:Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method private updateFloatViewDirection(I)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    .line 411
    :pswitch_0
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget p1, p1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget p1, p1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget p1, p1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    if-ne p1, v0, :cond_1

    .line 415
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    const v0, 0x7f0200aa

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 417
    :cond_1
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    const v0, 0x7f02009f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 413
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    const v0, 0x7f0200b3

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 401
    :pswitch_1
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget p1, p1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    if-eq p1, v2, :cond_5

    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget p1, p1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    if-ne p1, v1, :cond_3

    goto :goto_1

    .line 404
    :cond_3
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget p1, p1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    if-ne p1, v0, :cond_4

    .line 405
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    const v0, 0x7f0200a8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 407
    :cond_4
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    const v0, 0x7f02009b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 403
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    const v0, 0x7f0200b1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 391
    :pswitch_2
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget p1, p1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    if-eq p1, v2, :cond_8

    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget p1, p1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    if-ne p1, v1, :cond_6

    goto :goto_2

    .line 394
    :cond_6
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget p1, p1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    if-ne p1, v0, :cond_7

    .line 395
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    const v0, 0x7f0200ac

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 397
    :cond_7
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    const v0, 0x7f0200a3

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 393
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    const v0, 0x7f0200b5

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 381
    :pswitch_3
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget p1, p1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    if-eq p1, v2, :cond_b

    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget p1, p1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    if-ne p1, v1, :cond_9

    goto :goto_3

    .line 384
    :cond_9
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget p1, p1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    if-ne p1, v0, :cond_a

    .line 385
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    const v0, 0x7f0200a4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 387
    :cond_a
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    const v0, 0x7f020097

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 383
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    const v0, 0x7f0200ad

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateVersionRequest(Z)V
    .locals 4

    .line 575
    invoke-static {}, Lcom/ds/daisi/util/ErrorUtilHelper;->getInstance()Lcom/ds/daisi/util/ErrorUtilHelper;

    move-result-object v0

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    const-string v2, "updateVersionRequest --> "

    invoke-virtual {v0, v1, v2}, Lcom/ds/daisi/util/ErrorUtilHelper;->writeProcessedStringToFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mContext:Landroid/content/Context;

    const-string v1, "script.info"

    invoke-static {v0, v1}, Lcom/ds/daisi/util/JsonUtils;->parseScriptInfoJson(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 577
    iget-object v1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cyjh/share/util/CommonUtil;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 578
    new-instance v2, Lcom/cyjh/share/bean/request/UpdateRequestInfo;

    invoke-direct {v2}, Lcom/cyjh/share/bean/request/UpdateRequestInfo;-><init>()V

    .line 579
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v3

    iget-object v3, v3, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v3}, Lcom/ds/daisi/entity/Script;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cyjh/share/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    .line 580
    iput-object v1, v2, Lcom/cyjh/share/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    .line 581
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/cyjh/share/bean/request/UpdateRequestInfo;->ScriptVersion:I

    const/4 v0, 0x1

    .line 582
    iput v0, v2, Lcom/cyjh/share/bean/request/UpdateRequestInfo;->IsScriptHotUpgrade:I

    .line 583
    invoke-static {}, Lcom/cyjh/share/util/CommonUtil;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/cyjh/share/bean/request/UpdateRequestInfo;->AppVersion:Ljava/lang/String;

    .line 584
    sget-object v0, Lcom/ds/daisi/floatview/ElfinFloatView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVersionRequest --> 1 ScriptId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/cyjh/share/bean/request/UpdateRequestInfo;->ScriptId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",DeviceName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/cyjh/share/bean/request/UpdateRequestInfo;->DeviceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-static {}, Lcom/cyjh/share/mvp/manager/VersionUpdateManager;->builder()Lcom/cyjh/share/mvp/manager/VersionUpdateManager;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/floatview/ElfinFloatView$3;

    invoke-direct {v1, p0}, Lcom/ds/daisi/floatview/ElfinFloatView$3;-><init>(Lcom/ds/daisi/floatview/ElfinFloatView;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/share/mvp/manager/VersionUpdateManager;->setDismissBack(Lcom/cyjh/share/mvp/manager/VersionUpdateManager$OnUpdateVersionBack;)Lcom/cyjh/share/mvp/manager/VersionUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mContext:Landroid/content/Context;

    .line 603
    invoke-virtual {v0, p1, v1, v2}, Lcom/cyjh/share/mvp/manager/VersionUpdateManager;->updateVersion(ZLandroid/content/Context;Lcom/cyjh/share/bean/request/UpdateRequestInfo;)V

    return-void
.end method


# virtual methods
.method public changeToolBarState(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 447
    invoke-direct {p0, v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->updateFloatViewDirection(I)V

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 450
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutTools:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 451
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutTools:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 454
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutTools:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 455
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutTools:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public checkBtnState()V
    .locals 7

    .line 233
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget v0, v0, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    const v1, 0x7f0200be

    const v2, 0x7f0900bf

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 234
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    const v3, 0x7f0200a4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mTvRunScript:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0900bc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImgRunAndPause:Landroid/widget/ImageView;

    const v3, 0x7f0200bb

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mTvSettingScript:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImgSettingAndStop:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget v0, v0, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    const/4 v3, 0x3

    const v4, 0x7f0200bc

    const v5, 0x7f0900bd

    const v6, 0x7f020097

    if-ne v0, v3, :cond_1

    .line 243
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mTvRunScript:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImgRunAndPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mTvSettingScript:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImgSettingAndStop:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mTvRunScript:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImgRunAndPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mTvSettingScript:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900be

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImgSettingAndStop:Landroid/widget/ImageView;

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method final synthetic lambda$runScriptOperate$0$ElfinFloatView()V
    .locals 1

    const/4 v0, 0x0

    .line 571
    iput-boolean v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->isPreventRepeatedClick:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 609
    invoke-direct {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->resetElfinState()V

    .line 610
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f10015f

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq p1, v0, :cond_5

    const v0, 0x7f100162

    if-eq p1, v0, :cond_2

    const v0, 0x7f100165

    if-eq p1, v0, :cond_1

    const v0, 0x7f100167

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 647
    :cond_0
    invoke-direct {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->scriptStopStatistics()V

    goto/16 :goto_1

    .line 625
    :cond_1
    new-instance p1, Lcom/ds/daisi/dialog/ScriptRTDDialog;

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ds/daisi/dialog/ScriptRTDDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mScriptRTDDialog:Lcom/ds/daisi/dialog/ScriptRTDDialog;

    .line 626
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mScriptRTDDialog:Lcom/ds/daisi/dialog/ScriptRTDDialog;

    invoke-virtual {p1}, Lcom/ds/daisi/dialog/ScriptRTDDialog;->show()V

    goto/16 :goto_1

    .line 629
    :cond_2
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget p1, p1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    if-eq p1, v3, :cond_4

    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget p1, p1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    if-eq p1, v2, :cond_4

    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget p1, p1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    if-ne p1, v1, :cond_3

    goto :goto_0

    .line 640
    :cond_3
    new-instance p1, Lcom/ds/daisi/dialog/ScriptUIDialog;

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ds/daisi/dialog/ScriptUIDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mScriptUIDialog:Lcom/ds/daisi/dialog/ScriptUIDialog;

    .line 641
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mScriptUIDialog:Lcom/ds/daisi/dialog/ScriptUIDialog;

    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mContext:Landroid/content/Context;

    iput-object v0, p1, Lcom/ds/daisi/dialog/ScriptUIDialog;->mContext:Landroid/content/Context;

    .line 642
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mScriptUIDialog:Lcom/ds/daisi/dialog/ScriptUIDialog;

    invoke-virtual {p1}, Lcom/ds/daisi/dialog/ScriptUIDialog;->show()V

    goto :goto_1

    .line 632
    :cond_4
    :goto_0
    sget-object p1, Lcom/ds/daisi/floatview/ElfinFloatView;->TAG:Ljava/lang/String;

    const-string v0, "runScriptOperate --> 2"

    invoke-static {p1, v0}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "runScriptOperate -->\u3000\u505c\u6b62\u5f15\u64ce"

    invoke-static {p1, v0}, Lcom/cyjh/share/util/SlToast;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 635
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/MqRunner;->stop()V

    const/4 p1, 0x0

    .line 637
    iput-boolean p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->isPreventRepeatedClick:Z

    .line 638
    invoke-static {}, Lcom/ds/daisi/util/ErrorUtilHelper;->getInstance()Lcom/ds/daisi/util/ErrorUtilHelper;

    move-result-object p1

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    const-string v1, "ElfinFloatView runScriptOperate --> \u505c\u6b62\u5f15\u64ce"

    invoke-virtual {p1, v0, v1}, Lcom/ds/daisi/util/ErrorUtilHelper;->writeProcessedStringToFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 612
    :cond_5
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget p1, p1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    if-ne p1, v1, :cond_6

    return-void

    .line 616
    :cond_6
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget p1, p1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    if-ne p1, v3, :cond_7

    .line 617
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/MqRunner;->resume()V

    goto :goto_1

    .line 618
    :cond_7
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget p1, p1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    if-ne p1, v2, :cond_8

    .line 619
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/MqRunner;->pause()V

    goto :goto_1

    .line 621
    :cond_8
    invoke-direct {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->runScriptOperate()V

    .line 653
    :goto_1
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 865
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mHandler:Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mHandler:Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ds/daisi/floatview/ElfinFloatView$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 868
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onReceiveElfinFloatViewEvent(Lcom/ds/daisi/entity/ElfinFloatViewEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x1

    .line 874
    iput p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mGetEngineStatusTyrCount:I

    .line 875
    sget-object p1, Lcom/ds/daisi/floatview/ElfinFloatView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveElfinFloatViewEvent --> isScriptStopRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    iget-boolean v1, v1, Lcom/ds/daisi/AppContext;->isScriptStopRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mGetEngineStatusTyrCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mGetEngineStatusTyrCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-static {}, Lcom/ds/daisi/util/ErrorUtilHelper;->getInstance()Lcom/ds/daisi/util/ErrorUtilHelper;

    move-result-object p1

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    const-string v1, "ElfinFloatView onReceiveElfinFloatViewEvent -->"

    invoke-virtual {p1, v0, v1}, Lcom/ds/daisi/util/ErrorUtilHelper;->writeProcessedStringToFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 877
    invoke-direct {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->judgeEngineStatus()V

    return-void
.end method

.method public posControlBar(FII)V
    .locals 3

    .line 840
    sget-object v0, Lcom/ds/daisi/floatview/ElfinFloatView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "posControlBar --> position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",lockState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",isRight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    iput p2, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLockState:I

    .line 843
    iget p2, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLockState:I

    if-eqz p2, :cond_0

    .line 844
    iget-object p2, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 846
    :cond_0
    iget-object p2, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mDeleteFloatView:Lcom/ds/daisi/floatview/DeleteFloatView;

    invoke-virtual {p2}, Lcom/ds/daisi/floatview/DeleteFloatView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    .line 847
    iget-object p2, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mDeleteFloatView:Lcom/ds/daisi/floatview/DeleteFloatView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/ds/daisi/floatview/DeleteFloatView;->setVisibility(I)V

    .line 848
    iget-object p2, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mDeleteFloatView:Lcom/ds/daisi/floatview/DeleteFloatView;

    invoke-virtual {p2}, Lcom/ds/daisi/floatview/DeleteFloatView;->setNormal()V

    :cond_1
    const/4 p2, 0x0

    if-nez p3, :cond_2

    const/4 p3, 0x0

    goto :goto_0

    .line 850
    :cond_2
    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Point;->x:I

    .line 851
    :goto_0
    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p0, p3, p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->updateFloatViewPosition(II)V

    .line 852
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutElfin:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutTools:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 853
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutElfin:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutTools:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 854
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget p1, p1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    .line 855
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    const p2, 0x7f0200ad

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 856
    :cond_3
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget p1, p1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    .line 857
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    const p2, 0x7f0200a4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 859
    :cond_4
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    const p2, 0x7f020097

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method public rotateScreen()V
    .locals 3

    .line 491
    invoke-direct {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->resetElfinState()V

    .line 492
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const/4 v0, 0x1

    .line 493
    invoke-direct {p0, v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->updateFloatViewDirection(I)V

    .line 495
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mLinearLayoutElfin:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 496
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 497
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mDeleteFloatView:Lcom/ds/daisi/floatview/DeleteFloatView;

    invoke-virtual {v0}, Lcom/ds/daisi/floatview/DeleteFloatView;->rotateScreen()V

    return-void
.end method

.method public toggleElfinVisbility()V
    .locals 3

    .line 760
    invoke-direct {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->resetElfinState()V

    .line 761
    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 762
    invoke-virtual {p0, v1}, Lcom/ds/daisi/floatview/ElfinFloatView;->changeToolBarState(Z)V

    .line 763
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mDeleteFloatView:Lcom/ds/daisi/floatview/DeleteFloatView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ds/daisi/floatview/DeleteFloatView;->setVisibility(I)V

    .line 764
    invoke-virtual {p0, v1}, Lcom/ds/daisi/floatview/ElfinFloatView;->setVisibility(I)V

    goto :goto_0

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 767
    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/ds/daisi/floatview/ElfinFloatView;->updateFloatViewPosition(II)V

    .line 768
    invoke-virtual {p0, v1}, Lcom/ds/daisi/floatview/ElfinFloatView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public upadateElfinImages()V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget v0, v0, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 431
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mAppContext:Lcom/ds/daisi/AppContext;

    iget v0, v0, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 433
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    const v1, 0x7f0200a4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mImageViewElfin:Landroid/widget/ImageView;

    const v1, 0x7f020097

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 437
    :goto_0
    invoke-direct {p0}, Lcom/ds/daisi/floatview/ElfinFloatView;->resetElfinState()V

    .line 438
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public updateFloatViewPosition(II)V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 340
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 341
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/ds/daisi/floatview/ElfinFloatView;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
